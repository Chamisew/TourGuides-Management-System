package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Tour;
import services.Tourservice;

@WebServlet("/UserToursServlet")
public class UserToursServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public UserToursServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String userEmail = request.getParameter("email");
        if (userEmail != null && !userEmail.isEmpty()) {
            
            Tourservice tourService = new Tourservice();
            List<Tour> tourList = tourService.getUserToursByEmail(userEmail);
            
            request.setAttribute("tourList", tourList);
            
            request.getRequestDispatcher("userTour.jsp").forward(request, response);
        } else {
            
            response.sendRedirect("toview.jsp");
        }
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
