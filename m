Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx2.rafi.de ([178.15.151.13])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SDaYQ-0002W8-Tt
 for barebox@lists.infradead.org; Fri, 30 Mar 2012 12:03:44 +0000
In-Reply-To: <20120329150143.0ce2ddf0@eb-e6520>
References: <OF440839EF.2383F590-ONC12579D0.00410F43-C12579D0.004184D1@o0802.rafi.inhouse>
 <20120329140303.71c94361@eb-e6520>	<OF21220E76.68770C91-ONC12579D0.004452DB-C12579D0.0044D7C4@o0802.rafi.inhouse>
 <CAB_54W4aZA1W0yGMtboW-F0CLmfx4et2XNEjExdFdZUE_g4a+g@mail.gmail.com>	<OFADF64A2E.4C13BEDA-ONC12579D0.0047261C-C12579D0.004752BF@o0802.rafi.inhouse>
 <20120329150143.0ce2ddf0@eb-e6520>
MIME-Version: 1.0
Message-ID: <OFFCF2C6C5.A080A80A-ONC12579D1.00423710-C12579D1.004240F9@o0802.rafi.inhouse>
From: christian.buettner@rafi.de
Date: Fri, 30 Mar 2012 14:03:47 +0200
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7517326826362067613=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Antwort: Re: Create NAND Partition through barebox
To: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

Dies ist eine mehrteilige Nachricht im MIME-Format.
--===============7517326826362067613==
Content-Type: multipart/alternative; boundary="=_alternative 004240F9C12579D1_="

Dies ist eine mehrteilige Nachricht im MIME-Format.
--=_alternative 004240F9C12579D1_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

This was the problem.
Thank you for the help..

- - Christian



Von:    Eric B=E9nard <eric@eukrea.com>
An:     christian.buettner@rafi.de
Kopie:  barebox@lists.infradead.org
Datum:  29.03.2012 15:01
Betreff:        Re: Create NAND Partition through barebox



Le Thu, 29 Mar 2012 14:59:07 +0200,
christian.buettner@rafi.de a =E9crit :
> I have an addpart tool as you can see but i cannot create a partition.=20
In=20
> the /dev folder is also no /dev/nand0
>=20
did you register the nand device ? Is it detected by barebox ?

I think you should check your board support file against a board
suppporting nand (you can for example check our cpuimx51 platform which
is not far from an i.MX53 one).

Eric


--=_alternative 004240F9C12579D1_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">This was the problem.</font>
<br><font size=3D2 face=3D"sans-serif">Thank you for the help..</font>
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
&nbsp;</font><font size=3D1 face=3D"sans-serif">christian.buettner@rafi.de<=
/font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Kopie: &nbsp; &nbsp;=
 &nbsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">barebox@lists.infradead.org=
</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Datum: &nbsp; &nbsp;=
 &nbsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">29.03.2012 15:01</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Betreff: &nbsp; &nbs=
p;
&nbsp; &nbsp;</font><font size=3D1 face=3D"sans-serif">Re: Create NAND
Partition through barebox</font>
<br>
<hr noshade>
<br>
<br>
<br><tt><font size=3D2>Le Thu, 29 Mar 2012 14:59:07 +0200,<br>
christian.buettner@rafi.de a =E9crit :<br>
&gt; I have an addpart tool as you can see but i cannot create a partition.
In <br>
&gt; the /dev folder is also no /dev/nand0<br>
&gt; <br>
did you register the nand device ? Is it detected by barebox ?<br>
<br>
I think you should check your board support file against a board<br>
suppporting nand (you can for example check our cpuimx51 platform which<br>
is not far from an i.MX53 one).<br>
<br>
Eric<br>
</font></tt>
<br>
--=_alternative 004240F9C12579D1_=--


--===============7517326826362067613==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7517326826362067613==--
