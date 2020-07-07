<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
<head>
    <title>Login Page</title>
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
            width: 360px;
            height: 400px;
            color: black;
            position: relative;
            top: 200px;
            margin: auto;
            box-shadow: 5px 5px 20px 4px grey;
            overflow-wrap: break-word;
        }

        h2 {
            padding: 10px;
            color: #4d4c4c;
            margin-left: 26%;
            position: relative;
            top: 60px;
        }

        .avatar {
            width: 200px;
            height: 150px;
            background-image: url("img/avatar.png");
            background-size: cover;
            /*position: center;*/
            position: absolute;
            top: -80px;
            left: 65px;
            /*border:dotted;*/
        }

        .form1 {
            /*border: dotted;*/
            margin: auto;
            position: relative;
            top: 10px;
            color: #666666;
        }

        li {
            list-style: none;
        }

        #inp {
            width: 85%;
            height: 27px;
            border: none;
            border-bottom: 2px solid #4d4c4c;
            outline: none;
        }

        p {
            margin: 0px;
        }

        .loginbtn {
            width: 85%;
            height: 40px;
            border-radius: 7px;
            position: relative;
            top: 55px;
            font-size: 18px;
            font-weight: bold;
            background-color: #4caf50;
            color: white;
            border: none;
            outline: none;
        }

            .loginbtn:hover {
                opacity: 0.8;
            }


        .s2div {
            background-color: white;
            font-family: Arial;
            border-radius: 10px;
            width: 345px;
            height: 180px;
            color: black;
            position: relative;
            top: 230px;
            margin: auto;
            padding: 10px;
            box-shadow: 5px 5px 20px 4px grey;
        }

        #h2 {
            position: relative;
            top: 0px;
            margin: 0px;
            font-size: 30px;
            text-align: center;
        }



        #a:hover {
            opacity: 0.8;
        }

        #a {
            border: none;
            width: 275px;
            height: 40px;
            border-radius: 7px;
            position: relative;
            left: -7px;
            font-size: 18px;
            font-weight: bold;
            background-color: #d15555;
            color: white;
            /*border: 1px solid black;*/
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
        h3{ font-weight: 100;
            color:red;
            font-size: 19px;
            text-align: center;
            padding: 15px;
            position: relative;
           top:25px;
        }
    </style>

</head>
<body style="margin:0px;">

    <div class="img">


        <div class="sdiv">
            <div class="avatar"></div>
            <h2> User Login </h2>
            <h3> Invalid Username or Password!! </h3>
            <form class="form1" action="login.jsp" method="post">
                <ul>
                    <li>
                        <p>Username</p><input id="inp" type="text" name="uname" />
                    </li>
                    <li style="position:relative;top:20px;">
                        <p>Password</p><input id="inp" type="password" name="pass1" />
                    </li>
                    <li>
                        <input class="loginbtn" type="submit" value="Login" />
                    
                    </li>
                </ul>
            </form>

        </div>
        <div class="s2div">
            <h2 id="h2">Don't have an Account?</h2>

            <ul>
                <li>
                    <a href="Register.jsp"><input id="a" type="button" value="Sign In" /></a>
                </li>
                <li style="font-size:12px;position:relative;left:60px;top:20px;">


                    Develop by Lucky Dhiman
                </li>
            </ul>
        </div>
    </div>

    <header>
        <div class="axis">
            <div class="back"><form action="home.jsp">
                        <button type="submit">Home</button>
                    </form>            
               </div> 
        </div>
    </header>

      


</body>
</html>
