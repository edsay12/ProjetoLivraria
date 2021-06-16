package conexão;

import java.sql.*;
public class Mconexao {

    //faz a conexão com o banco 
    public static Connection conector() {
        java.sql.Connection conexao = null;
        //chama o driver (tipo de banco)
        String driver = "com.mysql.jdbc.Driver";
        //informaçoes do banco 
        String url = "jdbc:mysql://localhost:3306/dbinfox";
        String user = "root";
        String password = "";
        // Fazemdo a conexão
        try {
            // arquivo de coneçao 
            Class.forName(driver);
            conexao = DriverManager.getConnection(url, user, password);
            return conexao;

        } catch (Exception e) {
            return null;
            
        }

    }

}
