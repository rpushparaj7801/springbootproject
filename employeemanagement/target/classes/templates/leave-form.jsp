<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Leave Form</title>
</head>
<body>
    <h1>${leave.id == null ? 'Add Leave' : 'Edit Leave'}</h1>
    <form action="${pageContext.request.contextPath}/leave" method="post">
        <input type="hidden" name="id" value="${leave.id}"/>
        <label for="employeeId">Employee ID:</label>
        <input type="text" id="employeeId" name="employeeId" value="${leave.employeeId}" required/><br/>

        <label for="startDate">Start Date:</label>
        <input type="date" id="startDate" name="startDate" value="${leave.startDate}" required/><br/>

        <label for="endDate">End Date:</label>
        <input type="date" id="endDate" name="endDate" value="${leave.endDate}" required/><br/>

        <label for="type">Type:</label>
        <input type="text" id="type" name="type" value="${leave.type}" required/><br/>

        <input type="submit" value="Save"/>
    </form>
    <a href="${pageContext.request.contextPath}/leave">Back to Leave List</a>
</body>
</html>
