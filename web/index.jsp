<%--
  Created by IntelliJ IDEA.
  User: z-one
  Date: 11/4/19
  Time: 8:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% float firstOperand = 0, secondOperand = 0, result = 0;
    String operator = "";
    if (request.getAttribute("result") != null) {
        result = Float.parseFloat(request.getAttribute("result").toString());
        firstOperand = Float.parseFloat(request.getParameter("firstOperand"));
        secondOperand = Float.parseFloat(request.getParameter("secondOperand"));
        operator = request.getParameter("operator");
    }%>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/calculate">
    <fieldset style="width: fit-content; height: fit-content">
        <p>First Operand: <input type="number" name="firstOperand" value="<%=firstOperand%>"></p>
        <p>Operation: <select name="operator">
            <option value="+" <%if (operator.equals("+")) {%> selected <%}%>>Addition</option>
            <option value="-"<%if (operator.equals("-")) {%> selected <%}%>>Subtraciton</option>
            <option value="*"<%if (operator.equals("*")) {%> selected <%}%>>Multiplication</option>
            <option value="/"<%if (operator.equals("/")) {%> selected <%}%>>Division</option>
        </select>
        </p>
        <p>Second Operand: <input type="number" name="secondOperand" value="<%=secondOperand%>"></p>
    </fieldset>
    <p><input type="submit" value="Calculate"></p>
</form>
<p>Result: <input type="number" readonly="true" value="<%=result%>"></p>
</body>
</html>
