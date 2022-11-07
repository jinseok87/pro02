package kr.co.myshop.view;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.myshop.vo.Notice;

@WebServlet("/GetBoardDetailCtrl")
public class GetBoardDetailCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
	private static final String URL ="jdbc:mysql://localhost:3306/myshop1?serverTimezone=Asia/Seoul";
	private static final String USER = "root";
	private static final String PASS = "a1234";
	String sql ="";
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int notiNO = Integer.parseInt(request.getParameter("notiNo"));
		try {
			Class.forName(DRIVER);
		/*	
			con.setAutoCommit(false);
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setInt();
			ResultSet ts = pstmt.executeQuery();
			
			sql="update notice set visited=visited+1 where notino=?";
					*/
			sql = "select * from notice where notiNo =?";
			Connection con = DriverManager.getConnection(URL,USER,PASS);
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, notiNO);
			ResultSet rs = pstmt.executeQuery();
			
			Notice vo = new Notice();
			if(rs.next()) {
				vo.setNotiNo(rs.getInt("notino"));
				vo.setTitle(rs.getString("title"));
				vo.setContent(rs.getString("content"));
				vo.setAuthor(rs.getString("author"));
				vo.setResDate(rs.getString("resdate"));
			}
			request.setAttribute("notice", vo);
			
			RequestDispatcher view = request.getRequestDispatcher("./notice/boardDetail.jsp");
			view.forward(request, response);
			
			rs.close();
			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}