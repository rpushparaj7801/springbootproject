<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Report</title>
</head>
<body>
    <h1>Report</h1>

    <h2>Employees</h2>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>First Name</th>

                <th>Last Name</th>
                <th>Email</th>
                <th>Position</th>
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
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <h2>Attendance</h2>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Employee ID</th>
                <th>Date</th>
                <th>Present</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="attendance" items="${attendances}">
                <tr>
                    <td><c:out value="${attendance.id}"/></td>
                    <td><c:out value="${attendance.employeeId}"/></td>
                    <td><c:out value="${attendance.date}"/></td>
                    <td><c:out value="${attendance.present}"/></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <h2>Leave</h2>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Employee ID</th>
                <th>Start Date</th>
                <th>End Date</th>
                <th>Type</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="leave" items="${leaves}">
                <tr>
                    <td><c:out value="${leave.id}"/></td>
                                        <td><c:out value="${leave.id}"/></td>
                                        <td><c:out value="${leave.employeeId}"/></td>
                                        <td><c:out value="${leave.startDate}"/></td>
                                        <td><c:out value="${leave.endDate}"/></td>
                                        <td><c:out value="${leave.type}"/></td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </body>
                    </html>

