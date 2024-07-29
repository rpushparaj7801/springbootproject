<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Payroll List</title>
</head>
<body>
    <h1>Payroll List</h1>
    <a href="${pageContext.request.contextPath}/payroll/new">Add New Payroll</a>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Employee ID</th>
                <th>Month</th>
                <th>Year</th>
                <th>Amount</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="payroll" items="${payrolls}">
                <tr>
                    <td><c:out value="${payroll.id}"/></td>
                    <td><c:out value="${payroll.employeeId}"/></td>
                    <td><c:out value="${payroll.month}"/></td>
                    <td><c:out value="${payroll.year}"/></td>
                    <td><c:out value="${payroll.amount}"/></td>
                    <td>
                        <a href="${pageContext.request.contextPath}/payroll/${payroll.id}/edit">Edit</a>
                        <a href="${pageContext.request.contextPath}/payroll/${payroll.id}/delete">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
