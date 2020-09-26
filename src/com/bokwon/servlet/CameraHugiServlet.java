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
import com.bokwon.dto.CameraHugiDto;

@WebServlet("/CameraHugiServlet")
public class CameraHugiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CameraHugiServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CameraHugiWriteDao dao = new CameraHugiWriteDaoImpl();
		CameraHugiDto dto = new CameraHugiDto();
		request.setCharacterEncoding("utf-8");
		String camera = request.getParameter("camera");
		String content = request.getParameter("content");
		String score = request.getParameter("score");
		String writer = request.getParameter("writer");
		dto.setCamera(camera);
		dto.setContent(content);
		dto.setScore(score);
		dto.setWriter(writer);
		dao.insert(dto);
		
		ArrayList<CameraHugiDto> list = dao.select();
		for (CameraHugiDto w : list) {
			System.out.println(w.getNum());
			System.out.println(w.getCamera());
			System.out.println(w.getContent());
			System.out.println(w.getScore());
			System.out.println(w.getWriter());
		}
		request.setAttribute("CameraHugiList", list);
		RequestDispatcher dis = request.getRequestDispatcher("camerahugi.jsp");
		dis.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
