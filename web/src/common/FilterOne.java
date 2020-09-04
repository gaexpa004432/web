package common;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class FilterOne
 */
@WebFilter("/detf") //모든 요청에 필터 수행
public class FilterOne implements Filter {

    /**
     * Default constructor. 
     */
    public FilterOne() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here 실행전 필터 내용
		request.setCharacterEncoding("utf-8");
		// pass the request along the filter chain 다음필터 호출된 서블릿 실행
		chain.doFilter(request, response);
		
		// 서블릿 실행후에 처리 내용
		String uri = ((HttpServletRequest)request).getRequestURI();
		if(uri.indexOf("login")<0) {
			HttpSession session = ((HttpServletRequest)request).getSession();
			
		}
		System.out.println("procees" + ((HttpServletRequest)request).getRequestURI());
		HttpSession session = ((HttpServletRequest)request).getSession();
		if(session.getAttribute("id")==null) {
			((HttpServletResponse)response).sendRedirect("member/login");
		}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
