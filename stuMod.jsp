<%@ page import="com.test1.StudentDb" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Modify Web</title>
</head>
<body>
<%
    String sid = request.getParameter("sid");
    String sname = request.getParameter("sname");
    String sage = request.getParameter("sage");
    String ssex = request.getParameter("ssex");
    String snativeplace = request.getParameter("snativeplace");
    String smajor = request.getParameter("smajor");
    String sclass = request.getParameter("sclass");
    String snative = request.getParameter("snative");
    StudentDb sdb = new StudentDb();
    String sql = "update student set sname='"+sname+"',sage="+sage+",ssex='"+ssex+"',snativeplace='"+snativeplace+"',smajor='"+smajor+"',sclass='"+sclass+"',snative='"+snative+"'  where sid="+sid;
    if (sdb.studentUpdate(sql)){
        response.sendRedirect("student.jsp");
    }else {
        request.getRequestDispatcher("stuModForm.jsp").forward(request,response);
    }
%>

</body>
</html>
