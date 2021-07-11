<%--
  Created by IntelliJ IDEA.
  User: abdoul
  Date: 08-07-2021
  Time: 23:42
  To change this template use File | Settings | File Templates.
--%>

<div style="margin: auto; width: 512px">
    <%@ include file="./menu.jsp" %>
    <%@ include file="./formulaire.jsp" %>
    <h1>
        Le result est : <%= request.getParameter("res") %>
    </h1>
</div>
