<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");
    
    if(id.equals("hong")&&pwd.equals("1234")){
    	// 정상적인 로그인이라면, 결과페이지(main)으로 가기 전에 로그인 정보를 세션에 저장함
    	session.setAttribute("loginUser", id);
    	
    	// 차후에는 세션에 로그인 정보를 단순히 지금처럼 아이디만 저장하는 것이 아니라,
    	// 로그인한 사람의 정보를 Dto에 넣고, Dtro 객체를 세션에 저장하게 됨.
    	response.sendRedirect("073_main.jsp");
    } else {
    	response.sendRedirect("071_loginForm.jsp");
    }
%>