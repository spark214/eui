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
            url:"product.json",
            columns:[[
                {field:"productid",title:"商品编号",width:100,checkbox:true},
                {field:"productname",title:"商品名称",width:150},
                {field:"unitcost",title:"商品价格",width:150},
                {field:"status",title:"商品状态",width:150,formatter:function (values,row,index) {
                    if(values!=null){
                        return values=="p"?"<font color='green'>有货</font>":"<font color='red'>缺货</font>";
                    }
                    else
                        return ;
                }},
            ]],
            pagination:true,
        });
    });
</script>
</body>
</html>
