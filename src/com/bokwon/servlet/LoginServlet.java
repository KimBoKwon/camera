package com.bokwon.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bokwon.dao.UserDao;
import com.bokwon.dao.UserDaoImpl;
import com.bokwon.dto.UserDto;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		System.out.println(id);
		System.out.println(pw);
		
		UserDao dao = new UserDaoImpl(); 
		UserDto dto = dao.select(id, pw);
		if (dto != null) {
			System.out.println("있다");
			HttpSession session = request.getSession();
			session.setAttribute("user", dto);
		} else {
			System.out.println("없다");
		}
		response.sendRedirect("logincheck.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
