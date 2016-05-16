package edu.hkcity.cs;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

@WebServlet("/code")
public class Main extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			name na = new name();
			na.fact();
			HttpSession session = (HttpSession) request.getSession();
			  java.sql.Connection connection;
		        java.sql.Statement statement;
		        ResultSet resultset;
		        String sql;
		        String jdbcUrl = "jdbc:mysql://localhost:3306/pr_system";
		        String databaseID = "root";
		        String databasePW = "tjd134";
		        
		        ArrayList<String> title = new ArrayList<String>();
		        ArrayList<Double> content = new ArrayList<Double>();
		        try {
		            Class.forName("com.mysql.jdbc.Driver");
		        } catch (ClassNotFoundException e) {
		            System.out.println("Class not found : " + e);
		        }
		        try {
		            sql = "SELECT * FROM CODE" ;
		            connection = DriverManager.getConnection(jdbcUrl, databaseID, databasePW);
		            statement = connection.createStatement();
		            resultset = statement.executeQuery(sql);
		            while (resultset.next()) {
		            	title.add(resultset.getString("TITLE"));
		            	content.add(resultset.getDouble("CONTENT"));             
		            }
		            statement.close();
		            connection.close();
		        } catch (SQLException e){
		            System.err.println("SQL Error : " + e);
		        } catch (Exception e) {
		            System.err.println("Error : " + e);
		        }
		        
		        session.setAttribute("title", title);
		        session.setAttribute("content", content);
		       
			
			response.setContentType("text/html; charset=UTF-8");
			RequestDispatcher rd = request.getRequestDispatcher("/pro_task_situation_detail.jsp");
			rd.forward(request, response);

		} catch (Exception e) {
			throw new ServletException(e);

		}
	}
}
