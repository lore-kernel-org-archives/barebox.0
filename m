Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from slsb306.piensasolutions.com ([217.76.150.251])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SoXbQ-0006Ut-LP
 for barebox@lists.infradead.org; Tue, 10 Jul 2012 10:23:34 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by smtp-02.piensasolutions.com (Postfix) with ESMTP id 605394058C
 for <barebox@lists.infradead.org>; Tue, 10 Jul 2012 12:23:27 +0200 (CEST)
Received: from mail-ee0-f49.google.com (mail-ee0-f49.google.com [74.125.83.49])
 by smtp-02.piensasolutions.com (Postfix) with ESMTPSA id 32DDB40676
 for <barebox@lists.infradead.org>; Tue, 10 Jul 2012 12:23:26 +0200 (CEST)
Received: by eekd17 with SMTP id d17so4592922eek.36
 for <barebox@lists.infradead.org>; Tue, 10 Jul 2012 03:23:25 -0700 (PDT)
MIME-Version: 1.0
From: Benoit RAT <benoit@sevensols.com>
Date: Tue, 10 Jul 2012 12:23:05 +0200
Message-ID: <CAHvDM_eoW1MoWEXSbakqpGjeY0aw_jLsDk2z7huwQWL0tvLVSQ@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4652559971068242067=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Patch for 16bit atmel NAND
To: barebox@lists.infradead.org

--===============4652559971068242067==
Content-Type: multipart/alternative; boundary=90e6ba615388e70e6804c4771e97

--90e6ba615388e70e6804c4771e97
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

I have found a bug on barebox 2012.05 where some lines has been removed
from previous version (2011.09) and make my NAND failed

You can find a description of my problem in a previous mail:
http://www.mail-archive.com/barebox@lists.infradead.org/msg02062.html

You can find a patch that restore the wrongly modified line here:
https://github.com/neub/wrs-sw-barebox/commit/8ab07333e6ab7ee09efd10552de70=
3eca323c726

I hope it can help

Regards,

--
 <http://www.sevensols.com/>  <http://www.sevensecurity.es>

*Benoit RAT LAMY*

Engineer (Sw) \ Ingeniero (Sw)

fix. *(+34) 958 285 024*

cel. *(+34) 617 989 123*

e-mail: benoit@sevensols.com

*www.sevensols.com / **www.sevensecurity.es*

_________________________________

*C/ Baza, parcela 19 Nave 3  \ Pol=EDgono Ind. Juncaril \*

*18210 - PELIGROS - GRANADA =96SPAIN*

--90e6ba615388e70e6804c4771e97
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

I have found a bug on barebox 2012.05 where some lines has been removed fro=
m previous version (2011.09) and make my NAND failed<div><br></div><div>You=
 can find a description of my problem in a previous mail:=A0<a href=3D"http=
://www.mail-archive.com/barebox@lists.infradead.org/msg02062.html">http://w=
ww.mail-archive.com/barebox@lists.infradead.org/msg02062.html</a><br>

<div><br></div><div>You can find a patch that restore the wrongly modified =
line here:</div><div><a href=3D"https://github.com/neub/wrs-sw-barebox/comm=
it/8ab07333e6ab7ee09efd10552de703eca323c726">https://github.com/neub/wrs-sw=
-barebox/commit/8ab07333e6ab7ee09efd10552de703eca323c726</a></div>

<div><br></div><div>I hope it can help</div><div><br></div><div>Regards,<br=
 clear=3D"all"><br><span style=3D"font-family:&#39;Times New Roman&#39;;fon=
t-size:medium">--</span><br style=3D"font-family:&#39;Times New Roman&#39;;=
font-size:medium">

<div style=3D"font-family:&#39;Times New Roman&#39;;font-size:medium"><a hr=
ef=3D"http://www.sevensols.com/" target=3D"_blank"><img src=3D"http://www.s=
evensols.com/logos/logo-118x90.png"></a>=A0<a href=3D"http://www.sevensecur=
ity.es" style=3D"margin-left:10px" target=3D"_blank"><img src=3D"http://www=
.sevensols.com/logos/logo-7Sec-216x90.png"></a></div>

<br style=3D"font-family:&#39;Times New Roman&#39;;font-size:medium"><div s=
tyle=3D"font-family:&#39;Times New Roman&#39;;font-size:medium"><span style=
=3D"font-family:arial,sans-serif;font-size:13px;border-collapse:collapse;li=
ne-height:15px"><b><span lang=3D"EN-US" style=3D"font-family:&#39;Caecilia =
LT Std Light&#39;,serif;color:rgb(16,138,208)">Benoit RAT LAMY</span></b></=
span></div>

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
</div></div>

--90e6ba615388e70e6804c4771e97--


--===============4652559971068242067==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============4652559971068242067==--
