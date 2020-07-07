

<html>
<head>
    <meta charset="utf-8" />
    <title>Registration Page</title>
    <style>
        .img{
            width:100%;
            height:780px;
            background-image:url("img/bg20.jpg");
            /*background-size:cover;*/
            background-attachment:fixed;
           
        }
        .sdiv {
            background-color: white;
            font-family: Arial;
            border-radius: 10px;
            width: 600px;
            height: 550px;
            color: black;
            position: relative;
            top: 160px;
            margin: auto;
            box-shadow: 5px 5px 20px 4px grey;
        }
        h2{
            padding:25px 25px 10px 25px;
            color:#4d4c4c;
            margin-bottom:0px;
            text-align:center;
            
          }
        h4 {
            color: #4d4c4c;
            margin: 0px;
            padding: opx;
            text-align: center;
            font-size: 16px;
            font-weight: 100;
        }
        a{
            text-decoration:none;
        }
        
        
        li{
            list-style:none;
        }
        #inp{
            width: 250px;
            height: 27px;
            border: none;
            border-bottom: 2px solid #aeaeae;
            outline: none;
            /*margin-left:10px;*/
        }
        p{
            margin:0px;
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
        table{
            /*border:dashed;*/
            position:relative;
            left:-15px;
        }
        td{
            /*border:dotted;*/
            padding:10px;
            text-align:right;
            background-color:white;

        }
        form{
            padding-top:10px;
        }


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
            top: 55px;
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
    </style>
</head>
<body style="margin:0px;color:#4d4c4c;">
    <div class="img">
        <div class="sdiv">

            <h2> Create Your Account </h2>
            <h4>Already have an Account?   <a href="Login_page.jsp" style="color:#d15555;"> Sign In</a></h4>
            <h4 style="color:#4caf50; font-size: 23px; padding-top: 10px;">Successfully Registered!!!   </h4>
            <center>  
                <form  action="store.jsp" method="post">
                    <table>
                        <tr>
                            <td>Username</td>
                            <td><input id="inp" type="text" name="uname" /></td>

                        </tr>
                        <tr>
                            <td>Email</td>
                            <td><input id="inp" type="text" name="email" /></td>

                        </tr>
                        <tr>
                            <td>Password</td>
                            <td><input id="inp" type="password" name="pass1" /></td>
                        </tr>
                        <tr>
                            <td>Confirm Password</td>
                            <td><input id="inp" type="password" name="pass2" /></td>
                        </tr>
                          <tr>
                            <td>Amount</td>
                            <td><input id="inp" type="text" name="amount" /></td>
                        </tr>
                        <tr>
                            <td>Address</td>
                            <td><input id="inp" type="text" name="address" /></td>
                        </tr>
                        <tr>
                            <td>Phone No</td>
                            <td><input id="inp" type="text" name="phn" /></td>
                        </tr>

                        <tr>
                            <td></td>
                            <td style="text-align:left">
                                <input class="loginbtn" type="submit" value="Create Account" />
                                <input class="clearbtn" type="reset" name="Reset" />
                            </td>

                        </tr>

                    </table>
                </form>
            </center>


        </div>

    </div>

  
      
    

   

    <header> <div class="axis"> <div class="back"> <form action="home.jsp">
                        <button type="submit">Home</button>
                    </form>     </div> </div></header>

</body>
</html>