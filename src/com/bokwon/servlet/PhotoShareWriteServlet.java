package com.bokwon.servlet;

import java.awt.Image;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.bokwon.dao.CameraHugiWriteDao;
import com.bokwon.dao.CameraHugiWriteDaoImpl;
import com.bokwon.dao.PhotoShareWriteDao;
import com.bokwon.dao.PhotoShareWriteDaoImpl;
import com.bokwon.dto.CameraHugiDto;
import com.bokwon.dto.PhotoShareDto;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/PhotoShareWriteServlet")
public class PhotoShareWriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PhotoShareWriteServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		PhotoShareWriteDao dao = new PhotoShareWriteDaoImpl();
		PhotoShareDto dto = new PhotoShareDto();
		request.setCharacterEncoding("utf-8");
		
		ServletContext context = getServletContext(); //어플리케이션에 대한 정보를 ServletContext 객체가 갖게 됨. 
		String saveDir = context.getRealPath("Upload");
		int maxsize = 3*1024*1024;
		String encoding = "utf-8";
		System.out.println("절대경로 >> " + saveDir);
		
		boolean isMulti = ServletFileUpload.isMultipartContent(request);// boolean타입. ??????
		if (isMulti) {
		    MultipartRequest multi = new MultipartRequest(request, saveDir, maxsize, encoding, new DefaultFileRenamePolicy());
		    PhotoShareWriteDao dao = new PhotoShareWriteDaoImpl();
		    String camera = multi.getParameter("camera");
		    String lens = multi.getParameter("lens");
		    String photo = multi.getFilesystemName("photo");
		    String writer = multi.getParameter("writer");
		    
		    Resize.img("C:\\Users\\ASUS\\Desktop\\방학 특강\\project\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\project\\Upload\\" + photo, "C:\\Users\\ASUS\\Desktop\\방학 특강\\project\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\project\\Upload\\resize_" + photo, 800,  600);
		    dto.setCamera(camera);
			dto.setLens(lens);
			dto.setPhoto("Upload/" + photo);   // 원본
			// 리사이징 된 이미지 위치
			dto.setPhotoresize("Upload/resize_" + photo);
			dto.setWriter(writer);
			dao.uploadFile(dto);
			
		}
		response.sendRedirect("photoshare.nhn");
		
//		String camera = request.getParameter("camera");
//		String lens = request.getParameter("lens");
//		String writer = request.getParameter("writer");
//		String photo = request.getParameter("photo");
//		dto.setCamera(camera);
//		dto.setLens(lens);
//		dto.setPhoto(photo);
//		dto.setWriter(writer);
//		dao.insert(dto);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
