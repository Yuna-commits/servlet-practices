package com.bit2025.emaillist.controller;

import java.io.IOException;
import java.util.List;

import com.bit2025.emaillist.dao.EmailDao;
import com.bit2025.emaillist.vo.EmailVo;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class EmaillistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// System.out.println(request.getRequestURI());// emaillist02/el
		// response.getWriter().println("<h1>ok</h1>");

		String action = request.getParameter("a");

		if ("form".equals(action)) {
			// Forwarding
			RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/views/form.jsp");
			rd.forward(request, response);
		} else if ("add".equals(action)) {
			// Handling
			String firstName = request.getParameter("firstName");
			String lastName = request.getParameter("lastName");
			String email = request.getParameter("email");

			EmailVo vo = new EmailVo();
			vo.setFirstName(firstName);
			vo.setLastName(lastName);
			vo.setEmail(email);

			new EmailDao().insert(vo);

			// Redirect 응답
			response.sendRedirect("/emaillist02/el");
		} else if ("delete".equals(action)) {
			// Handling
			String sId = request.getParameter("id");
			Long id = Long.parseLong(sId);

			new EmailDao().deleteById(id);

			// Redirect 응답
			response.sendRedirect("/emaillist02/el");
		} else {// Default action == list
			List<EmailVo> list = new EmailDao().findAll();

			request.setAttribute("list", list);
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/list.jsp");
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
