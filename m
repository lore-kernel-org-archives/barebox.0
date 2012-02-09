Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [213.182.159.126] (helo=o0379.rafi.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RvPpd-0002ng-N2
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 08:58:23 +0000
In-Reply-To: <4F32A501.4080102@pengutronix.de>
References: <OFFA780848.709EDB56-ONC125799E.004D9434-C125799E.004E5941@o0802.rafi.inhouse>
 <4F32A501.4080102@pengutronix.de>
MIME-Version: 1.0
Message-ID: <OF22330FAC.132482AF-ONC125799F.00307755-C125799F.0030998E@o0802.rafi.inhouse>
From: christian.buettner@rafi.de
Date: Thu, 9 Feb 2012 09:50:50 +0100
Content-Type: multipart/mixed; boundary="=_mixed 0030998EC125799F_="
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Antwort: Re: flash image through CAN
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

--=_mixed 0030998EC125799F_=
Content-Type: multipart/alternative; boundary="=_alternative 0030998EC125799F_="


--=_alternative 0030998EC125799F_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Marc,

what is the effort to port the CAN stack to barebox?

Christian B=FCttner
Entwicklung Elektronik

RAFI GmbH & Co. KG
Ravensburger Str. 128-134, D-88276 Berg
Tel.:  +49 751 89-6075, Fax: +49 751 89-7414
mailto:christian.buettner@rafi.de, http://www.rafi.de

Kommanditgesellschaft: Sitz Berg, Amtsgericht Ulm, HRA 550059
Komplement=E4r: RAFI Beteiligungs-GmbH, Sitz Berg, Amtsgericht Ulm HRB=20
550074
Gesch=E4ftsf=FChrer: Albert Wasmeier, Dipl.-Kfm. Gerhard Schenk
USt-Ident.-Nr.: DE 146 392 319, Steuer-Nr.: 77079/00291



Von:    Marc Kleine-Budde <mkl@pengutronix.de>
An:     christian.buettner@rafi.de
Kopie:  barebox@lists.infradead.org
Datum:  08.02.2012 17:38
Betreff:        Re: flash image through CAN



On 02/08/2012 03:15 PM, christian.buettner@rafi.de wrote:
> Hi all,
>=20
> we use the i.MX28 from freescale.
> Has anyone succeeded flashing a linux or rootfs image through the=20
barebox=20
> bootloader using a CAN bus connection?
> We need it to make a field update of the target possible.=20

Not yet, but we can port the CAN stack to barebox. However, if you have
the space, I suggest to boot into a minimal Linux-System to run the
update there.

Marc
--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |



--=_alternative 0030998EC125799F_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Hi Marc,</font>
<br>
<br><font size=3D2 face=3D"sans-serif">what is the effort to port the CAN s=
tack
to barebox?</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Christian B=FCttner<br>
Entwicklung Elektronik<br>
<br>
RAFI GmbH &amp; Co. KG<br>
Ravensburger Str. 128-134, D-88276 Berg<br>
Tel.: &nbsp;+49 751 89-6075, Fax: +49 751 89-7414<br>
</font><a href=3Dmailto:christian.buettner@rafi.de><font size=3D2 face=3D"s=
ans-serif">mailto:christian.buettner@rafi.de</font></a><font size=3D2 face=
=3D"sans-serif">,
</font><a href=3Dhttp://www.rafi.de/><font size=3D2 face=3D"sans-serif">htt=
p://www.rafi.de</font></a><font size=3D2 face=3D"sans-serif"><br>
<br>
Kommanditgesellschaft: Sitz Berg, Amtsgericht Ulm, HRA 550059<br>
Komplement=E4r: RAFI Beteiligungs-GmbH, Sitz Berg, Amtsgericht Ulm HRB 5500=
74<br>
Gesch=E4ftsf=FChrer: Albert Wasmeier, Dipl.-Kfm. Gerhard Schenk<br>
USt-Ident.-Nr.: DE 146 392 319, Steuer-Nr.: 77079/00291</font>
<br>
<br>
<br>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Von: &nbsp; &nbsp; &=
nbsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">Marc Kleine-Budde &lt;mkl@p=
engutronix.de&gt;</font>
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
&nbsp;</font><font size=3D1 face=3D"sans-serif">08.02.2012 17:38</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Betreff: &nbsp; &nbs=
p;
&nbsp; &nbsp;</font><font size=3D1 face=3D"sans-serif">Re: flash image
through CAN</font>
<br>
<hr noshade>
<br>
<br>
<br><tt><font size=3D2>On 02/08/2012 03:15 PM, christian.buettner@rafi.de
wrote:<br>
&gt; Hi all,<br>
&gt; <br>
&gt; we use the i.MX28 from freescale.<br>
&gt; Has anyone succeeded flashing a linux or rootfs image through the
barebox <br>
&gt; bootloader using a CAN bus connection?<br>
&gt; We need it to make a field update of the target possible. <br>
<br>
Not yet, but we can port the CAN stack to barebox. However, if you have<br>
the space, I suggest to boot into a minimal Linux-System to run the<br>
update there.<br>
<br>
Marc<br>
-- <br>
Pengutronix e.K. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp;| Marc Kleine-Budde &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
Industrial Linux Solutions &nbsp; &nbsp; &nbsp; &nbsp;| Phone: +49-231-2826=
-924
&nbsp; &nbsp; |<br>
Vertretung West/Dortmund &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| Fax: &nbsp;
+49-5121-206917-5555 |<br>
Amtsgericht Hildesheim, HRA 2686 &nbsp;| </font></tt><a href=3Dhttp://www.p=
engutronix.de/><tt><font size=3D2>http://www.pengutronix.de</font></tt></a>=
<tt><font size=3D2>
&nbsp; |<br>
<br>
</font></tt>
<br>
--=_alternative 0030998EC125799F_=--

--=_mixed 0030998EC125799F_=
Content-Type: application/octet-stream; name="signature.asc"
Content-Disposition: attachment; filename="signature.asc"
Content-Transfer-Encoding: base64

LS0tLS1CRUdJTiBQR1AgU0lHTkFUVVJFLS0tLS0NClZlcnNpb246IEdudVBHIHYxLjQuMTAgKEdO
VS9MaW51eCkNCkNvbW1lbnQ6IFVzaW5nIEdudVBHIHdpdGggTW96aWxsYSAtIGh0dHA6Ly9lbmln
bWFpbC5tb3pkZXYub3JnLw0KDQppRVlFQVJFQ0FBWUZBazh5cFFNQUNna1FqVEFGcTFSYVhIUGFZ
d0NiQmJLbTMydzJVZDl5VEk2MEI4VDhIRGpiDQo2bEVBblJKTVhaU00wT21SU2hhNUcrVktieThF
cjgveQ0KPXVPcXYNCi0tLS0tRU5EIFBHUCBTSUdOQVRVUkUtLS0tLQ0K

--=_mixed 0030998EC125799F_=
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--=_mixed 0030998EC125799F_=--
