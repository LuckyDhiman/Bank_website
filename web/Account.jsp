<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@ page import="java.sql.*"%>

<html>
<head>
    <title>Account Page</title>
    <style>

        .img {
            width: 100%;
            height: 845px;
            background-image: url("img/bg20.jpg");
            /*background-size: cover;*/
            background-attachment:fixed;
        }
        .sdiv {
            background-color: white;
            font-family: Arial;
            border-radius: 10px;
            width: 600px;
            height: 500px;
            color: black;
            position: relative;
            top: 160px;
            margin: auto;
              box-shadow: 5px 5px 20px 4px grey;
           
        }
        h2{
            padding:25px 25px 25px 25px;
            color:#4d4c4c;
            margin-bottom:0px;
            text-align:center;
            
          }
       
        /*header css start*/
        .axis {
            background: url("img/201.png");
            background-repeat: no-repeat;
            background-position: left top;
            height: 120px;
            width: 100%;
            /*margin-right: 200px;*/
            position: fixed;
            background-size: cover;
            top: 0;
        }

        .back {
            width: 100px;
            position: absolute;
            font-family: Arial;
            top: 70px;
            right: 30px;
       
        }
          button{
          
            background-color:#97144d;
            text-decoration:none;
             border: none;
            outline: none;
            font-size: 18px;
            border-radius: 10px;
            padding: 8px;
            color: white;
              transition: transform .2s;
        }
        button:hover{
              
            background:  white;
            color: #97144d;
            transform: scale(1.2); 
           
        }

        table {
            /*border:dashed;*/
            /*margin:auto;*/
            margin-left: 50px;
            color: #4d4c4c;
        }
        td{
            padding:10px 10px 10px 45px;
          
          /*border:dashed;*/
        }
        #tdR{
            color:#97144d;
        }
        #update{
            /*background-color: rgba(0,123,255,.6);*/
            background-color: #97144d;
        }
        #update:hover{
            background-color:#f8dce8;
            color:#97144d;
        }
    </style>

</head>
<body style="margin:0px;">
    <%! String username,email,address,phone,amount,AC_no;%>
    <% String name1 = (String) session.getAttribute("user");
     String pass1 = (String) session.getAttribute("userpass");
    
        Statement stmt=null;
        Connection conn=null;
        ResultSet rs=null;

        String url="jdbc:oracle:thin:@localhost:1521:xe";
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn=DriverManager.getConnection(url,"lucky","7300");
             stmt=conn.createStatement();
             rs=stmt.executeQuery("Select * from Axis_Bank where password='"+pass1+"' and username='"+name1+"'");
             while(rs.next()){
                  username=rs.getString("username");
                  email=rs.getString("email");
                  address=rs.getString("address");
                  phone=rs.getString("phone");
                  amount=rs.getString("balance");
                  AC_no=rs.getString("AC_no");
                 // session.setAttribute("ac_no",AC_no);
             }
        }
        catch(ClassNotFoundException e){
            out.println("Driver not Found");
        }
        catch(SQLException e){
        out.println("Connection not Found : "+e);
        }
        
    %>
        

    <div class="img">
        <div class="sdiv">
            <h2>Account Details</h2>

            <table>
                <tr>
                    <td>Account Type </td>
                    <td>:</td>
                    <td id="tdR">Saving</td>
                </tr>
                <tr>
                    <td>User Name  </td>
                    <td>:</td>
                    <td id="tdR"><%out.println(username);%> </td>
                </tr>
                <tr>
                    <td>Account No  </td>
                    <td>:</td>
                    <td id="tdR"><%=AC_no%></td>
                </tr>

                <tr>
                    <td>Balance  </td>
                    <td>:</td>
                    <td id="tdR">Rs.<%out.println(amount+".00");%></td>
                </tr>
                <tr>
                    <td>Email  </td>
                    <td>:</td>
                    <td id="tdR"><%out.println(email);%></td>
                </tr>
                <tr>
                    <td>Address  </td>
                    <td>:</td>
                    <td id="tdR"><%out.println(address);%></td>
                </tr>
                <tr>
                    <td>Phone No  </td>
                    <td>:</td>
                    <td id="tdR"><%out.println(phone);%></td>
                </tr>
            </table>
                <div style="text-align:center; position:relative; top:20px; left:75px;"> <form action="#">
                        <button id="update" type="submit">Update</button>
                    </form>    </header></div>
        </div>
        
    </div>

    <header>
        <div class="axis">
            <div class="back">
                <form action="home.jsp">
                        <button type="submit">Home</button>
                    </form>    </div> </div></header>

    
</body>
</html>
