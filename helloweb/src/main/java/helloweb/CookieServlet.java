package helloweb;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CookieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int visitCount = 0;

		// Cookie 읽기
		Cookie[] cookies = request.getCookies();
		if (cookies != null && cookies.length > 0) {
			for (Cookie ck : cookies) {
				if ("visitCount".equals(ck.getName())) {
					visitCount = Integer.parseInt(ck.getValue());
				}
			}
		}

		visitCount++;

		// Cookie 쓰기 - Response Header
		Cookie cookie = new Cookie("visitCount", String.valueOf(visitCount));
		cookie.setPath(request.getContextPath());
		cookie.setMaxAge(24 * 60 * 60); // 1Day(seconds)
		response.addCookie(cookie);

		// Response Body
		response.setContentType("text/html; charset=UTF-8");
		response.getWriter().print("<h1>방문횟수: " + visitCount + "</h1>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
