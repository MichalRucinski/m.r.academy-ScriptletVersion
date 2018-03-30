<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	 		
			<a class="menu" href="/m.r.academy/MusicSchool?action=index">Home</a><a class="menu" href="/m.r.academy/MusicSchool?action=classes">Classes</a><a class="menu" href="/m.r.academy/MusicSchool?action=levels">Levels</a><a class="menu" href="/m.r.academy/MusicSchool?action=aboutme">About me</a><a class="menu" href="/m.r.academy/MusicSchool?action=login"><%=log%></a>
		</nav>
		<br />
		<article>
			<p>M.R.Academy to grupa uczniów zgłębiających tajniki muzyki,
				skupiona wokół nauczyciela - Michała Rucińskiego.</p>
			<p>Nauczane przedmioty to:</p>
			<p>- pianino i instrumenty klawiszowe,</p>
			<p>- gitara klasyczna i elektryczna,</p>
			<p>- śpiew,</p>
			<p>- teoria muzyki, harmonia, kształcenie słuchu.</p>
		</article>
		<br />
		<div id="imagesfrontpage">
			<img id="piano" src="piano.jpg" alt="PIANO" /><img id="guitar"
				src="gitara.jpg" alt="GUITAR" /><img id="notes" src="notes.jpg"
				alt="SHEETMUSIC" />
		</div>
		<br />
		<footer>
			<p>M.R.Academy 2018. All rights reserved.</p>
			<p>Michał Ruciński 2018.</p>
		</footer>
	</div>
</body>
</html>