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
import com.bokwon.dao.PhotoShareWriteDao;
import com.bokwon.dao.PhotoShareWriteDaoImpl;
import com.bokwon.dto.CameraHugiDto;
import com.bokwon.dto.PhotoShareDto;

@WebServlet("/PhotoShareServlet")
public class PhotoShareServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PhotoShareServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PhotoShareWriteDao dao = new PhotoShareWriteDaoImpl();
		
		try{
            ArrayList<PhotoShareDto> list = dao.select();
            
            if(list!=null) {
                  request.setAttribute("PhotoShareList", list);                      
            }else {
                  System.out.println("비었습니다");
            }
            
            RequestDispatcher dis = request.getRequestDispatcher("photoshare.jsp");
            dis.forward(request, response);
            
      }catch(Exception e) {
            e.printStackTrace();
      }

//		PhotoShareDto dto = new PhotoShareDto();
//		request.setCharacterEncoding("utf-8");
//		String camera = request.getParameter("camera");
//		String lens = request.getParameter("lens");
//		String writer = request.getParameter("writer");
//		String photo = request.getParameter("photo");
//		dto.setCamera(camera);
//		dto.setLens(lens);
//		dto.setWriter(writer);
//		dto.setPhoto(photo);
//		dao.insert(dto);
//		
//		ArrayList<PhotoShareDto> list = dao.select();
//		for (PhotoShareDto w : list) {
//			System.out.println(w.getNum());
//			System.out.println(w.getCamera());
//			System.out.println(w.getLens());
//			System.out.println(w.getWriter());
//			System.out.println(w.getPhoto());
//		}
//		request.setAttribute("PhotoShareList", list);
//		RequestDispatcher dis = request.getRequestDispatcher("photoshare.jsp");
//		dis.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
