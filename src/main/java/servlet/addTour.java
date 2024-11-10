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


@WebServlet("/addTour")
public class addTour extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public addTour() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Tour tou=new Tour();
		tou.setFname(request.getParameter("fullname"));
		tou.setEmail(request.getParameter("email"));
		tou.setPhone(request.getParameter("phone"));
		tou.setTname(request.getParameter("tourguide"));
		
		tou.setLang(request.getParameter("language"));
		tou.setPmethod(request.getParameter("paymentmethod"));
		tou.setEname(request.getParameter("emergencyname"));
		tou.seteRelation(request.getParameter("relationship"));
		tou.seteNumber(request.getParameter("emergencyphone"));
		
		Tourservice service=new Tourservice();
		service.addTour(tou);
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("udash.jsp");
		
		dispatcher.forward(request, response);
	}

}
