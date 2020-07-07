
<%@ page import="com.GetConnection"%>
<%@ page import="java.sql.*"%>
    <%! String username,email,address,phone,amount,AC_no;%>

<%
    String name = request.getParameter("uname");
    String pass = request.getParameter("pass1");
    Connection con=GetConnection.giveConnection();
    Statement start = con.createStatement();
    //ResultSet rs = start.executeQuery("select username from server where username ='"+name'" ");

    ResultSet rs = start.executeQuery("select * from Axis_Bank where username ='" + name + "' and password='" + pass + "' ");
    //ResultSet resultset = start.executeQuery("select * from Publishers where city = 'Boston'") ; 

    
while(rs.next()){
                  username=rs.getString("username");
                  email=rs.getString("email");
                  address=rs.getString("address");
                  phone=rs.getString("phone");
                  amount=rs.getString("balance");
                  AC_no=rs.getString("AC_no");
                  
             }
 rs = start.executeQuery("select username from Axis_Bank where username ='" + name + "' and password='" + pass + "' ");
if (rs.next()) {
      //  out.println("*****Your are Login*****");
    //  AC_no="1111";
session.setAttribute("user",name);
session.setAttribute("userpass",pass);
session.setAttribute("ac_no",AC_no);
session.setAttribute("amount",amount);
response.sendRedirect("home.jsp");
%>



<%
    } else {
        //out.println("Invalid User Name or Password");
        response.sendRedirect("Wrong_Login.jsp");
    }

%>


