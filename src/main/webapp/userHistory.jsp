<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/5/9
  Time: 22:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="./bootstrap-3.3.7-dist/css/bootstrap.css">
<link rel="stylesheet" href="./layui/css/layui.css">

<script src="./layui/layui.js"></script>
<script src="./statics/jquery-3.4.1.js"></script>
<html>
<head>
    <title>借阅历史</title>
    <style>
        th {
            text-align: right;
            height: 50px;
            vertical-align: middle;
        }

        td {
            height: 50px;
            text-align: center;
        }

        .table {
            border: gray 1px solid;
            border-radius: 5px;
            padding-left: 20px;
            padding-right: 20px;
            margin-top: 25px;
            margin-left: 10px;
            margin-right: 10px;
            width: 1520px;
        }

        .page {
            /*border: red solid 1px;*/
            float: left;
            margin-left: 480px;
        }

        p {
            float: right;
            border: black solid 1px;
            border-radius: 5px;
            margin-right: 480px;
            font-size: 20px;
            margin-top: 22px;
        }

        a:link {
            text-decoration: none;
            color: white;
        }

        a:visited {
            text-decoration: none;
            color: white;
        }

        a:hover {
            text-decoration: none;
            color: white;
        }

        a:active {
            text-decoration: none;
            color: white;
        }
    </style>
</head>
<body>
<%--头部--%>
<ul class="layui-nav" lay-filter="">
    <!--    layui-this-->
    <li class="layui-nav-item"><a href="reader_home.jsp">首页</a></li>
    <li class="layui-nav-item "><a href="${pageContext.request.contextPath}/queryBooks?currentPage=1">图书查询</a>
    </li>

    <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/borrowinf?currentPage=1">借阅信息</a></li>
    <li class="layui-nav-item layui-this"><a href="${pageContext.request.contextPath}/borrowhistory?currentPage=1">借阅历史</a></li>
    <li class="layui-nav-item" style="float: right">
        <a href=""><img src="./img/user.png" width="37px" height="38px" class="layui-nav-img">我</a>
        <dl class="layui-nav-child">
            <dd><a href="${pageContext.request.contextPath}/getUserbyName">修改信息</a></dd>
            <dd><a href="javascript:exituser();">退出</a></dd>
        </dl>
    </li>
</ul>

<%--表格--%>
<div class="table">
    <table class="layui-table">
        <thead>
        <tr style="background-color: #e7c3c3">
            <td style="width: 60px">序号</td>
            <td style="width: 120px">用户名</td>
            <td style="width: 120px">书名</td>
            <td style="width: 120px">作者</td>
            <td style="width: 100px">图书类别</td>
            <td style="width: 120px">借阅时间</td>
            <td style="width: 120px">还书时间</td>
            <td style="width: 200px">借阅时长</td>
        </tr>
        <c:forEach items="${requestScope.ubPageBean.booksList}" varStatus="s" var="userbook">
            <tr>
                <td>${s.count}</td>
                <td>${userbook.username}</td>
                <td>${userbook.name}</td>
                <td>${userbook.author}</td>
                <td>${userbook.category}</td>
                <td>${userbook.borrowtime}</td>
                <td>${userbook.returntime}</td>
                <td>${userbook.duration}</td>

            </tr>
        </c:forEach>
        </thead>
    </table>
</div>
<%--分页--%>
<div class="page">
    <nav aria-label="Page navigation">
        <ul class="pagination">
            <%--上一页 当前页面=1时设置禁用模式--%>
            <c:if test="${requestScope.ubPageBean.currPage==1}">
                <li class="disabled">
                    <a href="${pageContext.request.contextPath}/borrowhistory?currentPage=${requestScope.ubPageBean.currPage-1}"
                       aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
            </c:if>
            <c:if test="${requestScope.ubPageBean.currPage!=1}">
                <li>
                    <a href="${pageContext.request.contextPath}/borrowhistory?currentPage=${requestScope.ubPageBean.currPage-1}"
                       aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
            </c:if>

            <c:forEach begin="1" end="${requestScope.ubPageBean.totalPage}" step="1" var="i">
                <%--                设置激活状态--%>
                <c:if test="${requestScope.ubPageBean.currPage==i}">
                    <li class="active"><a href="${pageContext.request.contextPath}/borrowhistory?currentPage=${i}">${i}</a>
                    </li>
                </c:if>
                <c:if test="${requestScope.ubPageBean.currPage!=i}">
                    <li><a href="${pageContext.request.contextPath}/borrowhistory?currentPage=${i}">${i}</a></li>
                </c:if>
            </c:forEach>
            <%--                下一页 设置禁用模式--%>
            <c:if test="${requestScope.ubPageBean.currPage==requestScope.ubPageBean.totalPage}">
                <li class="disabled">
                    <a href="${pageContext.request.contextPath}/borrowhistory?currentPage=${requestScope.ubPageBean.currPage+1}"
                       aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </c:if>
            <c:if test="${requestScope.ubPageBean.currPage!=requestScope.ubPageBean.totalPage}">
                <li>
                    <a href="${pageContext.request.contextPath}/borrowhistory?currentPage=${requestScope.ubPageBean.currPage+1}"
                       aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </c:if>
        </ul>
    </nav>
</div>
<p>共${requestScope.ubPageBean.totalPage}页，共${requestScope.ubPageBean.totalCount}条记录</p>
</body>
<script type="text/javascript">
    function exituser() {
        if(confirm("您确定要退出吗？")){
            location.href="Login.html";
        }
    }
</script>
<script type="text/javascript">
    //注意：导航 依赖 element 模块，否则无法进行功能性操作
    layui.use('element', function () {
        var element = layui.element;
    });
</script>
</body>
</html>

