<%--
  Created by IntelliJ IDEA.
  User: Soap
  Date: 2022/4/13
  Time: 22:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>欢迎登录CUG文创商城</title>
    <link rel="stylesheet" type="text/css" href="css/pageChange.css"/>
</head>
<body>
<body>
<div class="control">
    <div class="item">
        <div class="active">登录</div><div>注册</div>
    </div>
    <div class="content">
        <div style="display:block ;">
            <form action="index.jsp" method="post" id="loginForm">
                <p>账号</p>
                <input type="text" placeholder="username" name="uname" id="uname"/>
                <p>密码</p>
                <input type="password" placeholder="password" name="upwd" id="upwd"/>
                <br/>
                <input type="button" id="loginBtn" value="登录"/>
                <span id="msg" style="font-size: 12px ;text-align: center;color:red">${messageModel.msg}</span><br>
            </form>
        </div>
        <div>
            <p>用户名</p>
            <input type="text" placeholder="username"/>
            <p>密码</p>
            <input type="password" placeholder="password"/>
            <p>邮箱</p>
            <input type="text" placeholder="email"/>
            <br/>
            <input type="button" id="registerBtn" value="登录"/>
        </div>
    </div>
</div>
</body>
</body>
<%--引入jquery.js文件--%>
<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
<script src="js/pageChange.js"></script>
<script type="text/javascript">
    $("#loginBtn").click(function (){
        var uname=$("#uname").val();
        var upwd=$("#upwd").val();
        if(isEmpty(uname))
        {
            $("#msg").html("用户名不能为空");
            return;
        }
        if(isEmpty(upwd))
        {
            $("#msg").html("密码不能为空");
            return;
        }
        $("#loginForm").submit();
    });

    /**
     * 判断字符串str是否为空，为空返回true
     * @param str
     * @returns {boolean}
     */
    function isEmpty(str){
        if(str==null||str.trim()==""){
            return true;
        }
        else
        {
            return false;
        }
    }

</script>
</html>
