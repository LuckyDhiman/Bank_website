<%@page import="com.GetConnection" %>
<%@ page import="java.sql.*"%>

<%
    String uname = request.getParameter("uname");
    String email = request.getParameter("email");
    String pass1 = request.getParameter("pass1");
    String pass2 = request.getParameter("pass2");
    String amount = request.getParameter("amount");
    String address = request.getParameter("address");
    String phn = request.getParameter("phn");

      ResultSet rs=null;
      Statement stmt=null;
      
  if(uname.isEmpty()){
       out.println("Please enter the data");
      // response.sendRedirect("Register.jsp");
  }
       
  else{
        
        
    if (pass1.equals(pass2)) {

            Connection con=GetConnection.giveConnection();
            stmt=con.createStatement();
         
            PreparedStatement ps = con.prepareStatement("insert into Axis_Bank values(auto_AC.nextval,?,?,?,?,?,?)");
       
            ps.setString(1, uname);
            ps.setString(2, amount);
            ps.setString(3,email);
            ps.setString(4, pass1);
//            ps.setString(4, pass2);
            ps.setString(5, address);
            ps.setString(6, phn);
           
            int x = ps.executeUpdate();
            if (x != 0) {
//                out.print("Account Created Successfully");
               response.sendRedirect("Success_Reg.jsp");
            } else {
                out.println("Something went wrong");
            }

    } else {
        out.println("Password not match");
    }

  }
%>