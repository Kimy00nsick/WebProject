package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DbSet {

    static Connection conn;
    static Statement stmt;
    static String className = "oracle.jdbc.driver.OracleDriver";
    static String url = "jdbc:oracle:thin:@localhost:1521:XE";
    static String id = "hr";
    static String pwd = "hr";

    public static Connection getConnection() {
        try {
            Class.forName(className);
            System.out.println("1단계 : 드라이브 연동 성공");
            conn = DriverManager.getConnection(url, id, pwd);
            System.out.println("2단계 : DB 연동 성공!!");
            return conn;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}
