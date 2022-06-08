<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>


<%  //Delete Process
	String empID = request.getParameter("empID");
	int no = Integer.parseInt(empID);
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/employeeregister","root","");
	Statement stat = conn.createStatement();
	stat.executeUpdate("delete from empmanage where empID ='" +empID+"'");
	response.sendRedirect("TableView.jsp");
	%>