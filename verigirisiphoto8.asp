<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-9" />
<title>Mezun Portal�</title>
<link rel="stylesheet" href="still.css">
</head>
<body>
<div id="page">
 	<div id="soldiv">
 		<div id="logo">
			
			<a href="index.html"><h2>Mezun Portal�</h2></a>
			</div>
 		<div id="menu">
			<ul>
				<li class="first"><a  href="index.html">Anasayfa</a></li>
				<li><a href="register.html">Ki�i Kay�t</a></li>
				<li><a href="oturum.asp">Oturum A�</a></li>
				<li><a href="forum.asp">Forum</a></li>
				<li><a href="persons.asp">Ki�iler</a></li>
				<li><a href="photos.asp">Foto�raflar</a></li>
				<li><a href="videos.asp">Videolar</a></li>
				<li><a href="whowheredoing.asp">Kim, Nerede, Ne yap�yor?</a></li>
				<li><a href="map.asp">Harita</a></li>
				
			</ul>
		</div>
 		 <div  id="login">
 	 			<h2>Giri�</h2>
				<form action="login1.asp" id="form" method="post">
				Kullan�c� Ad�:
				<input id="inputtext1" type="text" name="username"/>
				Parola:
				<input id="inputtext2" type="password" name="userpwd"/>
				<input id="inputsubmit1" type="submit" value="Giri�" />
				<p><a href="forgetpassword.html">�ifremi Unuttum</a><br />
				<a href="register.html">Kay�t Ol</a></p>
				<b><br>Kullan�c� Ad�:</b> test@test.com <br>
						<b>Parola:</b>	test
				</form>
 		 </div>
 	</div>
 
 
 	<div id="sagdiv">
		<div id="header" style="background:url(images/graduate2.png)">
		<h1>MU�LA MESLEK� VE TEKN�K ANADOLU L�SES�<br>
			Bili�im Teknolojileri - Web Programc�l���<br>
			ATL 9-10-11-12 / A
		</h1>
	</div>
		<div id="content">
			<div class="kutu">
				<h1 class="title2">Forum</h1>
			</div>	
			<% 

response.codepage=65001



'--------------
'VT baglantisinin yapimasi:
Set Baglantim = CreateObject("ADODB.Connection") 
'VT'nin acilmasi:
Baglantim.Open ("DRIVER={Microsoft Access Driver (*.mdb)};DBQ="& Server.MapPath("myDatabase.mdb"))
'Tablo nesnesinin olusturulmasi:
Set Tablom = server. CreateObject("ADODB.Recordset")
'Tablonun acilmasi:
Tablom.Open "photo8", Baglantim, 1, 3

'Tabloya veri eklemeye baslangic:
Tablom.AddNew 
'Tablodaki alanlara veri aktarma
Tablom("yorum") =  request("yorum")
Tablom("tarih") =  now()
Tablom("adi") =   Session("UserLoggedIn")
Tablom("soyadi") =  Session("UserLoggedIn1")
'aktarma islemi birince tablonun guncellenmesi:
Tablom.Update



'tablonun kapatilmasi:
  Tablom.close
  set Tablom= Nothing
'baglantinin kesilmesi:
  Baglantim.close
  set Baglantim= Nothing

response.write "<center><b><h1>Yorumunuz basariyla olusturulmustur.</h1></b><center>"

%>
<center><b><h2>Yorumunuzu g�rmek i�in <a href="photo8.asp">GER�</a></h2></b><center>			
			
			
		</div>
	</div>	
	
	<div id="footer" style="background:url(images/footer.png)">
	
		
		
		<div id="altfooter">
			  &copy; 2017 Mezun Portal. T�m haklar� sakl�d�r. <a href="https://www.facebook.com/OuzhanBekir" target="_blank">O�uzhan Bekir</a> Taraf�ndan tasarlanm��t�r. 
		</div>
	
	</div>
	
</div>


</body>
</html>
