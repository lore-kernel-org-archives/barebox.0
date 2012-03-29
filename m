Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx2.rafi.de ([178.15.151.13])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SDEwY-0006gU-IZ
 for barebox@lists.infradead.org; Thu, 29 Mar 2012 12:59:12 +0000
In-Reply-To: <CAB_54W4aZA1W0yGMtboW-F0CLmfx4et2XNEjExdFdZUE_g4a+g@mail.gmail.com>
References: <OF440839EF.2383F590-ONC12579D0.00410F43-C12579D0.004184D1@o0802.rafi.inhouse>
 <20120329140303.71c94361@eb-e6520>	<OF21220E76.68770C91-ONC12579D0.004452DB-C12579D0.0044D7C4@o0802.rafi.inhouse>
 <CAB_54W4aZA1W0yGMtboW-F0CLmfx4et2XNEjExdFdZUE_g4a+g@mail.gmail.com>
MIME-Version: 1.0
Message-ID: <OFADF64A2E.4C13BEDA-ONC12579D0.0047261C-C12579D0.004752BF@o0802.rafi.inhouse>
From: christian.buettner@rafi.de
Date: Thu, 29 Mar 2012 14:59:07 +0200
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0298045919839141865=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Antwort: Re: Re: Create NAND Partition through barebox
To: Alexander Aring <alex.aring@googlemail.com>
Cc: barebox@lists.infradead.org

Dies ist eine mehrteilige Nachricht im MIME-Format.
--===============0298045919839141865==
Content-Type: multipart/alternative; boundary="=_alternative 004752BFC12579D0_="

Dies ist eine mehrteilige Nachricht im MIME-Format.
--=_alternative 004752BFC12579D0_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

devinfo=20
devices:
`---- imx=5Fserial0
     `---- cs0
`---- mem0
     `---- 0x00000000-0x1fffffff: /dev/ram0
`---- mem1
     `---- 0x00000000-0x1fffffff: /dev/ram1
`---- imx=5Fiim0
     `---- 0x00000000-0x0000001f: /dev/imx=5Fiim=5Fbank0
     `---- 0x00000000-0x0000001f: /dev/imx=5Fiim=5Fbank1
     `---- 0x00000000-0x0000001f: /dev/imx=5Fiim=5Fbank2
     `---- 0x00000000-0x0000001f: /dev/imx=5Fiim=5Fbank3
     `---- 0x00000000-0x0000001f: /dev/imx=5Fiim=5Fbank4
     `---- 0x00000000-0x0000001f: /dev/imx=5Fiim=5Fbank5
     `---- 0x00000000-0x0000001f: /dev/imx=5Fiim=5Fbank6
     `---- 0x00000000-0x0000001f: /dev/imx=5Fiim=5Fbank7
`---- ramfs0
`---- devfs0
`---- mem2
     `---- 0x00000000-0x00001d47: /dev/defaultenv
`---- mem3
     `---- 0x00000000-0xfffffffe: /dev/mem
`---- cs1
`---- fec=5Fimx0
     `---- miidev0
          `---- 0x00000000-0x0000003f: /dev/phy0
     `---- eth0

drivers:
imx=5Fserial
     ramfs
     devfs
   imx=5Fiim
   fec=5Fimx
    miidev
       mem
barebox:/ adp
Unknown command 'adp' - try 'help'
barebox:/ addpart=20
Usage: addpart <device> <part=5Fdesc>
Add a partition description to a device.
<device>        device being worked on
<part=5Fdesc>     size1[@offset1](name1)[ro],size2[@offset2](name2)[ro],...

barebox:/ addpart /dev/nand0=20
256k(barebox)ro,768k(bareboxenv),4M(kernel),-(root)
addpart: No such file or directory
barebox:/=20

I have an addpart tool as you can see but i cannot create a partition. In=20
the /dev folder is also no /dev/nand0

- - Christian



Von:    Alexander Aring <alex.aring@googlemail.com>
An:     christian.buettner@rafi.de
Kopie:  Eric B=E9nard <eric@eukrea.com>, barebox@lists.infradead.org
Datum:  29.03.2012 14:40
Betreff:        Re: Re: Create NAND Partition through barebox




Hi,

is there a /dev/nand0 device?

/env/bin/init call "addpart /dev/nand0 $nand=5Fparts" and create these=20
partitions.
Or maybe the command is not available?

Alex

Am 29. M=E4rz 2012 14:32 schrieb <christian.buettner@rafi.de>:
This is my current config:=20

#!/bin/sh=20

machine=3Dtest=20

kernel=5Floc=3Dnand=20
rootfs=5Floc=3Dnand=20

rootfs=5Ftype=3Dubifs=20

kernel=3DzImage=20
rootfs=3Drootfs=20
envimage=3Denviron.bin=20

autoboot=5Ftimeout=3D3=20

nfsroot=3D"/tools/rootfs/test"=20

console=3D"console=3Dttymxc0,115200"=20

bootargs=3D${console}=20

nand=5Fparts=3D"256k(barebox)ro,768k(bareboxenv),4M(kernel),-(root)"=20
kdev=3D"/dev/nand0.kernel.bb"=20
rootfs=5Fmtdblock=5Fnand=3D3=20



But i see no NAND in devinfo=20

- - Christian=20



Von:        Eric B=E9nard <eric@eukrea.com>=20
An:        barebox@lists.infradead.org=20
Datum:        29.03.2012 14:04=20
Betreff:        Re: Create NAND Partition through barebox=20
Gesendet von:        barebox-bounces@lists.infradead.org=20




Hi,

Le Thu, 29 Mar 2012 13:55:43 +0200,
christian.buettner@rafi.de a =E9crit :
> i need to create a NAND Partition through the barebox prompt to be able=20
to=20
> flash a kernel image on it.
>=20
>.../...
>=20
> I tried using
> $ nand -a /dev/nand0.*
>=20
> Nothing happens..
> What is wrong?
>=20
do you have the partition definition in your /env/config file ?

Eric

=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox



--=_alternative 004752BFC12579D0_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">devinfo </font>
<br><font size=3D2 face=3D"sans-serif">devices:</font>
<br><font size=3D2 face=3D"sans-serif">`---- imx=5Fserial0</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp;`---- cs0</font>
<br><font size=3D2 face=3D"sans-serif">`---- mem0</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp;`---- 0x00000000=
-0x1fffffff:
/dev/ram0</font>
<br><font size=3D2 face=3D"sans-serif">`---- mem1</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp;`---- 0x00000000=
-0x1fffffff:
/dev/ram1</font>
<br><font size=3D2 face=3D"sans-serif">`---- imx=5Fiim0</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp;`---- 0x00000000=
-0x0000001f:
/dev/imx=5Fiim=5Fbank0</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp;`---- 0x00000000=
-0x0000001f:
/dev/imx=5Fiim=5Fbank1</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp;`---- 0x00000000=
-0x0000001f:
/dev/imx=5Fiim=5Fbank2</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp;`---- 0x00000000=
-0x0000001f:
/dev/imx=5Fiim=5Fbank3</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp;`---- 0x00000000=
-0x0000001f:
/dev/imx=5Fiim=5Fbank4</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp;`---- 0x00000000=
-0x0000001f:
/dev/imx=5Fiim=5Fbank5</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp;`---- 0x00000000=
-0x0000001f:
/dev/imx=5Fiim=5Fbank6</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp;`---- 0x00000000=
-0x0000001f:
/dev/imx=5Fiim=5Fbank7</font>
<br><font size=3D2 face=3D"sans-serif">`---- ramfs0</font>
<br><font size=3D2 face=3D"sans-serif">`---- devfs0</font>
<br><font size=3D2 face=3D"sans-serif">`---- mem2</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp;`---- 0x00000000=
-0x00001d47:
/dev/defaultenv</font>
<br><font size=3D2 face=3D"sans-serif">`---- mem3</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp;`---- 0x00000000=
-0xfffffffe:
/dev/mem</font>
<br><font size=3D2 face=3D"sans-serif">`---- cs1</font>
<br><font size=3D2 face=3D"sans-serif">`---- fec=5Fimx0</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp;`---- miidev0</f=
ont>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; `=
----
0x00000000-0x0000003f: /dev/phy0</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp;`---- eth0</font>
<br>
<br><font size=3D2 face=3D"sans-serif">drivers:</font>
<br><font size=3D2 face=3D"sans-serif">imx=5Fserial</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp;ramfs</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp;devfs</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp;imx=5Fiim</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp;fec=5Fimx</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; miidev</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp;mem</font>
<br><font size=3D2 face=3D"sans-serif">barebox:/ adp</font>
<br><font size=3D2 face=3D"sans-serif">Unknown command 'adp' - try 'help'</=
font>
<br><font size=3D2 face=3D"sans-serif">barebox:/ addpart </font>
<br><font size=3D2 face=3D"sans-serif">Usage: addpart &lt;device&gt; &lt;pa=
rt=5Fdesc&gt;</font>
<br><font size=3D2 face=3D"sans-serif">Add a partition description to a dev=
ice.</font>
<br><font size=3D2 face=3D"sans-serif">&lt;device&gt; &nbsp; &nbsp; &nbsp;
&nbsp;device being worked on</font>
<br><font size=3D2 face=3D"sans-serif">&lt;part=5Fdesc&gt; &nbsp; &nbsp; si=
ze1[@offset1](name1)[ro],size2[@offset2](name2)[ro],...</font>
<br>
<br><font size=3D2 face=3D"sans-serif">barebox:/ addpart /dev/nand0 256k(ba=
rebox)ro,768k(bareboxenv),4M(kernel),-(root)</font>
<br><font size=3D2 face=3D"sans-serif">addpart: No such file or directory</=
font>
<br><font size=3D2 face=3D"sans-serif">barebox:/ </font>
<br>
<br><font size=3D2 face=3D"sans-serif">I have an addpart tool as you can see
but i cannot create a partition. In the /dev folder is also no /dev/nand0</=
font>
<br>
<br><font size=3D2 face=3D"sans-serif">- - Christian</font>
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
&nbsp;</font><font size=3D1 face=3D"sans-serif">Eric B=E9nard &lt;eric@eukr=
ea.com&gt;,
barebox@lists.infradead.org</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Datum: &nbsp; &nbsp;=
 &nbsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">29.03.2012 14:40</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Betreff: &nbsp; &nbs=
p;
&nbsp; &nbsp;</font><font size=3D1 face=3D"sans-serif">Re: Re: Create
NAND Partition through barebox</font>
<br>
<hr noshade>
<br>
<br>
<br><font size=3D3><br>
Hi,<br>
<br>
is there a /dev/nand0 device?<br>
<br>
/env/bin/init call &quot;addpart /dev/nand0 $nand=5Fparts&quot; and create
these partitions.<br>
Or maybe the command is not available?<br>
<br>
Alex<br>
</font>
<br><font size=3D3>Am 29. M=E4rz 2012 14:32 schrieb &lt;</font><a href=3Dma=
ilto:christian.buettner@rafi.de><font size=3D3 color=3Dblue><u>christian.bu=
ettner@rafi.de</u></font></a><font size=3D3>&gt;:</font>
<br><font size=3D3 face=3D"sans-serif">This is my current config:</font><fo=
nt size=3D3>
<br>
</font><font size=3D3 face=3D"sans-serif"><br>
#!/bin/sh</font><font size=3D3> <br>
</font><font size=3D3 face=3D"sans-serif"><br>
machine=3Dtest</font><font size=3D3> <br>
</font><font size=3D3 face=3D"sans-serif"><br>
kernel=5Floc=3Dnand</font><font size=3D3> </font><font size=3D3 face=3D"san=
s-serif"><br>
rootfs=5Floc=3Dnand</font><font size=3D3> <br>
</font><font size=3D3 face=3D"sans-serif"><br>
rootfs=5Ftype=3Dubifs</font><font size=3D3> <br>
</font><font size=3D3 face=3D"sans-serif"><br>
kernel=3DzImage</font><font size=3D3> </font><font size=3D3 face=3D"sans-se=
rif"><br>
rootfs=3Drootfs</font><font size=3D3> </font><font size=3D3 face=3D"sans-se=
rif"><br>
envimage=3Denviron.bin</font><font size=3D3> <br>
</font><font size=3D3 face=3D"sans-serif"><br>
autoboot=5Ftimeout=3D3</font><font size=3D3> <br>
</font><font size=3D3 face=3D"sans-serif"><br>
nfsroot=3D&quot;/tools/rootfs/test&quot;</font><font size=3D3> <br>
</font><font size=3D3 face=3D"sans-serif"><br>
console=3D&quot;console=3Dttymxc0,115200&quot;</font><font size=3D3> <br>
</font><font size=3D3 face=3D"sans-serif"><br>
bootargs=3D${console}</font><font size=3D3> <br>
</font><font size=3D3 face=3D"sans-serif"><br>
nand=5Fparts=3D&quot;256k(barebox)ro,768k(bareboxenv),4M(kernel),-(root)&qu=
ot;</font><font size=3D3>
</font><font size=3D3 face=3D"sans-serif"><br>
kdev=3D&quot;/dev/</font><a href=3Dhttp://nand0.kernel.bb/ target=3D=5Fblan=
k><font size=3D3 color=3Dblue face=3D"sans-serif"><u>nand0.kernel.bb</u></f=
ont></a><font size=3D3 face=3D"sans-serif">&quot;</font><font size=3D3>
</font><font size=3D3 face=3D"sans-serif"><br>
rootfs=5Fmtdblock=5Fnand=3D3</font><font size=3D3> <br>
<br>
<br>
</font><font size=3D3 face=3D"sans-serif"><br>
But i see no NAND in devinfo</font><font size=3D3> <br>
</font><font size=3D3 face=3D"sans-serif"><br>
- - Christian</font><font size=3D3> <br>
<br>
<br>
</font><font size=3D1 color=3D#5f5f5f face=3D"sans-serif"><br>
Von: &nbsp; &nbsp; &nbsp; &nbsp;</font><font size=3D1 face=3D"sans-serif">E=
ric
B=E9nard &lt;</font><a href=3Dmailto:eric@eukrea.com target=3D=5Fblank><fon=
t size=3D1 color=3Dblue face=3D"sans-serif"><u>eric@eukrea.com</u></font></=
a><font size=3D1 face=3D"sans-serif">&gt;</font><font size=3D3>
</font><font size=3D1 color=3D#5f5f5f face=3D"sans-serif"><br>
An: &nbsp; &nbsp; &nbsp; &nbsp;</font><a href=3Dmailto:barebox@lists.infrad=
ead.org target=3D=5Fblank><font size=3D1 color=3Dblue face=3D"sans-serif"><=
u>barebox@lists.infradead.org</u></font></a><font size=3D3>
</font><font size=3D1 color=3D#5f5f5f face=3D"sans-serif"><br>
Datum: &nbsp; &nbsp; &nbsp; &nbsp;</font><font size=3D1 face=3D"sans-serif"=
>29.03.2012
14:04</font><font size=3D3> </font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Betreff: &nbsp; &nbs=
p;
&nbsp; &nbsp;</font><font size=3D1 face=3D"sans-serif">Re: Create NAND Part=
ition
through barebox</font><font size=3D3> </font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Gesendet von: &nbsp;=
 &nbsp;
&nbsp; &nbsp;</font><a href=3D"mailto:barebox-bounces@lists.infradead.org" =
target=3D=5Fblank><font size=3D1 color=3Dblue face=3D"sans-serif"><u>barebo=
x-bounces@lists.infradead.org</u></font></a><font size=3D3>
<br>
</font>
<hr noshade>
<br><font size=3D3><br>
<br>
</font><tt><font size=3D3><br>
Hi,<br>
<br>
Le Thu, 29 Mar 2012 13:55:43 +0200,</font></tt><tt><font size=3D3 color=3Db=
lue><u><br>
</u></font></tt><a href=3Dmailto:christian.buettner@rafi.de target=3D=5Fbla=
nk><tt><font size=3D3 color=3Dblue><u>christian.buettner@rafi.de</u></font>=
</tt></a><tt><font size=3D3>
a =E9crit :<br>
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
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F<br>
barebox mailing list</font></tt><tt><font size=3D3 color=3Dblue><u><br>
</u></font></tt><a href=3Dmailto:barebox@lists.infradead.org target=3D=5Fbl=
ank><tt><font size=3D3 color=3Dblue><u>barebox@lists.infradead.org</u></fon=
t></tt></a><font size=3D3 color=3Dblue><u><br>
</u></font><a href=3Dhttp://lists.infradead.org/mailman/listinfo/barebox ta=
rget=3D=5Fblank><tt><font size=3D3 color=3Dblue><u>http://lists.infradead.o=
rg/mailman/listinfo/barebox</u></font></tt></a><font size=3D3><br>
</font>
<br><font size=3D3><br>
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F<br>
barebox mailing list</font><font size=3D3 color=3Dblue><u><br>
</u></font><a href=3Dmailto:barebox@lists.infradead.org><font size=3D3 colo=
r=3Dblue><u>barebox@lists.infradead.org</u></font></a><font size=3D3 color=
=3Dblue><u><br>
</u></font><a href=3Dhttp://lists.infradead.org/mailman/listinfo/barebox ta=
rget=3D=5Fblank><font size=3D3 color=3Dblue><u>http://lists.infradead.org/m=
ailman/listinfo/barebox</u></font></a><font size=3D3><br>
</font>
<br>
<br>
--=_alternative 004752BFC12579D0_=--


--===============0298045919839141865==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0298045919839141865==--
