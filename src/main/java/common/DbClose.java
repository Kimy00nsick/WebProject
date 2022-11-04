package common;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DbClose {
    static public void close(Statement stmt, Connection conn){
        try{
            stmt.close();
            conn.close();
        }catch (SQLException e){
            e.printStackTrace();
        }
    }
    static public void close(ResultSet rs, Statement stmt, Connection conn){
        try{
            rs.close();
            stmt.close();
            conn.close();
        }catch (SQLException e){
            e.printStackTrace();
        }
    }
}
