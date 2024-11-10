package servlet;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Tour;
import services.Tourservice;


@WebServlet("/RegisterLogin")
public class RegisterLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public RegisterLogin() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
        Tour tt=new Tour();
		
		tt.setEmail(request.getParameter("email"));
		tt.setPassword(request.getParameter("password"));
		

		Tourservice service=new Tourservice();
		boolean status= service.validate(tt);
        if(status) {
			
			
			
			RequestDispatcher dispatcher=request.getRequestDispatcher("udash.jsp");
			
		    dispatcher.forward(request, response);
		}
		else {
			RequestDispatcher dispatcher=request.getRequestDispatcher("reglogin.jsp");
			dispatcher.forward(request, response);
		}

		

		doGet(request, response);
	}

}
