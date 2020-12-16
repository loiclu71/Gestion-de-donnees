<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Addition web</title>
    <style>
        .divcenter {
            width: 850px;
            height: 400px;
            background-color: aquamarine;
            margin: auto;
        }
    </style>
</head>
<body>
<div class="divcenter">
    <div style="height: 10px"></div>
    <form action="stuAdd.jsp" style="text-align: center;">
        <table align="center">
            <tr>
                <td colspan="2" style="text-align: center">
                    <font style="color: red">* Must</font>
                </td>
            </tr>
            <tr>
                <td>学号：</td>
                <td>
                    <input id="sid" name="sid" placeholder="Number" required >
                    <font style="color: red">*</font>
                </td>
            </tr>
            <tr>
                <td>姓名：</td>
                <td><input id="sname" name="sname" placeholder="Name" required>
                    <font style="color: red">*</font>
                </td>
            </tr>
            <tr>
                <td>年龄：</td>
                <td><input id="sage" name="sage" placeholder="Age" required>
                    <font style="color: red">*</font>
                </td>
            </tr>
            <tr>
                <td>性别：</td>
                <td><input id="ssex" name="ssex" placeholder="Sex" required>
                    <font style="color: red">*</font>
                </td>
            </tr>
            <tr>
                <td>地区：</td>
                <td><input id="snativeplace" name="snativeplace" placeholder="Region" required>
                    <font style="color: red">*</font>
                </td>
            </tr>
            <tr>
                <td>专业：</td>
                <td><input id="smajor" name="smajor" placeholder="Specialization" required>
                    <font style="color: red">*</font>
                </td>
            </tr>
            <tr>
                <td>班级：</td>
                <td><input id="sclass" name="sclass" placeholder="Class" required>
                    <font style="color: red">*</font>
                </td>
            </tr>
            <tr>
                <td>民族：</td>
                <td><input id="snative" name="snative" placeholder="Nation" required>
                    <font style="color: red">*</font>
                </td>
            </tr>
        </table>
        <table align="center">
            <tr style="text-align: center">
                <td>
                    <input type="submit" value="Add">
                </td>
                <td>
                    <input type="reset" value="Reset">
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
