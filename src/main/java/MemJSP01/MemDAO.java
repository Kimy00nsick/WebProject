package MemJSP01;

import common.DbClose;
import common.DbSet;
import common.UserAPI;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MemDAO {
    Connection conn;
    Statement stmt;
    ResultSet rs;
    String sql;
    int num;


    public void memSel() {
        //------------------------------
        conn = DbSet.getConnection();
        //------------------------------
        try {
            stmt = conn.createStatement();
            sql = "SELECT * FROM MEMBERT01";
            rs = stmt.executeQuery(sql);
            String vId, vPwd, vName, vMail, vPhone, vAddr;
            System.out.println("VId\t\tVPwd\t\tVName\t\tVMail\t\tVPhone\t\tVAddr");
            UserAPI.mLine('=',70);
            while (rs.next()) {
                vId = rs.getString(1);
                vPwd = rs.getString(2);
                vName = rs.getString(3);
                vMail = rs.getString(4);
                vPhone = rs.getString(5);
                vAddr = rs.getString(6);

                System.out.print(vId + "\t\t");
                System.out.print(vPwd + "\t\t");
                System.out.print(vName + "\t\t");
                System.out.print(vMail + "\t\t");
                System.out.print(vPhone + "\t\t");
                System.out.print(vAddr + "\t\t");
                System.out.println();
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
               DbClose.close(rs,stmt,conn);
        }
    }

    public boolean memLog(String vId, String vPwd) {
        //------------------------------
        conn = DbSet.getConnection();
        //------------------------------
        try {
            stmt = conn.createStatement();
            sql = "SELECT * FROM MEMBERT01 WHERE MEM_ID = '" + vId + "'and MEM_PWD ='" + vPwd + "'";
            rs = stmt.executeQuery(sql);
            return rs.next();
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }finally {
            DbClose.close(rs,stmt,conn);
        }
    }

    public int memIns(String vId, String vPwd, String vName, String vMail, String vPhone, String vAddr) {
        //------------------------------
        conn = DbSet.getConnection();
        //------------------------------
        try {
            stmt = conn.createStatement();
            sql = "INSERT INTO MEMBERT01 VALUES('" + vId + "','" + vPwd + "','" + vName + "','" + vMail + "','" + vPhone + "','" + vAddr + "')";
            return stmt.executeUpdate(sql);

        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
        } finally {
            DbClose.close(stmt, conn);
        }
    }

    public int memUpd(String vId, String vPwd, String vName, String vMail, String vPhone, String vAddr) {
        //------------------------------
        conn = DbSet.getConnection();
        //------------------------------
        try {
            stmt = conn.createStatement();
            sql = "UPDATE MEMBERT01 SET MEM_ID ='" + vId + "',MEM_PWD ='" + vPwd + "',MEM_NAME ='" + vName + "',MEM_EMAIL ='" + vMail + "',MEM_PHONE='" + vPhone + "',MEM_ADDR='" + vAddr + "'WHERE MEM_ID = '" + vId + "'and MEM_PWD ='" + vPwd + "'";
            return stmt.executeUpdate(sql);

        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
        } finally {
            DbClose.close(stmt, conn);
        }
    }

    public int memDel(String vName, String vId, String vPwd) {
        //------------------------------
        conn = DbSet.getConnection();
        //------------------------------
        try {
            stmt = conn.createStatement();
            sql = "DELETE FROM MEMBERT01 WHERE MEM_NAME ='" + vName + "'and MEM_ID ='" + vId + "'and MEM_PWD = '" + vPwd + "'";
            return stmt.executeUpdate(sql);

        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
        } finally {
            DbClose.close(stmt, conn);
        }
    }

	public MemDAO() {
		super();
		// TODO Auto-generated constructor stub
	}
}
