<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Attendance List</title>
</head>
<body>
    <h1>Attendance List</h1>
    <a href="${pageContext.request.contextPath}/attendance/new">Add New Attendance</a>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Employee ID</th>
                <th>Date</th>
                <th>Present</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="attendance" items="${attendances}">
                <tr>
                    <td><c:out value="${attendance.id}"/></td>
                    <td><c:out value="${attendance.employeeId}"/></td>
                    <td><c:out value="${attendance.date}"/></td>
                    <td><c:out value="${attendance.present}"/></td>
                    <td>
                        <a href="${pageContext.request.contextPath}/attendance/${attendance.id}/edit">Edit</a>
                        <a href="${pageContext.request.contextPath}/attendance/${attendance.id}/delete">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
