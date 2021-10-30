<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User - Delete</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
</head>
<body>
<%@include file="fragments/header.jsp" %>
<%@include file="fragments/addButton.jsp" %>
<div class="bg-secondary" style="height: 75%">
    <table class="table table-secondary table-hover">
        <th scope="col">Id</th>
        <th scope="col">Name</th>
        <th scope="col">Email</th>
        </thead>
        <tbody>
        <tr style="vertical-align: middle" >
            <th scope="row"> ${user.id}</th>
            <td>${user.userName}</td>
            <td>${user.email}</td>
        </tr>
        </tbody>
    </table>
    <div class="bg-secondary text-white py-1 text-center py-5" style="height: 500px">
        <label><h4>Are u sure to delete this user?</h4>
    </label>
        <form action="/user/delete" method="POST"><input type="hidden" name="id" value="${user.id}"/> <input
                class="btn btn-danger px-3 fw-bold" type="submit" name="decision" value="Yes"> <input
                class="btn btn-primary x-3 fw-bold" type="submit" name="decision" value="No"></form>
    </div>
    <div class="d-grid gap-2 col-6 mx-auto">
        <a class="btn btn-warning" href="/user/list" role="button">Return</a>
    </div>
    <%@include file="fragments/footer.jsp" %>
</body>
</html>
