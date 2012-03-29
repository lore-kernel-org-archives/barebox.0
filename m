Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ey0-f177.google.com ([209.85.215.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SDEep-0006QA-4W
 for barebox@lists.infradead.org; Thu, 29 Mar 2012 12:40:52 +0000
Received: by eaak13 with SMTP id k13so1140740eaa.36
 for <barebox@lists.infradead.org>; Thu, 29 Mar 2012 05:40:49 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <OF21220E76.68770C91-ONC12579D0.004452DB-C12579D0.0044D7C4@o0802.rafi.inhouse>
References: <OF440839EF.2383F590-ONC12579D0.00410F43-C12579D0.004184D1@o0802.rafi.inhouse>
 <20120329140303.71c94361@eb-e6520>
 <OF21220E76.68770C91-ONC12579D0.004452DB-C12579D0.0044D7C4@o0802.rafi.inhouse>
Date: Thu, 29 Mar 2012 14:40:48 +0200
Message-ID: <CAB_54W4aZA1W0yGMtboW-F0CLmfx4et2XNEjExdFdZUE_g4a+g@mail.gmail.com>
From: Alexander Aring <alex.aring@googlemail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7727996521227446270=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Re: Create NAND Partition through barebox
To: christian.buettner@rafi.de
Cc: barebox@lists.infradead.org

--===============7727996521227446270==
Content-Type: multipart/alternative; boundary=f46d04308a28969de104bc610899

--f46d04308a28969de104bc610899
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

is there a /dev/nand0 device?

/env/bin/init call "addpart /dev/nand0 $nand_parts" and create these
partitions.
Or maybe the command is not available?

Alex

Am 29. M=C3=A4rz 2012 14:32 schrieb <christian.buettner@rafi.de>:

> This is my current config:
>
> #!/bin/sh
>
> machine=3Dtest
>
> kernel_loc=3Dnand
> rootfs_loc=3Dnand
>
> rootfs_type=3Dubifs
>
> kernel=3DzImage
> rootfs=3Drootfs
> envimage=3Denviron.bin
>
> autoboot_timeout=3D3
>
> nfsroot=3D"/tools/rootfs/test"
>
> console=3D"console=3Dttymxc0,115200"
>
> bootargs=3D${console}
>
> nand_parts=3D"256k(barebox)ro,768k(bareboxenv),4M(kernel),-(root)"
> kdev=3D"/dev/nand0.kernel.bb"
> rootfs_mtdblock_nand=3D3
>
>
>
> But i see no NAND in devinfo
>
> - - Christian
>
>
>
> Von:        Eric B=C3=A9nard <eric@eukrea.com>
> An:        barebox@lists.infradead.org
> Datum:        29.03.2012 14:04
> Betreff:        Re: Create NAND Partition through barebox
> Gesendet von:        barebox-bounces@lists.infradead.org
> ------------------------------
>
>
>
> Hi,
>
> Le Thu, 29 Mar 2012 13:55:43 +0200,
> christian.buettner@rafi.de a =C3=A9crit :
> > i need to create a NAND Partition through the barebox prompt to be able
> to
> > flash a kernel image on it.
> >
> >.../...
> >
> > I tried using
> > $ nand -a /dev/nand0.*
> >
> > Nothing happens..
> > What is wrong?
> >
> do you have the partition definition in your /env/config file ?
>
> Eric
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>
>

--f46d04308a28969de104bc610899
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<br>Hi,<br><br>is there a /dev/nand0 device?<br><br>/env/bin/init call &quo=
t;addpart /dev/nand0 $nand_parts&quot; and create these partitions.<br>Or m=
aybe the command is not available?<br><br>Alex<br><br><div class=3D"gmail_q=
uote">
Am 29. M=C3=A4rz 2012 14:32 schrieb  <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:christian.buettner@rafi.de">christian.buettner@rafi.de</a>&gt;</span>:<br=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex">
<font face=3D"sans-serif">This is my current config:</font>
<br>
<br><font face=3D"sans-serif">#!/bin/sh</font>
<br>
<br><font face=3D"sans-serif">machine=3Dtest</font>
<br>
<br><font face=3D"sans-serif">kernel_loc=3Dnand</font>
<br><font face=3D"sans-serif">rootfs_loc=3Dnand</font>
<br>
<br><font face=3D"sans-serif">rootfs_type=3Dubifs</font>
<br>
<br><font face=3D"sans-serif">kernel=3DzImage</font>
<br><font face=3D"sans-serif">rootfs=3Drootfs</font>
<br><font face=3D"sans-serif">envimage=3Denviron.bin</font>
<br>
<br><font face=3D"sans-serif">autoboot_timeout=3D3</font>
<br>
<br><font face=3D"sans-serif">nfsroot=3D&quot;/tools/rootfs/test&quot;</fon=
t>
<br>
<br><font face=3D"sans-serif">console=3D&quot;console=3Dttymxc0,115200&quot=
;</font>
<br>
<br><font face=3D"sans-serif">bootargs=3D${console}</font>
<br>
<br><font face=3D"sans-serif">nand_parts=3D&quot;256k(barebox)ro,768k(bareb=
oxenv),4M(kernel),-(root)&quot;</font>
<br><font face=3D"sans-serif">kdev=3D&quot;/dev/<a href=3D"http://nand0.ker=
nel.bb" target=3D"_blank">nand0.kernel.bb</a>&quot;</font>
<br><font face=3D"sans-serif">rootfs_mtdblock_nand=3D3</font>
<br>
<br>
<br>
<br><font face=3D"sans-serif">But i see no NAND in devinfo</font>
<br>
<br><font face=3D"sans-serif">- - Christian</font>
<br>
<br>
<br>
<br><font color=3D"#5f5f5f" face=3D"sans-serif" size=3D"1">Von: =C2=A0 =C2=
=A0 =C2=A0
=C2=A0</font><font face=3D"sans-serif" size=3D"1">Eric B=C3=A9nard &lt;<a h=
ref=3D"mailto:eric@eukrea.com" target=3D"_blank">eric@eukrea.com</a>&gt;</f=
ont>
<br><font color=3D"#5f5f5f" face=3D"sans-serif" size=3D"1">An: =C2=A0 =C2=
=A0 =C2=A0
=C2=A0</font><font face=3D"sans-serif" size=3D"1"><a href=3D"mailto:barebox=
@lists.infradead.org" target=3D"_blank">barebox@lists.infradead.org</a></fo=
nt>
<br><font color=3D"#5f5f5f" face=3D"sans-serif" size=3D"1">Datum: =C2=A0 =
=C2=A0 =C2=A0
=C2=A0</font><font face=3D"sans-serif" size=3D"1">29.03.2012 14:04</font>
<br><div class=3D"im"><font color=3D"#5f5f5f" face=3D"sans-serif" size=3D"1=
">Betreff: =C2=A0 =C2=A0
=C2=A0 =C2=A0</font><font face=3D"sans-serif" size=3D"1">Re: Create NAND
Partition through barebox</font>
<br></div><font color=3D"#5f5f5f" face=3D"sans-serif" size=3D"1">Gesendet v=
on: =C2=A0 =C2=A0
=C2=A0 =C2=A0</font><font face=3D"sans-serif" size=3D"1"><a href=3D"mailto:=
barebox-bounces@lists.infradead.org" target=3D"_blank">barebox-bounces@list=
s.infradead.org</a></font>
<br>
<hr noshade><div class=3D"HOEnZb"><div class=3D"h5">
<br>
<br>
<br><tt><font>Hi,<br>
<br>
Le Thu, 29 Mar 2012 13:55:43 +0200,<br>
<a href=3D"mailto:christian.buettner@rafi.de" target=3D"_blank">christian.b=
uettner@rafi.de</a> a =C3=A9crit :<br>
&gt; i need to create a NAND Partition through the barebox prompt to be
able to <br>
&gt; flash a kernel image on it.<br>
&gt; <br>
&gt;.../...<br>
&gt; <br>
&gt; I tried using<br>
&gt; $ nand -a /dev/nand0.*<br>
&gt; <br>
&gt; Nothing happens..<br>
&gt; What is wrong?<br>
&gt; <br>
do you have the partition definition in your /env/config file ?<br>
<br>
Eric<br>
<br>
_______________________________________________<br>
barebox mailing list<br>
<a href=3D"mailto:barebox@lists.infradead.org" target=3D"_blank">barebox@li=
sts.infradead.org</a><br>
</font></tt><a href=3D"http://lists.infradead.org/mailman/listinfo/barebox"=
 target=3D"_blank"><tt><font>http://lists.infradead.org/mailman/listinfo/ba=
rebox</font></tt></a><tt><font><br>
</font></tt>
<br></div></div><br>_______________________________________________<br>
barebox mailing list<br>
<a href=3D"mailto:barebox@lists.infradead.org">barebox@lists.infradead.org<=
/a><br>
<a href=3D"http://lists.infradead.org/mailman/listinfo/barebox" target=3D"_=
blank">http://lists.infradead.org/mailman/listinfo/barebox</a><br>
<br></blockquote></div><br>

--f46d04308a28969de104bc610899--


--===============7727996521227446270==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7727996521227446270==--
