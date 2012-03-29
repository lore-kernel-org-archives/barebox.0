Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lpp01m010-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SDE9c-0005BF-Nr
 for barebox@lists.infradead.org; Thu, 29 Mar 2012 12:08:37 +0000
Received: by lagy4 with SMTP id y4so2950326lag.36
 for <barebox@lists.infradead.org>; Thu, 29 Mar 2012 05:08:31 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <OF440839EF.2383F590-ONC12579D0.00410F43-C12579D0.004184D1@o0802.rafi.inhouse>
References: <OF440839EF.2383F590-ONC12579D0.00410F43-C12579D0.004184D1@o0802.rafi.inhouse>
Date: Thu, 29 Mar 2012 14:08:31 +0200
Message-ID: <CAB_54W6ta+Gx+=j+NuspKkixkx5oQyg=OtwuHZx9bcDKg8d97A@mail.gmail.com>
From: Alexander Aring <alex.aring@googlemail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5705816129590553913=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Create NAND Partition through barebox
To: christian.buettner@rafi.de
Cc: barebox@lists.infradead.org

--===============5705816129590553913==
Content-Type: multipart/alternative; boundary=f46d04308a28181b4804bc609529

--f46d04308a28181b4804bc609529
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

you can create NAND Partitons with nand_parts variable in /env/config.

For example nand_parts=3D"256k(barebox)ro,128k(bareboxenv),3M(kernel),-(roo=
t)"

nand -a nand0.* only creates a bb device that will handle badblocks if they
appear.

Cheers
Alex

Am 29. M=C3=A4rz 2012 13:55 schrieb <christian.buettner@rafi.de>:

> Hi,
>
> i need to create a NAND Partition through the barebox prompt to be able t=
o
> flash a kernel image on it.
>
> This is the current devinfo of my target:
>
> barebox:/ devinfo
> devices:
> `---- imx_serial0
>      `---- cs0
> `---- mem0
>      `---- 0x00000000-0x1fffffff: /dev/ram0
> `---- mem1
>      `---- 0x00000000-0x1fffffff: /dev/ram1
> `---- imx_iim0
>      `---- 0x00000000-0x0000001f: /dev/imx_iim_bank0
>      `---- 0x00000000-0x0000001f: /dev/imx_iim_bank1
>      `---- 0x00000000-0x0000001f: /dev/imx_iim_bank2
>      `---- 0x00000000-0x0000001f: /dev/imx_iim_bank3
>      `---- 0x00000000-0x0000001f: /dev/imx_iim_bank4
>      `---- 0x00000000-0x0000001f: /dev/imx_iim_bank5
>      `---- 0x00000000-0x0000001f: /dev/imx_iim_bank6
>      `---- 0x00000000-0x0000001f: /dev/imx_iim_bank7
> `---- ramfs0
> `---- devfs0
> `---- mem2
>      `---- 0x00000000-0x000018ab: /dev/defaultenv
> `---- mem3
>      `---- 0x00000000-0xfffffffe: /dev/mem
> `---- cs1
> `---- fec_imx0
>      `---- miidev0
>           `---- 0x00000000-0x0000003f: /dev/phy0
>      `---- eth0
>
> drivers:
> imx_serial
>      ramfs
>      devfs
>    imx_iim
>    fec_imx
>     miidev
>        mem
>
>
> I tried using
> $ nand -a /dev/nand0.*
>
> Nothing happens..
> What is wrong?
>
> - - Christian
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>
>

--f46d04308a28181b4804bc609529
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,<br><br>you can create NAND Partitons with nand_parts variable in /env/c=
onfig.<br><br>For example nand_parts=3D&quot;256k(barebox)ro,128k(bareboxen=
v),3M(kernel),-(root)&quot;<br><br>nand -a nand0.* only creates a bb device=
 that will handle badblocks if they appear.<br>
<br>Cheers<br>Alex<br><br><div class=3D"gmail_quote">Am 29. M=C3=A4rz 2012 =
13:55 schrieb  <span dir=3D"ltr">&lt;<a href=3D"mailto:christian.buettner@r=
afi.de" target=3D"_blank">christian.buettner@rafi.de</a>&gt;</span>:<br><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex">

<font face=3D"sans-serif">Hi,</font>
<br>
<br><font face=3D"sans-serif">i need to create a NAND Partition through
the barebox prompt to be able to flash a kernel image on it.</font>
<br>
<br><font face=3D"sans-serif">This is the current devinfo of my target:</fo=
nt>
<br>
<br><font face=3D"sans-serif">barebox:/ devinfo </font>
<br><font face=3D"sans-serif">devices:</font>
<br><font face=3D"sans-serif">`---- imx_serial0</font>
<br><font face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0`---- cs0</font>
<br><font face=3D"sans-serif">`---- mem0</font>
<br><font face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0`---- 0x00000000-0x1fffff=
ff:
/dev/ram0</font>
<br><font face=3D"sans-serif">`---- mem1</font>
<br><font face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0`---- 0x00000000-0x1fffff=
ff:
/dev/ram1</font>
<br><font face=3D"sans-serif">`---- imx_iim0</font>
<br><font face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0`---- 0x00000000-0x000000=
1f:
/dev/imx_iim_bank0</font>
<br><font face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0`---- 0x00000000-0x000000=
1f:
/dev/imx_iim_bank1</font>
<br><font face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0`---- 0x00000000-0x000000=
1f:
/dev/imx_iim_bank2</font>
<br><font face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0`---- 0x00000000-0x000000=
1f:
/dev/imx_iim_bank3</font>
<br><font face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0`---- 0x00000000-0x000000=
1f:
/dev/imx_iim_bank4</font>
<br><font face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0`---- 0x00000000-0x000000=
1f:
/dev/imx_iim_bank5</font>
<br><font face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0`---- 0x00000000-0x000000=
1f:
/dev/imx_iim_bank6</font>
<br><font face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0`---- 0x00000000-0x000000=
1f:
/dev/imx_iim_bank7</font>
<br><font face=3D"sans-serif">`---- ramfs0</font>
<br><font face=3D"sans-serif">`---- devfs0</font>
<br><font face=3D"sans-serif">`---- mem2</font>
<br><font face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0`---- 0x00000000-0x000018=
ab:
/dev/defaultenv</font>
<br><font face=3D"sans-serif">`---- mem3</font>
<br><font face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0`---- 0x00000000-0xffffff=
fe:
/dev/mem</font>
<br><font face=3D"sans-serif">`---- cs1</font>
<br><font face=3D"sans-serif">`---- fec_imx0</font>
<br><font face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0`---- miidev0</font>
<br><font face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 `----
0x00000000-0x0000003f: /dev/phy0</font>
<br><font face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0`---- eth0</font>
<br>
<br><font face=3D"sans-serif">drivers:</font>
<br><font face=3D"sans-serif">imx_serial</font>
<br><font face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0ramfs</font>
<br><font face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0devfs</font>
<br><font face=3D"sans-serif">=C2=A0 =C2=A0imx_iim</font>
<br><font face=3D"sans-serif">=C2=A0 =C2=A0fec_imx</font>
<br><font face=3D"sans-serif">=C2=A0 =C2=A0 miidev</font>
<br><font face=3D"sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0mem</font>
<br>
<br>
<br><font face=3D"sans-serif">I tried using</font>
<br><font face=3D"sans-serif">$ nand -a /dev/nand0.*</font>
<br>
<br><font face=3D"sans-serif">Nothing happens..</font>
<br><font face=3D"sans-serif">What is wrong?</font>
<br>
<br><font face=3D"sans-serif">- - Christian</font><br>_____________________=
__________________________<br>
barebox mailing list<br>
<a href=3D"mailto:barebox@lists.infradead.org" target=3D"_blank">barebox@li=
sts.infradead.org</a><br>
<a href=3D"http://lists.infradead.org/mailman/listinfo/barebox" target=3D"_=
blank">http://lists.infradead.org/mailman/listinfo/barebox</a><br>
<br></blockquote></div><br>

--f46d04308a28181b4804bc609529--


--===============5705816129590553913==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============5705816129590553913==--
