package com.bokwon.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bokwon.dao.UserDao;
import com.bokwon.dao.UserDaoImpl;

@WebServlet("/IdCkServlet")
public class IdCkServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public IdCkServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		System.out.println(id);
		PrintWriter out = response.getWriter();
		UserDao dao = new UserDaoImpl();
		if (dao.select(id)) {
			out.println("ok");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
