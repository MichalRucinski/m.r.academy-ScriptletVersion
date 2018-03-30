<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="database.Student" import="java.util.ArrayList"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="Description" content="Michał Ruciński private academy" />
<meta name="Keywords"
	content="music, school, piano, guitar, lessons, java, programming, musician, teacher, training" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>M.R.Academy</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
	<div id="container">
		<nav>
			<%@ page import="beans.User" %>
			<% User user = (User)session.getAttribute("user"); 
			String log;
	 		if(user == null || user.isLoggedIn() == false){
	 		log = "Log in";
	 		} else {
	 		log = user.getName();
	 		}%>
	 		
			<a class="menu" href="/m.r.academy/MusicSchool?action=index">Home</a><a class="menu" href="/m.r.academy/MusicSchool?action=classes">Classes</a><a class="menu" href="/m.r.academy/MusicSchool?action=levels">Levels</a><a class="menu" href="/m.r.academy/MusicSchool?action=aboutme">About me</a><a class="menu" href="/m.r.academy/MusicSchool?action=logout">Log out</a>
		</nav>
		<% if(request.getAttribute("currentStudent") != null){
		Student x = (Student) request.getAttribute("currentStudent");
		int[] levelArray = x.getLevel();
		String[] trophyArray = x.getTrophy(levelArray[0]);
		%>
		
		<br/>
		
		<div id="user">
		<div style="background-color: #444444"><img style="width: 100%" alt="trophy" src="/m.r.academy/img/<%= trophyArray[0] %>.png"></div>
			<p><%= x.getName() %></p>
			<p><%= x.getStudentsClass() %></p>
			<p>Level <%= levelArray[0] %></p>
			<p>Points: <%= levelArray[1] %>/<%= levelArray[2] %></p>
			<% float percent = ((float)levelArray[1]) / levelArray[2] *100; %>
			<p><%= (int)percent %>% lvl completed</p>
			<p><%= trophyArray[1] %></p>
		</div>
		
	<form action="/m.r.academy/MasterPage" method="post" style="text-align: right">
	<div id="usersheet">
	
		<input type="hidden" name="student" value="<%= x.getLogin() %>">
		<textarea name="notes" ><%= x.getText() %></textarea>
		
	</div>	
	<input type="submit" value="Zmień notatkę" style="width: 200px; "/>
	</form>	
	<form action="/m.r.academy/MasterPage" method="get" style="text-align: right">
	<input type="submit" value="Wróć do pulpitu" style="width: 200px; "/>
	</form>			
		  <% } else{ %>
		
		<% ArrayList<Student> studentsList = (ArrayList<Student>) request.getAttribute("studentsList");
			if(studentsList != null){
		%>
	<br/>
	
	<p>Witaj w swoim gabinecie, panie Michale.</p>
	<br/>
	<p>Wybierz ucznia...</p>
	<br/>
	<form>
	<% for(Student x: studentsList){ 
	
		int[] levelArray = x.getLevel();
		String[] trophyArray = x.getTrophy(levelArray[0]);
	%>
  	
	<button id="students" formmethod="post" formaction="/m.r.academy/MasterPage?student=<%= x.getLogin() %>" >
		<div style="background-color: #1c8b00">
		<img id="trophies" alt="alt text" src="/m.r.academy/img/<%= trophyArray[0] %>.png">
		</div>
		<p><%= x.getName() %> <%= x.getSurname() %></p>
		<p>Level <%= levelArray[0] %></p>
		<p>To next level:</p>
		<p>  <%= levelArray[2] - levelArray[1] %>p.</p>
		<p> <%= trophyArray[1] %></p>
		<p><%= x.getStudentsClass() %></p>
	</button>
		
	<% } %>
	</form>
	
	<br/>
	<% } else if(request.getAttribute("master") != null) { 
	response.sendRedirect("/m.r.academy/MasterPage");
	 } }%>
		<footer style="clear: both">
			<p>M.R.Academy 2018. All rights reserved.</p>
			<p>Michał Ruciński 2018.</p>
		</footer>
	</div>
</body>
</html>