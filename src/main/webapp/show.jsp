<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User - Show</title>
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
        <th scope="col">Akcja</th>
        </thead>
        <tbody>
        <tr>
            <th scope="row"> ${user.id}</th>
            <td><p class="text-body">${user.userName}</p></td>
            <td><p class="text-body">${user.email}</p></td>
            <td>
                <div class="btn-group-sm">
                    <a href="/user/edit?id=${user.id}" class="btn btn-primary">Edit</a>
                    <a href="/user/delete?id=${user.id}" class="btn btn-primary" aria-current="page">Delete</a>
                </div>
            </td>
        </tr>
        </tbody>
    </table>
    <div class="d-grid gap-2 col-6 mx-auto">
        <a class="btn btn-warning" href="/user/list" role="button">Return</a>
    </div>
</div>
<%@include file="fragments/footer.jsp" %>
</body>
</html>
