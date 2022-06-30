package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.board.vo.BoardVO;

public class UserDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public UserDAO() {
		try {
			String url = "jdbc:mysql://localhost:3306/homeDB";
			String user = "root";
			String password = "0000";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public int login(String userId, String pwd) {
		String SQL = "SELECT PWD FROM USER WHERE USERID = ?";

		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(pwd)) 
					return 1; // 로그인 성공
				else 
					return 0;	//비밀번호 불일치
			}
			return -1; //아이디가 없음
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -2; //데이터베이스 오류
	}
}
