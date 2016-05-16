package listeners;

// 서버에서 제공하는 DataSource 사용하기
import javax.naming.InitialContext;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import javax.sql.DataSource;

import dao.AuthDao;
import dao.NoticeDao;
import dao.ProfessorInfoDao;
import dao.StudentInfoDao;
import dao.StudentSubjectDao;
import dao.SubjectInfoDao;
import dao.TaskInfoDao;

@WebListener
public class ContextLoaderListener implements ServletContextListener {
	@Override
	public void contextInitialized(ServletContextEvent event) {
		try {
			ServletContext sc = event.getServletContext();

			InitialContext initialContext = new InitialContext();
			DataSource ds = (DataSource)initialContext.lookup(
					"java:comp/env/jdbc/pr_system");


			// 권한정보 DAO datasource 보관소 저장
			AuthDao authDao = new AuthDao();
			authDao.setDataSource(ds);

			sc.setAttribute("authDao", authDao);


			// 학생정보 DAO datasource 보관소 저장
			StudentInfoDao stdInfoDao = new StudentInfoDao();
			stdInfoDao.setDataSource(ds);

			sc.setAttribute("stdInfoDao", stdInfoDao);

			// 교수정보 DAO datasource 보관소 저장
			ProfessorInfoDao profInfoDao = new ProfessorInfoDao();
			profInfoDao.setDataSource(ds);

			sc.setAttribute("profInfoDao", profInfoDao);

			// 과목정보 DAO datasource 보관소 저장
			SubjectInfoDao subjectInfoDao = new SubjectInfoDao();
			subjectInfoDao.setDataSource(ds);

			sc.setAttribute("subjectInfoDao", subjectInfoDao);

			// 공지사항 DAO datasource 보관소 저장
			NoticeDao noticeDao = new NoticeDao();
			noticeDao.setDataSource(ds);

			sc.setAttribute("noticeDao", noticeDao);

			// 과제정보 DAO datasource 보관소 저장
			TaskInfoDao taskInfoDao = new TaskInfoDao();
			taskInfoDao.setDataSource(ds);

			sc.setAttribute("taskInfoDao", taskInfoDao);

			// 학생_과목 DAO datasource 보관소 저장
			StudentSubjectDao studentSubjectDao = new StudentSubjectDao();
			studentSubjectDao.setDataSource(ds);

			sc.setAttribute("studentSubjectDao", studentSubjectDao);



		} catch(Throwable e) {
			e.printStackTrace();
		}
	}

	@Override
	public void contextDestroyed(ServletContextEvent event) {}
}
