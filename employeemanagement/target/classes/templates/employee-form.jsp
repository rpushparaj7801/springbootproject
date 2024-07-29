<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Form</title>
</head>
<body>
    <h1>${employee.id == null ? 'Add Employee' : 'Edit Employee'}</h1>
    <form action="${pageContext.request.contextPath}/employees" method="post">
        <input type="hidden" name="id" value="${employee.id}"/>
        <label for="firstName">First Name:</label>
        <input type="text" id="firstName" name="firstName" value="${employee.firstName}" required/><br/>

        <label for="lastName">Last Name:</label>
        <input type="text" id="lastName" name="lastName" value="${employee.lastName}" required/><br/>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value="${employee.email}" required/><br/>

        <label for="position">Position:</label>
        <input type="text" id="position" name="position" value="${employee.position}" required/><br/>

        <input type="submit" value="Save"/>
    </form>
    <a href="${pageContext.request.contextPath}/employees">Back to Employee List</a>
</body>
</html>
