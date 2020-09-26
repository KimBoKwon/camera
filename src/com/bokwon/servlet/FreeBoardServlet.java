package com.bokwon.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bokwon.dao.CameraHugiWriteDao;
import com.bokwon.dao.CameraHugiWriteDaoImpl;
import com.bokwon.dao.FreeBoardWriteDao;
import com.bokwon.dao.FreeBoardWriteDaoImpl;
import com.bokwon.dto.CameraHugiDto;
import com.bokwon.dto.FreeBoardDto;

@WebServlet("/FreeBoardServlet")
public class FreeBoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public FreeBoardServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		FreeBoardWriteDao dao = new FreeBoardWriteDaoImpl();
		FreeBoardDto dto = new FreeBoardDto();
		request.setCharacterEncoding("utf-8");
		String je = request.getParameter("je");
		String content = request.getParameter("content");
		String writer = request.getParameter("writer");
		dto.setJe(je);
		dto.setContent(content);
		dto.setWriter(writer);
		dao.insert(dto);
		
		ArrayList<FreeBoardDto> list = dao.select();
		for (FreeBoardDto w : list) {
			System.out.println(w.getNum());
			System.out.println(w.getJe());
			System.out.println(w.getContent());
			System.out.println(w.getWriter());
		}
		request.setAttribute("FreeBoardList", list);
		RequestDispatcher dis = request.getRequestDispatcher("freeboard.jsp");
		dis.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
