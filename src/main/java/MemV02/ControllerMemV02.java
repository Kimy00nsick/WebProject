package MemV02;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ControllerMemV02.do")
public class ControllerMemV02 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ControllerMemV02() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		execute(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		execute(request, response);
	}
	
	protected void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;Charset=UTF-8");
//		PrintWriter out = response.getWriter();
//		out.print("<h1>");
//		out.print("Servlet Chk01");
//		out.print("</h1>");
		String vUrl = request.getContextPath();
		String vCategory = request.getParameter("category");
//		==========================================
		
		
//		==========================================
	    String msg = "";
	    int idx = 0;
	    String memParam[] = new String[7];
	    Enumeration<String> vFields = request.getParameterNames();
	    while(vFields.hasMoreElements()){
	    	memParam[idx] = request.getParameter(vFields.nextElement());
	    	idx++;
	    }
		MemDAO memDAO = new MemDAO();
		MemDTO memDTO = new MemDTO(memParam[2],memParam[3],memParam[1],memParam[4],memParam[5],memParam[6]);
		MemDTO memDTO02 = new MemDTO(memParam[1],memParam[2]);
		MemDTO memDTO03 = new MemDTO(memParam[2],memParam[3],memParam[1]);
		
		if(vCategory.equals("menuMain")){
			response.sendRedirect(vUrl+"/MemV02/memIndexV02.jsp");
			
		}else if(vCategory.equals("menuLog")) {
			response.sendRedirect(vUrl+"/MemV02/memLogV02.jsp");
			
		}else if(vCategory.equals("menuIns")) {
			response.sendRedirect(vUrl+"/MemV02/memInsV02.jsp");
			
		}else if(vCategory.equals("menuUpd")) {
			response.sendRedirect(vUrl+"/MemV02/memUpdV02.jsp");
			
		}else if(vCategory.equals("menuDel")) {
			response.sendRedirect(vUrl+"/MemV02/memDelV02.jsp");
			
		}
		if(vCategory.equals("frmIns")) {
			int num = memDAO.memIns(memDTO);

		    if(num != 0){
		    	msg = memDTO.getMem_id()+"님 회원가입 성공";
		    }else{
		    	msg = "회원가입 오류 확인!!";
		    }
		    response.sendRedirect(vUrl+"/MemV02/msgChk.jsp?msg="+ URLEncoder.encode(msg, "UTF-8"));
			
		}else if(vCategory.equals("frmLog")) {
			int num = memDAO.memLog(memDTO02);
			 if(num != 0){
			    	msg = memDTO02.getMem_id()+"님 로그인 성공";
			    }else{
			    	msg = "로그인 오류 확인!!";
			    }
			    response.sendRedirect(vUrl+"/MemV02/msgChk.jsp?msg="+ URLEncoder.encode(msg, "UTF-8"));
			
		}else if(vCategory.equals("frmDel")) {
			int num = memDAO.memDel(memDTO03);
			 if(num != 0){
			    	msg = memDTO03.getMem_id()+"님 회원삭제 성공";
			    }else{
			    	msg = "회원 삭제 오류 확인!!";
			    }
			    response.sendRedirect(vUrl+"/MemV02/msgChk.jsp?msg="+ URLEncoder.encode(msg, "UTF-8"));
			
		}else if(vCategory.equals("frmUpd")) {
			int num = memDAO.memIns(memDTO);

		    if(num != 0){
		    	msg = memDTO.getMem_id()+"님 회원수정 성공";
		    }else{
		    	msg = "회원수정 오류 확인!!";
		    }
		    response.sendRedirect(vUrl+"/MemV02/msgChk.jsp?msg="+ URLEncoder.encode(msg, "UTF-8"));
		    
		}else if(vCategory.equals("menuSel")) {
			List<MemDTO> dtoL = memDAO.memSel();
			System.out.println(dtoL.size());
			request.setAttribute("dtoL", dtoL);
			RequestDispatcher rd =  request.getRequestDispatcher("/MemV02/memSelV02.jsp");
			rd.forward(request,response);
		}
		
	}

}
