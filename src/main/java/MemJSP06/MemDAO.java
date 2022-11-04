package MemJSP06;

import common.DbClose;
import common.DbSet;
import common.UserAPI;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class MemDAO {
    Connection conn;
    PreparedStatement pstmt;
    ResultSet rs;
    String sql;
    int num;


    public List<MemDTO> memSel() {
        //------------------------------
        conn = DbSet.getConnection();
        //------------------------------
        String vId;
        String vName;
        String vEmail;
        String vPhone;
        String vAddr;
        List<MemDTO> list = new ArrayList<MemDTO>(); 
        try {
            sql = "SELECT * FROM MEMBERT01";
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while(rs.next())
            {	
            	vId = rs.getString("mem_id");
            	vName = rs.getString("mem_name");
            	vEmail = rs.getString("mem_email");
            	vPhone = rs.getString("mem_phone");
            	vAddr = rs.getString("mem_addr");
            	MemDTO memDTO = new MemDTO(vId, vName, vEmail, vPhone, vAddr);
            	list.add(memDTO);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
               DbClose.close(rs,pstmt,conn);
        }
        return list;
    }

    public int memLog(MemDTO memDTO) {
        //------------------------------
        conn = DbSet.getConnection();
        //------------------------------
        try {
            sql = "SELECT * FROM MEMBERT01 WHERE MEM_ID = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, memDTO.getvId());
            rs = pstmt.executeQuery();
            if(rs.next()) {
            	if(rs.getString(2).equals(memDTO.getvPwd())){
            		return 1; // 아이디 비밀번호 일치
            	}else {
            		return 0; // 비밀번호 불일치
            	}
            	
            }
            return -1; //아이디 없음
        } catch (SQLException e) {
            e.printStackTrace();
            return -2; // 데이터 베이스 오류
        }finally {
            DbClose.close(rs,pstmt,conn);
        }
    }

    public int memIns(MemDTO memDTO) {
        //------------------------------
        conn = DbSet.getConnection();
        //------------------------------
        try {
            sql = "INSERT INTO MEMBERT01 VALUES(?,?,?,?,?,?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, memDTO.getvId());
            pstmt.setString(2, memDTO.getvPwd());
            pstmt.setString(3, memDTO.getvName());
            pstmt.setString(4, memDTO.getvMail());
            pstmt.setString(5, memDTO.getvPhone());
            pstmt.setString(6, memDTO.getvAddr());
            return pstmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
        } finally {
            DbClose.close(pstmt, conn);
        }
    }

    public int memUpd(MemDTO memDTO) {
        //------------------------------
        conn = DbSet.getConnection();
        //------------------------------
        try {
            sql = "UPDATE MEMBERT01 SET MEM_ID = ?,MEM_PWD = ?,MEM_NAME = ?,MEM_EMAIL = ?,MEM_PHONE= ?,MEM_ADDR= ? WHERE MEM_ID = ?and MEM_PWD = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, memDTO.getvId());
            pstmt.setString(2, memDTO.getvPwd());
            pstmt.setString(3, memDTO.getvName());
            pstmt.setString(4, memDTO.getvMail());
            pstmt.setString(5, memDTO.getvPhone());
            pstmt.setString(6, memDTO.getvAddr());
            pstmt.setString(7, memDTO.getvId());
            pstmt.setString(8, memDTO.getvPwd());
            
            return pstmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
        } finally {
            DbClose.close(pstmt, conn);
        }
    }

    public int memDel(MemDTO memDTO) {
        //------------------------------
        conn = DbSet.getConnection();
        //------------------------------
        try {
            sql = "DELETE FROM MEMBERT01 WHERE MEM_NAME = ?and MEM_ID = ?and MEM_PWD = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, memDTO.getvName());
            pstmt.setString(2, memDTO.getvId());
            pstmt.setString(3, memDTO.getvPwd());
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
