package com.poscodx.guestbook.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.poscodx.guestbook.dao.GuestBookDao;
import com.poscodx.guestbook.vo.GuestBookVo;


public class GuestBookController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String action = request.getParameter("a");
		
		if("add".equals(action)) {
			String Name = request.getParameter("name");
			String Password = request.getParameter("password");
			String Message = request.getParameter("message");
			
			GuestBookVo vo = new GuestBookVo();
			vo.setName(Name);
			vo.setPassword(Password);
			vo.setContents(Message);
			
			new GuestBookDao().insert(vo);
			
			response.sendRedirect("/guestbook02/gbc");
		}
		else if("deleteform".equals(action)) {
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/deleteform.jsp");
			rd.forward(request, response);
		}
		else if("delete".equals(action)) {
			int no = Integer.parseInt(request.getParameter("id"));
			String password = request.getParameter("password");
			
			new GuestBookDao().deleteById(no, password);
			
			response.sendRedirect("/guestbook02/gbc");
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/index.jsp");
			rd.forward(request, response);
		}
			
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
