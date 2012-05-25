Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from slsa667.piensasolutions.com ([217.76.150.252])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SXrjT-0001x0-IA
 for barebox@lists.infradead.org; Fri, 25 May 2012 10:26:57 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by smtp-02.piensasolutions.com (Postfix) with ESMTP id 650CA2A0843
 for <barebox@lists.infradead.org>; Fri, 25 May 2012 12:08:30 +0200 (CEST)
Received: from mail-ee0-f49.google.com (mail-ee0-f49.google.com [74.125.83.49])
 by smtp-02.piensasolutions.com (Postfix) with ESMTPSA id 333AC2A080B
 for <barebox@lists.infradead.org>; Fri, 25 May 2012 12:08:30 +0200 (CEST)
Received: by eekd17 with SMTP id d17so224902eek.36
 for <barebox@lists.infradead.org>; Fri, 25 May 2012 03:08:29 -0700 (PDT)
MIME-Version: 1.0
From: Benoit RAT <benoit@sevensols.com>
Date: Fri, 25 May 2012 12:08:09 +0200
Message-ID: <CAHvDM_cjKPKt205M3W+Cn8ns0+_GeYbj7xrtX6D+iiu9cJVt4g@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7082907530781984288=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Check if valid kernel and/or FS
To: barebox@lists.infradead.org

--===============7082907530781984288==
Content-Type: multipart/alternative; boundary=90e6ba61528cce5ee704c0d98c81

--90e6ba61528cce5ee704c0d98c81
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hy barebox guy,

I was wondering if there was a good way to check if I have a correct kernel
and/or filesystem in my partition before loading them.
If it is not the case then I will check out for valid images in tftpboot or
prompt the barebox shell.

And another question is how can i know that I am using the barebox
environment from nand flash instead of the one from a scripts?

Regards,

--
 <http://www.sevensols.com/>
*Benoit RAT LAMY*

Engineer (Sw) \ Ingeniero (Sw)

fix. *(+34) 958 285 024*

cel. *(+34) 617 989 123*

e-mail: benoit@sevensols.com

*www.sevensols.com / **www.sevensecurity.es*

_________________________________

*C/ Baza, parcela 19 Nave 3  \ Pol=EDgono Ind. Juncaril \*

*18210 - PELIGROS - GRANADA =96SPAIN*

--90e6ba61528cce5ee704c0d98c81
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hy barebox guy,<div><br></div><div>I was wondering if there was a good way =
to check if I have a correct kernel and/or filesystem in my partition befor=
e loading them.</div><div>If it is not the case then I will check out for v=
alid images in tftpboot or prompt the barebox shell.</div>

<div><br></div><div>And another question is how can i know that I am using =
the barebox environment from nand flash instead of the one from a scripts?<=
/div><div><br></div><div>Regards,=A0</div><div><br><span style=3D"font-fami=
ly:&#39;Times New Roman&#39;;font-size:medium">--</span><br style=3D"font-f=
amily:&#39;Times New Roman&#39;;font-size:medium">

<div style=3D"font-family:&#39;Times New Roman&#39;;font-size:medium"><a hr=
ef=3D"http://www.sevensols.com/" target=3D"_blank"><img src=3D"http://www.s=
evensols.com/logos/logo-118x90.png"></a>=A0</div><div style=3D"font-family:=
&#39;Times New Roman&#39;;font-size:medium">

<span style=3D"font-family:arial,sans-serif;font-size:13px;border-collapse:=
collapse;line-height:15px"><b><span lang=3D"EN-US" style=3D"font-family:&#3=
9;Caecilia LT Std Light&#39;,serif;color:rgb(16,138,208)">Benoit RAT LAMY</=
span></b></span></div>

<div><p style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-l=
eft:0px;line-height:15px;font-family:arial,sans-serif;font-size:13px;border=
-collapse:collapse"><span lang=3D"EN-US" style=3D"font-family:&#39;Caecilia=
 LT Std Light&#39;,serif;color:rgb(16,138,208)">Engineer (Sw) \ Ingeniero (=
Sw)</span></p>

<p style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0=
px;line-height:15px;font-family:arial,sans-serif;font-size:13px;border-coll=
apse:collapse"><span lang=3D"EN-US" style=3D"font-family:&#39;Caecilia LT S=
td Light&#39;,serif;color:rgb(16,138,208)">fix.=A0<b>(+34) 958 285 024</b><=
/span></p>

<p style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0=
px;line-height:15px;font-size:13px;border-collapse:collapse"><span style=3D=
"color:rgb(16,138,208);font-family:&#39;Caecilia LT Std Light&#39;,serif">c=
el.=A0</span><b style=3D"color:rgb(16,138,208);font-family:&#39;Caecilia LT=
 Std Light&#39;,serif">(+34) 617 989 123</b></p>

<p style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0=
px;line-height:15px;font-family:arial,sans-serif;font-size:13px;border-coll=
apse:collapse"><span lang=3D"EN-US" style=3D"font-family:&#39;Caecilia LT S=
td Light&#39;,serif;color:rgb(16,138,208)">e-mail:=A0<a href=3D"mailto:beno=
it@sevensols.com" target=3D"_blank"><font color=3D"#339999">benoit@sevensol=
s.com</font></a></span></p>

<p style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0=
px;line-height:15px;font-family:arial,sans-serif;font-size:13px;border-coll=
apse:collapse"><b><span lang=3D"ES-TRAD" style=3D"font-family:&#39;Caecilia=
 LT Std Light&#39;,serif"><span style=3D"text-decoration:none"><font color=
=3D"#339999"><a href=3D"http://www.sevensols.com/" target=3D"_blank">www.se=
vensols.com</a>=A0/=A0</font></span></span></b><span lang=3D"ES-TRAD" style=
=3D"font-family:&#39;Caecilia LT Std Light&#39;,serif;color:rgb(16,138,208)=
"></span><b><span lang=3D"ES-TRAD" style=3D"font-family:&#39;Caecilia LT St=
d Light&#39;,serif"><font color=3D"#339999"><a href=3D"http://www.sevensecu=
rity.es" target=3D"_blank">www.sevensecurity.es</a></font></span></b></p>

<p style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0=
px;line-height:15px;font-family:arial,sans-serif;font-size:13px;border-coll=
apse:collapse"><span lang=3D"ES-TRAD" style=3D"font-family:&#39;Caecilia LT=
 Std Light&#39;,serif;color:rgb(16,138,208)">______________________________=
___</span></p>

<p style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0=
px;line-height:15px;font-family:arial,sans-serif;font-size:13px;border-coll=
apse:collapse"><b><span lang=3D"ES-TRAD" style=3D"font-family:&#39;Caecilia=
 LT Std Light&#39;,serif;color:rgb(16,138,208)">C/ Baza, parcela 19 Nave 3=
=A0 \ Pol=EDgono Ind. Juncaril \</span></b></p>

<p style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0=
px;font-family:arial,sans-serif;font-size:13px;border-collapse:collapse"><b=
><span style=3D"font-family:&#39;Caecilia LT Std Light&#39;,serif;color:rgb=
(16,138,208)">18210 - PELIGROS - GRANADA =96SPAIN</span></b></p>

</div><br>
</div>

--90e6ba61528cce5ee704c0d98c81--


--===============7082907530781984288==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7082907530781984288==--
