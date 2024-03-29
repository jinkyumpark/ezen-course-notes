package com.ezen.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezen.dao.MemberDao;
import com.ezen.dto.MemberDto;

public class IdCheckAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userid = request.getParameter("userid");
		MemberDao mdao = MemberDao.getInstance();
		
		MemberDto mdto = mdao.getMember(userid);
		
		if(mdto == null) request.setAttribute("result", -1);
		else request.setAttribute("result", 1);
		
		request.setAttribute("userid", userid);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("member/idcheck.jsp");
		dispatcher.forward(request, response);
	}

}
