<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script>
            function myFuntion(){
                let x=document.forms["myform"]["fname"].value;
                if(x==""){
                    alert("name must be filled out");
                    return false;
                }
            }
        </script>
</head>
<body>
<html>
    <body>
        <form  action ="UserServlete " name="myform" onsubmit ="return myFuntion()">
            Name<input type="text" name="name1">
            Submit<input type="submit" value ="register">
            
        </form>
        
    </body>
</html>

</body>
</html>