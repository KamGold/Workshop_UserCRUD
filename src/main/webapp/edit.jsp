<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User - edit</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
</head>
<body>
<%@include file="fragments/header.jsp"%>
<div class="bg-secondary" style="height: 85%">
<div class="container-fluid">
    <form method="post">
        <div class="form-floating mb-3">
            <input type="text" name="editName" class="form-control" id="editUsername" placeholder="User name"
                   value="${user.userName}">
            <label for="editUsername">User name</label>
        </div>
        <div class="form-floating mb-3">
            <input type="email" name="editEmail" class="form-control" id="editEmail" placeholder="name@example.com"
                   value="${user.email}">
            <label for="editEmail">Email address</label>
        </div>
        <div class="form-floating">
            <input type="password" name="editPass" class="form-control" id="editPassword" placeholder="Password">
            <label for="editPassword">Password</label>
        </div>
        <button type="submit" class="btn btn-primary">Edit User</button>
        <div class="d-grid gap-2 col-6 mx-auto">
            <a class="btn btn-warning" href="/user/list" role="button">Return</a>
        </div>
    </form>
    <%@include file="fragments/footer.jsp" %>
</body>
</html>
