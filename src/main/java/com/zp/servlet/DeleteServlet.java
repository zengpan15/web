package com.zp.servlet;


import com.zp.dao.BookDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


/**
 * Servlet implementation class deleteServlet
 */
@WebServlet("/deleteServlet")
public class DeleteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
        //删除图书信息
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        int bid = Integer.parseInt(request.getParameter("bid"));
        BookDao bookdao = new BookDao();
        bookdao.DeleteBook(bid);
        response.sendRedirect("/manage_books/books/admin/admin_books.jsp");
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }

}

