/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sacome.dao;

import sacome.beans.Paciente;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;
import javax.naming.NamingException;
import javax.sql.DataSource;
/**
 *
 * @author tulio
 */
public class PacienteDAO {
     private final static String CRIAR_PACIENTE_SQL = "insert into paciente"
            + " (cpf, nome, senha, telefone, dataDeNascimento, sexo)"
            + " values (?,?,?,?,?,?)";


    private final static String BUSCAR_PACIENTE_SQL = "select"
            + " id, cpf, nome, senha, telefone, dataDeNascimento, sexo"
            + " from paciente"
            + " where cpf=?";
    
    DataSource dataSource;


    public PacienteDAO(DataSource dataSource) {
        this.dataSource = dataSource;
    }
    
    public Paciente gravarPaciente(Paciente u) throws SQLException, NamingException {
        try (Connection con = dataSource.getConnection();
                PreparedStatement ps = con.prepareStatement(CRIAR_PACIENTE_SQL, Statement.RETURN_GENERATED_KEYS);) {
            ps.setString(1, u.getCpf());
            ps.setString(2, u.getNome());
            ps.setString(3, u.getSenha());
            ps.setString(4, u.getTelefone());
            ps.setDate(5, new java.sql.Date(u.getDataDeNascimento().getTime()));
            ps.setString(6, u.getSexo().toUpperCase());
            ps.execute();


            try (ResultSet rs = ps.getGeneratedKeys()) {
                rs.next();
                u.setId(rs.getInt(1));
            }
        }
        return u;
    }


    public Paciente buscarPaciente(int cpf) throws SQLException, NamingException {
        try (Connection con = dataSource.getConnection();
                PreparedStatement ps = con.prepareStatement(BUSCAR_PACIENTE_SQL)) {
            ps.setInt(1, cpf);


            try (ResultSet rs = ps.executeQuery()) {
                rs.next();
                Paciente u = new Paciente();
                u.setId(rs.getInt("id"));
                u.setCpf(rs.getString("cpf"));
                u.setNome(rs.getString("nome"));
                u.setSenha(rs.getString("senha"));
                u.setTelefone(rs.getString("telefone"));
                u.setDataDeNascimento(new Date(rs.getDate("dataDeNascimento").getTime()));
                u.setSexo(rs.getString("sexo"));
                return u;
            }
        }
    }
}
