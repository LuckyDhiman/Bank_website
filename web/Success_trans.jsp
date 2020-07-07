<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
<head>
    <title>Transaction Page</title>
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
         .form1 {
            position: relative;
            top: 0px;
            color: #666666;
           
        }
         .loginbtn {
           
            height: 35px;
            border-radius: 7px;
            
            font-size: 16px;
            /*font-weight: bold;*/
            background-color: #4caf50;
            color: white;
            border: none;
            outline: none;
        }
        .clearbtn {
            height: 35px;
            border-radius: 7px;
            font-size: 16px;
            /*font-weight: bold;*/
            background-color: #808080;
            color: white;
            border: none;
            outline: none;
        }
            .clearbtn:hover {
                opacity: 0.8;
            }
        .loginbtn:hover {
            opacity: 0.8;
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
         #inp{
            width: 250px;
            height: 27px;
            border: none;
            border-radius: 5px;
            border: 1px solid #aeaeae;
            outline: none;
            /*margin-left:10px;*/
        }
        td{
            /*border:dotted;*/
            padding:10px;
            /*text-align:right;*/
            background-color:white;

        }
        .ac_div{
                font: 400 18px Arial;
           width: 255px;
            height: 28px;
            border: none;
            border-radius: 5px;
            border: 1px solid #aeaeae;
            outline: none; 
        }
        #tdR {
            color: #97144d;
        }
    </style>

</head>
<body style="margin:0px;">
   
  
    <% String ac_no = (String)session.getAttribute("to_ac");%>
    <% String uname = (String)session.getAttribute("uname");%>
    <% String remarks = (String)session.getAttribute("remarks");%>
    <% String debitamt = (String)session.getAttribute("debitamt");%>
    <div class="img">
        <div class="sdiv">
              <h2>Transaction Details</h2>
               <center>  
                  <!-- <p style="color:#4caf50; font-size: 20px; margin:0pc; margin-bottom: 10px;">Transaction Success </p>-->
                <form class="form1" action="process_transaction.jsp" method="post">
                    <table>
                        <tr>
                            <td>Status </td>
                            <td>:</td>
                            <td style="color:#4caf50">Success</td>
                        </tr>
                        <tr>
                            <td>To Account </td>
                            <td>:</td>
                            <td id="tdR"> <%=uname%></td>
                        </tr>
                        <tr>
                            <td>Beneficiary A/C No  </td>
                            <td>:</td>
                            <td id="tdR"><%=ac_no%></td>
                        </tr>

                        <tr>
                            <td>Trasaction Amount </td>
                            <td>:</td>
                            <td id="tdR">Rs.<%=debitamt%>.00</td>
                        </tr>
                        <tr>
                            <td>Bank Name</td>
                            <td>:</td>
                            <td id="tdR">Axis Bank</td>
                        </tr>
                        <tr>
                            <td>Branch  </td>
                            <td>:</td>
                            <td id="tdR">Muzaffarnagar</td>
                        </tr>
                        <tr>
                            <td>Remarks </td>
                            <td>:</td>
                            <td id="tdR"> <%=remarks%></td>
                        </tr>
                    </table>
                </form>
            </center>
        </div>

        
    </div>

    <header>
        <div class="axis">
            <div class="back"><form action="home.jsp">
                        <button type="submit">Home</button>
                    </form>    </div> </div></header>

        </div>
    </header>

</body>
</html>
