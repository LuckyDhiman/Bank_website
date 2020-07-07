<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>News</title>
    <style>
        /*header css start*/
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
       
        .maindiv{
            width:1200px;
            height:1000px;
            margin-top:20px;
            margin-left:150px;
            margin-right:150px;
        }
        .newsdiv{
            height:40px;
            background-color:#ae285d;
            border-radius:15px;
            padding-top:0px;
            color:white;
            font-family:Calibri light;
            font-size:30px;
            text-align:center;
        }
        .newshead{
            height:60px;
            border:2px solid white;

            margin-top:10px;
            text-align:center;
            color:#ae285d;
            text-decoration:underline;

        }
        .content{
            height:110px;
        }
        .imgdiv{
            width:400px;
            height:300px;
            background-image:url(img/axis17.png);
            object-fit:cover;
                margin-top:15px;
            margin-left:800px;
        }
        .sidediv{
            width:800px;
            height:300px;
            background-color:white;
            margin-top:-300px;
        }
        p {
            font-size: 20px;
            font-weight: bold;
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
        
    </style>
</head>
<body>
    <div class="header">

        <h1>AXIS BANK Pvt Ltd</h1>

        <p style="color: white;">बढ़ती का नाम ज़िन्दगी</p>
             <div class="menubar">
                <% String name1 = (String) session.getAttribute("user");
                    // boolean f=false;
                    // String name="";
                    if (name1 == null) {
                        // out.println("<h1>You are new user go to home page and submit your name </h1>");
                %>
                <a href="home.jsp" >HOME</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="news.jsp"class=" active">NEWS</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="Aboutus.jsp">ABOUT US</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="contact%20us.jsp">CONTACT US</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="Login_page.jsp" >LOGIN</a>
                <a href="logout.jsp"  style="margin-left:750px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;REGISTER</a>

                <% } else {%>



                <a href="home.jsp" >HOME</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="news.jsp"class=" active">NEWS</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="Aboutus.jsp">ABOUT US</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
    <img src="img/axis16.png" width="1519" />
    <div class="maindiv">
        <div class="newsdiv">
            LATEST AXIS NEWS
        </div>
        <div class="newshead">
            <h3> Clarification regarding false reports concerning Brady House operations</h3>
        </div>
        <div class="content">
            Contrary to false reports, AXIS has no plans to close operations in the Brady House branch in Mumbai.
            The Brady House branch continues to operate as normal and remains fully operational.
            Reallocation of some of the large value accounts is part of the regular restructuring process
            at AXIS to strengthen internal systems and processes and centralize
            certain critical functions. Retail operations for AXIS customers continue to operate from the branch.
        </div>
        <div class="newshead">
            <h3>Precautions for Inland Letter of Guarantee (ILG)</h3>

        </div>
        <div class="content">
            “A message containing details of Inland Letter of Guarantee (ILG), issued in paper form by our offices,
            is also transmitted electronically through Structured Financial Messaging System (SFMS) platform to beneficiary’s Bank.
            Beneficiaries may therefore, in their own interest, verify the genuineness of Inland Letter of Guarantee (ILG)
            issued by our offices, from their Bank/Branch. Also, the genuineness of guarantee may be got verified from the
            Branch’s controlling office (Details of controlling office are available on AXIS’s website under About us-> Organisational Structure->Circle Offices)”.
        </div>
        <div class="newshead">
            <h3>Precautions for Inland Letter of Guarantee (ILG)</h3>

        </div>
        <div class="imgdiv">

        </div>
        <div class="sidediv">
            Mission Parivartan, a transformational exercise for Business Excellence,
            spells various focus areas and strategies of our Bank for ensuring
            greater Efficiency, Productivity and Profitability for long term sustenance,
            helping transform PNB into a Preferred National Bank.A message containing details of Inland Letter of Guarantee (ILG), issued in paper form by our offices,
            is also transmitted electronically through Structured Financial Messaging System (SFMS) platform to beneficiary’s Bank.
            Beneficiaries may therefore, controlling office are available on AXIS’s website under About us-> Organisational Structure->Circle Offices)”.Also,
            the genuineness of guarantee may be got verified from the
            Branch’s controlling office (Details of controlling office are available on AXIS’s website under About us->Did you know that close to 40,000 of our
            employees are millennials? That’s around 53% of our total employee base! PNB, India’s second largest among public sector banks in terms of business and total assets,
            operates through four segments: Corporate/Wholesale banking.

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