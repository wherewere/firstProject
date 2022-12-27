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
		// doGet�� form ���� action���� �̵��ϴ� ���� ������ ��, �޼��尡 get����̸� ȣ��Ǵ� �޼���.
		// ���޵� �Ķ���Ϳ� �ϴ��� �ִٸ�, �Ǵ� �ٽ� �������� �����Ϳ� �ѱ��� �ִٸ�, ���ڵ� ����� ������.
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		//���޵� �Ķ���� ������ ����
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		if (id.equals("hong") && pwd.equals("1234")) {
			request.setAttribute("name", "ȫ�浿");
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
		// doPost�� form ���� action���� �̵��ϴ� ���� ������ ��, �޼��尡 post ����̸� ȣ��Ǵ� �޼���.
		doGet(request, response);
		// doPost()�� ȣ��Ǹ� �ڵ����� doGet()�� ȣ���ؼ� �� ����� ������ �������� ��.
	}
}
