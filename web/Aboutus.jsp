<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta charset="utf-8" />
        <title>About Us</title>
        <style>
            /*header css start*/
            body{
                margin:0px;
                font-family:Arial;
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
                 /*box-shadow: 1px 1px 8px 8px  white inset;*/
                /*border:2px solid red;*/
            }

            .content{
                padding:30px;

            }
            .menubar{
                text-align:left;
                font-size:20px;
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

            /*content css start*/
            .margin{
                padding-left:1000px;
                padding-top:50px;

            }

            .about {
                margin-left: 270px;
                margin-top: -220px;
                width: 450px;
                height: 200px;
                background: white;
                border: 1px solid #d2d0d0;
                border-radius: 10px;

            }

            .maindiv{
                width:1500px;
                height:450px;
                background:white;
            }
            .divimg{
                width:475px;
                height:346px;
                background:green;
                position: relative;
                left: 975px;
                top: 50px;
                background-image:url(img/axis15.jpg);

            }
            .font{
                font-family:Calibri light;
                text-align:center;
                color:#808080;
                font-weight:200;
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
            .footerdiv{
                width:auto;
                height:300px;
                /*border:3px solid red;*/
                background-color:#b6b6b6;
                margin-top:-10px;

            }


            ul{
                list-style-type:none;
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
               <a href="home.jsp" >HOME</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="news.jsp">NEWS</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="Aboutus.jsp" class=" active">ABOUT US</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="contact%20us.jsp">CONTACT US</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="Login_page.jsp" >LOGIN</a>
                <!--<a href="logout.jsp"  style="margin-left:750px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;REGISTER</a>-->

                <% } else {%>



             <a href="home.jsp" >HOME</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="news.jsp">NEWS</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="Aboutus.jsp" class=" active">ABOUT US</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="contact%20us.jsp">CONTACT US</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                <!--<a href="Login_page.jsp" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LOGIN</a>-->
                <div class="menubar2">
                <t style="color: white" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;USER: </t>
                <a style="color:#ae285d"> <%=name1.toUpperCase()%></a>
                <a href="logout.jsp" Style="color:black;"  >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LOGOUT</a>
                </div>

            <%}%>
             </div>
        </div>

        <img src="img/axis7.png" width="1519" height="300" />
        <div class="maindiv">
            <div class="divimg"></div>

            <div class="about">

                <h2 style="font-weight:900; font-family:Calibri light; text-align:center;color:#808080;">
                    Our Corporate Office
                </h2>
                <h4 class="font">
                    Axis Bank Limited, Corporate Office, Bombay Dyeing Mills Compound, Pandurang Budhkar Marg,Worli, Mumbai - 400 025
                    Tel: (022) 2425 2525
                </h4>
            </div>
        </div>
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