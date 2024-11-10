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


@WebServlet("/updatetour")
public class updatetour extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public updatetour() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Tour tuu=new Tour();
		
		tuu.setFname(request.getParameter("fullname"));
		tuu.setEmail(request.getParameter("email"));
		tuu.setPhone(request.getParameter("number"));
		tuu.setTname(request.getParameter("tgname"));
		
		tuu.setLang(request.getParameter("tglang"));
		tuu.setPmethod(request.getParameter("pmeth"));
		tuu.setEname(request.getParameter("emname"));
		tuu.seteRelation(request.getParameter("emRelation"));
		tuu.seteNumber(request.getParameter("emNumber"));
		
		Tourservice service=new Tourservice();
		service.updateTour(tuu);
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("UserToursServlet");
		
		dispatcher.forward(request, response);
	}

}
