<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta charset="utf-8" />
        <title>HOME PAGE</title>
        <style>
            body{
                margin:0px;
            }
            .header{
                padding:25px;
                text-align:center;
                background:url("img/axis4.png");
                background-position:left;
                background-size:200px 150px;
                background-repeat:no-repeat;
                background-color:#c5c0c0;
                color:#ae285d;
                font-size:30px;
                font-family:sans-serif;
                width:1469px;
                /*border:2px solid red;*/
            }
            .content{
                /*border:2px solid blue;*/
                color:#ae285d;
            }
            .menubar{
                text-align:left;
                font-size:20px;
                width:auto;
                                 /*border:solid 5px red;*/
            }
             .menubar2{
                text-align:right;
                font-size:20px;
                width:30%;
               float: right;
                 /*border: dashed;*/
                /*border:solid 5px red;*/
            }

            a{ 
                text-decoration:none;
                color:white;
                font-size:20px;
              
            }
            .menubar a:hover {
               color: #97144d;
            }
    
             
            /*Axis four feature*/
            .axis{
                width:80%;
                height:150px;
                border:3px solid #808080;
                margin:50px 0;
                text-align:center;
                background-repeat:no-repeat;
                 transition: transform .2s;
            }
            .axis:hover{
                transform: scale(1.2); 
            }
            p{
                font-size:20px;
                font-weight:bold;

            }
            /*footer CSS Start*/
            .coloumn{
                float:left;
                width:20%;
                height:200px;
                margin-left:180px;
                margin-top:50px;
                background-color:#b6b6b6;
                /*border:2px solid green;*/
            }

            ul {
                list-style-type: none;
            }
            .footerdiv{
                width:auto;
                height:300px;
                /*border:3px solid red;*/
                background-color:#b6b6b6;
                margin-top:-10px;

            }
            .active {
                color: #ae285d;
                border: 1px solid #97144d;
                border-radius: 5px;
                padding: 3px;
            }
          
            .menubar .active:hover {
                    color: white;
                    border: 1px solid #97144d;
                    border-radius: 5px;
                    padding: 3px;
                    background-color:#97144d;
                }
        </style>
    </head>
    <body>
        <div class="header">

            <h1>AXIS BANK Pvt Ltd</h1>

            <p style="color:white;">बढ़ती का नाम ज़िन्दगी</p>
            <div class="menubar">
                <% String name1 = (String) session.getAttribute("user");
                    // boolean f=false;
                    // String name="";
                    if (name1 == null) {
                        // out.println("<h1>You are new user go to home page and submit your name </h1>");
                %>
                <a href="home.jsp" class=" active">HOME</a>
                <a href="news.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NEWS</a>
                <a href="Aboutus.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ABOUT US</a>
                <a href="contact%20us.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CONTACT US</a>
                <a href="Login_page.jsp" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LOGIN</a>
                <a href="Register.jsp"  style="margin-left:750px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;REGISTER</a>

                <% } else {%>



                <a href="home.jsp" class=" active">HOME</a>
                <a href="news.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NEWS</a>
                <a href="Aboutus.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ABOUT US</a>
                <a href="contact%20us.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CONTACT US</a>
                <a href="Account.jsp" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ACCOUNT</a>
                <a href="Transaction.jsp" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TRANSACTION</a>
                <div class="menubar2">
                <t style="color: white" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Welcome: </t>
                <a style="color:#ae285d"> <%=name1.toUpperCase()%></a>
                <a href="logout.jsp" Style="color:black;"  >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LOGOUT</a>
                </div>
           

            <%}%>
             </div>

        </div>
        <div class="content">
            <img  src="img/axis6.png" width="1519" height="300"/>
            <center>  <h1 style="color:#ae285d"><b>PRODUCT</b> to meet your life goals</h1></center>
            <axisdata>
                <center>
                    <table width="70%">
                        <tr>
                            <td width="1%">
                                <center>
                                    <div class="axis">
                                        <img style="padding-top:8px;" src="img/axis10.png" />
                                        <p style="margin:auto">Saving Account</p>
                                    </div>
                                </center>
                            </td>
                            <td width="1%">
                                <center>
                                    <div class="axis">
                                        <img style="padding-top:10px;"src="img/axis11.png" />
                                        <p style="margin:auto">Salary Account</p>

                                    </div>
                                </center>
                            </td>
                            <td width="1%">
                                <center>
                                    <div class="axis">
                                        <img style="padding-top:1px;" src="img/axis12.png" />
                                        <p style="margin:auto">Axis Direct Account</p>

                                    </div>
                                </center>
                            </td>
                            <td width="1%">
                                <center>
                                    <div class="axis">
                                        <img style="padding-top:5px;" src="img/axis13.png" />
                                        <p style="margin:auto">Fixed Deposite</p>

                                    </div>
                                </center>
                            </td>
                        </tr>

                    </table>
                </center>
            </axisdata>

        </div>
        <img src="img/axis8.png" width="1518"/>
        <div class="footerdiv">
            <footer style="background-color:#808080">
                <div class="coloumn">
                    <p>CONTACT US</p>
                    <ul>
                        <li>Call: 1800-19-5959</li>
                        <li>Find your Nearest Branch</li>
                        <li>Banking Scheme</li>
                        <li>Noice Board</li>
                    </ul>
                </div>
                <div class="coloumn">
                    <p>SHAREHOLDERS'CORNER</p>
                    <ul>
                        <li>Stock Information</li>
                        <li>Corporate Governace</li>
                        <li>Investor FAQs</li>
                        <li>Investor Contacts</li>
                        <li>Financial Results</li>
                    </ul>
                </div>
                <div class="coloumn">
                    <p>MEDIA CENTER</p>
                    <ul>
                        <li>Corporate Profile</li>
                        <li>Vision and Values</li>
                        <li>Press Release</li>
                        <li>Gallery</li>
                    </ul>
                </div>
            </footer>
        </div>
    </body>
</html>