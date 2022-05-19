<%--
  Created by IntelliJ IDEA.
  User: bartoszantowski
  Date: 11/05/2022
  Time: 18:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>FORM</title>

    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/style.css">

    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">

    <style>
        .error {color: red}
    </style>

</head>

<body>

    <div id="wrapper">
        <div id="header">
            <h2>CRM - Customer Relationship Manager</h2>
        </div>
    </div>

    <div>
        <h3>Save Customer</h3>

        <form:form action="saveCustomer" modelAttribute="customer" method="post">

            <form:hidden path="id" />

            <table>
                <tbody>
                    <tr>
                        <td><label>First name:</label></td>
                        <td><form:input path="firstName"/></td>
                        <td><form:errors path="firstName" cssClass="error"/></td>
                    </tr>

                    <tr>
                        <td><label>Last name:</label></td>
                        <td><form:input path="lastName"/></td>
                        <td><form:errors path="lastName" cssClass="error"/></td>
                    </tr>

                    <tr>
                        <td><label>Email:</label></td>
                        <td><form:input path="email"/></td>
                        <td><form:errors path="email" cssClass="error"/></td>
                    </tr>

                    <tr>
                        <td><label></label></td>
                        <td><input type="submit" value="Save" class="save" /></td>
                    </tr>

                </tbody>
            </table>

            <div style="clear: both;"></div>
            <p>
                <a href="${pageContext.request.contextPath}/customer/list">Back to list</a>
            </p>

        </form:form>

    </div>

</body>
</html>
