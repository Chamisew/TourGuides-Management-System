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


@WebServlet("/deletetour")
public class deletetour extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public deletetour() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Tour td=new Tour();
		Tourservice service = new Tourservice();
		td.setEmail(request.getParameter("email"));
		service.deleteTour(td);
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("UserToursServlet");
		
		// TODO Auto-generated method stub
		dispatcher.forward(request, response);
	}

}
