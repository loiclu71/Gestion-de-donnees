<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.test1.StudentDb" %>
<%@ page import="java.util.List" %>
<%@ page import="com.test1.Student" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Web</title>
    <style>
        td, th {
            white-space: nowrap;
            width: 70px;
            height: 35px;
            text-align: center;
        }
 
        .divcenter {
            width: 850px;
            height: 400px;
            background-color: #9bfaff;
            overflow: auto;
            margin: auto;
        }
    </style>
</head>
<body>
<div class="divcenter">
    <form action="student.jsp" style="text-align: center;margin-top: 10px">
        <input id="sname" name="sname" placeholder="Find by name">
        <input type="submit" value="Find">
        <input type="button" value="add information" onclick="window.location.href='stuAddForm.jsp'">
    </form>
    <table border="1" cellspacing="0" align="center">
        <tr>
            <th>Number</th>
            <th>Name</th>
            <th>Age</th>
            <th>Sex</th>
            <th>Region</th>
            <th>Specialization</th>
            <th>Class</th>
            <th>Nation</th>
            <th colspan="2">Function</th>
        </tr>
 
        <%
            StudentDb sdb = new StudentDb();
            String sname = request.getParameter("sname");
            String sql = null;
            if (sname == null) {
                sql = "select * from student";
            } else {
                sql = "select * from student where sname like '%" + sname + "%'";
            }
            List<Student> lst = sdb.getStudent(sql);
            request.setAttribute("stuLst", lst);
        %>
        <c:forEach items="${stuLst}" var="stu">
            <tr id="${stu.sid}">
                <td>${stu.sid}</td>
                <td>${stu.sname}</td>
                <td>${stu.sage}</td>
                <td>${stu.ssex}</td>
                <td>${stu.snativeplace}</td>
                <td>${stu.smajor}</td>
                <td>${stu.sclass}</td>
                <td>${stu.snative}</td>
                <td><a href="studel.jsp?sid=${stu.sid}" style="text-decoration: none">Delete</a></td>
                <td>
                    <a href="stuModForm.jsp?sid=${stu.sid}&sname=${stu.sname}&sage=${stu.sage}&ssex=${stu.ssex}&snativeplace=${stu.snativeplace}&smajor=${stu.smajor}&sclass=${stu.sclass}&snative=${stu.snative}"
                       style="text-decoration: none">Modifier</a></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
