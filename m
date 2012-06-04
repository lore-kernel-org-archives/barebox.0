Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from slsa667.piensasolutions.com ([217.76.150.252])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SbX0n-0004EF-E3
 for barebox@lists.infradead.org; Mon, 04 Jun 2012 13:07:58 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by smtp-02.piensasolutions.com (Postfix) with ESMTP id BEB572A0C7D
 for <barebox@lists.infradead.org>; Mon,  4 Jun 2012 15:07:55 +0200 (CEST)
Received: from mail-ee0-f49.google.com (mail-ee0-f49.google.com [74.125.83.49])
 by smtp-02.piensasolutions.com (Postfix) with ESMTPSA id 876B72A0732
 for <barebox@lists.infradead.org>; Mon,  4 Jun 2012 15:07:55 +0200 (CEST)
Received: by eekd17 with SMTP id d17so2140462eek.36
 for <barebox@lists.infradead.org>; Mon, 04 Jun 2012 06:07:55 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAHvDM_dZOmQWYt2JKd7dRMhTJx08ntCeM+gDPuc9bLmBRQVdBg@mail.gmail.com>
References: <CAHvDM_dZOmQWYt2JKd7dRMhTJx08ntCeM+gDPuc9bLmBRQVdBg@mail.gmail.com>
From: Benoit RAT <benoit@sevensols.com>
Date: Mon, 4 Jun 2012 15:07:34 +0200
Message-ID: <CAHvDM_eLd8aJjtXHVjU7StvEeit2QTHAdaVW2DOG4WbW2+=w=A@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1886067312897799352=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Loading Cpio (gz) image as rootfs
To: barebox@lists.infradead.org

--===============1886067312897799352==
Content-Type: multipart/alternative; boundary=90e6ba615438e39e6c04c1a538f5

--90e6ba615438e39e6c04c1a538f5
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Sorry to bother again but I found the solution. maybe it can help someone:

initrd need start and size parameters.
As, size can be bigger then real size of image.cpio.gz, I set it to 32M
like the addpart command.

bootargs=3D"$bootargs initrd=3D0x72000000,33554432"

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



On Mon, Jun 4, 2012 at 2:21 PM, Benoit RAT <benoit@sevensols.com> wrote:

> Hy everybody,
>
> I was wondering if it was possible to load a cpio.gz image as rootfs! (I
> think it is the kernel that load it so it should not be a problem)
> however I don't know how to pass the arguments.
>
> Here you can find the commands, that i am using:
>
> addpart /dev/mem  8M@0x71000000(kernel);
> tftp zImage /dev/mem.kernel
> addpart /dev/mem  32M@0x72000000(fs)
> tftp image.cpio.gz /dev/mem.fs
> bootargs=3D"$bootargs root=3D/dev/ram0 initrd=3D0x72000000"
> bootz /dev/mem.kernel
>
> Regards,
>
> --
>  <http://www.sevensols.com/>  <http://www.sevensecurity.es>
>
> *Benoit RAT LAMY*
>
> Engineer (Sw) \ Ingeniero (Sw)
>
> fix. *(+34) 958 285 024*
>
> cel. *(+34) 617 989 123*
>
> e-mail: benoit@sevensols.com
>
> *www.sevensols.com / **www.sevensecurity.es*
>
> _________________________________
>
> *C/ Baza, parcela 19 Nave 3  \ Pol=EDgono Ind. Juncaril \*
>
> *18210 - PELIGROS - GRANADA =96SPAIN*
>
>

--90e6ba615438e39e6c04c1a538f5
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Sorry to bother again but I found the solution. maybe it can help someone:<=
div><br></div><div>initrd need start and size parameters.=A0</div><div>As, =
size can be bigger then real size of image.cpio.gz,=A0I set it to 32M like =
the addpart command.<div>

<div><br></div><div>bootargs=3D&quot;$bootargs initrd=3D0x72000000,33554432=
&quot;<br clear=3D"all"><br><span style=3D"font-family:&#39;Times New Roman=
&#39;;font-size:medium">--</span><br style=3D"font-family:&#39;Times New Ro=
man&#39;;font-size:medium">

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
<br><br><div class=3D"gmail_quote">On Mon, Jun 4, 2012 at 2:21 PM, Benoit R=
AT <span dir=3D"ltr">&lt;<a href=3D"mailto:benoit@sevensols.com" target=3D"=
_blank">benoit@sevensols.com</a>&gt;</span> wrote:<br><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex">

Hy everybody,<div><br></div><div>I was wondering if it was possible to load=
 a cpio.gz image as rootfs! (I think it is the kernel that load it so it sh=
ould not be a problem)</div><div>however I don&#39;t know how to pass the a=
rguments.</div>


<div><br></div><div>Here you can find the commands, that i am using:</div><=
div><br></div><div>addpart /dev/mem =A08M@0x71000000(kernel);</div><div>tft=
p zImage /dev/mem.kernel</div><div>addpart /dev/mem =A032M@0x72000000(fs)</=
div>


<div><div>tftp image.cpio.gz /dev/mem.fs=A0</div><div>bootargs=3D&quot;$boo=
targs root=3D/dev/ram0 initrd=3D0x72000000&quot;</div><div>bootz /dev/mem.k=
ernel</div><div><br></div><div>Regards,</div><div><br></div><div><span styl=
e=3D"font-family:&#39;Times New Roman&#39;;font-size:medium">--</span></div=
>


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
td Light&#39;,serif;color:rgb(16,138,208)">fix.=A0<b><a href=3D"tel:%28%2B3=
4%29%20958%20285%20024" value=3D"+34958285024" target=3D"_blank">(+34) 958 =
285 024</a></b></span></p>


<p style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0=
px;line-height:15px;font-size:13px;border-collapse:collapse"><span style=3D=
"color:rgb(16,138,208);font-family:&#39;Caecilia LT Std Light&#39;,serif">c=
el.=A0</span><b style=3D"color:rgb(16,138,208);font-family:&#39;Caecilia LT=
 Std Light&#39;,serif"><a href=3D"tel:%28%2B34%29%20617%20989%20123" value=
=3D"+34617989123" target=3D"_blank">(+34) 617 989 123</a></b></p>


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
</blockquote></div><br></div></div></div>

--90e6ba615438e39e6c04c1a538f5--


--===============1886067312897799352==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1886067312897799352==--
