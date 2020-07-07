<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
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
            padding:25px 25px 10px 25px;
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
        }
        button:hover{
              
            background:  white;
            color: #97144d;
           
        }
    </style>

</head>
<body style="margin:0px;">

    <div class="img">
        <div class="sdiv">
              <h2>Account Details</h2>
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
