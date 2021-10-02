<%@ page import="pl.coderslab.entity.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User - add</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
</head>
<body>
<%@include file="fragments/header.jsp" %>
<div class="bg-secondary" style="height: 85%">
    <div class="container-fluid">
        <form method="post">
            <div class="form-floating mb-3">
                <input type="text" name="addName" class="form-control" id="addUsername" placeholder="User name">
                <label for="addUsername">
                    User name</label>
            </div>
            <div class="form-floating mb-3">
                <input type="email" name="addEmail" class="form-control" id="addEmail" placeholder="name@example.com">
                <label for="addEmail">Email address</label>
            </div>
            <div class="form-floating">
                <input type="password" name="addPass" class="form-control" id="addPassword" placeholder="Password">
                <label for="addPassword">Password</label>
            </div>
            <div class="d-grid gap-2 col-6 mb-2 mx-auto">
                <button type="submit" class="btn btn-primary">Add user</button>
            </div>
            <div class="d-grid gap-2 col-6 mx-auto">
                <a class="btn btn-warning" href="/user/list" role="button">Return</a>
            </div>
        </form>
    </div>
</div>
<%@include file="fragments/footer.jsp" %>
</body>
</html>
