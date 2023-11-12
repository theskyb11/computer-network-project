<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.cn.cn_project.model.User" %>
<html>
<head>
    <title>Update User</title>
</head>
<body>
<h2>Update User</h2>
<form method="post" action="/updateUser">
    <input type="hidden" name="userId" value="${userId}"/>
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" value="${name}"/><br/>
    <label for="email">Email:</label>
    <input type="email" id="email" name="email" value="${email}"/><br/>
    <label for="phoneno">Phone Number:</label>
    <input type="number" id="phoneno" name="phoneno" value="${phoneno}"/><br/>
    <input type="submit" value="Update User"/>
</form>
</body>
</html>
