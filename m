Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
In-Reply-To: <20120329140303.71c94361@eb-e6520>
References: <OF440839EF.2383F590-ONC12579D0.00410F43-C12579D0.004184D1@o0802.rafi.inhouse>
 <20120329140303.71c94361@eb-e6520>
MIME-Version: 1.0
Message-ID: <OF21220E76.68770C91-ONC12579D0.004452DB-C12579D0.0044D7C4@o0802.rafi.inhouse>
From: christian.buettner@rafi.de
Date: Thu, 29 Mar 2012 14:32:01 +0200
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7142253252108542453=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Antwort: Re: Create NAND Partition through barebox
To: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org, barebox-bounces@lists.infradead.org

Dies ist eine mehrteilige Nachricht im MIME-Format.
--===============7142253252108542453==
Content-Type: multipart/alternative; boundary="=_alternative 0044D7C3C12579D0_="

Dies ist eine mehrteilige Nachricht im MIME-Format.
--=_alternative 0044D7C3C12579D0_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

This is my current config:

#!/bin/sh

machine=3Dtest

kernel=5Floc=3Dnand
rootfs=5Floc=3Dnand

rootfs=5Ftype=3Dubifs

kernel=3DzImage
rootfs=3Drootfs
envimage=3Denviron.bin

autoboot=5Ftimeout=3D3

nfsroot=3D"/tools/rootfs/test"

console=3D"console=3Dttymxc0,115200"

bootargs=3D${console}

nand=5Fparts=3D"256k(barebox)ro,768k(bareboxenv),4M(kernel),-(root)"
kdev=3D"/dev/nand0.kernel.bb"
rootfs=5Fmtdblock=5Fnand=3D3



But i see no NAND in devinfo

- - Christian



Von:    Eric B=E9nard <eric@eukrea.com>
An:     barebox@lists.infradead.org
Datum:  29.03.2012 14:04
Betreff:        Re: Create NAND Partition through barebox
Gesendet von:   barebox-bounces@lists.infradead.org



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


--=_alternative 0044D7C3C12579D0_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">This is my current config:</font>
<br>
<br><font size=3D2 face=3D"sans-serif">#!/bin/sh</font>
<br>
<br><font size=3D2 face=3D"sans-serif">machine=3Dtest</font>
<br>
<br><font size=3D2 face=3D"sans-serif">kernel=5Floc=3Dnand</font>
<br><font size=3D2 face=3D"sans-serif">rootfs=5Floc=3Dnand</font>
<br>
<br><font size=3D2 face=3D"sans-serif">rootfs=5Ftype=3Dubifs</font>
<br>
<br><font size=3D2 face=3D"sans-serif">kernel=3DzImage</font>
<br><font size=3D2 face=3D"sans-serif">rootfs=3Drootfs</font>
<br><font size=3D2 face=3D"sans-serif">envimage=3Denviron.bin</font>
<br>
<br><font size=3D2 face=3D"sans-serif">autoboot=5Ftimeout=3D3</font>
<br>
<br><font size=3D2 face=3D"sans-serif">nfsroot=3D&quot;/tools/rootfs/test&q=
uot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">console=3D&quot;console=3Dttymxc0,11=
5200&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">bootargs=3D${console}</font>
<br>
<br><font size=3D2 face=3D"sans-serif">nand=5Fparts=3D&quot;256k(barebox)ro=
,768k(bareboxenv),4M(kernel),-(root)&quot;</font>
<br><font size=3D2 face=3D"sans-serif">kdev=3D&quot;/dev/nand0.kernel.bb&qu=
ot;</font>
<br><font size=3D2 face=3D"sans-serif">rootfs=5Fmtdblock=5Fnand=3D3</font>
<br>
<br>
<br>
<br><font size=3D2 face=3D"sans-serif">But i see no NAND in devinfo</font>
<br>
<br><font size=3D2 face=3D"sans-serif">- - Christian</font>
<br>
<br>
<br>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Von: &nbsp; &nbsp; &=
nbsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">Eric B=E9nard &lt;eric@eukr=
ea.com&gt;</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">An: &nbsp; &nbsp; &n=
bsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">barebox@lists.infradead.org=
</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Datum: &nbsp; &nbsp;=
 &nbsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">29.03.2012 14:04</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Betreff: &nbsp; &nbs=
p;
&nbsp; &nbsp;</font><font size=3D1 face=3D"sans-serif">Re: Create NAND
Partition through barebox</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Gesendet von: &nbsp;=
 &nbsp;
&nbsp; &nbsp;</font><font size=3D1 face=3D"sans-serif">barebox-bounces@list=
s.infradead.org</font>
<br>
<hr noshade>
<br>
<br>
<br><tt><font size=3D2>Hi,<br>
<br>
Le Thu, 29 Mar 2012 13:55:43 +0200,<br>
christian.buettner@rafi.de a =E9crit :<br>
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
barebox mailing list<br>
barebox@lists.infradead.org<br>
</font></tt><a href=3Dhttp://lists.infradead.org/mailman/listinfo/barebox><=
tt><font size=3D2>http://lists.infradead.org/mailman/listinfo/barebox</font=
></tt></a><tt><font size=3D2><br>
</font></tt>
<br>
--=_alternative 0044D7C3C12579D0_=--


--===============7142253252108542453==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7142253252108542453==--
