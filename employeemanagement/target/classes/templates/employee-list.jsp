<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employee List</title>
</head>
<body>
    <h1>Employee List</h1>
    <a href="${pageContext.request.contextPath}/employees/new">Add New Employee</a>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Position</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="employee" items="${employees}">
                <tr>
                    <td><c:out value="${employee.id}"/></td>
                    <td><c:out value="${employee.firstName}"/></td>
                    <td><c:out value="${employee.lastName}"/></td>
                    <td><c:out value="${employee.email}"/></td>
                    <td><c:out value="${employee.position}"/></td>
                    <td>
                        <a href="${pageContext.request.contextPath}/employees/${employee.id}/edit">Edit</a>
                        <a href="${pageContext.request.contextPath}/employees/${employee.id}/delete">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
