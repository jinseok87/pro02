package kr.co.myshop.ctrl;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/InsertBoardProCtrl")
public class InsertBoardProCtrl extends HttpServlet {		
	private static final long serialVersionUID = 1L;
	private final static String DRIVER = "com.mysql.jdbc.Driver";
	private final static String URL = "jdbc:mysql://localhost:3306/myshop1?severTimzone=Asia/Seoul";
	private final static String USER = "roop";
	private final static String PASS ="a1234";
	String sql="";
	int cnt =0;
	

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//데이터베이스 연결
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTD-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String author = request.getParameter("author");
		try{
			Class.forName(DRIVER);
			Connection con = DriverManager.getConnection(URL,USER,PASS);
			PreparedStatement pstmt = con.prepareStatement(sql); 
			sql = "insert into notice(title, content author) values(?,?,?)";
			pstmt.setString(1, title);
			pstmt.setString(2, content);
			pstmt.setString(3, author);
			cnt = pstmt.executeUpdate();
			
			if(cnt>=1){
				response.sendRedirect("GetboradListCtrl");
			}else{
				response.sendRedirect("./notice/insertborad.jsp");
			}

			con.close();
			pstmt.close();
		}catch (Exception e){
			e.printStackTrace();
		}
	}
}
