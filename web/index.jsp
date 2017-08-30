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
    <title>后台管理系统</title>
    <script src="easyui/jquery.min.js" type="text/javascript"></script>
    <script src="easyui/jquery.easyui.min.js" type="text/javascript"></script>
    <script src="easyui/jquery.easyui.min.js" type="text/javascript"></script>
    <link type="text/css" href="easyui/themes/icon.css" rel="stylesheet">
    <link id="themeLink" type="text/css" href="easyui/themes/bootstrap/easyui.css" rel="stylesheet">
</head>
<body class="easyui-layout">
<!--顶部-->
<div region="north" split="true" style="height:80px;">
    <div id="logo">
        LOGO
    </div>
    <div id="north-welcome" style="position: absolute;right: 20px;top: 20px;">
        欢迎你，[超级管理员],你使用<%=request.getRemoteAddr()%>登录!
    </div>
    <div id="north-themes" style="position: absolute;right: 20px;top:40px;">
        <a href="javascript:void(0)" id="north-mb" class="easyui-menubutton"  data-options="menu:'#Themesmeus',iconCls:'icon-edit'">切换风格</a>
        <div id="Themesmeus" style="width: 150px">
            <div>default</div>
            <div>gray</div>
            <div>black</div>
            <div>bootstrap</div>
            <div>material</div>
            <div>metro</div>
        </div>
    </div>
</div>
<!--底部-->
<div region="south" split="true" style="height:30px;">
    <div id="copyright" style="text-align: center">&copy;ToZ LAB</div>
</div>
<!--左边-->
<div region="west" title="系统菜单" split="true" style="width:200px;">
    <div id="accordion" class="easyui-accordion"style="width:193px;" data-options="border:0,multiple:true">
        <div title="类别管理"  data-options="iconCls:'icon-save'" style="overflow:auto;padding:10px;">
            <ul>
                <li><a href="javascript:void(0)" pageUrl="">类别管理</a></li>
            </ul>
        </div>

        <div title="商品管理" data-options="iconCls:'icon-reload',selected:true" style="padding:10px;">
            <ul>
                <li><a href="javascript:void(0)" pageUrl="product_manage.jsp">商品信息管理</a></li>
                <li><a href="javascript:void(0)" pageUrl="">商品上下架管理</a></li>
            </ul>
        </div>

    </div>

</div>
<!--中间-->
<div region="center"  style="padding:5px;background:#eee;">
    <div id="center-title" class="easyui-tabs" style="width:500px;height:250px;" data-options="fit:true">
        <div title="起始页" style="padding:20px;display: none">
            欢迎登录后台管理系统
        </div>
    </div>
</div>

<script type="text/javascript">
    $(function () {
        $("a[pageUrl]").click(function () {
            var pageUrl=$(this).attr("pageUrl");
            var title=$(this).text();

            if($("#center-title").tabs("exists",title)){
                $("#center-title").tabs("select",title);
            }
            else {
                $("#center-title").tabs("add",{
                    title:title,
                    content:"<iframe src='"+pageUrl+"' width='100%' height='100%' frameborder='0'></iframe>",
                    closable:true
                });
            }
        });

        $("#Themesmeus").menu({
            onClick:function (item) {
                var themeName=item.text;
                var href=$("#themeLink").attr("href");
                href = href.substring(0,href.indexOf("themes"))+"themes/"+themeName+"/easyui.css";
                $("#themeLink").attr("href",href);
            }
            });
    });
</script>
</body>
</html>
