<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
<html>
<head>
    <title>User - List</title>
</head>
<body>
<%@include file="fragments/header.jsp" %>
<%@include file="fragments/addButton.jsp" %>
<div class="d-flex bg-secondary" style="height: 75%">
        <div class="bg-secondary flex-fill" style="overflow-y: scroll; overflow-x: hidden; max-height: 100%;">
            <table class="table table-secondary table-hover overflow-auto">
                <caption>List of users</caption>
               <thead class="table-dark" style="position: sticky; top: 0px">
                <th scope="col">Id</th>
                <th scope="col">Name</th>
                <th scope="col">Email</th>
                <th scope="col">Akcja</th>
               </thead>
            <tbody >
                <c:forEach items="${Users}" var="user">
                    <tr style="vertical-align: middle" >
                        <th scope="row"> ${user.id}</th>
                        <td>${user.userName}</td>
                        <td>${user.email}</td>
                        <td>
                            <div class="btn-group-sm">
                                <a href="/user/show?id=${user.id}" class="btn  btn-outline-primary">Show</a>
                                <a href="/user/edit?id=${user.id}" class="btn  btn-outline-primary">Edit</a>
                                <a href="/user/delete?id=${user.id}" class="btn  btn-outline-danger"
                                   aria-current="page">Delete</a>
                            </div>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
            </table>
        </div>
</div>
<%@include file="fragments/footer.jsp" %>
</body>
</html>
