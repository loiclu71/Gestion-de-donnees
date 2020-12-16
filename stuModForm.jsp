<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Modify</title>
    <style>
        .divcenter {
            width: 850px;
            height: 400px;
            background-color: papayawhip;
            margin: auto;
        }
    </style>
</head>
<body>
<div class="divcenter">
    <div style="height: 10px"></div>
    <form action="stuMod.jsp" style="text-align: center">
        <table align="center">
            <tr>
                <td colspan="2" style="text-align: center">
                    <font color="red">*代表必填项</font>
                </td>
            </tr>
            <tr>
                <td>Number：</td>
                <td><input id="sid" name="sid" value="<%=request.getParameter("sid")%>" required readonly></td>
            </tr>
            <tr>
                <td>Name：</td>
                <td><input id="sname" name="sname" value="<%=request.getParameter("sname")%>" required><font
                        color="red">*</font></td>
            </tr>
            <tr>
                <td>Age：</td>
                <td><input id="sage" name="sage" value="<%=request.getParameter("sage")%>"></td>
            </tr>
            <tr>
                <td>Sex：</td>
                <td><input id="ssex" name="ssex" value="<%=request.getParameter("ssex")%>"></td>
            </tr>
            <tr>
                <td>Region：</td>
                <td><input id="snativeplace" name="snativeplace" value="<%=request.getParameter("snativeplace")%>"></td>
            </tr>
            <tr>
                <td>Specialization：</td>
                <td><input id="smajor" name="smajor" value="<%=request.getParameter("smajor")%>"></td>
            </tr>
            <tr>
                <td>Class：</td>
                <td><input id="sclass" name="sclass" value="<%=request.getParameter("sclass")%>"></td>
            </tr>
            <tr>
                <td>Nation：</td>
                <td><input id="snative" name="snative" value="<%=request.getParameter("snative")%>"></td>
            </tr>
        </table>
        <table align="center">
            <tr style="text-align: center">
                <td>
                    <input type="submit" value="Modify check">
                </td>
                <td>
                    <input type="button" value="Back" onclick="window.location.href='student.jsp'">
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
