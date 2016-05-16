package servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Push.GCMUtil;
import Push.GCMVo;
import dao.SubjectInfoDao;
import dao.TaskInfoDao;
import vo.Auth;
import vo.Notice;
import vo.TaskInfo;
import vo.SubjectInfo;

@WebServlet("/taskcreate")
public class TaskCreateServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(
			HttpServletRequest request, HttpServletResponse response)
					throws ServletException, IOException {

				RequestDispatcher rd = request.getRequestDispatcher(
						"/pro_task_create.jsp");
				System.out.println("aaaa");
				rd.forward(request, response);
	}
	
	@Override
	protected void doPost(
			HttpServletRequest request, HttpServletResponse response)
					throws ServletException, IOException {


		try {
			ServletContext sc = this.getServletContext();

			HttpSession session = request.getSession();
			Auth getAuth = (Auth) session.getAttribute("auth");
			String auth =getAuth.getAuth();
			
			// 과제를 만들기 위해서는
			// 교수가 만든 과목 (과목코드) 가 있어야 한다.
			

			if(auth.equals("professor")) {
				SubjectInfoDao subjectInfoDao = (SubjectInfoDao) sc.getAttribute("subjectInfoDao");
				ArrayList<SubjectInfo> subjInfoList = (ArrayList<SubjectInfo>)session.getAttribute("subjInfoList");
				
				ArrayList<String> list = new ArrayList<String>();
			//	list = "받은과목";//////////////////////////////////////////////////////////////
				
//				list.add(request.getParameter("notify"));

				
				TaskInfoDao taskInfoDao = (TaskInfoDao) sc.getAttribute("taskInfoDao");
				System.out.println(request.getParameter("Subj_code_div"));
				
				TaskInfo taskInfo = new TaskInfo().setTask_name(request.getParameter("task_name"))/////////////////////////
												.setTask_content(request.getParameter("task_description"))
												.setSubj_code_div(request.getParameter("Subj_code_div"))
												//.setTask_start(request.getParameter("task_start"))
												//.setTask_end(request.getParameter("task_end"))
												//.setTask_group_num(request.getParameter("task_num"))
												;
				taskInfoDao.insert(taskInfo);
					
				
				//과제추가해야되서 기존 세션 삭제
				session.removeAttribute("taskInfoList");
				
				// 과제를 추가해서세션을 다시 추가해야한다.
				response.sendRedirect("taskview");
				
				for(int i=0; i<subjInfoList.size();i++){
					String Subj_name = subjInfoList.get(i).getSubj_code_div();
					String Subj_code_div = request.getParameter("Subj_code_div");
					
					if(Subj_name.equals(Subj_code_div)) {
						
						//전달할 PUSH 내용
					    String title = "'"+subjInfoList.get(i).getSubj_name()+"'"+"과목 공지가 등록되었습니다.";
					    String msg = request.getParameter("task_name");
					    
					    // GCM 정보 셋팅
					    GCMVo gcmVo = new GCMVo();
					    gcmVo.setTitle(title);
					    gcmVo.setMsg(msg);
					    gcmVo.setTypeCode("");
					    
					    // GCM reg id 셋팅
					    List<String> reslist = new ArrayList<String>();
					    reslist.add("c5odzPFU5NA:APA91bGaNanjFkUB3FuF5z_PuvmsG6CpWobibfNdY81-huhQDF-inGefMxJKk3xFSS5K_2XjZCeQ5vf01yF3tsIsRXxDth5II_aCLME9jR16CISug9ZVcVO43WqF4NNxjvFmIPSPRIT3");
					    reslist.add("eRWItDq2z04:APA91bHNGx9CU6R6nsxJjqZUjxwKnu-IULSKgbvGxri4ERqtizCvH9nhI4_5UebSZgjg7OlAkudZ2OT2q02oedtIDw5lJrYqQcKwbW6qpBgvjNnQVlhpXJeALqcjkaiZguyiq3yskjZT");
					    GCMUtil gcmUtil = new GCMUtil(reslist, gcmVo);
					    System.out.println("성공");
					    break;
					}
					else
						System.out.println("실패");
				}
				
			} else {
				
			}

		} catch (Exception e) {
			throw new ServletException(e);

		}
	}
}
