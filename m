Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from col0-omc2-s1.col0.hotmail.com ([65.55.34.75])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1UAG5Q-0007Ok-RL
 for barebox@lists.infradead.org; Tue, 26 Feb 2013 08:40:33 +0000
Message-ID: <COL123-DS2221B5CCC26409C3AFFACEA2FC0@phx.gbl>
From: "Nathan" <naroyce@hotmail.com>
Date: Tue, 26 Feb 2013 02:40:12 -0600
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3202241262929695902=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: setupmbr: Bad/No Signature
To: barebox@lists.infradead.org

This is a multi-part message in MIME format.

--===============3202241262929695902==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0006_01CE13CA.99D99C60"

This is a multi-part message in MIME format.

------=_NextPart_000_0006_01CE13CA.99D99C60
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I was following =
http://barebox.org/documentation/barebox-2011.05.0/x86_bootloader.html
I am getting the error:
=E2=80=9CNo MBR signature found
barebox image seems not valid: Bad MBR signature=E2=80=9D

At first I was trying it with OpenSuse and thought the problem could =
have been related to it being 64-bit, however I am also getting the =
error on a 32-bit build of Debian.

A hexdump of sdb does show =E2=80=9Caa55=E2=80=9D at the end of the 1st =
sector.
------=_NextPart_000_0006_01CE13CA.99D99C60
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<HTML><HEAD></HEAD>
<BODY dir=3Dltr>
<DIV dir=3Dltr>
<DIV style=3D"FONT-FAMILY: 'Arial'; COLOR: #000000; FONT-SIZE: 10pt">
<DIV>I was following <A=20
href=3D"http://barebox.org/documentation/barebox-2011.05.0/x86_bootloader=
.html">http://barebox.org/documentation/barebox-2011.05.0/x86_bootloader.=
html</A></DIV>
<DIV>I am getting the error:</DIV>
<DIV>=E2=80=9CNo MBR signature found</DIV>
<DIV>barebox image seems not valid: Bad MBR signature=E2=80=9D</DIV>
<DIV>&nbsp;</DIV>
<DIV>At first I was trying it with OpenSuse and thought the problem =
could have=20
been related to it being 64-bit, however I am also getting the error on =
a 32-bit=20
build of Debian.</DIV>
<DIV>&nbsp;</DIV>
<DIV>A hexdump of sdb does show =E2=80=9Caa55=E2=80=9D at the end of the =
1st=20
sector.</DIV></DIV></DIV></BODY></HTML>

------=_NextPart_000_0006_01CE13CA.99D99C60--



--===============3202241262929695902==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3202241262929695902==--
