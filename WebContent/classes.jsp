<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList" import="database.Student"%>
<!DOCTYPE HTML>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="Description" content="Michał Ruciński private academy" />
	<meta name="Keywords" content="music, school, piano, guitar, lessons, java, programming, musician, teacher, training" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>M.R.Academy - Classes</title>
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
<a class="menu" href="/m.r.academy/MusicSchool?action=index">Home</a><a class="menu" href="/m.r.academy/MusicSchool?action=classes">Classes</a><a class="menu" href="/m.r.academy/MusicSchool?action=levels">Levels</a><a class="menu" href="/m.r.academy/MusicSchool?action=aboutme">About me</a><a class="menu" href="/m.r.academy/MusicSchool?action=login"><%= log %></a>
</nav>
<div id="leftdiv">
<a class="chooseclass" href="/m.r.academy/MusicSchool?action=piano">PIANO</a>
<a class="chooseclass" href="/m.r.academy/MusicSchool?action=keyboard">KEYBOARD</a>
<a class="chooseclass" href="/m.r.academy/MusicSchool?action=guitar">GUITAR</a>
</div><div id="rightdiv">
<a class="chooseclass" href="/m.r.academy/MusicSchool?action=pianoandkeyboard">PIANO AND KEYBOARD</a>
<a class="chooseclass" href="/m.r.academy/MusicSchool?action=all">ALL STUDENTS</a>
</div>
<% ArrayList<Student> list = (ArrayList<Student>)request.getAttribute("list");
	 if(list != null){ %>
<div id="class">
<p><%= request.getAttribute("inscription") %></p>
</div>
<div id="studentsAll">

<%		for(Student x: list){ %>

	<% int[] levelArray = x.getLevel(); %>
	<% 	String[] trophyArray = x.getTrophy(levelArray[0]);
		
	%>
<div id="students">
<div style="background-color: #1c8b00">
<img id="trophies" alt="alt text" src="/m.r.academy/img/<%= trophyArray[0] %>.png">
</div>
<p><%= x.getName() %> <%= x.getSurname() %></p>
<p>Level <%= levelArray[0] %></p>
<p>To next level:</p>
<p>  <%= levelArray[2] - levelArray[1] %>p.</p>
<p> <%= trophyArray[1] %></p>
<p><%= x.getStudentsClass() %></p>
</div>
<% 	} %>
</div>

<% } %>


	<img id="piano" src="piano.jpg" alt="PIANO" /><img id="guitar" src="gitara.jpg" alt="GUITAR" /><img id="notes" src="notes.jpg" alt="SHEETMUSIC" />

<br/>

<footer>
<p>M.R.Academy 2018. All rights reserved.</p>
<p>Michał Ruciński 2018.</p>
</footer>
</div>
</body>
</html>