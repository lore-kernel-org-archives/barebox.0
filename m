Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx2.rafi.de ([178.15.151.13])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SDEFt-0005aW-Iy
 for barebox@lists.infradead.org; Thu, 29 Mar 2012 12:15:07 +0000
In-Reply-To: <CAB_54W6ta+Gx+=j+NuspKkixkx5oQyg=OtwuHZx9bcDKg8d97A@mail.gmail.com>
References: <OF440839EF.2383F590-ONC12579D0.00410F43-C12579D0.004184D1@o0802.rafi.inhouse>
 <CAB_54W6ta+Gx+=j+NuspKkixkx5oQyg=OtwuHZx9bcDKg8d97A@mail.gmail.com>
MIME-Version: 1.0
Message-ID: <OFDFE41485.B2465294-ONC12579D0.004303E6-C12579D0.00434A06@o0802.rafi.inhouse>
From: christian.buettner@rafi.de
Date: Thu, 29 Mar 2012 14:15:03 +0200
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5883862942631263281=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Antwort: Re: Create NAND Partition through barebox
To: Alexander Aring <alex.aring@googlemail.com>
Cc: barebox@lists.infradead.org

Dies ist eine mehrteilige Nachricht im MIME-Format.
--===============5883862942631263281==
Content-Type: multipart/alternative; boundary="=_alternative 00434A06C12579D0_="

Dies ist eine mehrteilige Nachricht im MIME-Format.
--=_alternative 00434A06C12579D0_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

I see!
I have an entry in the env/config:
nand=5Fparts=3D"256k(barebox)ro,768k(bareboxenv),4M(kernel),128M(root)"

The Problem might be, that the NAND Flash size is only 128M.
I took the script from another platform..

 - - Christian



Von:    Alexander Aring <alex.aring@googlemail.com>
An:     christian.buettner@rafi.de
Kopie:  barebox@lists.infradead.org
Datum:  29.03.2012 14:08
Betreff:        Re: Create NAND Partition through barebox



Hi,

you can create NAND Partitons with nand=5Fparts variable in /env/config.

For example=20
nand=5Fparts=3D"256k(barebox)ro,128k(bareboxenv),3M(kernel),-(root)"

nand -a nand0.* only creates a bb device that will handle badblocks if=20
they appear.

Cheers
Alex

Am 29. M=E4rz 2012 13:55 schrieb <christian.buettner@rafi.de>:
Hi,=20

i need to create a NAND Partition through the barebox prompt to be able to =

flash a kernel image on it.=20

This is the current devinfo of my target:=20

barebox:/ devinfo=20
devices:=20
`---- imx=5Fserial0=20
     `---- cs0=20
`---- mem0=20
     `---- 0x00000000-0x1fffffff: /dev/ram0=20
`---- mem1=20
     `---- 0x00000000-0x1fffffff: /dev/ram1=20
`---- imx=5Fiim0=20
     `---- 0x00000000-0x0000001f: /dev/imx=5Fiim=5Fbank0=20
     `---- 0x00000000-0x0000001f: /dev/imx=5Fiim=5Fbank1=20
     `---- 0x00000000-0x0000001f: /dev/imx=5Fiim=5Fbank2=20
     `---- 0x00000000-0x0000001f: /dev/imx=5Fiim=5Fbank3=20
     `---- 0x00000000-0x0000001f: /dev/imx=5Fiim=5Fbank4=20
     `---- 0x00000000-0x0000001f: /dev/imx=5Fiim=5Fbank5=20
     `---- 0x00000000-0x0000001f: /dev/imx=5Fiim=5Fbank6=20
     `---- 0x00000000-0x0000001f: /dev/imx=5Fiim=5Fbank7=20
`---- ramfs0=20
`---- devfs0=20
`---- mem2=20
     `---- 0x00000000-0x000018ab: /dev/defaultenv=20
`---- mem3=20
     `---- 0x00000000-0xfffffffe: /dev/mem=20
`---- cs1=20
`---- fec=5Fimx0=20
     `---- miidev0=20
          `---- 0x00000000-0x0000003f: /dev/phy0=20
     `---- eth0=20

drivers:=20
imx=5Fserial=20
     ramfs=20
     devfs=20
   imx=5Fiim=20
   fec=5Fimx=20
    miidev=20
       mem=20


I tried using=20
$ nand -a /dev/nand0.*=20

Nothing happens..=20
What is wrong?=20

- - Christian
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox



--=_alternative 00434A06C12579D0_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">I see!</font>
<br><font size=3D2 face=3D"sans-serif">I have an entry in the env/config:</=
font>
<br><font size=3D2 face=3D"sans-serif">nand=5Fparts=3D&quot;256k(barebox)ro=
,768k(bareboxenv),4M(kernel),128M(root)&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">The Problem might be, that the NAND
Flash size is only 128M.</font>
<br><font size=3D2 face=3D"sans-serif">I took the script from another platf=
orm..</font>
<br>
<br><font size=3D2 face=3D"sans-serif">&nbsp;- - Christian</font>
<br>
<br>
<br>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Von: &nbsp; &nbsp; &=
nbsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">Alexander Aring &lt;alex.ar=
ing@googlemail.com&gt;</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">An: &nbsp; &nbsp; &n=
bsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">christian.buettner@rafi.de<=
/font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Kopie: &nbsp; &nbsp;=
 &nbsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">barebox@lists.infradead.org=
</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Datum: &nbsp; &nbsp;=
 &nbsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">29.03.2012 14:08</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Betreff: &nbsp; &nbs=
p;
&nbsp; &nbsp;</font><font size=3D1 face=3D"sans-serif">Re: Create NAND
Partition through barebox</font>
<br>
<hr noshade>
<br>
<br>
<br><font size=3D3>Hi,<br>
<br>
you can create NAND Partitons with nand=5Fparts variable in /env/config.<br>
<br>
For example nand=5Fparts=3D&quot;256k(barebox)ro,128k(bareboxenv),3M(kernel=
),-(root)&quot;<br>
<br>
nand -a nand0.* only creates a bb device that will handle badblocks if
they appear.<br>
<br>
Cheers<br>
Alex<br>
</font>
<br><font size=3D3>Am 29. M=E4rz 2012 13:55 schrieb &lt;</font><a href=3Dma=
ilto:christian.buettner@rafi.de target=3D=5Fblank><font size=3D3 color=3Dbl=
ue><u>christian.buettner@rafi.de</u></font></a><font size=3D3>&gt;:</font>
<br><font size=3D3 face=3D"sans-serif">Hi,</font><font size=3D3> <br>
</font><font size=3D3 face=3D"sans-serif"><br>
i need to create a NAND Partition through the barebox prompt to be able
to flash a kernel image on it.</font><font size=3D3> <br>
</font><font size=3D3 face=3D"sans-serif"><br>
This is the current devinfo of my target:</font><font size=3D3> <br>
</font><font size=3D3 face=3D"sans-serif"><br>
barebox:/ devinfo <br>
devices:</font><font size=3D3> </font><font size=3D3 face=3D"sans-serif"><b=
r>
`---- imx=5Fserial0</font><font size=3D3> </font><font size=3D3 face=3D"san=
s-serif"><br>
&nbsp; &nbsp; &nbsp;`---- cs0</font><font size=3D3> </font><font size=3D3 f=
ace=3D"sans-serif"><br>
`---- mem0</font><font size=3D3> </font><font size=3D3 face=3D"sans-serif">=
<br>
&nbsp; &nbsp; &nbsp;`---- 0x00000000-0x1fffffff: /dev/ram0</font><font size=
=3D3>
</font><font size=3D3 face=3D"sans-serif"><br>
`---- mem1</font><font size=3D3> </font><font size=3D3 face=3D"sans-serif">=
<br>
&nbsp; &nbsp; &nbsp;`---- 0x00000000-0x1fffffff: /dev/ram1</font><font size=
=3D3>
</font><font size=3D3 face=3D"sans-serif"><br>
`---- imx=5Fiim0</font><font size=3D3> </font><font size=3D3 face=3D"sans-s=
erif"><br>
&nbsp; &nbsp; &nbsp;`---- 0x00000000-0x0000001f: /dev/imx=5Fiim=5Fbank0</fo=
nt><font size=3D3>
</font><font size=3D3 face=3D"sans-serif"><br>
&nbsp; &nbsp; &nbsp;`---- 0x00000000-0x0000001f: /dev/imx=5Fiim=5Fbank1</fo=
nt><font size=3D3>
</font><font size=3D3 face=3D"sans-serif"><br>
&nbsp; &nbsp; &nbsp;`---- 0x00000000-0x0000001f: /dev/imx=5Fiim=5Fbank2</fo=
nt><font size=3D3>
</font><font size=3D3 face=3D"sans-serif"><br>
&nbsp; &nbsp; &nbsp;`---- 0x00000000-0x0000001f: /dev/imx=5Fiim=5Fbank3</fo=
nt><font size=3D3>
</font><font size=3D3 face=3D"sans-serif"><br>
&nbsp; &nbsp; &nbsp;`---- 0x00000000-0x0000001f: /dev/imx=5Fiim=5Fbank4</fo=
nt><font size=3D3>
</font><font size=3D3 face=3D"sans-serif"><br>
&nbsp; &nbsp; &nbsp;`---- 0x00000000-0x0000001f: /dev/imx=5Fiim=5Fbank5</fo=
nt><font size=3D3>
</font><font size=3D3 face=3D"sans-serif"><br>
&nbsp; &nbsp; &nbsp;`---- 0x00000000-0x0000001f: /dev/imx=5Fiim=5Fbank6</fo=
nt><font size=3D3>
</font><font size=3D3 face=3D"sans-serif"><br>
&nbsp; &nbsp; &nbsp;`---- 0x00000000-0x0000001f: /dev/imx=5Fiim=5Fbank7</fo=
nt><font size=3D3>
</font><font size=3D3 face=3D"sans-serif"><br>
`---- ramfs0</font><font size=3D3> </font><font size=3D3 face=3D"sans-serif=
"><br>
`---- devfs0</font><font size=3D3> </font><font size=3D3 face=3D"sans-serif=
"><br>
`---- mem2</font><font size=3D3> </font><font size=3D3 face=3D"sans-serif">=
<br>
&nbsp; &nbsp; &nbsp;`---- 0x00000000-0x000018ab: /dev/defaultenv</font><fon=
t size=3D3>
</font><font size=3D3 face=3D"sans-serif"><br>
`---- mem3</font><font size=3D3> </font><font size=3D3 face=3D"sans-serif">=
<br>
&nbsp; &nbsp; &nbsp;`---- 0x00000000-0xfffffffe: /dev/mem</font><font size=
=3D3>
</font><font size=3D3 face=3D"sans-serif"><br>
`---- cs1</font><font size=3D3> </font><font size=3D3 face=3D"sans-serif"><=
br>
`---- fec=5Fimx0</font><font size=3D3> </font><font size=3D3 face=3D"sans-s=
erif"><br>
&nbsp; &nbsp; &nbsp;`---- miidev0</font><font size=3D3> </font><font size=
=3D3 face=3D"sans-serif"><br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; `---- 0x00000000-0x0000003f: /dev/phy0</=
font><font size=3D3>
</font><font size=3D3 face=3D"sans-serif"><br>
&nbsp; &nbsp; &nbsp;`---- eth0</font><font size=3D3> <br>
</font><font size=3D3 face=3D"sans-serif"><br>
drivers:</font><font size=3D3> </font><font size=3D3 face=3D"sans-serif"><b=
r>
imx=5Fserial</font><font size=3D3> </font><font size=3D3 face=3D"sans-serif=
"><br>
&nbsp; &nbsp; &nbsp;ramfs</font><font size=3D3> </font><font size=3D3 face=
=3D"sans-serif"><br>
&nbsp; &nbsp; &nbsp;devfs</font><font size=3D3> </font><font size=3D3 face=
=3D"sans-serif"><br>
&nbsp; &nbsp;imx=5Fiim</font><font size=3D3> </font><font size=3D3 face=3D"=
sans-serif"><br>
&nbsp; &nbsp;fec=5Fimx</font><font size=3D3> </font><font size=3D3 face=3D"=
sans-serif"><br>
&nbsp; &nbsp; miidev</font><font size=3D3> </font><font size=3D3 face=3D"sa=
ns-serif"><br>
&nbsp; &nbsp; &nbsp; &nbsp;mem</font><font size=3D3> <br>
<br>
</font><font size=3D3 face=3D"sans-serif"><br>
I tried using</font><font size=3D3> </font><font size=3D3 face=3D"sans-seri=
f"><br>
$ nand -a /dev/nand0.*</font><font size=3D3> <br>
</font><font size=3D3 face=3D"sans-serif"><br>
Nothing happens..</font><font size=3D3> </font><font size=3D3 face=3D"sans-=
serif"><br>
What is wrong?</font><font size=3D3> <br>
</font><font size=3D3 face=3D"sans-serif"><br>
- - Christian</font><font size=3D3><br>
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F<br>
barebox mailing list</font><font size=3D3 color=3Dblue><u><br>
</u></font><a href=3Dmailto:barebox@lists.infradead.org target=3D=5Fblank><=
font size=3D3 color=3Dblue><u>barebox@lists.infradead.org</u></font></a><fo=
nt size=3D3 color=3Dblue><u><br>
</u></font><a href=3Dhttp://lists.infradead.org/mailman/listinfo/barebox ta=
rget=3D=5Fblank><font size=3D3 color=3Dblue><u>http://lists.infradead.org/m=
ailman/listinfo/barebox</u></font></a><font size=3D3><br>
</font>
<br>
<br>
--=_alternative 00434A06C12579D0_=--


--===============5883862942631263281==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============5883862942631263281==--
