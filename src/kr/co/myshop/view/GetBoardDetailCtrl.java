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
	private final static String DRIVER = "com.mysql.cj.jdbc.Driver";  //드라이버경로
	private final static String URL = "jdbc:mysql://localhost:3306/myshop1?serverTimezone=Asia/Seoul";  //url /포트번호/데이터베이스이름/?serverTimezone=Asisa/Seoul; 
	private final static String USER = "root";  //mysQl 접속 id
	private final static String PASS = "a1234";  // 비밀번호
	String sql = "";  //sql 작성을 위한 초기설정

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int notiNo = Integer.parseInt(request.getParameter("notiNo"));
		try {
			//데이터베이스연결
			Class.forName(DRIVER);   //경로 설정한 드라이버 연결
			sql = "select * from notice where notino=?";  //실행하고자하는 sql문 작성
			Connection con = DriverManager.getConnection(URL, USER, PASS);  
			PreparedStatement pstmt = con.prepareStatement(sql);  //
			pstmt.setInt(1, notiNo);
			ResultSet rs = pstmt.executeQuery();
			
			//데이터베이스에서 결과 받아서 VO에 저장
			Notice vo = new Notice();
			if(rs.next()){
				vo.setNotiNo(rs.getInt("notino"));
				vo.setTitle(rs.getString("title"));
				vo.setContent(rs.getString("content"));
				vo.setAuthor(rs.getString("author"));
				vo.setResDate(rs.getString("resdate"));
			}
			request.setAttribute("notice", vo);
			
			//notice/boardList.jsp 에 포워딩
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