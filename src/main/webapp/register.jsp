<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>图书馆-用户注册</title>
    <link rel="stylesheet" href="./layui/css/layui.css"/>
    <style>
        html, body {
            width: 100%;
            height: 100%;
        }

        .register {
            position: relative;
            width: 100%;
            height: 100%;
        }

        .register-layout {
            position: absolute;
            width: 500px;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
            background: rgba(0, 150, 136, 0.1);
            padding: 100px 80px 80px 50px;
        }

        .logo {
            font-size: 30px;
            width: 100%;
            text-align: center;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>

<%--<div class="register">--%>
<%--    <div class="register-layout">--%>
<%--        <form class="layui-form" action="/Library/register">--%>
<%--            <div class="layui-form-item">--%>
<%--                <label class="layui-form-label logo">--%>
<%--                    用户注册--%>
<%--                </label>--%>
<%--            </div>--%>
<%--            <div class="layui-form-item">--%>
<%--                <label class="layui-form-label"--%>
<%--                       style="text-align: center">用户名--%>
<%--                </label>--%>
<%--                <div class="layui-input-block">--%>
<%--                    <input type="text" name="username"--%>
<%--                           placeholder="请输入"--%>
<%--                           autocomplete="off" class="layui-input">--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="layui-form-item">--%>
<%--                <label class="layui-form-label" style="text-align:--%>
<%--                center">密码</label>--%>
<%--                <div class="layui-input-block">--%>
<%--                    <input type="text" name="password"--%>
<%--                           placeholder="请输入"--%>
<%--                           autocomplete="off" class="layui-input">--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="layui-form-item">--%>
<%--                <label class="layui-form-label" style="text-align:--%>
<%--                center">别名</label>--%>
<%--                <div class="layui-input-block">--%>
<%--                    <input type="text" name="reader"--%>
<%--                           placeholder="请输入"--%>
<%--                           autocomplete="off" class="layui-input">--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="layui-form-item">--%>
<%--                <div class="layui-input-block">--%>
<%--                    <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>--%>
<%--                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </form>--%>
<%--    </div>--%>
<%--</div>--%>

<%--<script>--%>
<%--    layui.use('form', function () {--%>
<%--        var form = layui.form;--%>
<%--        //监听提交--%>
<%--        form.on('submit(formDemo)', function (data) {--%>
<%--            layer.msg(JSON.stringify(data.field));--%>
<%--            return false;--%>
<%--        });--%>
<%--    });--%>
<%--</script>--%>
<%@ include file="window.jsp" %>

<div class="login-main">
    <header class="layui-elip"
            style="width: 82%; font-size: 30px;
            text-align: center;margin-bottom: 20px">注册页
    </header>

    <!-- 表单选项 -->
    <form class="layui-form" method="post" action="/register">
        <div class="layui-form-item">
            <!-- 昵称 -->
            <div class="layui-inline" style="width: 85%">
                <input type="text" id="user" name="reader" required
                       lay-verify="required" placeholder="请输入你的昵称"
                       autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <!-- 登录账号 -->
            <div class="layui-inline" style="width: 85%">
                <input type="text" id="username" name="username"
                       required lay-verify="required"
                       placeholder="请输入登录账号" autocomplete="off"
                       class="layui-input">
            </div>
            <!-- 对号 -->
            <div class="layui-inline">
                <i class="layui-icon" id="rin"
                   style="color: green;font-weight: bolder;"
                   hidden></i>
            </div>
            <!-- 错号 -->
            <div class="layui-inline">
                <i class="layui-icon" id="wrn"
                   style="color: red; font-weight: bolder;"
                   hidden>ဆ</i>
            </div>
        </div>
        <!-- 密码 -->
        <div class="layui-form-item">
            <div class="layui-inline" style="width: 85%">
                <input type="password" id="pwd" name="password"
                       required lay-verify="required"
                       placeholder="请输入密码" autocomplete="off"
                       class="layui-input">
            </div>
            <!-- 对号 -->
            <div class="layui-inline">
                <i class="layui-icon" id="pri"
                   style="color: green;font-weight: bolder;"
                   hidden></i>
            </div>
            <!-- 错号 -->
            <div class="layui-inline">
                <i class="layui-icon" id="pwr"
                   style="color: red; font-weight: bolder;"
                   hidden>ဆ</i>
            </div>
        </div>
        <!-- 确认密码 -->
        <div class="layui-form-item">
            <div class="layui-inline" style="width: 85%">
                <input type="password" id="rpwd" name="repassword"
                       required lay-verify="required"
                       placeholder="请确认密码" autocomplete="off"
                       class="layui-input">
            </div>
            <!-- 对号 -->
            <div class="layui-inline">
                <i class="layui-icon" id="rpri"
                   style="color: green;font-weight: bolder;"
                   hidden></i>
            </div>
            <!-- 错号 -->
            <div class="layui-inline">
                <i class="layui-icon" id="rpwr"
                   style="color: red; font-weight: bolder;"
                   hidden>ဆ</i>
            </div>
        </div>


        <div class="layui-form-item">
            <button type="submit" lay-submit lay-filter="sub"
                    class="layui-btn" style="width: 85%">注册
            </button>
        </div>
        <hr style="width: 85%"/>
        <p style="width: 85%"><a href="index.jsp" class="fl">
            已有账号？立即登录</a><a href="javascript:;"
                            style="float: right">忘记密码？
        </a></p>
    </form>
</div>


<script src="./layui/layui.js"></script>
<script>
    $('#rpwd').blur(function () {
        if ($('#pwd').val() != $('#rpwd').val()) {
            $('#rpwr').removeAttr('hidden');
            $('#rpri').attr('hidden', 'hidden');
            layer.msg('两次输入密码不一致!');
        } else {
            $('#rpri').removeAttr('hidden');
            $('#rpwr').attr('hidden', 'hidden');
        }
        ;
    });

</script>

</body>
</html>
