<html>
<head>
<meta charset="utf-8">
<title>Ozan Ergön</title>
<link rel="stylesheet" href="still.css">
<link rel="SHORTCUT ICON" href="Resimler/Mezunlar_Birligi.png">
</head>

<body>
<%
response.codepage=65001
if Session("uname")<>"" then
%> 
<%
Set oConn = Server.CreateObject("ADODB.Connection")
oConn.Open("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("myDatabase.mdb"))
ssql="select * from photo9; "
Set oRS = oConn.Execute(sSQL)
%>
<div id="page">
 	<div id="soldiv">
 		<div id="logo">
			
			<a href="index.html"><h2>Mezun Portalı</h2></a>
			</div>
 		<div id="menu">
			<ul>
				<li class="first"><a  href="index.html">Anasayfa</a></li>
				<li><a href="register.html">Kişi Kayıt</a></li>
				<li><a href="oturum.asp">Oturum Aç</a></li>
				<li><a href="forum.asp">Forum</a></li>
				<li><a href="persons.asp">Kişiler</a></li>
				<li><a href="photos.asp">Fotoğraflar</a></li>
				<li><a href="videos.asp">Videolar</a></li>
				<li><a href="whowheredoing.asp">Kim, Nerede, Ne yapıyor?</a></li>
				<li><a href="map.asp">Harita</a></li>
				
			</ul>
		</div>
 		 <div  id="login">
 	 			<h2>Giriş</h2>
				<form action="login1.asp" id="form" method="post">
				Kullanıcı Adı:
				<input id="inputtext1" type="text" name="username"/>
				Parola:
				<input id="inputtext2" type="password" name="userpwd"/>
				<input id="inputsubmit1" type="submit" value="Giriş" />
				<p><a href="forgetpassword.html">Şifremi Unuttum</a><br />
				<a href="register.html">Kayıt Ol</a></p>
				<b><br>Kullanıcı Adı:</b> test@test.com <br>
						<b>Parola:</b> test
				</form>
 		 </div>
 	</div>
 
 
 	<div id="sagdiv">
		<div id="header" style="background:url(images/graduate2.png)">
		<h1>MUĞLA MESLEKİ VE TEKNİK ANADOLU LİSESİ<br>
			Bilişim Teknolojileri - Web Programcılığı<br>
			ATL 9-10-11-12 / A
		</h1>
	</div>
		<div id="content">
		<div class="kutu">
		<h1 class="title2">Fotoğraflar</h1>
			
		<div style="margin:25px 120px">
			<img width="410"  src="images/photos/09.jpg" />
		</div>
		<div style="margin:25px 0">
			
			<table border="2px" cellpadding="1px" cellspacing="0px" >
				<tr >
					<td><b>Ne Zaman?</b></td>
					<td><b>Kim?</b></td>
					<td width="470px"><b>Ne Yazmış?</b></td>
				</tr>
<%
Do While NOT oRS.EOF 
%>
				<tr >
					<td><%=oRS("tarih")%></td>
					<td><%=oRS("adi")%><%= " "%><%=oRS("soyadi")%></td>
					<td><%=oRS("yorum")%></td>
				</tr>
				
<%	
	oRS.MoveNext
Loop
%>				
				
	
			</table>
			
			<form action="verigirisiphoto9.asp" method="post">
					<br><br><font size="4px">Yorum</font><br>
					<textarea name="yorum" rows="5" cols="50"></textarea><br>
					<input type="reset" value="Sil">
					<input type="submit" value="Yorum Yap">
			</form>
			
			</div>
		</div>
			
			
			
		</div>
	</div>	
	
	<div id="footer" style="background:url(images/footer.png)">
	
		
		
		<div id="altfooter">
			  &copy; 2017 Mezun Portal. Tüm hakları saklıdır. <a href="https://www.facebook.com/OuzhanBekir" target="_blank">Oğuzhan Bekir</a> Tarafından tasarlanmıştır. 
		</div>
	
	</div>
	
</div>
<%
oConn.Close
Set oRS = Nothing
Set oConn = Nothing
%>
<%
else 
response.redirect "oturum.asp"
end if
%>
</body>
</html>


