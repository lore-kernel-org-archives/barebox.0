Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OtLJI-0008Ki-DX
	for barebox@lists.infradead.org; Wed, 08 Sep 2010 14:07:37 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
	by root.phytec.de (Postfix) with ESMTP id B663EA30A1
	for <barebox@lists.infradead.org>;
	Wed,  8 Sep 2010 16:09:11 +0200 (CEST)
MIME-Version: 1.0
Message-ID: <OFD70E892C.B10E0160-ONC1257798.0047E686-C1257798.004D952C@phytec.de>
From: Teresa Gamez <T.Gamez@phytec.de>
Date: Wed, 8 Sep 2010 16:07:25 +0200
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1867848692=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Generating barebox.S
To: barebox@lists.infradead.org

This is a multipart message in MIME format.
--===============1867848692==
Content-Type: multipart/alternative; boundary="=_alternative 004D952AC1257798_="

This is a multipart message in MIME format.
--=_alternative 004D952AC1257798_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I noticed while upgrading from barebox-2010.04.0 to barebox-2010.07.0 that =

the part of generating a barebox.S file in the Makefile has changed. I'm=20
working with an ARM board and it seems that the barebox.S is not being=20
build by default anymore. My Makefile reading skills are not really=20
good... So how do I activate the generation of the barebox.S file? Or do I =

miss something?

Thanks!

Teresa G=E1mez

-Software Entwicklung-
PHYTEC Messtechnik GmbH
Robert-Koch-Str. 39
55129 Mainz
Tel.: +49 (0)6131 9221-0
Web: http://www.phytec.de

Gesch=E4ftsf=FChrer: Dipl.-Ing. Michael Mitezki, Handelsregister Mainz, HRB=
=20
4656, Finanzamt Mainz-Mitte, St.Nr. 266500608, DE 149059855
This E-Mail may contain confidential or privileged information. If you are =

not the intended recipient (or have received this E-Mail in error) please=20
notify the sender immediately and destroy this E-Mail. Any unauthorized
copying, disclosure or distribution of the material in this E-Mail is=20
strictly forbidden.
--=_alternative 004D952AC1257798_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Hello,</font>
<br>
<br><font size=3D2 face=3D"sans-serif">I noticed while upgrading from bareb=
ox-2010.04.0
to barebox-2010.07.0 that the part of generating a barebox.S file in the
Makefile has changed. I'm working with an ARM board and it seems that the
barebox.S is not being build by default anymore. My Makefile reading skills
are not really good... So how do I activate the generation of the barebox.S
file? Or do I miss something?</font>
<br>
<br><font size=3D2 face=3D"Arial">Thanks!</font>
<br>
<br><font size=3D2 face=3D"Arial">Teresa G=E1mez</font>
<br>
<br><font size=3D2 face=3D"Arial">-Software Entwicklung-</font>
<br><font size=3D2 face=3D"Arial">PHYTEC Messtechnik GmbH</font>
<br><font size=3D2 face=3D"Arial">Robert-Koch-Str. 39</font>
<br><font size=3D2 face=3D"Arial">55129 Mainz</font>
<br><font size=3D2 face=3D"Arial">Tel.: +49 (0)6131 9221-0</font>
<br><font size=3D2 face=3D"Arial">Web: </font><a href=3Dhttp://www.phytec.d=
e/><font size=3D3 color=3D#000080 face=3D"Arial"><u>http://www.phytec.de</u=
></font></a>
<br>
<br><font size=3D1 color=3D#808080 face=3D"Arial">Gesch=E4ftsf=FChrer: Dipl=
.-Ing.
Michael Mitezki, Handelsregister Mainz, HRB 4656, Finanzamt Mainz-Mitte,
St.Nr. 266500608, DE 149059855</font>
<br><font size=3D1 color=3D#808080 face=3D"Arial">This E-Mail may contain c=
onfidential
or privileged information. If you are not the intended recipient (or have
received this E-Mail in error) please notify the sender immediately and
destroy this E-Mail. Any unauthorized</font>
<br><font size=3D1 color=3D#808080 face=3D"Arial">copying, disclosure or di=
stribution
of the material in this E-Mail is strictly forbidden.</font>
--=_alternative 004D952AC1257798_=--


--===============1867848692==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1867848692==--
