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
        
    </style>

</head>
<body style="margin:0px;">
    <% 
    String name1 = (String) session.getAttribute("ac_no"); %>
    <div class="img">
        <div class="sdiv">
              <h2>New Transaction</h2>
               <center>  
                     <p style="color:red; font-size: 20px; margin:0pc; margin-bottom: 10px;">Transaction FAILED : something went wrong
</p>
                <form class="form1" action="process_transaction.jsp" method="post">
                    <table>
                        <tr>
                            <td>From Account</td>
                            <td><div class="ac_div" ><%=name1 %></div></td>

                        </tr>
                        <tr>
                            <td>To Account</td>
                            <td><input id="inp" type="text" name="ac_no2" /></td>

                        </tr>
                        <tr>
                            <td>User Name</td>
                            <td><input id="inp" type="text" name="uname" /></td>

                        </tr>
                         <tr>
                            <td>Amount(INR)</td>
                            <td><input id="inp" type="text" name="amount" /></td>
                        </tr>
                        <tr>
                            <td>Password</td>
                            <td><input id="inp" type="password" name="pass1" /></td>
                        </tr>
                       
<!--                          <tr>
                            <td>Account No</td>
                            <td><input id="inp" type="text" name="address" /></td>
                        </tr>-->
                       
                        <tr>
                            <td>Remark</td>
                            <td><input id="inp" type="text" name="remarks" /></td>
                        </tr>

                        <tr>
                            <td></td>
                            <td style="text-align:left">
                                <input class="loginbtn" type="submit" value="Submit" />
                                <input class="clearbtn" type="reset" name="Reset" />
                            </td>

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
