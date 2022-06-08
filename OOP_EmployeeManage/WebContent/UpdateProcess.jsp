<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/employeeregister";%>
<%!String user = "root";%>
<%!String psw = "";%>
<% 
String empID = request.getParameter("empID");
String empName =request.getParameter("empName");
String empEmail =request.getParameter("empEmail");
String empNIC=request.getParameter("empNIC");
String empDate=request.getParameter("empDate");


//Update Process
if(empID != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(empID);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update empmanage set empID=?,empName=?,empEmail=?,empNIC=?,empDate=? where empID="+personID;
ps = con.prepareStatement(sql);
ps.setInt(1, personID);
ps.setString(2,empName);
ps.setString(3,empEmail);
ps.setString(4,empNIC);
ps.setString(5,empDate);

int i = ps.executeUpdate();
if(i > 0)
{
	

RequestDispatcher rd = request.getRequestDispatcher("TableView.jsp");
rd.include(request, response);
}
else
{
out.print("There is a problem in updating Record.");

}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%> 