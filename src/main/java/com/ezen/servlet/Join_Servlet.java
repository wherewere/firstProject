package com.ezen.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Join_Servlet
 */
@WebServlet("/Join_Servlet")
public class Join_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * 
     */
    public Join_Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		//���޵� �Ķ���� ������ ����
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		String gender = request.getParameter("gender");
		if (gender.equals("1")) gender = "����";
		else if (gender.equals("2")) gender = "����";
		else gender="���þ���";
		
		String chk_mail = request.getParameter("chk_mail");
		if (chk_mail.equals("1")) chk_mail = "����";
		else if (chk_mail.equals("0")) chk_mail = "���Űź�";
		else chk_mail="���þ���";
		
		String content = request.getParameter("content");
		
		String [] item = request.getParameterValues("item");
		for (int i=0; i<item.length ; i++) {
			switch (item[i]) {
			case ("1") : item[i]="�Ź�"; break;
			case ("2") : item[i]="����"; break;
			case ("3") : item[i]="��Ʈ"; break;
			case ("4") : item[i]="����"; break;
			case ("5") : item[i]="�ð�"; break;
			case ("6") : item[i]="�־�"; break;
			}
		}
		
		String job = request.getParameter("job");
		switch (job) {
		case ("1") : job="�л�"; break;
		case ("2") : job="��ǻ��/���ͳ�"; break;
		case ("3") : job="��л�"; break;
		case ("4") : job="������"; break;
		case ("5") : job="����"; break;
		case ("6") : job="���񽺾�"; break;
		case ("7") : job="����"; break;
		}
		
		String [] interest = request.getParameterValues("interest");
		for (int i=0; i<interest.length ; i++) {
			switch (interest[i]) {
			case ("1") : interest[i]="����������"; break;
			case ("2") : interest[i]="�ν���"; break;
			case ("3") : interest[i]="����"; break;
			case ("4") : interest[i]="����"; break;
			case ("5") : interest[i]="�ڵ�帳"; break;
			}
		}
					
			request.setAttribute("id", id);
			request.setAttribute("pwd", pwd);
			request.setAttribute("gender",gender);
			request.setAttribute("chk_mail",chk_mail);
			request.setAttribute("content",content);
			request.setAttribute("job", job);
			request.setAttribute("items", item);
			request.setAttribute("interests", interest);
			RequestDispatcher dp = request.getRequestDispatcher("02/102_JSP_Servlet_Ex02.jsp");
			dp.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
