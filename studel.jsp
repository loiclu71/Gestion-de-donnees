<%@ page import="com.test1.StudentDb" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete</title>
</head>
<body>
<%
    String sid = request.getParameter("sid");
    String sql = "delete from student where sid = "+sid;
    StudentDb sdb = new StudentDb();
    if (sdb.studentUpdate(sql)){
        System.out.println("Delete the code:"+sql);
        System.out.println(sid+"Delete successfully");
        response.sendRedirect("student.jsp");
    }else {
        out.println(sql);
        out.println(sid+"delete in fail");
    }
%>
</body>
</html>
