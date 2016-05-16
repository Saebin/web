package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import vo.CodeSimilartiyInfo;

public class CodeSimilartiyServlet {
	DataSource ds;

	public void setDataSource(DataSource ds) {
		this.ds = ds;
	}

	public int insert(CodeSimilartiyInfo code) throws Exception  {
		Connection connection = null;
		PreparedStatement stmt = null;
		
		try {
			connection = ds.getConnection();
			stmt = connection.prepareStatement(
					"INSERT INTO CODESIMILARTIY(STU_NAME1,STU_NAME2,TITLE,CONTENT)"
							+ " VALUES (?,?,?,?)");
			stmt.setString(1, code.getStu_name1());
			stmt.setString(2, code.getStu_name2());
			stmt.setString(3, code.getTitle());
			stmt.setDouble(4, code.getContent());
			return stmt.executeUpdate();

		} catch (Exception e) {
			throw e;

		} finally {
			try {if (stmt != null) stmt.close();} catch(Exception e) {}
			try {if (connection != null) connection.close();} catch(Exception e) {}
		}
	}


	// 메인화면에서
	// 로그인한 교수가 보낸 모든 공지사항을 가져온다.
	public List<CodeSimilartiyInfo> selectList() throws Exception {
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;


		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery(
					"SELECT STU_NAME1,STU_NAME2,TITLE,CONTENT" + 
							" FROM CODESIMILARTIY ");

			ArrayList<CodeSimilartiyInfo> code = new ArrayList<CodeSimilartiyInfo>();

			while(rs.next()) {
				code.add(new CodeSimilartiyInfo()
						.setStu_name1(rs.getString("STU_NAME1"))
						.setStu_name2(rs.getString("STU_NAME2"))
						.setTitle(rs.getString("TITLE"))
						.setContent(rs.getDouble("CONTENT"))
						);
			}

			return code;

		} catch (Exception e) {
			throw e;

		} finally {
			try {if (rs != null) rs.close();} catch(Exception e) {}
			try {if (stmt != null) stmt.close();} catch(Exception e) {}
			try {if (connection != null) connection.close();} catch(Exception e) {}
		}
	}
}
