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
            flex-flow: column;
        }
    </style>
    <title>ToDo Items</title>
</head>
<body>
    <div class="Table">

        <table border="1" cellpadding="5">
            <caption><h2>ToDo Items</h2>
                <c:url var="addUrl" value = "${Mappings.ADD_ITEM}"/>
                <a href="${addUrl}">New Item</a>
            </caption>
            <tr>
                <th>Title</th>
                <th>Deadline</th>
                <th>View</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>

            <c:forEach var="item" items="${toDoData.items}">

                <c:url var="editUrl" value="${Mappings.ADD_ITEM}">
                    <c:param name="id" value="${item.id}"/>
                </c:url>

                <c:url var="deleteUrl" value="${Mappings.DELETE_ITEM}">
                    <c:param name="id" value="${item.id}"/>
                </c:url>

                <c:url var="viewItem" value="${Mappings.ITEM}">
                    <c:param name="id" value="${item.id}"/>
                </c:url>
                <tr>
                    <td><c:out value="${item.title}"/></td>
                    <td><c:out value="${item.deadline}"/></td>
                    <td><a href="${viewItem}">View Item Details</a></td>
                    <td><a href="${editUrl}">Edit</a></td>
                    <td><a href="${deleteUrl}">Delete</a></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>