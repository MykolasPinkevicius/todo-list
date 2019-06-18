<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="academy.learnprogramming.util.Mappings" %>
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
            flex-flow: row;
        }
    </style>
    <title>View Item</title>
</head>
<body>
    <div class="Table">
        <table border="1" cellpadding="5">
            <tr>
                <td><label>ID</label></td>
                <td><c:out value="${toDoItem.id}"/></td>
            </tr>
            <tr>
                <td><label>Title</label></td>
                <td><c:out value="${toDoItem.title}"/></td>
            </tr>
            <tr>
                <td><label>Deadline</label></td>
                <td><c:out value="${toDoItem.deadline}"/></td>
            </tr>
            <tr>
                <td><label>Details</label></td>
                <td><c:out value="${toDoItem.details}"/></td>
            </tr>
        </table>
    </div>
        <table border="1" cellpadding="5">
            <c:url var="itemsLink" value="${Mappings.ITEMS}"/>
            <h2><a href="${itemsLink}">Get back to Items List</a></h2>
        </table>
</body>
</html>