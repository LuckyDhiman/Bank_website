
<%@ page import="com.GetConnection"%>
<%@ page import="java.sql.*"%>
    <%! String email,address,phone,amount,AC_no="null",up_amount;
         Connection con=GetConnection.giveConnection();
%>
<%
   // String ac_no1 = request.getParameter("ac_no1");           receivier data
    String ac_no2 = request.getParameter("ac_no2");
    String uname = request.getParameter("uname");
    String debitamt = request.getParameter("amount");
    String pass2 = request.getParameter("pass1");
    String remarks = request.getParameter("remarks");
 
    session.setAttribute("to_ac",ac_no2);       // to print the success trans
      session.setAttribute("uname",uname);
      session.setAttribute("debitamt",debitamt);
      session.setAttribute("remarks",remarks);
%>

<%   ResultSet rs=null;   Statement stmt=null;
    String name1 = (String) session.getAttribute("user");      //  sender data
     String pass1 = (String) session.getAttribute("userpass");
      stmt=con.createStatement();
     rs=stmt.executeQuery("Select Balance from Axis_Bank where password='"+pass1+"' and username='"+name1+"'");
     while(rs.next()){
         amount=rs.getString("Balance");                //if we not use this session amt no change
     }
     
    String ac = (String) session.getAttribute("ac_no");
 
                
      

        try{
            
          
             rs=stmt.executeQuery("Select * from Axis_Bank where AC_no='"+ac_no2+"' and username='"+uname+"'");
             while(rs.next()){
           
                  up_amount=rs.getString("balance");
                  AC_no=rs.getString("AC_no");
             }
             
        }
       
        catch(SQLException e){
        out.println("Connection not Found : "+e);
        }
        
    %>
 <%  if(AC_no !="null")  //if user info wrong
 {int dr=0,cr=0,total=0,updebt=0;
    dr=Integer.parseInt(debitamt);  //1500          transaction amt
   cr=Integer.parseInt(up_amount);   //150          receiver amt
  
   int amt2=0;
   amt2=Integer.parseInt(amount);      //sender amt
   if(amt2>=dr)   // check for balance is suffient for transation
   {
    updebt=amt2-dr;
    total=dr+cr;
    
  String QryString = "update Axis_Bank set balance="+total+" where ac_no="+ac_no2+"";
  String QryString2 = "update Axis_Bank set balance="+updebt+" where ac_no="+ac+"";
  
    stmt.executeQuery(QryString);
    stmt.executeQuery(QryString2);
   AC_no="null";
   debitamt="null";
 response.sendRedirect("Success_trans.jsp");
   }
   else{
        response.sendRedirect("Failed_trans.jsp");
   }
 }
   else{
        response.sendRedirect("Failed_trans.jsp");
   }
 %>
<h2>data showing </h2>
<%= ac_no2 %>
<%= debitamt%>
 <%=up_amount%>
        




