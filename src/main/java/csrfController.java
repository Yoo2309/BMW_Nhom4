import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//Xác đinh URL cho trang Đăng nhập giả
@WebServlet(urlPatterns = {"/csrf2.html"})

public class csrfController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	//Xác định phương thức doGet để gọi trang csrf.html
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
			request.getRequestDispatcher("views/web/giangvien/csrf2.html").forward(request, response);
	    }
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		resp.setContentType("text/html;charset=UTF-8");	
	}	
}
