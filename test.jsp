<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<% 
	String data = request.getParameter("data");
	ArrayList<String> list = new ArrayList<String>();
	if(data != null){
		String[] stringList = data.split(",");
		for(String string : stringList){
			list.add(string);
		}
	}
%>
</head>
<body>
<form id="input">
  <label>New Element:</label><br>
  <input type="text" id="fname" name="fname" value="Some Message"><br>
  <input type="hidden" id="data" name="data" value=""><br>
  <input type="submit" id="submitButton" value="Submit">
</form>
<% for(String element : list){ %>
	<h1><%= element %></h1>
<% } %>
</body>
<script type="text/javascript">
$( "#input" ).submit(function( event ) {
  var string = $("#fname").val();
  if("<%= data %>" == "null"){
	  $("#data").val(string);
  }else{
	  $("#data").val("<%= data %>" +"," + string);
  }
});
</script>
</html>