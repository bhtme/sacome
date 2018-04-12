
// DAO Usuario
package sacome.dao;


import sacome.beans.Admins;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.naming.NamingException;
import javax.sql.DataSource;


public class AdminsDAO {


    private final static String CRIAR_ADMINS_SQL = "insert into Admins"
            + " (nome, login, senha)"
            + " values (?,?,?)";


    private final static String BUSCAR_ADMINS_SQL = "select"
            + " id, nome, login, senha"
            + " from admins"
            + " where id=?";
    
    DataSource dataSource;


    public AdminsDAO(DataSource dataSource) {
        this.dataSource = dataSource;
    }
    
    public Admins gravarAdmin(Admins u) throws SQLException, NamingException {
        try (Connection con = dataSource.getConnection();
                PreparedStatement ps = con.prepareStatement(CRIAR_ADMINS_SQL, Statement.RETURN_GENERATED_KEYS);) {
            ps.setString(1, u.getNome());
            ps.setString(2, u.getLogin());
            ps.setString(3, u.getSenha());
            ps.execute();


            try (ResultSet rs = ps.getGeneratedKeys()) {
                rs.next();
                u.setId(rs.getInt(1));
            }
        }
        return u;
    }


    public Admins buscarUsuario(int id) throws SQLException, NamingException {
        try (Connection con = dataSource.getConnection();
                PreparedStatement ps = con.prepareStatement(BUSCAR_ADMINS_SQL)) {
            ps.setInt(1, id);


            try (ResultSet rs = ps.executeQuery()) {
                rs.next();
                Admins u = new Admins();
                u.setId(rs.getInt("id"));
                u.setNome(rs.getString("nome"));
                u.setLogin(rs.getString("login"));
                u.setSenha(rs.getString("senha"));
                return u;
            }
        }
    }
}