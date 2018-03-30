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
			<p style="text-align: center">***</p>
			<p style="text-indent: 6%">Nazywam się Michał Ruciński, jestem zawodowym nauczycielem muzyki. Nauczam gry na pianinie, keyboardzie, gitarze 
			oraz śpiewu. Edukuję dzieci, młodzież i czasem dorosłych już od ponad 10 lat na terenie województwa lubuskiego, w 
			okolicach Zielonej Góry. Lekcje prowadzę w różnych instytucjach oświatowych, jak również w prywatnych domach 
			uczniów. Ukończyłem kierunek Edukacja Artystyczna w zakresie Sztuki Muzycznej, studia magisterskie na Uniwersytecie
			  Zielonogórskim w 2007 roku. Moim głównym instrumentem jest fortepian, na którym zacząłem uczyć się grać w 
			  Szkole Muzycznej w Żaganiu w wieku 7 lat. Gry na gitarze nauczyłem się sam, będąc nastoletnim fanem muzyki 
			  rockowej i później gitarzystą garażowego zespołu rockowego. Późniejsze studia muzyczne jeszcze mocniej rozwinęły 
			  moje umiejętności, a wielu wdzięcznych uczniów i ich rodziców utwierdza mnie w przekonaniu, że potrafię też 
			  nauczać. </p>
			  <p style="text-indent: 6%">W mojej Akademii nadaję moim uczniom poziomy ("levele") zaawansowania, licząc od 1 do 100 jako poziomy uczniowskie. 
			  Późniejsze poziomy to poziomy zawodowych muzyków - od 101 do 200 levelu. Biorąc to pod uwagę i chcąc być sprawiedliwym
			   nadaję levele też sobie:</p>
			  <br/>
			  <p>- pan Michał, level 124, pianino,</p>
			  <p>- pan Michał, level 80, gitara.</p>
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