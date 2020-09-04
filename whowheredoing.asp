<html>
<head>
<meta charset="utf-8">
<title>Ozan Ergön</title>
<link rel="stylesheet" href="still.css">
<link rel="SHORTCUT ICON" href="Resimler/Mezunlar_Birligi.png">
</head>

<body>
<%
if Session("uname")<>"" then
%> 
<%
Set oConn = Server.CreateObject("ADODB.Connection")
oConn.Open("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("myDatabase.mdb"))
ssql="select * from kullanici; "
Set oRS = oConn.Execute(sSQL)
%>
<div id="cerceve">
 	<div class="baslik" border="2px;">
            <img alt="Kampus" align="top" src="Resimler/kampus.jpg" style="float:right; padding:3px; margin:3px; height: 130px; border-radius:15px 50px 30px;">
            <a href="index.html"><img src="Resimler/Mezunlar_Birligi.png" style="float:left; margin:4px; padding:2px; height: 120px;"></a>
            <h1 align="center" style="font-family:'Courier New', Courier, monospace; color:midnightblue; font-size: 50px; line-height: 120px;">MEZUNLAR BİRLİĞİ DERNEĞİ</h1>
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
<div class="sosyal">
			<a href="https://www.facebook.com/kbumezunlar/" target="_blank"><div style="float:left;"><img src="images/facebook.png" align=center></div></a>
			<a href="https://twitter.com/kbumezunlar"target="_blank"><div style="float:left;"><img src="images/twitter.png" align=center></div></a>
			<a href="https://www.instagram.com/kbumezunlarbirligi/"target="_blank"><div style="float:left;"><img src="images/instagram.png" align=center class="instagram"></div></a>
			<a href="https://www.youtube.com/user/kbu3nisantv"target="_blank"><div style="float:left;"><img src="images/youtube.png" align=center></div></a>
			<a href="https://www.linkedin.com/in/mezun-karabuk-b7aa25153"><div style="float:left;"><img src="images/linkedin.png" align=center></div></a>
			<br>
			<b style="color:midnightblue;"><center> © 2018 All Rights Reserved <br>Created By Ozan Ergön</center></b><br>

		</div>
		</div>
		<div>
		<div class="kutu" style="background-color:#E5E5E5">
			<h1 class="title2" style="text-align:center;" font-weight: normal; color: midnightblue;">Kim, Nerede, Ne Yapıyor?</h1>
		</div>
			
		<div >
			
			<table border="1px"cellspacing="0px" cellpadding="2px" style="margin-left: 720px;" >
		
				<tr >
					<td><b>Adı Soyadı</b></td>
					<td><b>Yaşadığı Şehir</b></td>
					<td><b>Üniversite</b></td>
					<td><b>Telefon</b></td>
					<td><b>Doğum Tarihi</b></td>
					<td><b>E-Mail</b></td>
				</tr>
<%
Do While NOT oRS.EOF 
%>
				<tr >
					<td><%=oRS("adi")%><%= " "%><%=oRS("soyadi")%></td>
					<td><%=oRS("sehir")%></td>
					<td><%=oRS("universite")%></td>
					<td><%=oRS("tel_no")%></td>
					<td><%=oRS("dogum_tarihi")%></td>
					<td><%=oRS("email")%></td>
				</tr>
				
<%	
	oRS.MoveNext
Loop
%>		
				
	
			</table>
			
			
			
			</div>
		</div>
			
			
			
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






