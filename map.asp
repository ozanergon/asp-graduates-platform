<html>
<head>
<meta charset="utf-8">
<title>Ozan Ergön</title>
<link rel="stylesheet" href="still.css">
<link rel="SHORTCUT ICON" href="Resimler/Mezunlar_Birligi.png">
</head>

<body>
<div id="cerceve">
 	<div id="baslik">
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
 	</div>
		<div >
			<div class="kutu">
			<h1 class="title2" style="text-align:center;">Harita</h1>
		</div>

			<div id="map" style="margin-left:250px;">
				<%
if request.form("reset")<>"" then
Session("w")=""
end if 
max_width=500
max_hieght=375
if Session("w")="" then 
Session("zoom")=1
Session("w")=9655 
Session("h")=5300 
Session("l")=-3240
Session("t")=-625
Session("pix")=100
end if
%>
<%
msg=""
zoom_bt=request.form("zoom_bt")
zoom=request.form("zoom")
sf=request.form("shift_pixel")
if zoom_bt<>""  then 
Session("zoom")=CDbl(zoom)
w=Session("w")
h=Session("h")
Session("w")=200 * CDbl(zoom)
Session("h")=109 * CDbl(zoom)
xx=(-Session("l"))/(w-500)
yy=(-Session("t"))/(h-375)
xx=-xx
yy=-yy
Session("l")=xx*(Session("w")-500)
Session("t")=yy*(Session("h")-375)
if IsNumeric(sf) then
Session("pix")=cint(sf)
else
msg="please enter a numeric value"
end if
end if
%>
<% 
l=request.form("sol")
r=request.form("sag")
t=request.form("yukari")
b=request.form("asagi")
tl=request.form("yukari_sol")
tr=request.form("yukari_sag")
bl=request.form("asagi_sol")
br=request.form("asagi_sag")
if l<>"" then 
if Session("pix")+Session("l")<0 then
Session("l")=Session("l")+Session("pix")
else
Session("l")=0
msg="you cant go left any more"
end if
elseif r<>"" then
if -(Session("l")-Session("pix"))<(Session("w")-500) then
Session("l")=Session("l")-Session("pix")
else
Session("l")=-(Session("w")-500)
msg="you cant go right any more"
end if
elseif t<>"" then
if Session("pix")+Session("t")<0 then
Session("t")=Session("t")+Session("pix")
else
Session("t")=0
msg="you cant go up any more"
end if
elseif b<>"" then
if -(Session("t")-Session("pix"))<(Session("h")-375) then
Session("t")=Session("t")-Session("pix")
else
Session("t")=-(Session("h")-375)
msg="you cant go down any more"
end if
elseif tl<>"" then
if Session("pix")+Session("t")<0 then
Session("t")=Session("t")+Session("pix")
else
Session("t")=0
msg="you cant go up any more"
end if
if Session("pix")+Session("l")<0 then
Session("l")=Session("l")+Session("pix")
else
Session("l")=0
msg="you cant go left any more"
end if
elseif tr<>"" then
if Session("pix")+Session("t")<0 then
Session("t")=Session("t")+Session("pix")
else
Session("t")=0
msg="you cant go up any more"
end if
if -(Session("l")-Session("pix"))<(Session("w")-500) then
Session("l")=Session("l")-Session("pix")
else
Session("l")=-(Session("w")-500)
msg="you cant go right any more"
end if
elseif bl<>"" then
if -(Session("t")-Session("pix"))<(Session("h")-375) then
Session("t")=Session("t")-Session("pix")
else
Session("t")=-(Session("h")-375)
msg="you cant go down any more"
end if
if Session("pix")+Session("l")<0 then
Session("l")=Session("l")+Session("pix")
else
Session("l")=0
msg="you cant go left any more"
end if
elseif br<>"" then
if -(Session("t")-Session("pix"))<(Session("h")-375) then
Session("t")=Session("t")-Session("pix")
else
Session("t")=-(Session("h")-375)
msg="you cant go down any more"
end if
if -(Session("l")-Session("pix"))<(Session("w")-500) then
Session("l")=Session("l")-Session("pix")
else
Session("l")=-(Session("w")-500)
msg="you cant go right any more"
end if
end if
%>
</head>

<body>

<div class="button_map">
<form action="map.asp" method="post">
  <input type="hidden" value="sol" name="sol" />
  <input type="submit" value="sol" id="map_sol" class="boyut_map" />
</form>
<form action="map.asp" method="post">
  <input type="hidden" value="sag" name="sag" />
  <input type="submit" value="sag" id="map_sag" class="boyut_map"/>
</form>
<form action="map.asp" method="post">
  <input type="hidden" value="yukarı" name="yukari" />
  <input type="submit" value="yukarı" id="map_yukari" class="boyut_map"/>
</form>
<form action="map.asp" method="post">
  <input type="hidden" value="asağı" name="asagi" />
  <input type="submit" value="asağı" id="map_asagi" class="boyut_map"/>
</form>
<form action="map.asp" method="post">
  <input type="hidden" value="<^" name="yukari_sol" />
  <input type="submit" value="<^" id="map_yukari_sol" class="boyut_map"/>
</form>
<form action="map.asp" method="post">
  <input type="hidden" value="^>" name="yukari_sag" />
  <input type="submit" value="^>" id="map_yukari_sag" class="boyut_map"/>
</form>
<form action="map.asp" method="post">
  <input type="hidden" value="<v" name="asagi_sol" />
  <input type="submit" value="<v" id="map_asagi_sol" class="boyut_map"/>
</form>
<form action="map.asp" method="post">
  <input type="hidden" value="v>" name="asagi_sag" />
  <input type="submit" value="v>" id="map_asagi_sag" class="boyut_map"/>
</form>
<div class="all_map">
  <img style="margin-left:<%=Session("l")%>px;margin-top:<%=Session("t")%>px;width:<%=Session("w")%>px;height:<%=Session("h")%>px;" src="http://www.kgm.gov.tr/SiteCollectionImages/KGMimages/Haritalar/turistik.jpg" />
</div>
</div>
<form action="map.asp" method="post">
<center>Yakınlaştır: 
<select name="zoom" id="combo" style="width:100px;">
<%  
for x=1 to 10
z=""
if Session("zoom")=x/10 then
z="option selected='selected'"
end if
response.write("<option value='" &x/0.1&"' "&z&">" &"%"& x/0.1&"</option>")
next
%>
</select></input><br/><br/>
<input type="submit" value="Uygula" name="zoom_bt" id="comment_bt" style="width: 110px; height: 35px; background-color:#4096ee"/>
<input type="submit" value="Sıfırla" name="reset" style="width: 110px; height: 35px; background-color:#85c329"/>
</center></form>
			
			</div>
			<center>&nbsp(Karabük İli 1:1 Ölçeğindeki Haritası)<br>
			Orjinal haritayı görmek için <a href="http://www.kgm.gov.tr/SiteCollectionImages/KGMimages/Haritalar/turistik.jpg" target="_blank">tıklayınız.</center>
				
			
		</div>
	</div>	
	
</div>
</body>
</html>







