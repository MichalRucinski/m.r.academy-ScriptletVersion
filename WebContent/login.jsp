<%@page import="java.net.URLEncoder" import="database.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="Description" content="Michał Ruciński private academy" />
	<meta name="Keywords" content="music, school, piano, guitar, lessons, java, programming, musician, teacher, training" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>M.R.Academy - Log in</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<div id="container">
<%@ page import="beans.User" %>
<%	 User user = (User)session.getAttribute("user"); 
	 if(user == null || user.isLoggedIn() == false){%>
<nav>
<a class="menu" href="/m.r.academy/MusicSchool?action=index">Home</a><a class="menu" href="/m.r.academy/MusicSchool?action=classes">Classes</a><a class="menu" href="/m.r.academy/MusicSchool?action=levels">Levels</a><a class="menu" href="/m.r.academy/MusicSchool?action=aboutme">About me</a><a class="menu" href="#">Log in</a>
</nav>
<br/>
<article>
<p>Enter your login and password:</p>
<form method="post" action="/m.r.academy/MusicSchool?action=dologin">
<input type="hidden" name="action" value="dologin" />
<input type="text" name="login" />
<input type="password" name="password" />
<input type="submit" value="Log in"/>
</form>
<p><%= request.getAttribute("message") %></p>
</article>
<br/>
<div id="imagesfrontpage">
<img id="piano" src="piano.jpg" alt="PIANO"/><img id="guitar" src="gitara.jpg" alt="GUITAR"/><img id="notes" src="notes.jpg" alt="SHEETMUSIC"/>
</div>
<br/>
<%} else {
	Student student = (Student) request.getAttribute("student");
	
	if(student != null){
	
%>
<nav>
<a class="menu" href="/m.r.academy/MusicSchool?action=index">Home</a><a class="menu" href="/m.r.academy/MusicSchool?action=classes">Classes</a><a class="menu" href="/m.r.academy/MusicSchool?action=levels">Levels</a><a class="menu" href="/m.r.academy/MusicSchool?action=aboutme">About me</a><a class="menu" href="/m.r.academy/MusicSchool?action=logout">Log out</a>
</nav>
<br/>
<p>Witaj, <%= student.getName() %>! Oto twój prywatny internetowy zeszyt ćwiczeń. </p>
<br/>
<% 	int[] levelArray = student.getLevel();
	String[] trophyArray = student.getTrophy(levelArray[0]);
%>

<div id="user">
<div style="background-color: #444444"><img style="width: 100%" alt="trophy" src="/m.r.academy/img/<%= trophyArray[0] %>.png"></div>
<p><%= student.getName() %></p>
<p><%= student.getStudentsClass() %></p>
<p>Level <%= levelArray[0] %></p>
<p>Points: <%= levelArray[1] %>/<%= levelArray[2] %></p>
<% float percent = ((float)levelArray[1]) / levelArray[2] *100; %>
<p><%= (int)percent %>% lvl completed</p>
<p><%= trophyArray[1] %></p>
</div>

<div id="usersheet">
<textarea>
<%= student.getText() %>
</textarea>

</div>



<% } else{
	String redirect = "/m.r.academy/UserPage";
	response.sendRedirect(redirect);
	}
  }%>
<footer style="clear: both">
<p>M.R.Academy 2018. All rights reserved.</p>
<p>Michał Ruciński 2018.</p>
</footer>
</div>
</body>
</html>