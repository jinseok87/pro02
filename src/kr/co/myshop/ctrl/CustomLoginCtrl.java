package kr.co.myshop.ctrl;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/CustomLoginCtrl")
public class CustomLoginCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String DRIVER =  "com.mysql.cj.jdbc.Driver";
	private static final String URL = "jdbc:mysql://localhost:3306/myshop1?serverTimezone=Asia/Seoul";
	private static final String USER = "root";
	private static final String PASS = "a1234";
	String sql = "";

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String cusId = request.getParameter("cusId");
		String cusPw = request.getParameter("cusPw");
		
		
		try {
			Class.forName(DRIVER);
			sql = "select * from custom where cusid=? and cuspw=?";
			Connection con = DriverManager.getConnection(URL, USER, PASS);
			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs = null;
			pstmt.setString(1, cusId);
			pstmt.setString(2, cusPw);
			rs = pstmt.executeQuery();
			HttpSession session = request.getSession();
			
			if(rs.next()) {
				//로그인 성공시 세션으로 값을 들고 index(메인페이지)로 이동
				session.setAttribute("sid",cusId); //cusId의 값을 sid로 표현
				session.setAttribute("sname", rs.getString("cusname")); //sname에 이름을 rs.getString으로로 받아서 넣음
				response.sendRedirect("index.jsp"); //인덱스페이지로 이동
			}else {
				//로그인 실패로 다시 로그인 페이지로 이동
				response.sendRedirect("./custom/login.jsp");
			}
			
			pstmt.close();
			con.close();
		
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
