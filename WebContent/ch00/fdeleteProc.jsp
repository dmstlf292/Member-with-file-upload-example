<!-- fdeleteProc.jsp -->
<%@ page  contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="mgr" class="upload.FileloadMgr"/>
<%
		request.setCharacterEncoding("EUC-KR");
		String snum[]=request.getParameterValues("fch");
		int num[] = new int[snum.length-1];
		for(int i=0; i<num.length;i++){
			num[i]=Integer.parseInt(snum[i+1]);//�迭���ڸ� ������ ������ִ� �۾�
		}
		mgr.deleteFile(num);
		response.sendRedirect("flist.jsp");
		
%>