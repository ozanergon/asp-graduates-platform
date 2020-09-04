<%
dim username, user

Response.Buffer=True
Response.Expires = -100
 	
username=request.form("username")
userpwd=request.form("userpwd")


Veritabani_Yol=SERVER.MAPPATH("myDatabase.mdb")
Set Baglanti=Server.CreateObject("Adodb.Connection")
Baglanti.Open "DBQ=" & Veritabani_Yol &   ";Driver={Microsoft Access Driver (*.mdb)}"
Set Rs=Server.CreateObject("Adodb.recordset")

Sorgu="select * from kullanici where email = '" & request.form("username") & "' and parola = '" & Request.form("userpwd") & "'"
    Set grup = Baglanti.Execute(sorgu) 'ppp


		Rs.Open Sorgu, Baglanti, 1, 3
		If RS.BOF And RS.EOF Then
		    %>
			<html>
<head>
<meta charset="utf-8">
<title>Mezun Portalı</title>
<link rel="stylesheet" href="still.css">
<link rel="SHORTCUT ICON" href="Resimler/Mezunlar_Birligi.png">
</head>

<body>

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
		<div class="kutu">
			<h1 class="title2"><center>Oturum Açma</center></h1>
		</div>
			<center><font style="font-size:20px;color:red;">Kullanıcı Adı veya Parola hatalıdır.</font></center>

		<div id="oturum" style="margin-left:880px;">
			<form action="login1.asp" method="post">
					<table border="0px" cellpadding="2px" cellspacing="0px">
						<tr>
							<td></td>
							<td><font size="4px">Kullanıcı Adı:</font></td>
						</tr>
						<tr>
							<td><img src="images/panel1.png" width="32px" /> </td>
							<td><input type="text" name="username"  style="width: 220px; height: 30px;" /></td>
						</tr>
						<tr>
							<td></td>
							<td><br><font size="4px">Parola:</font></td>
						</tr>
						<tr>
							<td><img src="images/panel2.png" width="32px" /> </td>
							<td><input type="password" name="userpwd" style="width: 220px; height: 30px;" /></td>
						</tr>	
						<tr>
						<td></td>
							<td colspan="2"><br> <input type="submit" value="Giriş" style="width: 110px; height: 35px; background-color:#4096ee" />    
							<a href="register.html"><input type="button" value="Kayıt Ol" style="width: 110px; height: 35px; background-color:#85c329" /></a></td>
						</tr>
						<tr>
						<td  colspan="2"><center><b><br>Kullanıcı Adı:</b>test@test.com <br>
						<b>Parola:</b>	test</center> </td>
						
							
						</tr>
					</table>
				</form>
			</div>
			
		</div>
	</div>
</div>

</body>
</html>

			
			<%
		Else
		    user = grup("Adi")
			user1 = grup("Soyadi")
	        Session("UserLoggedIn") = user 
			Session("UserLoggedIn1") = user1 
	     	Response.Write "Bilgiler onaylandi."
	     	%>
	     	<% Session("uname") = request.form("username") 
			
			Response.Redirect "index.html" %> 
 		
 		<%
 		End If
 		%>




