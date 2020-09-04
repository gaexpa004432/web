package test;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CookieAdd
 */
@WebServlet("/test/CookieAdd")
public class CookieAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CookieAdd() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//cookie create
		response.setContentType("UTF-8");
		Cookie cookie = new Cookie("id","hong");
		cookie.setPath("/");
		
		cookie.setMaxAge(60*60*24);//max second
		response.addCookie(cookie);
		
		Cookie cookie2 = new Cookie("popupYn","yes");
		cookie.setPath("/");
		
		cookie2.setMaxAge(60*60*24);//max second
		response.addCookie(cookie2);
		
		response.sendRedirect("cookieSelect.jsp");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
