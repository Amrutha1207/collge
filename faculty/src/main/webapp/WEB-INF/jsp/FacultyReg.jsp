<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>

<link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
    rel = "stylesheet">
 <script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
 <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
</style>
<script>
function validation()
{
var x = document.forms["myForm"]["firstname"].value;
        if ((x == "")||(!(isNaN(x)))||(x.match(/^[0-9,a-z]+$/))&&(!(x.match(/^[a-z]+$/)))||(x.match(/^[0-9]+$/))){
          document.getElementById("first").style.border = "1px solid red";
           alert("Name must be filled out");
            return false;
            }
            
            var y = document.forms["myForm"]["lastname"].value;
            if ((y == "")||(!(isNaN(x)))||(y.match(/^[0-9,a-z]+$/))&&(!(y.match(/^[a-z]+$/)))) {
          document.getElementById("last").style.border = "1px solid red";
            alert("lastname must be filled out");
            return false;
        }
var v = document.forms["myForm"]["mail"].value;
         if ((v == "")||(v.indexOf('@')<=0)||(v.charAt(v.length-4)!='.')&&(v.charAt(v.length-3)!='.')) {
          document.getElementById("mail").style.border = "1px solid red";
            alert("E-mail must be filled out properly");
            return false;
        }
        var w=document.forms["myForm"]["phone"].value;
        if((w==" ")||(isNaN(w))||(w.length!=10)){
          document.getElementById("phone").style.border="1px solid red";
           alert("Enter correct phone numer");
           return false;
        }
}
</script>
</head>
<body>
<%String uName = request.getParameter("username"); %>
<center><h1>Faculty Register</h1></center>
<form name="myForm" action="ins" onsubmit="return validation()">
<center>
  <h3>Employee Id:</h3>
  <input type="text" name="empno" id="emp" required>
  <h3>First name:</h3>
  <input type="text" name="firstname" id="first" required>
  <h3>Last name:</h3>
  <input type="text" name="lastname" id="last" required>
  <h3>City:</h3>
  <input type="text" name="city" id="city" required>
  <h3>State:</h3>
  <input type="text" name="state" id="state" required>
  <h3>Gender</h3>
  <select  name="gender">
  <option value="Male">Male</option>
  <option value="Female">Female</option>
  <option value="other">other</option>
  </select>
  </select>
  <h3>E-Mail:</h3>
  <input type="text" name="email" id="mail" required>
  <h3>Phone Number:</h3>
<input type="text" name="mobileNumber" id="phone" required>
  <h3>Date Of Birth</h3>
 
  <input type="date" name="dateOfBirth" placeholder="MM/dd/yyyy" required/>
  <h3>Department:</h3>
  <input type="radio" name="department" value="CSE"checked>cse<br>
  <input type="radio" name="department" value="ECE">ece<br>
  <input type="radio" name="department" value="EEE">eee<br>
  <input type="radio" name="department" value="E&I">eandi<br>
  <input type="radio" name="department" value="MECH">Mech<br>
  <input type="radio" name="department" value="CIVIL">Civil<br>
  <input type="radio" name="department" value="IT">IT<br>
  <h3>Qualification:</h3>
   <input type="radio" name="qualification" value="BE" checked>BE<br>
    <input type="radio" name="qualification" value="B-TECH">B-TECH<br>
   <input type="radio" name="qualification" value="ME">ME<br>
    <input type="radio" name="qualification" value="M-TECH">M-TECH<br>
     <input type="radio" name="qualification" value="MBA">MBA<br>
      <input type="radio" name="qualification" value="MCA">MCA<br>
  <h3>Experience</h3>
  <select id="exp" name="experience">
  <option type="text" value="0 to 1">0 to 1 year</option>
  <option type="text" value="2 to 5">2 to 5 years</option>
  <option type="text" value="5 to 10">5 to 10 years</option>
  <option type="text" value="more than 10">more than 10 years</option>
  </select>
  <br><br/>
  <input type="submit" value="Submit" onclick="validation()">
  </center>
</form> 


</body>
</html>