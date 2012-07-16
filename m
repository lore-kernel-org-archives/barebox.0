Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx2.rafi.de ([178.15.151.13])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SqgoM-00028o-Hl
 for barebox@lists.infradead.org; Mon, 16 Jul 2012 08:38:01 +0000
MIME-Version: 1.0
Message-ID: <OFBC23BC86.8730299C-ONC1257A3D.002F1072-C1257A3D.002F655C@o0802.rafi.inhouse>
From: christian.buettner@rafi.de
Date: Mon, 16 Jul 2012 10:37:41 +0200
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0119620744095387358=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: barebox image size
To: barebox@lists.infradead.org

Dies ist eine mehrteilige Nachricht im MIME-Format.
--===============0119620744095387358==
Content-Type: multipart/alternative; boundary="=_alternative 002F655CC1257A3D_="

Dies ist eine mehrteilige Nachricht im MIME-Format.
--=_alternative 002F655CC1257A3D_=
Content-Type: text/plain; charset="US-ASCII"

hi,

we need to implement a lot of features into the barebox. Finally the size 
of the image will be bigger than the standard max of 256K.
When i flash an image, bigger than 256K to nand, barebox does not boot 
anymore - if i reduce it to 256K or smaller, everthing works fine.

What do i have to do to use a bigger barebox image size?

- christian
--=_alternative 002F655CC1257A3D_=
Content-Type: text/html; charset="US-ASCII"

<font size=2 face="sans-serif">hi,</font>
<br>
<br><font size=2 face="sans-serif">we need to implement a lot of features
into the barebox. Finally the size of the image will be bigger than the
standard max of 256K.</font>
<br><font size=2 face="sans-serif">When i flash an image, bigger than 256K
to nand, barebox does not boot anymore - if i reduce it to 256K or smaller,
everthing works fine.</font>
<br>
<br><font size=2 face="sans-serif">What do i have to do to use a bigger
barebox image size?</font>
<br>
<br><font size=2 face="sans-serif">- christian</font>
--=_alternative 002F655CC1257A3D_=--


--===============0119620744095387358==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0119620744095387358==--
