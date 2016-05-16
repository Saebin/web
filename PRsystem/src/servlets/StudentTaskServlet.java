package servlets;

import java.io.*;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.NoticeDao;
import dao.ProfessorInfoDao;
import dao.StudentInfoDao;
import dao.StudentSubjectDao;
import dao.SubjectInfoDao;
import dao.TaskInfoDao;
import vo.Auth;
import vo.ProfessorInfo;
import vo.StudentInfo;
import vo.SubjectInfo;

@WebServlet("/task_submit")
public class StudentTaskServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@SuppressWarnings("resource")
	@Override
	public void doPost(
			HttpServletRequest request, HttpServletResponse response)
					throws ServletException, IOException {
		
		try {
			request.setCharacterEncoding("EUC-KR");
			String str = request.getParameter("code");
			String str1 = request.getParameter("smarteditor");
			
			
			File file1 = new File("C:/Users/b10310/workspace/PRsystem/WebContent/code_similartiy/testText1.txt");
			File file = new File("C:/Users/b10310/workspace/PRsystem/WebContent/code_similartiy/testText2.txt");
			FileWriter fileWriterTest   =  null;
			PrintWriter newLineTest    =  null;
			try{
				fileWriterTest = new FileWriter(file1);
				fileWriterTest.write(str);
				fileWriterTest.flush();
				
				fileWriterTest = new FileWriter(file);
				fileWriterTest.write(str1);
				fileWriterTest.flush();
		        	   
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				try{
					if(fileWriterTest  != null){ fileWriterTest.close();}
					if(newLineTest   != null){ fileWriterTest.close();}
				}catch(Exception ee){
					ee.printStackTrace();
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e);
			RequestDispatcher rd = request.getRequestDispatcher("/Error.jsp");
			rd.forward(request, response);
		}
	}
	
}
