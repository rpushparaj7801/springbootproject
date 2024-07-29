<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Leave List</title>
</head>
<body>
    <h1>Leave List</h1>
    <a href="${pageContext.request.contextPath}/leave/new">Add New Leave</a>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Employee ID</th>
                <th>Start Date</th>
                <th>End Date</th>
                <th>Type</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="leave" items="${leaves}">
                <tr>
                    <td><c:out value="${leave.id}"/></td>
                    <td><c:out value="${leave.employeeId}"/></td>
                    <td><c:out value="${leave.startDate}"/></td>
                    <td><c:out value="${leave.endDate}"/></td>
                    <td><c:out value="${leave.type}"/></td>
                    <td>
                        <a href="${pageContext.request.contextPath}/leave/${leave.id}/edit">Edit</a>
                        <a href="${pageContext.request.contextPath}/leave/${leave.id}/delete">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
