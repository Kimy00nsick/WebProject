package MemJSP02;

import common.DbClose;
import common.DbSet;
import common.UserAPI;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MemDAO {
    Connection conn;
    PreparedStatement pstmt;
    ResultSet rs;
    String sql;
    int num;


    public void memSel() {
        //------------------------------
        conn = DbSet.getConnection();
        //------------------------------
        try {
            sql = "SELECT * FROM MEMBERT01";
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
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
               DbClose.close(rs,pstmt,conn);
        }
    }

    public boolean memLog(String vId, String vPwd) {
        //------------------------------
        conn = DbSet.getConnection();
        //------------------------------
        try {
            sql = "SELECT * FROM MEMBERT01 WHERE MEM_ID = ? and MEM_PWD = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, vId);
            pstmt.setString(2, vPwd);
            rs = pstmt.executeQuery();
            return rs.next();
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }finally {
            DbClose.close(rs,pstmt,conn);
        }
    }

    public int memIns(String vId, String vPwd, String vName, String vMail, String vPhone, String vAddr) {
        //------------------------------
        conn = DbSet.getConnection();
        //------------------------------
        try {
            sql = "INSERT INTO MEMBERT01 VALUES(?,?,?,?,?,?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, vId);
            pstmt.setString(2, vPwd);
            pstmt.setString(3, vName);
            pstmt.setString(4, vMail);
            pstmt.setString(5, vPhone);
            pstmt.setString(6, vAddr);
            return pstmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
        } finally {
            DbClose.close(pstmt, conn);
        }
    }

    public int memUpd(String vId, String vPwd, String vName, String vMail, String vPhone, String vAddr) {
        //------------------------------
        conn = DbSet.getConnection();
        //------------------------------
        try {
            sql = "UPDATE MEMBERT01 SET MEM_ID = ?,MEM_PWD = ?,MEM_NAME = ?,MEM_EMAIL = ?,MEM_PHONE= ?,MEM_ADDR= ? WHERE MEM_ID = ?and MEM_PWD = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, vId);
            pstmt.setString(2, vPwd);
            pstmt.setString(3, vName);
            pstmt.setString(4, vMail);
            pstmt.setString(5, vPhone);
            pstmt.setString(6, vAddr);
            return pstmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
        } finally {
            DbClose.close(pstmt, conn);
        }
    }

    public int memDel(String vName, String vId, String vPwd) {
        //------------------------------
        conn = DbSet.getConnection();
        //------------------------------
        try {
            sql = "DELETE FROM MEMBERT01 WHERE MEM_NAME = ?and MEM_ID = ?and MEM_PWD = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, vName);
            pstmt.setString(2, vId);
            pstmt.setString(3, vPwd);
            return pstmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
        } finally {
            DbClose.close(pstmt, conn);
        }
    }

	public MemDAO() {
		super();
		// TODO Auto-generated constructor stub
	}
}
