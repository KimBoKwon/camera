package com.bokwon.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bokwon.dao.CameraHugiWriteDao;
import com.bokwon.dao.CameraHugiWriteDaoImpl;
import com.bokwon.dto.CameraHugiDto;

@WebServlet("/CameraHugiWriteServlet")
public class CameraHugiWriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CameraHugiWriteServlet() {
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
		
		response.sendRedirect("camerahugi.nhn");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
