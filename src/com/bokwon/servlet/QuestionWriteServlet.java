package com.bokwon.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bokwon.dao.CameraHugiWriteDao;
import com.bokwon.dao.CameraHugiWriteDaoImpl;
import com.bokwon.dao.FreeBoardWriteDao;
import com.bokwon.dao.FreeBoardWriteDaoImpl;
import com.bokwon.dao.QuestionWriteDao;
import com.bokwon.dao.QuestionWriteDaoImpl;
import com.bokwon.dto.CameraHugiDto;
import com.bokwon.dto.FreeBoardDto;
import com.bokwon.dto.QuestionDto;

@WebServlet("/QuestionWriteServlet")
public class QuestionWriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public QuestionWriteServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		QuestionWriteDao dao = new QuestionWriteDaoImpl();
		QuestionDto dto = new QuestionDto();
		request.setCharacterEncoding("utf-8");
		String je = request.getParameter("je");
		String content = request.getParameter("content");
		String writer = request.getParameter("writer");
		dto.setJe(je);
		dto.setContent(content);
		dto.setWriter(writer);
		dao.insert(dto);
		
		response.sendRedirect("question.nhn");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
