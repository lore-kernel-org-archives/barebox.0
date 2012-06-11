Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from slsa667.piensasolutions.com ([217.76.150.252])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Se3Bj-0000lR-3f
 for barebox@lists.infradead.org; Mon, 11 Jun 2012 11:53:41 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by smtp-02.piensasolutions.com (Postfix) with ESMTP id D36B72A0AE4
 for <barebox@lists.infradead.org>; Mon, 11 Jun 2012 13:53:34 +0200 (CEST)
Received: from mail-ee0-f49.google.com (mail-ee0-f49.google.com [74.125.83.49])
 by smtp-02.piensasolutions.com (Postfix) with ESMTPSA id 9BC672A0AAA
 for <barebox@lists.infradead.org>; Mon, 11 Jun 2012 13:53:34 +0200 (CEST)
Received: by eekd17 with SMTP id d17so2145898eek.36
 for <barebox@lists.infradead.org>; Mon, 11 Jun 2012 04:53:34 -0700 (PDT)
MIME-Version: 1.0
From: Benoit RAT <benoit@sevensols.com>
Date: Mon, 11 Jun 2012 13:53:13 +0200
Message-ID: <CAHvDM_feUegqzvhH9oN19ooDvMkcKNrrx6sKP54txFBMD0oJqg@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6566940440594279530=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Problem with loadenv from /dev/env0
To: barebox@lists.infradead.org

--===============6566940440594279530==
Content-Type: multipart/alternative; boundary=90e6ba615438e2cc7204c230ff5d

--90e6ba615438e2cc7204c230ff5d
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hello,

I want to recover some parameters from my NAND flash by using saveenv and
loadenv but It does not work:

First I have used a big env0 partition to be sure bad blocks don't bother
me.

 devfs_add_partition("nand0", 0x00000, 0xF0000, PARTITION_FIXED, "env_raw")=
;
> dev_add_bb_dev("env_raw", "env0");


Then I try to edit,save & load /env/config

wrs-02:0B:AD:C0:FF:EE# edit /env/config

Then I change the eth0.addr

eth0.ethaddr=3D72:0B:AD:C0:FF:EE
> PS1=3D"wrs-$eth0.ethaddr# "


Ctrl+D

wrs-02:0B:AD:C0:FF:EE# . /env/config
wrs-72:0B:AD:C0:FF:EE# saveenv
saving environment
wrs-72:0B:AD:C0:FF:EE# loadenv
loading environment from /dev/env0
err -74
err -74
wrong crc on env

And if I reboot barebox I still load the default environment

NAND device: Manufacturer ID: 0x2c, Chip ID: 0xbc (Micron NAND 512MiB 1,8V
16-b)
Scanning device for bad blocks

Bad eraseblock 0 at 0x00000000
err -74

envfs: wrong magic on /dev/env0

no valid environment found on /dev/env0. Using default environment

running /env/bin/init...

Moreover, I have noticed that each time I use saveenv command it add
another bad block, and that sometime It does read something in /dev/env0
but without anything in /env

NAND device: Manufacturer ID: 0x2c, Chip ID: 0xbc (Micron NAND 512MiB 1,8V
16-b)
Scanning device for bad blocks

Bad eraseblock 0 at 0x00000000

Bad eraseblock 1 at 0x00020000

Bad eraseblock 2 at 0x00040000
Bad eraseblock 665 at 0x05320000

Bad eraseblock 1553 at 0x0c220000

Bad eraseblock 1712 at 0x0d600000

Bad eraseblock 1997 at 0x0f9a0000

Bad eraseblock 2182 at 0x110c0000
Malloc space: 0x73b00000 -> 0x73efffff (size  4 MB)

Stack space : 0x73af8000 -> 0x73b00000 (size 32 kB)

read: No error

running /env/bin/init...

Someone know what I am doing wrong?

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

--90e6ba615438e2cc7204c230ff5d
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hello,=A0<div><br></div><div>I want to recover some parameters from my NAND=
 flash by using saveenv and loadenv but It does not work:</div><div><br></d=
iv><div>First I have used a big env0 partition to be sure bad blocks don&#3=
9;t bother me.</div>

<div><br></div><div><blockquote class=3D"gmail_quote" style=3D"margin-top:0=
px;margin-right:0px;margin-bottom:0px;margin-left:0.8ex;border-left-width:1=
px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left:=
1ex">

<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>devfs_add_=
partition(&quot;nand0&quot;, 0x00000, 0xF0000, PARTITION_FIXED, &quot;env_r=
aw&quot;);<br><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</s=
pan>dev_add_bb_dev(&quot;env_raw&quot;, &quot;env0&quot;);</blockquote>

</div><div><br></div><div>Then I try to edit,save &amp; load /env/config</d=
iv><div><br></div><div><div style>wrs-02:0B:AD:C0:FF:EE# edit /<span class=
=3D"il" style=3D"background-image:initial;background-color:rgb(255,255,204)=
">env</span>/config</div>

<div style><div><br></div><div>Then I change the eth0.addr</div><div><br></=
div><div><blockquote class=3D"gmail_quote" style=3D"margin-top:0px;margin-r=
ight:0px;margin-bottom:0px;margin-left:0.8ex;border-left-width:1px;border-l=
eft-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">

eth0.ethaddr=3D72:0B:AD:C0:FF:EE<br>PS1=3D&quot;wrs-$eth0.ethaddr# &quot;</=
blockquote></div><div><br></div><div>Ctrl+D</div><div><br></div><div>wrs-02=
:0B:AD:C0:FF:EE# . /<span class=3D"il" style=3D"background-image:initial;ba=
ckground-color:rgb(255,255,204)">env</span>/config=A0</div>

<div><div>wrs-72:0B:AD:C0:FF:EE# saveenv=A0</div><div>saving=A0<span class=
=3D"il" style=3D"background-image:initial;background-color:rgb(255,255,204)=
">environment</span></div><div>wrs-72:0B:AD:C0:FF:EE#=A0<span class=3D"il" =
style=3D"background-image:initial;background-color:rgb(255,255,204)">loaden=
v</span>=A0</div>

<div>loading=A0<span class=3D"il" style=3D"background-image:initial;backgro=
und-color:rgb(255,255,204)">environment</span>=A0from /dev/env0</div><div>e=
rr -74</div><div>err -74</div><div>wrong crc on=A0<span class=3D"il" style=
=3D"background-image:initial;background-color:rgb(255,255,204)">env</span><=
/div>

</div></div></div><div><br></div><div>And if I reboot barebox I still load =
the default environment</div><div><br></div><div><div>NAND device: Manufact=
urer ID: 0x2c, Chip ID: 0xbc (Micron NAND 512MiB 1,8V 16-b)</div><div>
Scanning device for bad blocks =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</div>
<div>Bad eraseblock 0 at 0x00000000 =A0 =A0 =A0</div></div><div><div>err -7=
4 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=A0<=
/div><div>envfs: wrong magic on /dev/env0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=A0</div>

<div>no valid environment found on /dev/env0. Using default environment =A0=
 =A0 =A0 =A0 =A0 =A0 =A0</div><div>running /env/bin/init... =A0</div><div><=
br></div><div>Moreover, I have noticed that each time I use saveenv command=
 it add another bad block, and that sometime It does read something in /dev=
/env0 but without anything in /env</div>

<div><br></div><div><div>NAND device: Manufacturer ID: 0x2c, Chip ID: 0xbc =
(Micron NAND 512MiB 1,8V 16-b)</div><div>Scanning device for bad blocks =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0</div><div>Bad eraseblock 0 at 0x00000000 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0</div>

<div>Bad eraseblock 1 at 0x00020000 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</div><div>Bad =
eraseblock 2 at 0x00040000=A0</div><div>Bad eraseblock 665 at 0x05320000 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0</div>

<div>Bad eraseblock 1553 at 0x0c220000 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=A0</div><div>Bad er=
aseblock 1712 at 0x0d600000 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=A0</div><div>Bad eraseblock 19=
97 at 0x0f9a0000 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=A0</div>

<div>Bad eraseblock 2182 at 0x110c0000=A0=A0=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</div><div><div>Malloc =
space: 0x73b00000 -&gt; 0x73efffff (size =A04 MB) =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=A0</div><div>Stack space : 0x73af8000 -&gt;=
 0x73b00000 (size 32 kB) =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0=A0</div>

<div>read: No error =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0</div><div>running /env/bin/init... =A0</div></div></div><div><br></div>=
<div>Someone know what I am doing wrong?=A0</div><div>=A0=A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=A0</div>

<span style=3D"font-family:&#39;Times New Roman&#39;;font-size:medium">--</=
span><br style=3D"font-family:&#39;Times New Roman&#39;;font-size:medium"><=
div style=3D"font-family:&#39;Times New Roman&#39;;font-size:medium"><a hre=
f=3D"http://www.sevensols.com/" target=3D"_blank"><img src=3D"http://www.se=
vensols.com/logos/logo-118x90.png"></a>=A0<a href=3D"http://www.sevensecuri=
ty.es" style=3D"margin-left:10px" target=3D"_blank"><img src=3D"http://www.=
sevensols.com/logos/logo-7Sec-216x90.png"></a></div>

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

--90e6ba615438e2cc7204c230ff5d--


--===============6566940440594279530==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============6566940440594279530==--
