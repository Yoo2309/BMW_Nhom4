package com.Controller.Web;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import com.DAO.AccountDAO;
import com.Entity.Accounts;

@WebServlet(urlPatterns = {"/LoginWeb"})
public class LoginWeb extends HttpServlet{

	private static final long serialVersionUID = 1L;
	public static final String SUCCESS = "HomeWeb";
    public static final String ERROR = "views/invalid.jsp";

    
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			
			HttpSession session = request.getSession(true);
			String csrfToken = UUID.randomUUID().toString();
			session.setAttribute("csrfToken", csrfToken);
			//System.out.println("A: "+request.getSession().getAttribute("csrfToken"));
		
			request.getRequestDispatcher("views/loginPage.jsp").forward(request, response);
			
	    }
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=UTF-8");
		
		HttpSession session = req.getSession(true);
        String url = ERROR;
        String csrfToken = req.getParameter("csrfToken");
        String storedToken = (String) req.getSession().getAttribute("csrfToken");
        System.out.println("csrfToken: "+csrfToken);
        System.out.println("storedToken: "+storedToken);
        try {
            String username = req.getParameter("txtUsername");
            String password = req.getParameter("txtPassword");
            
            AccountDAO dao = new AccountDAO();
            Accounts user = dao.checkLogin(username, password);
            if ((user != null) && (csrfToken != null) && (csrfToken.equals(storedToken))) {
                session.setAttribute("USER", user);
                csrfToken = UUID.randomUUID().toString();
    			req.getSession().setAttribute("csrfToken", csrfToken);
    			System.out.println("csrfToken: "+csrfToken);
                url = SUCCESS;
                resp.sendRedirect(url);
            }
            else {
            	System.out.println("\n\nlogin user null\n");
            }
        } catch (Exception e) {
            log("error at login servlet: " + e.toString());
            
        } 
	}	
	
}
