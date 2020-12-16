<%@ page import="com.test1.db.StudentDb" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Wed Add</title>
</head>
<body>
<%
    StudentDb sdb = new StudentDb();
    String sid =request.getParameter("sid");
    String sname = request.getParameter("sname");
    String sage = request.getParameter("sage");
    String ssex = request.getParameter("ssex");
    String snativeplace = request.getParameter("snativeplace");
    String smajor = request.getParameter("smajor");
    String sclass = request.getParameter("sclass");
    String snative = request.getParameter("snative");
    String sql = "insert into student(sid,sname,sage,ssex,snativeplace,smajor,sclass,snative) values("+sid+",'"+sname+"',"+sage+",'"+ssex+"','"+snativeplace+"','"+smajor+"','"+sclass+"','"+snative+"')";
    if (sdb.studentUpdate(sql)){
        System.out.println("insert code:"+sql);
        System.out.println(sid+"Add successfully");
        response.sendRedirect("student.jsp");
    }else {
        request.getRequestDispatcher("student.jsp").forward(request,response);
    }
%>
</body>
</html>
