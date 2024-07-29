<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Payroll Form</title>
</head>
<body>
    <h1>${payroll.id == null ? 'Add Payroll' : 'Edit Payroll'}</h1>
    <form action="${pageContext.request.contextPath}/payroll" method="post">
        <input type="hidden" name="id" value="${payroll.id}"/>
        <label for="employeeId">Employee ID:</label>
        <input type="text" id="employeeId" name="employeeId" value="${payroll.employeeId}" required/><br/>

        <label for="month">Month:</label>
        <input type="text" id="month" name="month" value="${payroll.month}" required/><br/>

        <label for="year">Year:</label>
        <input type="text" id="year" name="year" value="${payroll.year}" required/><br/>

        <label for="amount">Amount:</label>
        <input type="number" id="amount" name="amount" value="${payroll.amount}" step="0.01" required/><br/>

        <input type="submit" value="Save"/>
    </form>
    <a href="${pageContext.request.contextPath}/payroll">Back to Payroll List</a>
</body>
</html>
