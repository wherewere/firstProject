package com.ezen.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Forward_useServlet
 */
@WebServlet("/Forward_useServlet")
public class Forward_useServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Forward_useServlet() {
        super();
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// doGet은 form 에서 action으로 이동하는 곳이 서블릿일 때, 메서드가 get방식이면 호출되는 메서드.
		// 전달된 파라미터에 하늘이 있다면, 또는 다시 내보내질 데이터에 한글이 있다면, 인코딩 방식을 설정함.
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		//전달된 파라미터 변수에 저장
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		if (id.equals("hong") && pwd.equals("1234")) {
			request.setAttribute("name", "홍길동");
			RequestDispatcher dp = request.getRequestDispatcher("02/092_Forward_UseServlet_ok.jsp");
			dp.forward(request, response);
		}else {
			response.sendRedirect("02/091_Forward_UseServlet.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// doPost은 form 에서 action으로 이동하는 곳이 서블릿일 때, 메서드가 post 방식이면 호출되는 메서드.
		doGet(request, response);
		// doPost()가 호출되면 자동으로 doGet()을 호출해서 두 경우의 동작이 같아지게 함.
	}
}
