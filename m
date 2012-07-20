Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx2.rafi.de ([178.15.151.13])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SsDal-0007mC-Aj
 for barebox@lists.infradead.org; Fri, 20 Jul 2012 13:50:05 +0000
MIME-Version: 1.0
Message-ID: <OFC0F11128.AB14A410-ONC1257A41.004B77C2-C1257A41.004BFA44@o0802.rafi.inhouse>
From: christian.buettner@rafi.de
Date: Fri, 20 Jul 2012 15:49:53 +0200
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7094756628900039591=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: barebox spi test
To: barebox@lists.infradead.org

Dies ist eine mehrteilige Nachricht im MIME-Format.
--===============7094756628900039591==
Content-Type: multipart/alternative; boundary="=_alternative 004BFA42C1257A41_="

Dies ist eine mehrteilige Nachricht im MIME-Format.
--=_alternative 004BFA42C1257A41_=
Content-Type: text/plain; charset="US-ASCII"

hi,

we use the imx53.
I need to write a little test for the spi interface through barebox. I 
just want to write a few bytes and read them back. 
To do the test i have an spi flash MX25L8005 which is supported by the nor 
driver m25p80.c.
In my board init code, i added spi successfully (imx53_add_spi0(..)) but i 
have problems adding the eeprom.
Can anyone help me out with a little board init code for the MX25L8005?

christian
--=_alternative 004BFA42C1257A41_=
Content-Type: text/html; charset="US-ASCII"

<font size=2 face="sans-serif">hi,</font>
<br>
<br><font size=2 face="sans-serif">we use the imx53.</font>
<br><font size=2 face="sans-serif">I need to write a little test for the
spi interface through barebox. I just want to write a few bytes and read
them back. </font>
<br><font size=2 face="sans-serif">To do the test i have an spi flash MX25L8005
which is supported by the nor driver m25p80.c.</font>
<br><font size=2 face="sans-serif">In my board init code, i added spi successfully
(imx53_add_spi0(..)) but i have problems adding the eeprom.</font>
<br><font size=2 face="sans-serif">Can anyone help me out with a little
board init code for the MX25L8005?</font>
<br>
<br><font size=2 face="sans-serif">christian</font>
--=_alternative 004BFA42C1257A41_=--


--===============7094756628900039591==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7094756628900039591==--
