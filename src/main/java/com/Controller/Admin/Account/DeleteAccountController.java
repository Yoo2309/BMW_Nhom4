package com.Controller.Admin.Account;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Service.IAccountService;
import com.Service.Impl.AccountServiceImpl;

@WebServlet(urlPatterns = {"/DeleteAccount"})
public class DeleteAccountController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	IAccountService account = new AccountServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		account.deleted(req.getParameter("id"));
		resp.sendRedirect(req.getContextPath() + "/AccountList");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}

}
