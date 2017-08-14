<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/8/14
  Time: 22:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  Hello World!<br/>
  <%
    out.println("你的 IP 地址 " + request.getRemoteAddr());
  %>
  </body>
</html>
