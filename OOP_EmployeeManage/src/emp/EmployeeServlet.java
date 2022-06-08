package emp;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import emp.DatabaseConnecter;

@WebServlet("/EmployeeServlet") 
public class EmployeeServlet extends HttpServlet{
	
	private static final long serialVersionUID = 1L; 

	//Post Method
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{ 		
	
		String empName = request.getParameter("empName");
		String empEmail = request.getParameter("empEmail");
		String empNIC = request.getParameter("empNIC");
		String empDate = request.getParameter("empDate");

		//Connection
		 Connection conn = null;
		    
		 	//Insert Query
		    try {
		    	String sql = "insert into empmanage(empID, empName,empEmail,empNIC,empDate) values(?,?,?,?,?)";
		    	Class.forName("com.mysql.cj.jdbc.Driver");
			     conn =  DriverManager.getConnection("jdbc:mysql://localhost:3306/employeeregister","root","");
			    PreparedStatement st = conn.prepareStatement(sql);
			     st.setInt(1, 0);
			 	 st.setString(2, empName);			    
			     st.setString(3, empEmail);			    
			     st.setString(4, empNIC);			    
			     st.setString(5, empDate);


			     int row = st.executeUpdate();
			     
			    System.out.println("db connected!!");

		        if (row > 0) {
		          System.out.println("File uploaded and saved into database");
		          
					PrintWriter out = response.getWriter(); 

					out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
					out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
					out.println("<script>");
					out.println("$(document).ready(function(){");
					out.println("swal ( ' Employee Register Successfully' ,  '' ,  'success' );");
					out.println("});");
					out.println("</script>");
		          
		          
		          RequestDispatcher rd = request.getRequestDispatcher("/TableView.jsp");
		          
		          rd.include(request, response);
		        }
		       
		    }catch (Exception e) {
		    	e.printStackTrace(); 
		        }
			}	
	} 
	



