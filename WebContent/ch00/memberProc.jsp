<%@page contentType="text/html; charset=EUC-KR"%>
<%request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="mgr" class="member.MemberMgr"/>
<jsp:useBean id="bean" class="member.MemberBean">
<jsp:setProperty property="*" name="bean" />
</jsp:useBean>
<%
		boolean result = mgr.insertMember(bean);
		String msg = "Failed to join";
		String url = "member.jsp";
		if(result){
			msg = "Registration was successful.";
			url = "login.jsp";
			//���Լ����� ���ÿ� �α��� ó���� ���� ���
			session.setAttribute("idKey", bean.getId());
		}
%>
<script>
	alert("<%=msg%>");
	location.href = "<%=url%>";
</script>











