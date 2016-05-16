<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>upload</title>
</head>
<body>
	<h1>File Upload Result</h1>
	<%
	String uploadPath =  "C:/Users/b10310/workspace/PRsystem/WebContent/Fileupload/";
	int size = 10*1024*1024;
	
	String register_code="";
	String sub_divide="";
	String sub_code ="";
	String sub_name = "";
	Integer limit_num = 0;
	String sub_description ="";
	String filename1 = "";
	String finish = "";
	String oFile1 = "";

	
	/* out.print(request.getRealPath("upload")); */
	try{
		MultipartRequest multi = new MultipartRequest(
								request,
								uploadPath,
								size,
								"utf-8",
								new DefaultFileRenamePolicy()
		); /* MultipartRequest multi 생성되는 순간, 파일은 미리 업로드 되어있을 것임*/
	
	register_code = multi.getParameter("register_code");		
	sub_divide = multi.getParameter("sub_divide");	
	sub_code = multi.getParameter("sub_code");
	sub_name = multi.getParameter("sub_name");
	limit_num = Integer.parseInt(multi.getParameter("limit_num"));
	sub_description = multi.getParameter("sub_description");
	finish = sub_code+"_"+sub_divide;
	

	
	// upload 된 file 이름
	Enumeration files = multi.getFileNames(); // file1. file2 라고 저장된 사진이 이곳에..
	
	String file1 = (String)files.nextElement(); // 첫번째 file인 file1을 파일로 만듦
	filename1 = multi.getFilesystemName(file1);
	oFile1 = multi.getOriginalFileName(file1);

	}catch(Exception ex){
		
		out.print(ex.toString());
	}
%>
	<li>과목코드 : <%=sub_code %>
	<li>분반 : <%=sub_divide %>
	<li>등록코드 : <%=register_code %>
	<li>과목제목 : <%=sub_name %>
	<li>참여인원제한 : <%=limit_num %>
	<li>상세정보 : <%=sub_description %>
	<li>파일이름 <%= filename1%>
	 <%= finish%> 
	 <!-- finish 가 최종 키값 과목코드_분반, 등록코드는 비밀번호개념 -->

</body>
</html>