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
		<div id="levelsBody">
		<br />
		<p style="text-align: center">***</p>
		<article>
			<p>W mojej muzycznej akademii - M.R.Academy - uczniowie mają przypisane poziomy ich zaawansowania (tzw. "Levele") 
			w grze na danym instrumencie. Poziomy te uszeregowane są od 1 do 100, gdzie pierwszy to poziom ucznia
			absolutnie początkującego, a 100 to ostatni poziom uczniowski, po którym następują poziomy profesjonalne
			 - nieujęte w moim systemie nauczania (levele 101-200). Ostatni - setny poziom uczniowski odpowiada mniej więcej 
			 poziomowi zdolnych absolwentów szkół muzycznych I stopnia, lub uczniów pierwszych, drugich klas szkoły muzycznej 
			 II stopnia.
			 </p>
			 <p>Aby bliżej to zilustrować nieobeznanemu czytelnikowi, podaję kilka przykładów jak grać może uczeń na 
			 różnych poziomach zaawansowania:
			 </p>
			 <br/>
			 <div id="levelsChoose">
			 <a id="levelsInstruments" href="/m.r.academy/Levels?instrument=piano">Piano and keyboard</a><a id="levelsInstruments" href="/m.r.academy/Levels?instrument=guitar">Guitar</a>
			 </div>
			 <br/>
			 <% String instrument = "";
			 	String level = "";
			 
			 	if(request.getAttribute("instrument") != null){ 
			 		instrument = (String) request.getAttribute("instrument");
			 	if(request.getAttribute("level") != null){
			 		level = (String) request.getAttribute("level");
			 	} %>
			 <p style="text-align: center">Poziomy</p>
			 <br/>
			 <div id="levelsChoose2">
			 <a id="levels" href="/m.r.academy/Levels?instrument=<%= instrument %>&level=10">10</a><a id="levels" href="/m.r.academy/Levels?instrument=<%= instrument %>&level=20">20</a><a id="levels" href="/m.r.academy/Levels?instrument=<%= instrument %>&level=30">30</a><a id="levels" href="/m.r.academy/Levels?instrument=<%= instrument %>&level=40">40</a><a id="levels" href="/m.r.academy/Levels?instrument=<%= instrument %>&level=50">50</a><a id="levels" href="/m.r.academy/Levels?instrument=<%= instrument %>&level=60">60</a><a id="levels" href="/m.r.academy/Levels?instrument=<%= instrument %>&level=70">70</a><a id="levels" href="/m.r.academy/Levels?instrument=<%= instrument %>&level=80">80</a><a id="levels" href="/m.r.academy/Levels?instrument=<%= instrument %>&level=90">90</a><a id="levels" href="/m.r.academy/Levels?instrument=<%= instrument %>&level=100">100</a>
			 </div>
			 <br/>
			 <% } %>
			 
			 
			 <% if(instrument.equals("piano") && level.equals("10")){ %>
			 <p style="text-align: center">Level 10:</p>
			 <br/>
			 <div class="trophyLevels">
			 <img class="trophyLevels" src="/m.r.academy/img/10.png">
			 </div>
			 <br/>
			 <p>Jest to poziom, w którym uczeń potrafi poprawnie zagrać prostą melodię jedną ręką, dbając o poprawny 
			 rytm i palce.</p>
			 <br/>
			 <iframe width="560" height="315" src="https://www.youtube.com/embed/KlBCYmEL_OE" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
			 <br/>
			 <br/>
			
			
			 <% } else if(instrument.equals("piano") && level.equals("20")){ %>
			 <p style="text-align: center">Level 20:</p>
			 <br/>
			 <div class="trophyLevels">
			 <img class="trophyLevels" src="/m.r.academy/img/20.png">
			 </div>
			 <br/>
			 <p>Jest to poziom, w którym uczeń potrafi poprawnie zagrać prostą melodię na dobie ręce, dbając o poprawny 
			 rytm i palce.</p>
			 <br/>
			 <iframe width="560" height="315" src="https://www.youtube.com/embed/zdbowpj93Z4" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
			 <br/>
			 <br/>
			
			
			 <% } else if(instrument.equals("piano") && level.equals("30")){ %>
			 <p style="text-align: center">Level 30</p>
			 <br/>
			 <div class="trophyLevels">
			 <img class="trophyLevels" src="/m.r.academy/img/30.png">
			 </div>
			 <br/>
			 <p>Jest to poziom, w którym uczeń potrafi zagrać prosty utwór dwugłosowy, gdzie lewa ręka gra inny rytm od 
			 prawej. Dba przy tym o odpowiedni rytm i palce. Uczeń na tym poziomie wie co to są akordy i potrafi je
			 tworzyć w podstawowej, zasadniczej postaci.</p>
			 <br/>
			 <iframe width="560" height="315" src="https://www.youtube.com/embed/wJa_xFHdjyw" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
			 <br/>
			 <br/>
			 
			 
			 <% } else if(instrument.equals("piano") && level.equals("40")){ %>
			 <p style="text-align: center">Level 40:</p>
			 <br/>
			 <div class="trophyLevels">
			 <img class="trophyLevels" src="/m.r.academy/img/40.png">
			 </div>
			 <br/>
			 <p>Uczeń na tym poziomie uczeń doskonali się w grze na dwie ręce, operuje akordami, gra szybsze i wolniejsze 
			 utwory w łatwiejszych tonacjach. Najłatwiejsze sonatiny, etiudy, proste utwory polifoniczne. Uczy się też 
			 grać melodie ze słuchu. Dobrze czyta nuty w kluczu wiolinowym i basowym.</p>
			 <br/>
			 <iframe width="560" height="315" src="https://www.youtube.com/embed/L6Nf8SdhchM" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>		 
			 <br/>
			 <br/>
			 
			 
			 <% } else if(instrument.equals("piano") && level.equals("50")){ %>
			 <p style="text-align: center">Level 50:</p>
			 <br/>
			 <div class="trophyLevels">
			 <img class="trophyLevels" src="/m.r.academy/img/50.png">
			 </div>
			 <br/>
			 <p> Uczeń na tym poziomie potrafi grać nawet szybsze utwory. Potrafi poprawnie zinterpretować nawet trochę 
			 trudniejszy rytm, potrafi grać akompaniament akordowy do większości piosenek, jeśli tylko wie jakie
			 akordy zagrać. Gra akordy w różnych przewrotach. Potrafi zagrać proste usłyszane melodie</p>
			 <br/>
			 <iframe width="560" height="315" src="https://www.youtube.com/embed/9wjGAezk_5k" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
			 <br/>
			 <br/>
			 
			 
			 <% } else if(instrument.equals("piano") && level.equals("60")){ %>
			 <p style="text-align: center">Level 60:</p>
			 <br/>
			 <div class="trophyLevels">
			 <img class="trophyLevels" src="/m.r.academy/img/60.png">
			 </div>
			 <br/>
			 <p>Uczeń na tym poziomie potrafi zagrać z nut utwory w dowolnej tonacji, potrafi wprowadzić słuchacza w nastrój
			  utworu. Gra akordowe podkłady do piosenek również bez konsultacji z nauczycielem, o ile wie, jakie akordy zagrać.
			   Potrafi poprawnie zapisać w nutach dowolną prostą melodię, o ile ma prosty rytm.
			 </p>
			 <br/>
			 <iframe width="560" height="315" src="https://www.youtube.com/embed/oENchWN1UiA" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
			 <br/>
			 <br/>
			 
			 
			 <% } else if(instrument.equals("piano") && level.equals("70")){ %>
			 <p style="text-align: center">Level 70:</p>
			 <br/>
			 <div class="trophyLevels">
			 <img class="trophyLevels" src="/m.r.academy/img/70.png">
			 </div>
			 <br/>
			 <p>Na tym poziomie uczeń umie prowadzić jednocześnie dwa głosy, dwie melodie. Zna muzyczne interwały i rozpoznaje
			 te łatwiejsze ze słuchu. Gra też trochę bardziej skomplikowane akordy. Potrafi sam/sama wymyślić podkład do bardzo 
			 prostych piosenek.</p>
			 <br/>	
			 <iframe width="560" height="315" src="https://www.youtube.com/embed/x2o_pNu42Wk" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
			 <br/>
			 <br/>
			 
			 
			 <% } else if(instrument.equals("piano") && level.equals("80")){ %>
			 <p style="text-align: center">Level 80:</p>
			 <br/>
			 <div class="trophyLevels">
			 <img class="trophyLevels" src="/m.r.academy/img/80.png">
			 </div>
			 <br/>
			 <p>Jest to poziom, w którym uczeń potrafi zagrać trudniejsze utwory, o bardziej skomplikowanej rytmice, potrafi 
			 prowadzić dwa głosy jednocześnie, poprawnie operuje ekspresją, dynamiką. Potrafi sam/sama wymyślić akompaniament
			 do prostych piosenek.</p>
			 <br/>
			 <iframe width="560" height="315" src="https://www.youtube.com/embed/MSFeyhpLX_M" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
			 <br/>
			 <br/>
			 
			 
			 <% } else if(instrument.equals("piano") && level.equals("90")){ %>
			 <p style="text-align: center">Level 90:</p>
			 <br/>
			 <div class="trophyLevels">
			 <img class="trophyLevels" src="/m.r.academy/img/90.png">
			 </div>
			 <br/>
			 <p>Na tym poziomie uczeń potrafi zagrać szybsze trudniejsze utwory klasyczne oraz większość utworów muzyki 
			 rozrywkowej, jeśli dysponuje nutami. Potrafi też wymyślić prosty akompaniament do nietrudnych piosenek. Jeśli 
			 tego chce, może występować w roli klawiszowca w zespole muzycznym grającym muzykę pop, czy rock.</p>
			 <br/>
			 <iframe width="560" height="315" src="https://www.youtube.com/embed/VNmRlvEAYFQ" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
			 <br/>
			 <br/>
			 
			 
			 <% } else if(instrument.equals("piano") && level.equals("100")){ %>
			 <p style="text-align: center">Level 100</p>
			 <br/>
			 <div class="trophyLevels">
			 <img class="trophyLevels" src="/m.r.academy/img/100.png">
			 </div>
			 <br/>
			 <p>Jest to ostatni poziom, wieńczący naukę w mojej Akademii. Uczeń na tym poziomie przechodzi z roli ucznia w
			 rolę młodego muzyka. Potrafi dość dobrze grać na instrumentach klawiszowych, czytać i i pisać nuty, akompaniować 
			 komuś lub sobie do granej lub śpiewanej melodii, wymyślając własny, prosty akompaniament, lub korzystając z 
			 gotowych, trudniejszych akordów. Teraz może wybrać w jakim kierunku dalej podążać. Może stworzyć własny zespół? 
			 Może uczyć się dalej, zdobywając kolejne szlify by być jeszcze lepszym muzykiem? Tak czy inaczej, powodzenia!</p>
			 <br/>
			 <iframe width="560" height="315" src="https://www.youtube.com/embed/TrNwH6cfXqI?start=16" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
			 <br/>
			 <br/>
			 
			 
			 <% } else if(instrument.equals("guitar") && level.equals("10")){ %>
			 <p style="text-align: center">Level 10</p>
			 <br/>
			 <div class="trophyLevels">
			 <img class="trophyLevels" src="/m.r.academy/img/10.png">
			 </div>
			 <br/>
			 <p>Uczeń na poziomie 10 potrafi zagrać proste melodie na gitarze wykorzystując przy tym więcej niż jeden palec.</p>
			 <br/>
			 <iframe width="560" height="315" src="https://www.youtube.com/embed/zdZJlFzoBXY" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
			 <br/>
			 <br/>
			 
			 
			 <% } else if(instrument.equals("guitar") && level.equals("20")){ %>
			 <p style="text-align: center">Level 20</p>
			 <br/>
			 <div class="trophyLevels">
			 <img class="trophyLevels" src="/m.r.academy/img/20.png">
			 </div>
			 <br/>
			 <p>Na tym poziomie uczeń zna już większość z 8 podstawowych akordów. Potrafi użyć ich grając prostą 
			 piosenkę, używając najprostszego bicia 2/4 lub 4/4.</p>
			 <br/>
			 <iframe width="560" height="315" src="https://www.youtube.com/embed/7Ns231xcMpE" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
			 <br/>
			 <br/>
			 
			 
			 <% } else if(instrument.equals("guitar") && level.equals("30")){ %>
			 <p style="text-align: center">Level 30</p>
			 <br/>
			 <div class="trophyLevels">
			 <img class="trophyLevels" src="/m.r.academy/img/30.png">
			 </div>
			 <br/>
			 <p>Uczeń o poziomie 30 zna już wszystkie podstawowe akordy i uczy się chwytać pierwsze akordy barre. Potrafi grać 
			 dwoma lub trzema podstawowymi biciami prawą ręką. Z takimi umiejętnościami może zagrać około co drugą piosenkę 
			 z muzyki pop czy rock, o ile wie jakie akordy zagrać.</p>
			 <br/>
			 <iframe width="560" height="315" src="https://www.youtube.com/embed/7pCLfn3qP2s" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
			 <br/>
			 <br/>
			 
			 
			 <% } else if(instrument.equals("guitar") && level.equals("40")){ %>
			 <p style="text-align: center">Level 40</p>
			 <br/>
			 <div class="trophyLevels">
			 <img class="trophyLevels" src="/m.r.academy/img/40.png">
			 </div>
			 <br/>
			 <p>Na poziomie 40 młody gitarzysta zna już wszystkie akordy dur i moll, potrafi zagrać je używając różnych 
			 chwytów. Gra też proste solówki. Potrafi zagrać przeważającą większość piosenek pop czy rock, jeśli dostanie 
			 informację jakie akordy grać.</p>
			 <br/>
			 <iframe width="560" height="315" src="https://www.youtube.com/embed/VAFi6TQgv3g" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
			 <br/>
			 <br/>
			 
			 
			 <% } else if(instrument.equals("guitar") && level.equals("50")){ %>
			 <p style="text-align: center">Level 50</p>
			 <br/>
			 <div class="trophyLevels">
			 <img class="trophyLevels" src="/m.r.academy/img/50.png">
			 </div>
			 <br/>
			 <p>Gitarzysta na poziomie 50 uczy się grać bardziej skomplikowane chwyty, uczy się podstaw improwizacji oraz 
			 trochę teorii muzyki, by poruszać się wśród akordów i tonacji jak ryba w wodzie!</p>
			 <br/>
			 <iframe width="560" height="315" src="https://www.youtube.com/embed/eOScFznNlzQ" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
			 <br/>
			 <br/>
			 
			 
			 <% } else if(instrument.equals("guitar") && level.equals("60")){ %>
			 <p style="text-align: center">Level 60</p>
			 <br/>
			 <div class="trophyLevels">
			 <img class="trophyLevels" src="/m.r.academy/img/60.png">
			 </div>
			 <br/>
			 <p>Młody gitarzysta na tym poziomie potrafi zagrać już dość rozbudowane utwory techniką palcową. Zna wszystkie 
			 podstawowe akordy i akordy barre. Potrafi zagrać zdecydowaną większość piosenek akordami, jeśli ma informację 
			 jakie akordy zagrać. Potrafi improwizować na podstawowym poziomie. Na tym poziomie możliwe jest kontynuowanie nauki na gitarze klasycznej, lub 
			 przesiadka na gitarę elektryczną.</p>
			 <br/>
			 <iframe width="560" height="315" src="https://www.youtube.com/embed/LTaCPVwPMbI" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>		 
			 <br/>
			 <br/>
			 
			 
			 <% } else if(instrument.equals("guitar") && level.equals("70")){ %>
			 <p style="text-align: center">Level 70</p>
			 <br/>
			 <div class="trophyLevels">
			 <img class="trophyLevels" src="/m.r.academy/img/70.png">
			 </div>
			 <br/>
			 <p>Jest to ostatnich dziesięć leveli dostępnych dla gitarzystów w mojej Akademii. Gitarzysta na tym poziomie 
			 Potrafi już bardzo wiele. Zna wszystkie akordy umożliwiające mu granie dowolnej piosenki z muzyki rozrywkowej, 
			 potrafi zaakompaniować, gdy tylko wie jakich akordów użyć. Czesto udaje mu się samemu znaleźć akordy pasujące
			 do danej piosenki. Potrafi improwizować na podstawowej skali pentatonicznej, w zależności od wybranego 
			 kierunku - gitara klasyczna lub elektryczna - specjalizuje się w wybranej muzyce i jest spragniony grania!</p>
			 <br/>
			 <iframe width="560" height="315" src="https://www.youtube.com/embed/GoNK2cxP_Yw" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
			 <br/>
			 <br/>
			 
			 
			 <% } else if(instrument.equals("guitar") && (level.equals("80") || level.equals("90") || level.equals("100"))){ %>
			 <p style="text-align: center">Level 80</p>
			 <br/>
			 <br/>
			 <p>Poziomy 80-100 są niedostępne w mojej Akademii, ponieważ ja, nauczyciel, sam mam poziom 80-ty w grze na 
			 gitarze. Uczeń który dotrwał aż do tego poziomu potrafi już bardzo wiele, np, grać zarówno akordami jak i 
			 melodycznie. Solo? Bułka z masłem! Improwizacja do podkładu? Proszę bardzo! Granie w zespole? Z przyjemnościa! 
			 Teraz uczeń może wybrać w jakim kierunku dalej podążać. Może stworzyć własny zespół? Może uczyć się dalej, 
			 zdobywając kolejne szlify by być jeszcze lepszym muzykiem? Tak czy inaczej, powodzenia! A oto otwór z poziomu 
			 około 85: </p>
			 <br/>
			 <iframe width="560" height="315" src="https://www.youtube.com/embed/PK-40D2XSPc" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
			 <br/>
			 <br/>
			 <% } %>
		</article>
		<br/>
		</div>
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