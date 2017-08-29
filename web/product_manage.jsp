<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/8/28
  Time: 22:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品信息管理</title>
    <script src="easyui/jquery.min.js" type="text/javascript"></script>
    <script src="easyui/jquery.easyui.min.js" type="text/javascript"></script>
    <script src="easyui/jquery.easyui.min.js" type="text/javascript"></script>
    <link type="text/css" href="easyui/themes/icon.css" rel="stylesheet">
    <link id="themeLink" type="text/css" href="easyui/themes/bootstrap/easyui.css" rel="stylesheet">
</head>
<body>
<table id="list"></table>

<script type="text/javascript">
    $(function () {
        $("#list").datagrid({

        });
    });
</script>
</body>
</html>
