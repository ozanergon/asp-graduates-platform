<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-9" />
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
		<div >
			<div class="kutu">
				<h1 class="title2"><center>Kayıt</center></h1>
			</div>	
			<% 



adi=request.form("adi")
soyadi=request.form("soyadi")


'kutuyu boş bırakmayı engelleme
If trim(request("adi"))="" and trim(request("soyadi"))="" and trim(request("dogumtarihi"))="" and trim(request("email"))="" and trim(request("parola"))="" and trim(request("telno"))="" and trim(request("sehir"))="" then  
response.write ("<center><b>Eksik Bilgi! </b> Lutfen bos birakmayiniz.   [ <a href=""javascript:history.back()"">Geri</a> ]<br><br></center> ")
response.end  
end if




'--------------
'VT baglantisinin yapimasi:
Set Baglantim = CreateObject("ADODB.Connection") 
'VT'nin acilmasi:
Baglantim.Open ("DRIVER={Microsoft Access Driver (*.mdb)};DBQ="& Server.MapPath("myDatabase.mdb"))
'Tablo nesnesinin olusturulmasi:
Set Tablom = server. CreateObject("ADODB.Recordset")
'Tablonun acilmasi:
Tablom.Open "kullanici", Baglantim, 1, 3

'Tabloya veri eklemeye baslangic:
Tablom.AddNew 
'Tablodaki alanlara veri aktarma
Tablom("adi") =  request("adi")
Tablom("soyadi") =  request("soyadi")
Tablom("dogum_tarihi") =  request("dogumtarih")
Tablom("cinsiyet") =  request("cinsiyet")
Tablom("okul_no") =  request("okulno")
Tablom("email") =  request("email")
Tablom("parola") =  request("parola")
Tablom("tel_no") =  request("telno")
Tablom("meslek") =  request("meslek")
Tablom("universite") =  request("universite")
Tablom("sehir") =  request("sehir")
Tablom("web") =  request("web")
Tablom("adres") =  request("adres")
'aktarma islemi birince tablonun guncellenmesi:
Tablom.Update



'tablonun kapatilmasi:
  Tablom.close
  set Tablom= Nothing
'baglantinin kesilmesi:
  Baglantim.close
  set Baglantim= Nothing
Session("adi") = request.form("adi") 
Session("soyadi") = request.form("soyadi")
response.write "<center><b><h1>Kaydiniz basariyla olusturulmustur.</h1></b><center>"

%>
<center><b><h2>Giriş yapmak için oturum aç sayfasından giriş yapabilirsiniz.</h2></b><center>			
			
			
		</div>
	</div>	
	
</div>


</body>
</html>



