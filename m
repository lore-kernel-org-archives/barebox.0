Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from slsa667.piensasolutions.com ([217.76.150.252])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Se3Hp-00013H-Md
 for barebox@lists.infradead.org; Mon, 11 Jun 2012 11:59:58 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by smtp-02.piensasolutions.com (Postfix) with ESMTP id 91D252A0AC9
 for <barebox@lists.infradead.org>; Mon, 11 Jun 2012 13:59:55 +0200 (CEST)
Received: from mail-ee0-f49.google.com (mail-ee0-f49.google.com [74.125.83.49])
 by smtp-02.piensasolutions.com (Postfix) with ESMTPSA id 5ADBE2A0AF1
 for <barebox@lists.infradead.org>; Mon, 11 Jun 2012 13:59:55 +0200 (CEST)
Received: by eekd17 with SMTP id d17so2148429eek.36
 for <barebox@lists.infradead.org>; Mon, 11 Jun 2012 04:59:54 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120611115719.GO30400@pengutronix.de>
References: <CAHvDM_feUegqzvhH9oN19ooDvMkcKNrrx6sKP54txFBMD0oJqg@mail.gmail.com>
 <20120611115719.GO30400@pengutronix.de>
From: Benoit RAT <benoit@sevensols.com>
Date: Mon, 11 Jun 2012 13:59:34 +0200
Message-ID: <CAHvDM_fctLm1+s6Mz9J15GERsfV-Wx8n81ZtiieUF4CXJ5uviA@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4987932949797573535=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Problem with loadenv from /dev/env0
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

--===============4987932949797573535==
Content-Type: multipart/alternative; boundary=90e6ba61528c942c9904c23116cc

--90e6ba61528c942c9904c23116cc
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Sorry I forgot,

It is based on pm9g45 board

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



On Mon, Jun 11, 2012 at 1:57 PM, Sascha Hauer <s.hauer@pengutronix.de>wrote=
:

> On Mon, Jun 11, 2012 at 01:53:13PM +0200, Benoit RAT wrote:
> > Hello,
> >
> > I want to recover some parameters from my NAND flash by using saveenv a=
nd
> > loadenv but It does not work:
> >
> > First I have used a big env0 partition to be sure bad blocks don't both=
er
> > me.
> >
> >  devfs_add_partition("nand0", 0x00000, 0xF0000, PARTITION_FIXED,
> "env_raw");
> > > dev_add_bb_dev("env_raw", "env0");
> >
> >
> > Then I try to edit,save & load /env/config
> >
> > wrs-02:0B:AD:C0:FF:EE# edit /env/config
> >
> > Then I change the eth0.addr
> >
> > eth0.ethaddr=3D72:0B:AD:C0:FF:EE
> > > PS1=3D"wrs-$eth0.ethaddr# "
> >
> >
> > Ctrl+D
> >
> > wrs-02:0B:AD:C0:FF:EE# . /env/config
> > wrs-72:0B:AD:C0:FF:EE# saveenv
> > saving environment
> > wrs-72:0B:AD:C0:FF:EE# loadenv
> > loading environment from /dev/env0
> > err -74
> > err -74
> > wrong crc on env
>
> What hardware was this again?
>
> Sascha
>
> --
> Pengutronix e.K.                           |                             =
|
> Industrial Linux Solutions                 | http://www.pengutronix.de/  =
|
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    =
|
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 =
|
>

--90e6ba61528c942c9904c23116cc
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Sorry I forgot,=A0<div><br></div><div>It is based on pm9g45 board=A0<br cle=
ar=3D"all"><br><span style=3D"font-family:&#39;Times New Roman&#39;;font-si=
ze:medium">--</span><br style=3D"font-family:&#39;Times New Roman&#39;;font=
-size:medium">

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
<br><br><div class=3D"gmail_quote">On Mon, Jun 11, 2012 at 1:57 PM, Sascha =
Hauer <span dir=3D"ltr">&lt;<a href=3D"mailto:s.hauer@pengutronix.de" targe=
t=3D"_blank">s.hauer@pengutronix.de</a>&gt;</span> wrote:<br><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex">

<div class=3D"im">On Mon, Jun 11, 2012 at 01:53:13PM +0200, Benoit RAT wrot=
e:<br>
&gt; Hello,<br>
&gt;<br>
&gt; I want to recover some parameters from my NAND flash by using saveenv =
and<br>
&gt; loadenv but It does not work:<br>
&gt;<br>
&gt; First I have used a big env0 partition to be sure bad blocks don&#39;t=
 bother<br>
&gt; me.<br>
&gt;<br>
&gt; =A0devfs_add_partition(&quot;nand0&quot;, 0x00000, 0xF0000, PARTITION_=
FIXED, &quot;env_raw&quot;);<br>
&gt; &gt; dev_add_bb_dev(&quot;env_raw&quot;, &quot;env0&quot;);<br>
&gt;<br>
&gt;<br>
&gt; Then I try to edit,save &amp; load /env/config<br>
&gt;<br>
&gt; wrs-02:0B:AD:C0:FF:EE# edit /env/config<br>
&gt;<br>
&gt; Then I change the eth0.addr<br>
&gt;<br>
&gt; eth0.ethaddr=3D72:0B:AD:C0:FF:EE<br>
&gt; &gt; PS1=3D&quot;wrs-$eth0.ethaddr# &quot;<br>
&gt;<br>
&gt;<br>
&gt; Ctrl+D<br>
&gt;<br>
&gt; wrs-02:0B:AD:C0:FF:EE# . /env/config<br>
&gt; wrs-72:0B:AD:C0:FF:EE# saveenv<br>
&gt; saving environment<br>
&gt; wrs-72:0B:AD:C0:FF:EE# loadenv<br>
&gt; loading environment from /dev/env0<br>
&gt; err -74<br>
&gt; err -74<br>
&gt; wrong crc on env<br>
<br>
</div>What hardware was this again?<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Sascha<br>
<br>
--<br>
Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |<br>
Industrial Linux Solutions =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | <a href=3D"htt=
p://www.pengutronix.de/" target=3D"_blank">http://www.pengutronix.de/</a> =
=A0|<br>
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: <a href=3D"tel:%2B49-51=
21-206917-0" value=3D"+4951212069170">+49-5121-206917-0</a> =A0 =A0|<br>
Amtsgericht Hildesheim, HRA 2686 =A0 =A0 =A0 =A0 =A0 | Fax: =A0 <a href=3D"=
tel:%2B49-5121-206917-5555" value=3D"+4951212069175555">+49-5121-206917-555=
5</a> |<br>
</font></span></blockquote></div><br></div>

--90e6ba61528c942c9904c23116cc--


--===============4987932949797573535==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============4987932949797573535==--
