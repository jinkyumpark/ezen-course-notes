package com.ezen.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezen.dao.MemberDao;
import com.ezen.dto.MemberDto;

public class JoinAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberDto mdto = new MemberDto();
		mdto.setUserid(request.getParameter("userid"));
		mdto.setPwd(request.getParameter("pwd"));
		mdto.setName(request.getParameter("name"));
		mdto.setEmail(request.getParameter("email"));
		mdto.setPhone(request.getParameter("phone"));
		mdto.setAdmin(Integer.parseInt(request.getParameter("admin")));
		
		MemberDao mdao = MemberDao.getInstance();
		int result = mdao.addMember(mdto);
		
		if(result == 1) request.setAttribute("message", "회원가입 완료. 로그인하세요");
		else request.setAttribute("message", "회원가입 실패. 관리자에게 문의하세요");
		
		RequestDispatcher dp = request.getRequestDispatcher("member/loginForm.jsp");
		dp.forward(request, response);
	}
	
}
