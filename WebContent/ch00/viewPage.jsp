<!-- viewPage.jsp -->
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page  contentType="text/html; charset=EUC-KR"%>
<%
		request.setCharacterEncoding("EUC-KR");
		final String SAVEFOLDER= "C:/Jsp/myapp/WebContent/ch00/storage/";
		final String ENCODING="EUC-KR";
		final int MAXSIZE=1024*1024*10;
		try{
			MultipartRequest multi= 
					new MultipartRequest(request, SAVEFOLDER,MAXSIZE, ENCODING,
							new DefaultFileRenamePolicy());
			String user = multi.getParameter("user");
			String title = multi.getParameter("title");
			String fileName= multi.getFilesystemName("upload");
			String fileType= multi.getContentType("upload");
			File f = multi.getFile("upload");
			long len=0;
			if(f!=null){
				len=f.length();
			out.println("���ϸ� : " + fileName+"<br>");
			out.println("����Ÿ�� : " + fileType+"<br>");
			out.println("����ũ�� : " + len+"<br>");
			out.println("user : " + user+"<br>");
			out.println("title : " + title+"<br>");
			}
		}catch(Exception e){
			e.printStackTrace();
		}	
%>