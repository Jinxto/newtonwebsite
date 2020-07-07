package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import bean.UserOrder;
import javaWebApplication.utility.ServletUtility;
import model.UserModel;


/**
 * Servlet implementation class OrderCTL
 */
public class OrderCTL extends HttpServlet  {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderCTL() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		request.getRequestDispatcher("jsp/order.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    
	    
	
	    UserOrder user = new UserOrder();
	    user.setname(request.getParameter("name"));
	    user.setMaindish(request.getParameter("Maindish"));
	    user.setDrinks(request.getParameter("Drinks"));
	    user.setExtras(request.getParameter("Extras"));
	    user.setday(request.getParameter("day"));
	    
	    
	    long i = UserModel.Orders(user);
	    if(i>0) {
	      ServletUtility.setSuccessMessage("Ordered  sucessfully", request);
	      
	    }else {
	      ServletUtility.setErrorMessage("Order fail", request);
	    }
	
	    request.getRequestDispatcher("jsp/order.jsp").forward(request, response);
		
	
 }
}
