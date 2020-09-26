package com.bokwon.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("*.nhn")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Controller() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		StringBuffer url = request.getRequestURL();
		System.out.println(url);
		String uri = request.getRequestURI();
		String [] arrUri = uri.split("/");
		uri = arrUri[2];
		
		String site = null;
		
		if (uri.equals("index.nhn")) {
			site = "index.jsp";
		} else if (uri.equals("login.nhn")) {
			site = "login.jsp";
		} else if (uri.equals("loginok.nhn")) {
			site = "LoginServlet";
		} else if (uri.equals("join.nhn")) {
			site = "join.jsp";
		} else if (uri.equals("joinok.nhn")) {
			site = "JoinServlet";
		} else if (uri.equals("idck.nhn")) {
			site = "IdCkServlet";
		} else if (uri.equals("logout.nhn")) {
			site = "logout.jsp";
		} else if (uri.equals("canon-fulldslr.nhn")) {
			site = "canon-fulldslr.jsp";
		} else if (uri.equals("canon-cropdslr.nhn")) {
			site = "canon-cropdslr.jsp";
		} else if (uri.equals("canon-fullmirrorless.nhn")) {
			site = "canon-fullmirrorless.jsp";
		} else if (uri.equals("canon-cropmirrorless.nhn")) {
			site = "canon-cropmirrorless.jsp";
		} else if (uri.equals("canon-RFlens.nhn")) {
			site = "canon-RFlens.jsp";
		} else if (uri.equals("canon-EFlensfull.nhn")) {
			site = "canon-EFlensfull.jsp";
		} else if (uri.equals("canon-EFlenscrop.nhn")) {
			site = "canon-EFlenscrop.jsp";
		} else if (uri.equals("sony-fullmirrorless.nhn")) {
			site = "sony-fullmirrorless.jsp";
		} else if (uri.equals("sony-cropmirrorless.nhn")) {
			site = "sony-cropmirrorless.jsp";
		} else if (uri.equals("sony-FElens.nhn")) {
			site = "sony-FElens.jsp";
		} else if (uri.equals("sony-Elens.nhn")) {
			site = "sony-Elens.jsp";
		} else if (uri.equals("nikon-fulldslr.nhn")) {
			site = "nikon-fulldslr.jsp";
		} else if (uri.equals("nikon-cropdslr.nhn")) {
			site = "nikon-cropdslr.jsp";
		} else if (uri.equals("nikon-fullmirrorless.nhn")) {
			site = "nikon-fullmirrorless.jsp";
		} else if (uri.equals("nikon-cropmirrorless.nhn")) {
			site = "nikon-cropmirrorless.jsp";
		} else if (uri.equals("camerahugi.nhn")) {
			site = "CameraHugiServlet";
		} else if (uri.equals("camerahugiwrite.nhn")) {
			site = "camerahugiwrite.jsp";
		} else if (uri.equals("camerahugiwriteok.nhn")) {
			site = "CameraHugiWriteServlet";
		} else if (uri.equals("freeboard.nhn")) {
			site = "FreeBoardServlet";
		} else if (uri.equals("freeboardwrite.nhn")) {
			site = "freeboardwrite.jsp";
		} else if (uri.equals("freeboardwriteok.nhn")) {
			site = "FreeBoardWriteServlet";
		} else if (uri.equals("question.nhn")) {
			site = "QuestionServlet";
		} else if (uri.equals("questionwrite.nhn")) {
			site = "questionwrite.jsp";
		} else if (uri.equals("questionwriteok.nhn")) {
			site = "QuestionWriteServlet";
		} else if (uri.equals("photoshare.nhn")) {
			site = "PhotoShareServlet";
		} else if (uri.equals("photosharewrite.nhn")) {
			site = "photosharerite.jsp";
		} else if (uri.equals("photosharewriteok.nhn")) {
			site = "PhotoShareWriteServlet";
		} else {
			site = "404.jsp";
			System.out.println("error");
		}
		RequestDispatcher dis = request.getRequestDispatcher(site);
		dis.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
