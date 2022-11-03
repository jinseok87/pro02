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

@WebServlet("/MamberAddProCtrl")
public class MamberAddProCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String DRIVER = "com.mysql.jdbc.Driver";
	private static final String URL = "jdbc:mysql://localhost:3306/myshop1?servetTimezone=Aisa/Seoul";
	private static final String USER = "roop";
	private static final String PASS = "a1234";
	String sql = "";
	String cusId ="";
	String cusPw ="";
	String cusName ="";
	String address = "";
	String tel = "";
	int cnt = 0;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String CusId = request.getParameter(cusId);
		String CusPw = request.getParameter(cusPw);
		String CusName = request.getParameter(cusName);
		String Address = request.getParameter(address);
		String Tel = request.getParameter(tel);
		try {
			Class.forName(DRIVER);
			Connection con = DriverManager.getConnection(URL,USER,PASS);
			PreparedStatement pstmt = con.prepareStatement(sql);
			sql = "insert into custum(CusId, CusPw,CusName, Address, Tel) values(?,?,?,?,?)";
			pstmt.setString(1, CusId);
			pstmt.setString(2, CusPw);
			pstmt.setString(3, CusName);
			pstmt.setString(4, Address);
			pstmt.setString(5, Tel);
			cnt = pstmt.executeUpdate();
			
			if(cnt>=1){
				response.sendRedirect("index.jsp");
			}else{
				response.sendRedirect("./custom/join.jsp");
			}
			
			con.close();
			pstmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
