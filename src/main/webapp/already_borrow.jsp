<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/5/22
  Time: 15:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="com.zp.javabean.User" %>
<%@ page import="java.nio.file.FileStore" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>查看已借图书</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>body{
        /*background-image: url(static/img/olia-gozha-J4kK8b9Fgj8-unsplash.jpg);*/
        background-size: cover;
        height:100%;
        width: 100%;
        background-repeat: no-repeat;
    }</style>
</head>
<body>
<%
    User user=(User)this.getServletContext().getAttribute("user");

    String user_name=user.getUsername();

//    RecordDao dao=new RecordDao();
//    List<Record>rcd=new ArrayList<Record>();
//    rcd=dao.Find(user_name);
%>
<table class="table">
    <caption>借阅记录</caption>
    <thead>
    <tr>
        <th>书名</th>
        <th>ISBN</th>
        <th>用户</th>
        <th>借书时间</th>
        <th>还书时间</th>
        <th>还书状态</th>

    </tr>
    </thead>
    <tbody>
<%--    <%for(Record r:rcd){ %>--%>
<%--    <tr class="active">--%>

<%--        <td><%=r.getBookname() %></td>--%>
<%--        <td><%=r.getBook_ISBN() %></td>--%>
<%--        <td><%=r.getUser_name() %></td>--%>
<%--        <td><%=r.getBorrow_date() %></td>--%>
<%--        <td><%=r.getReturn_date() %></td>--%>
<%--        <td><%=r.gethuan() %></td>--%>

<%--    </tr>--%>
<%--    <% }%>--%>
    </tbody>
</table>



</body>
</html>
<%!
    private FileStore getServletContext() {
        return null;
    }
%>