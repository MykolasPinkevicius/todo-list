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
        <c:url var="itemsLink" value="${Mappings.ITEMS}"/>
        <h2><a href="${itemsLink}">Show ToDo Items</a></h2>
    </div>
</body>
</html>