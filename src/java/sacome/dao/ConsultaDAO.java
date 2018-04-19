/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sacome.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.naming.NamingException;
import javax.sql.DataSource;
import sacome.beans.Consulta;
/**
 *
 * @author tulio
 */
public class ConsultaDAO {
    private final static String CRIAR_CONSULTA_SQL = "insert into Consulta"
            + " (cpf, crm, dataconsulta)"
            + " values (?,?,?)";


    private final static String LISTAR_CONSULTA_POR_PACIENTE_SQL = "select"
            + " c.id as consultaId, c.cpf, c.crm, c.dataconsulta"
            + " from Consulta u"
            + " where cpf = ?";

    private final static String LISTAR_CONSULTA_POR_MEDICO_SQL = "select"
            + " c.id as consultaId, c.cpf, c.crm, c.dataconsulta"
            + " from Consulta u"
            + " where crm = ?";

    DataSource dataSource;


    public ConsultaDAO(DataSource dataSource) {
        this.dataSource = dataSource;
    }


    public Consulta gravarConsulta(Consulta p) throws SQLException, NamingException {
        try (Connection con = dataSource.getConnection();
            PreparedStatement ps = con.prepareStatement(CRIAR_CONSULTA_SQL, Statement.RETURN_GENERATED_KEYS);) {
            ps.setString(1, p.getCpf());
            ps.setString(2, p.getCrm());
            ps.setDate(3, new java.sql.Date(p.getDataConsulta().getTime()));
            ps.execute();

            try (ResultSet rs = ps.getGeneratedKeys()) {
                rs.next();
                p.setId(rs.getInt(1));
            }
        }
        return p;
    }



    public List<Consulta> listarConsultasPorPaciente(String cpf) throws SQLException {
        List<Consulta> ret = new ArrayList<>();
        try (Connection con = dataSource.getConnection();
                PreparedStatement ps = con.prepareStatement(LISTAR_CONSULTA_POR_PACIENTE_SQL)) {
            ps.setString(1, cpf);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Consulta u = new Consulta();
                    u.setId(rs.getInt("consultaId"));
                    u.setCpf(rs.getString("cpf"));
                    u.setCrm(rs.getString("crm"));
                    u.setDataConsulta(new Date(rs.getDate("dataConsulta").getTime()));
                    ret.add(u);                }
            }
        }
        return ret;
    }
    
    public List<Consulta> listarConsultasPorMedico(String crm) throws SQLException {
        List<Consulta> ret = new ArrayList<>();
        try (Connection con = dataSource.getConnection();
                PreparedStatement ps = con.prepareStatement(LISTAR_CONSULTA_POR_MEDICO_SQL)) {
            ps.setString(1, crm);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Consulta u = new Consulta();
                    u.setId(rs.getInt("consultaId"));
                    u.setCpf(rs.getString("cpf"));
                    u.setCrm(rs.getString("crm"));
                    u.setDataConsulta(new Date(rs.getDate("dataConsulta").getTime()));
                    ret.add(u);                }
            }
        }
        return ret;
    }
}

