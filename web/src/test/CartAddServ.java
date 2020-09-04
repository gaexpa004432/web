package test;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CartAddServ
 */
@WebServlet("/test/cartAdd")
public class CartAddServ extends HttpServlet {
	int cnt =0; 
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartAddServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("goodsList.jsp").forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
ArrayList<String> cartList = new ArrayList<>();
cartList = (ArrayList<String>) request.getSession().getAttribute("cartList");
//(String[])request.getSession().getAttribute("cartList");
if(cartList == null) {
	cartList= new ArrayList<String>();
	request.getSession().setAttribute("cartList", cartList);
}
cartList.add(request.getParameter("goods"));
response.sendRedirect("cartAdd");
	}

}
