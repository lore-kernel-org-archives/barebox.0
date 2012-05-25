Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from slsb306.piensasolutions.com ([217.76.150.251])
 by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SXsEm-0005Wb-Gp
 for barebox@lists.infradead.org; Fri, 25 May 2012 10:59:18 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by smtp-02.piensasolutions.com (Postfix) with ESMTP id 84B7D4008F
 for <barebox@lists.infradead.org>; Fri, 25 May 2012 12:59:10 +0200 (CEST)
Received: from mail-ey0-f177.google.com (mail-ey0-f177.google.com
 [209.85.215.177])
 by smtp-02.piensasolutions.com (Postfix) with ESMTPSA id 46C7D403CF
 for <barebox@lists.infradead.org>; Fri, 25 May 2012 12:59:10 +0200 (CEST)
Received: by eaaf11 with SMTP id f11so238331eaa.36
 for <barebox@lists.infradead.org>; Fri, 25 May 2012 03:59:09 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120525125154.1c039173@eb-e6520>
References: <CAHvDM_cjKPKt205M3W+Cn8ns0+_GeYbj7xrtX6D+iiu9cJVt4g@mail.gmail.com>
 <20120525125154.1c039173@eb-e6520>
From: Benoit RAT <benoit@sevensols.com>
Date: Fri, 25 May 2012 12:58:48 +0200
Message-ID: <CAHvDM_dXQhSHi+gACuwnbs9i2=Sf93Bt8PBPMdKS0KvvNztmvA@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0245221167866025052=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Check if valid kernel and/or FS
To: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

--===============0245221167866025052==
Content-Type: multipart/alternative; boundary=90e6ba615486fe004f04c0da411a

--90e6ba615486fe004f04c0da411a
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Thanks,

I want to know, if i am using the default environment (the that I am using
from compilation)
barebox> no valid environment found on /dev/env0. Using default environment

Or I am using the one that there is in /dev/env0

It is in the case someone break something in the NAND flash env, I want to
save again the default one.

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



On Fri, May 25, 2012 at 12:51 PM, Eric B=E9nard <eric@eukrea.com> wrote:

> Hi Benoit,
>
> Le Fri, 25 May 2012 12:08:09 +0200,
> Benoit RAT <benoit@sevensols.com> a =E9crit :
>
> > I was wondering if there was a good way to check if I have a correct
> kernel
> > and/or filesystem in my partition before loading them.
> > If it is not the case then I will check out for valid images in tftpboo=
t
> or
> > prompt the barebox shell.
> >
> first try the boot command, if the kernel is not correct (ie : bad
> checksum), the boot command returns and you can then launch a tftpboot
> or give a prompt.
>
> Check for example :
>
> http://git.pengutronix.de/?p=3Dbarebox.git;a=3Dblob;f=3Darch/arm/boards/a=
t91sam9m10g45ek/env/bin/menu_boot;h=3Dd0b1396de984e3b00902cfb32598dcf123afc=
6bf;hb=3Drefs/heads/next
>
> > And another question is how can i know that I am using the barebox
> > environment from nand flash instead of the one from a scripts?
> >
> what do you mean here ?
>
> Eric
>

--90e6ba615486fe004f04c0da411a
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Thanks,<div><br></div><div>I want to know, if i am using the default enviro=
nment (the that I am using from compilation)</div><div>barebox&gt;=A0no val=
id environment found on /dev/env0. Using default environment</div><div><br>

</div><div>Or I am using the one that there is in /dev/env0</div><div><br><=
/div><div>It is in the case someone break something in the NAND flash env, =
I want to save again the default one.</div><div><br><span style=3D"font-fam=
ily:&#39;Times New Roman&#39;;font-size:medium">--</span><br style=3D"font-=
family:&#39;Times New Roman&#39;;font-size:medium">

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
<br><br><div class=3D"gmail_quote">On Fri, May 25, 2012 at 12:51 PM, Eric B=
=E9nard <span dir=3D"ltr">&lt;<a href=3D"mailto:eric@eukrea.com" target=3D"=
_blank">eric@eukrea.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex">

Hi Benoit,<br>
<br>
Le Fri, 25 May 2012 12:08:09 +0200,<br>
Benoit RAT &lt;<a href=3D"mailto:benoit@sevensols.com">benoit@sevensols.com=
</a>&gt; a =E9crit :<br>
<div class=3D"im"><br>
&gt; I was wondering if there was a good way to check if I have a correct k=
ernel<br>
&gt; and/or filesystem in my partition before loading them.<br>
&gt; If it is not the case then I will check out for valid images in tftpbo=
ot or<br>
&gt; prompt the barebox shell.<br>
&gt;<br>
</div>first try the boot command, if the kernel is not correct (ie : bad<br=
>
checksum), the boot command returns and you can then launch a tftpboot<br>
or give a prompt.<br>
<br>
Check for example :<br>
<a href=3D"http://git.pengutronix.de/?p=3Dbarebox.git;a=3Dblob;f=3Darch/arm=
/boards/at91sam9m10g45ek/env/bin/menu_boot;h=3Dd0b1396de984e3b00902cfb32598=
dcf123afc6bf;hb=3Drefs/heads/next" target=3D"_blank">http://git.pengutronix=
.de/?p=3Dbarebox.git;a=3Dblob;f=3Darch/arm/boards/at91sam9m10g45ek/env/bin/=
menu_boot;h=3Dd0b1396de984e3b00902cfb32598dcf123afc6bf;hb=3Drefs/heads/next=
</a><br>


<div class=3D"im"><br>
&gt; And another question is how can i know that I am using the barebox<br>
&gt; environment from nand flash instead of the one from a scripts?<br>
&gt;<br>
</div>what do you mean here ?<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Eric<br>
</font></span></blockquote></div><br></div>

--90e6ba615486fe004f04c0da411a--


--===============0245221167866025052==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0245221167866025052==--
