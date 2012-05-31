Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from slsb306.piensasolutions.com ([217.76.150.251])
 by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Sa7Fn-0002zA-0i
 for barebox@lists.infradead.org; Thu, 31 May 2012 15:25:36 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by smtp-02.piensasolutions.com (Postfix) with ESMTP id 05ED74030C
 for <barebox@lists.infradead.org>; Thu, 31 May 2012 17:25:26 +0200 (CEST)
Received: from mail-ee0-f49.google.com (mail-ee0-f49.google.com [74.125.83.49])
 by smtp-02.piensasolutions.com (Postfix) with ESMTPSA id BBD6F40132
 for <barebox@lists.infradead.org>; Thu, 31 May 2012 17:25:24 +0200 (CEST)
Received: by eekd17 with SMTP id d17so614757eek.36
 for <barebox@lists.infradead.org>; Thu, 31 May 2012 08:25:24 -0700 (PDT)
MIME-Version: 1.0
From: Benoit RAT <benoit@sevensols.com>
Date: Thu, 31 May 2012 17:25:03 +0200
Message-ID: <CAHvDM_e+yLQbJAa96-XJan8u_K57tDuJyWVqTGLyHxeQ8MG02g@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6645647192381934433=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: menu autodisplay does not work
To: barebox@lists.infradead.org

--===============6645647192381934433==
Content-Type: multipart/alternative; boundary=90e6ba61543835d94204c156ad1f

--90e6ba61543835d94204c156ad1f
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hy guy,

I found a small bug with menu autodisplay functionality that doesn't work:

 menu -a -m test -d "test menu"
 menu -e -a -m test -c "echo 1" -d "test1"
 menu -e -a -m test -c "echo 2" -d "test2"
 menu -e -a -m test -c "echo 3" -d "test3"

And then I try to autoselect test2 after chosing test 1

1
barebox> menu -m test -s -d "test2"

But this does not work!

The only way to perform this is to use

menu -m test -S -n 2
menu -m test -s

I hope it can help you to debug it


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

--90e6ba61543835d94204c156ad1f
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hy guy,<div><br></div><div>I found a small bug with menu autodisplay functi=
onality that doesn&#39;t work:</div><div><br></div><div><div>=A0menu -a -m =
test -d &quot;test menu&quot; =A0 =A0 =A0 =A0 =A0=A0</div><div><div>=A0menu=
 -e -a -m test -c &quot;echo 1&quot; -d &quot;test1&quot;</div>

</div><div><div>=A0menu -e -a -m test -c &quot;echo 2&quot; -d &quot;test2&=
quot;</div></div><div>=A0menu -e -a -m test -c &quot;echo 3&quot; -d &quot;=
test3&quot;</div><div><br></div><div>And then I try to autoselect test2 aft=
er chosing test 1</div>

<div><br></div><div><div>1</div><div>barebox&gt; menu -m test -s -d &quot;t=
est2&quot;</div></div><div><br></div><div>But this does not work!</div><div=
><br></div><div>The only way to perform this is to use=A0</div><div><br>
</div>
<div>menu -m test -S -n 2</div><div>menu -m test -s</div><div><br></div><di=
v>I hope it can help you to debug it</div><div><br></div><br><span style=3D=
"font-family:&#39;Times New Roman&#39;;font-size:medium">--</span><br style=
=3D"font-family:&#39;Times New Roman&#39;;font-size:medium">

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
</div>

--90e6ba61543835d94204c156ad1f--


--===============6645647192381934433==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============6645647192381934433==--
