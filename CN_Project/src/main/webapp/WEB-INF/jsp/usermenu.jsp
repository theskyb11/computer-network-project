<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.cn.cn_project.model.User" %>
<%@ page import="java.util.Base64" %>
<%
    List<User> users = (List<User>) request.getAttribute("users");
%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<h1>Welcome to Usermenu</h1>
<a href="/usermenu/useradd">Add User</a>

<h2>All Users:</h2>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Phone Number</th>
        <th>Profile Image</th>
        <th>Actions</th>
    </tr>
    <% for (User user : users) { %>
    <tr>
        <td><%= user.getId() %></td>
        <td><%= user.getName() %></td>
        <td><%= user.getEmail() %></td>
        <td><%= user.getPhoneno() %></td>
        <td>
            <%-- Convert the byte array to Base64 encoded string if it is not null --%>
            <% if (user.getImg() != null) { %>
            <% String base64Image = Base64.getEncoder().encodeToString(user.getImg()); %>
            <img src="data:image/jpeg;base64, <%= base64Image %>" width="100" height="100" />
            <% } else { %>
            No Image
            <% } %>
        </td>
        <td>
            <form action="/deleteUser" method="post" onsubmit="return confirm('Are you sure you want to delete this user?')">
                <input type="hidden" name="userId" value="<%= user.getId() %>">
                <input type="submit" value="Delete">
            </form>
            <form action="/updateUser" method="get">
                <input type="hidden" name="userId" value="<%= user.getId() %>">
                <input type="submit" value="Update">
            </form>
        </td>
    </tr>
    <% } %>
</table>
</body>
</html>
