<html>
<head>
<meta charset="utf-8">
<title>Ozan Ergön</title>
<link rel="stylesheet" href="still.css">
<link rel="SHORTCUT ICON" href="Mezunlar_Birligi.png">
</head>

<body>
<%
if Session("uname")<>"" then
%> 
<%
Set oConn = Server.CreateObject("ADODB.Connection")
oConn.Open("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("myDatabase.mdb"))
ssql="select * from photo3; "
Set oRS = oConn.Execute(sSQL)
%>
<div id="cerceve">
 	<div class="baslik" border="2px;">
            <img alt="Kampus" align="top" src="Resimler/kampus.jpg" style="float:right; padding:3px; margin:3px; height: 130px; border-radius:15px 50px 30px;">
            <img src="Resimler/Mezunlar_Birligi.png" style="float:left; margin:4px; padding:2px; height: 120px;">
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
		</div>
		<div >
		<div class="kutu">
		<h1 class="title2"><center>Fotoğraflar</center></h1>
			
		<div style="margin:25px ">
			<img width="410" style="margin-left:620px;" src="Resimler/toplu5.jpg" />
		</div>
		<div style="margin:25px 0">
			
			<table border="2px" cellpadding="1px" cellspacing="0px" style="margin-left:690px;">
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
			
			<form action="verigirisiphoto3.asp" method="post" style="margin-left:850px;">
					<br><br><font size="4px">Yorum</font><br>
					<textarea name="yorum" rows="5" cols="50"></textarea><br>
					<input type="reset" value="Sil">
					<input type="submit" value="Yorum Yap">
			</form>
			
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



