Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx2.rafi.de ([80.150.88.70])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SCBBv-0004NS-9f
 for barebox@lists.infradead.org; Mon, 26 Mar 2012 14:46:47 +0000
In-Reply-To: <0769D45835157F4282BC17DF611B07F00D1ED6910B@wolfserver9>
References: <OFC5456862.5E2219B4-ONC12579CD.002FB0FF-C12579CD.00304E9A@o0802.rafi.inhouse>
 <0769D45835157F4282BC17DF611B07F00D1ED6910B@wolfserver9>
MIME-Version: 1.0
Message-ID: <OFE9729FBE.75DA1442-ONC12579CD.00510EF3-C12579CD.00512B14@o0802.rafi.inhouse>
From: guenter.gebhardt@rafi.de
Date: Mon, 26 Mar 2012 16:46:32 +0200
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4294648487568625531=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Antwort: AW: imx53 internal boot from NAND
To: Matthias Fend <Matthias.Fend@wolfvision.net>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Dies ist eine mehrteilige Nachricht im MIME-Format.
--===============4294648487568625531==
Content-Type: multipart/alternative; boundary="=_alternative 00512B14C12579CD_="

Dies ist eine mehrteilige Nachricht im MIME-Format.
--=_alternative 00512B14C12579CD_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I have some problems. May you please send me a binary produced with this=20
tool?
I want to inspect the flash header.

-- Gebhardt



Von:    Matthias Fend <Matthias.Fend@wolfvision.net>
An:     "guenter.gebhardt@rafi.de" <guenter.gebhardt@rafi.de>,=20
"barebox@lists.infradead.org" <barebox@lists.infradead.org>
Datum:  26.03.2012 11:09
Betreff:        AW: imx53 internal boot from NAND



Hi,

For a quick start you can use the provided FCB (fcb.bin).
This FCB was generated with the attached tool (fcbgen.c) - note that the=20
bad block handling is disabled.

Then you can "merge" your barebox image with the FCB with something like:
cat fcb.bin barebox-image > barebox-fcb.bin

This works at least on our custom i.MX53 hardware.

~Matthias

Von: barebox-bounces@lists.infradead.org [
mailto:barebox-bounces@lists.infradead.org] Im Auftrag von=20
guenter.gebhardt@rafi.de
Gesendet: Montag, 26. M=E4rz 2012 10:48
An: barebox@lists.infradead.org
Betreff: imx53 internal boot from NAND

Hello,=20

I tried to use barebox in order to boot from NAND.=20

The ROM loader needs a FCB (Firmware Configuration Block) table at the=20
beginning of the flash (according to chapter 7.5.2.2 of the reference=20
manual).=20
I looked at the existing imx53 boards within the barebox sources but I=20
founx that no one used this mode there.=20

Has someone done this or can give me some advice?=20

-- Gebhardt
[Anhang "fcbgen.c" gel=F6scht von Guenter Gebhardt/Rafi] [Anhang "fcb.bin" =

gel=F6scht von Guenter Gebhardt/Rafi]=20

--=_alternative 00512B14C12579CD_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Hello,</font>
<br>
<br><font size=3D2 face=3D"sans-serif">I have some problems. May you please
send me a binary produced with this tool?</font>
<br><font size=3D2 face=3D"sans-serif">I want to inspect the flash header.<=
/font>
<br>
<br><font size=3D2 face=3D"sans-serif">-- Gebhardt</font>
<br>
<br>
<br>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Von: &nbsp; &nbsp; &=
nbsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">Matthias Fend &lt;Matthias.=
Fend@wolfvision.net&gt;</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">An: &nbsp; &nbsp; &n=
bsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">&quot;guenter.gebhardt@rafi=
.de&quot;
&lt;guenter.gebhardt@rafi.de&gt;, &quot;barebox@lists.infradead.org&quot;
&lt;barebox@lists.infradead.org&gt;</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Datum: &nbsp; &nbsp;=
 &nbsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">26.03.2012 11:09</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Betreff: &nbsp; &nbs=
p;
&nbsp; &nbsp;</font><font size=3D1 face=3D"sans-serif">AW: imx53 internal
boot from NAND</font>
<br>
<hr noshade>
<br>
<br>
<br><tt><font size=3D2>Hi,<br>
<br>
For a quick start you can use the provided FCB (fcb.bin).<br>
This FCB was generated with the attached tool (fcbgen.c) - note that the
bad block handling is disabled.<br>
<br>
Then you can &quot;merge&quot; your barebox image with the FCB with somethi=
ng
like:<br>
cat fcb.bin barebox-image &gt; barebox-fcb.bin<br>
<br>
This works at least on our custom i.MX53 hardware.<br>
<br>
~Matthias<br>
<br>
Von: barebox-bounces@lists.infradead.org [</font></tt><a href=3D"mailto:bar=
ebox-bounces@lists.infradead.org"><tt><font size=3D2>mailto:barebox-bounces=
@lists.infradead.org</font></tt></a><tt><font size=3D2>]
Im Auftrag von guenter.gebhardt@rafi.de<br>
Gesendet: Montag, 26. M=E4rz 2012 10:48<br>
An: barebox@lists.infradead.org<br>
Betreff: imx53 internal boot from NAND<br>
<br>
Hello, <br>
<br>
I tried to use barebox in order to boot from NAND. <br>
<br>
The ROM loader needs a FCB (Firmware Configuration Block) table at the
beginning of the flash (according to chapter 7.5.2.2 of the reference manua=
l).
<br>
I looked at the existing imx53 boards within the barebox sources but I
founx that no one used this mode there. <br>
<br>
Has someone done this or can give me some advice? <br>
<br>
-- Gebhardt<br>
[Anhang &quot;fcbgen.c&quot; gel=F6scht von Guenter Gebhardt/Rafi] [Anhang
&quot;fcb.bin&quot; gel=F6scht von Guenter Gebhardt/Rafi] </font></tt>
<br>
--=_alternative 00512B14C12579CD_=--


--===============4294648487568625531==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============4294648487568625531==--
