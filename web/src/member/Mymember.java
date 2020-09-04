package member;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dept.EmpDAO;
import dept.EmpVO;
import dept.LocationDAO;

/**
 * Servlet implementation class Mymember
 */
@WebServlet("/member/Mymember")
public class Mymember extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Mymember() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LocationDAO dao = new LocationDAO();
		ArrayList<HashMap<String, String>> list = dao.selectAll(null);
		request.setAttribute("locationList", list);
		List<EmpVO> manager = EmpDAO.getInstance().selectAll();
		request.setAttribute("managerList", manager);
		
		request.getRequestDispatcher("mymemberAll.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
