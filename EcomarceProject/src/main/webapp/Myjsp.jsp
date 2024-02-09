<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Form</title>
<!-- css -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<!-- css -->
<!-- javascript -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<!-- javascript -->
</head>
<style>
body{
        text-align: center;
        background-color:antiquewhite;
        font-family: 'Courier New';
        padding: 30px;
        border:2px solid  peru;
        margin: 70px;

       }
       input:hover{
       background-color:red;
       }
       form{
        text-align:left;
        background-color:aqua;
        font-family: 'Courier New';
        padding: 30px;
        border:2px solid  peru;
        margin: 70px;
       }
      .flink{ background-color:rgb(220, 170, 150);
        text-color:red;
        text-align:center;
        font-size:20px;
        width:15%;
        height: 60%;
        border:2px solid peru;
        margin:70;
        }
       </style>
<body>
        
        <h style="font-size: 300%;"><b><i> Sign up here</i>  </b></h>
        <p id="demo"></p>
       <div class="flink">
        <a href="Login.jsp"> Login</a></div>

        <form action="UserServlete">
            
           User Name <input type="text" name ="name1" ><br><br>
           Password <input type="password" name=pass1><br><br>
            
            Email<input type="email" name="email1"><br><br>
            
           Mobile No. <input type="number" name=number1><br><br>
            
            User Address<input type="text" name="address1"><br><br>
            <label type="text">File</label><br>
             <input type="file" name="ffile"><br><br>
            
          Submit  <input type ="submit" value ="register"><br><br>
      
             
        </form>
        
    </body></html>