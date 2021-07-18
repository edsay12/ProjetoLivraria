package conexão;

import java.sql.*;
public class Mconexao {

    //faz a conexão com o banco 
    public static Connection conector() {
        java.sql.Connection conexao = null;
        //chama o driver (tipo de banco)
        String driver = "com.mysql.cj.jdbc.Driver";
        //informaçoes do banco 
        String url = "jdbc:mysql://localhost:3306/livrariadb";
        String user = "root";
        String password = "1234";
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
