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
	String sql ="";
	String cusId = "";
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cusId = request.getParameter(cusId);
		String cusPw = request.getParameter(cusPw);
		String cusName = request.getParameter(cusName);
		String address = request.getParameter(address);
		String tel = request.getParameter(tel);
		try {
			Class.forName(DRIVER);
			Connection con = DriverManager.getConnection(URL,USER,PASS);
			PreparedStatement pstmt = con.prepareStatement(sql);
			sql = "insert into custum(cusId, cusPw,cusName, address, tel) values(?,?,?,?,?)";
			pstmt.setString(1, cusId);
		} catch (Exception e) {
			
		}
	}

}
