<% String action = request.getParameter("action");
    if (action == null) action = "addition"; %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<form method="post">
    <table>
        <tr>
            <th>
                <b><%= action.toUpperCase()%>
                </b>
            </th>
        </tr>
        <tbody>
        <tr>
            <td>a:<input type="number" name="a"></td>
        </tr>
        <tr>
            <td>b:<input type="number" name="b"></td>
        </tr>
        <tr>
            <td><input type="submit" name="Calculer" value="Calculer"/></td>
        </tr>
        </tbody>
        <input type="hidden" name="action" value="<%=action%>">
    </table>

</form>
</body>
</html>