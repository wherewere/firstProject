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
		
		//전달된 파라미터 변수에 저장
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		String gender = request.getParameter("gender");
		if (gender.equals("1")) gender = "남자";
		else if (gender.equals("2")) gender = "여자";
		else gender="선택안함";
		
		String chk_mail = request.getParameter("chk_mail");
		if (chk_mail.equals("1")) chk_mail = "수신";
		else if (chk_mail.equals("0")) chk_mail = "수신거부";
		else chk_mail="선택안함";
		
		String content = request.getParameter("content");
		
		String [] item = request.getParameterValues("item");
		for (int i=0; i<item.length ; i++) {
			switch (item[i]) {
			case ("1") : item[i]="신발"; break;
			case ("2") : item[i]="가방"; break;
			case ("3") : item[i]="벨트"; break;
			case ("4") : item[i]="모자"; break;
			case ("5") : item[i]="시계"; break;
			case ("6") : item[i]="주얼리"; break;
			}
		}
		
		String job = request.getParameter("job");
		switch (job) {
		case ("1") : job="학생"; break;
		case ("2") : job="컴퓨터/인터넷"; break;
		case ("3") : job="언론사"; break;
		case ("4") : job="공무원"; break;
		case ("5") : job="군인"; break;
		case ("6") : job="서비스업"; break;
		case ("7") : job="교육"; break;
		}
		
		String [] interest = request.getParameterValues("interest");
		for (int i=0; i<interest.length ; i++) {
			switch (interest[i]) {
			case ("1") : interest[i]="에스프레소"; break;
			case ("2") : interest[i]="로스팅"; break;
			case ("3") : interest[i]="생두"; break;
			case ("4") : interest[i]="원두"; break;
			case ("5") : interest[i]="핸드드립"; break;
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
