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
		<h1 class="title2"><center>Videolar</center></h1>
			<center>Videoları izlemek, videolar hakkındaki mesajları okumak ve yeni mesaj eklemek için resimlere <u>TIKLAYIN</u></center>
		<div style="margin:25px 0">
			
			<table border="0px" cellpadding="5px" cellspacing="0px" style="margin-left:700px;">
				<tr >
					<td>
					<a href="video1.asp"><img src="Resimler/video1.png" width="320px"></a><br>
					</td>
					<td>
					<a href="video2.asp"><img src="Resimler/video2.png" width="320px"></a><br>
					</td>
				</tr>
				<tr >
					<td colspan="2" align="center">
						<a href="video3.asp"><img src="Resimler/video3.png" width="320px"></a><br>
					</td>
				</tr>
				
	
			</table>
			
			</div>
		</div>
			
			
			
		</div>
	</div>	
	
</div>
<%
else 
response.redirect "oturum.asp"
end if
%>
</body>
</html>



