<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="academy.learnprogramming.util.AttributeNames" %>
<html>
<head>
    <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0 auto;
            font-family: 'Roboto', sans-serif;
            background: #fafafa;
            flex-flow: column;
        }
        .Table {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-flow: column;
        }
    </style>
    <title>Add Items</title>
</head>
<body>
    <div class="Table">
        <form:form method="POST" modelAttribute="${AttributeNames.TODO_ITEM}">
            <table>
                <tr>
                    <td><label>ID</label></td>
                    <td>
                        <form:input path="id" disabled="true" />
                    </td>
                </tr>
                <tr>
                    <td><label>Title</label></td>
                    <td><form:input path="title"/></td>
                </tr>
                <tr>
                    <td><label>Deadline</label></td>
                    <td><form:input path="deadline"/></td>
                </tr>
                <tr>
                    <td><label>Details</label></td>
                    <td><form:textarea path="details"/></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Submit"/></td>
                </tr>
            </table>
        </form:form>
    </div>
</body>
</html>