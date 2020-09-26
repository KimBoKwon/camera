package com.bokwon.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bokwon.dao.UserDao;
import com.bokwon.dao.UserDaoImpl;
import com.bokwon.dto.UserDto;

@WebServlet("/JoinServlet")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public JoinServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 한글 처리
				request.setCharacterEncoding("utf-8");
				// 넘어온 데이터를 받고
				String name = request.getParameter("name");
				String id = request.getParameter("id");
				String pw = request.getParameter("pw");
				// 잘넘어오는지 체크
				System.out.println(name);
				System.out.println(id);
				System.out.println(pw);
				// 데이터를 DB에 넣고
				UserDto dto = new UserDto();
				dto.setName(name);
				dto.setId(id);
				dto.setPw(pw);
				UserDao dao = new UserDaoImpl();
				dao.insert(dto);
				// 로그인 페이지로 이동
				response.sendRedirect("login.nhn");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
