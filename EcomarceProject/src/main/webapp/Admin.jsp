<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Mycard-Home</title>
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
        .mycontainer{
            display:flex;
            text-align: center;
        }
        .mycontainer>div{
            width:15%;
            height: 60%;
            border:2px solid  peru;
        	margin: 70px;
       		 font-color:blue;
           
        }
        .containter:hover{
        background-color:red;
        }
       
        body{
        background-color:aqua;
        }
        .container{
        font-size:20px;
        text-align: center;
        background-color:rgba(78, 124, 136, 0.486);
         
        }
        .thref{
        background-color:rgb(160, 160, 202);
        text-color:lightred;
        text-align:center;
        font-size:20px;
        width:15%;
        height: 60%;
        border:2px solid peru;
        margin:70;
        }
        .admin{
        
        background-color:rgb(170, 132, 202);
        text-color:lightred;
        text-align:center;
        font-size:27px;
        width:15%;
        height: 60%;
        border:2px solid peru;
        margin:70;
        }

    </style>
<body>
<p class="thref"><a href="Login.jsp">Logout</a></p>
<div class="container">
	<div class="admin">
	<h> Admin Page</h>
	</div>
<!-- first -row -->
 <div class="mycontainer">
 	<!-- frist-col -->
            <div style="background-color:antiquewhite;"> 
            <div class="card"> 
                 <div class="card-body text-center">
                 
                  <h>Users</h>
                  <h1> 1254</h1>
                 </div>
                 </div>
            </div>
            
            <!-- secon-col -->
            <div style="background-color:aqua;"> 
                <div class="card"> 
                 <div class="card-body text-center">
                  <h>Categories</h>
                  <h1>87966</h1>
                 </div>
                 </div>
      
            </div>
            <!-- third -col -->
            <div style="background-color:rgb(185, 185, 93);">
                <div class="card"> 
                 <div class="card-body text-center">
                  <h>Product</h>
                  <h1>87421</h1>
                 </div>
                 </div>
               
            </div>
        </div>
        <!-- sec-row -->
        <div class="mycontainer">
        <!-- frist -col -->
        <div class=mycontainer">
        <div class="card" data-toggle="modal" data-target="#add-category-Modal"> 
                 <div class="card-body text-center">
                  <h>ADDProduct</h>
                  <h1>8735</h1>
                 </div>
                 </div>
        
        </div>
        <div class=mycontainer">
        
        <div class="card"  data-toggle="modal" data-target="#add-category-Modal"> 
                 <div class="card-body text-center">
                  <h>ADDCategor</h>
                  <h1>8735</h1>
                 </div>
                 </div>
                
                 
        
        </div>
        
        </div>
        </div>
        
        </div>
        
        </div>
        </div>
        <!-- add-category-model -->
       <!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#add-category-Modal">
  Launch demo modal
</button>

<!-- Modal -->
<div class="modal fade" id="add-category-Modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Fill Categories</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <form action="ProductAddServlete">
      
      <div class="form-group">
        <input type="text"class="form-control" name="catTitle" placeholder="Enter category title" required/>
        </div>
        <div class="form-group">
        <textarea style="height:350px" class="form-control" placeholdere="Enter category description" name="categoryDescription" requied></textarea>
        </div>
        <div class="container">
        <button class="btn btn-outline-success">Add Category</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
       </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
      
      </form>
        
        <!-- end-add-category-model -->
</body>
</html>