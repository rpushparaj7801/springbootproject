<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Attendance Form</title>
</head>
<body>
    <h1>${attendance.id == null ? 'Add Attendance' : 'Edit Attendance'}</h1>
    <form action="${pageContext.request.contextPath}/attendance" method="post">
        <input type="hidden" name="id"
        <input type="hidden" name="id" value="${attendance.id}"/>
        <label for="employeeId">Employee ID:</label>
        <input type="text" id="employeeId" name="employeeId" value="${attendance.employeeId}" required/><br/>

        <label for="date">Date:</label>
        <input type="date" id="date" name="date" value="${attendance.date}" required/><br/>

        <label for="present">Present:</label>
        <input type="checkbox" id="present" name="present" ${attendance.present ? 'checked' : ''}/><br/>

        <input type="submit" value="Save"/>
    </form>
    <a href="${pageContext.request.contextPath}/attendance">Back to Attendance List</a>
</body>
</html>
