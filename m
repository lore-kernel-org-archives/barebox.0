Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx2.rafi.de ([80.150.88.70])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SC5aT-0002Dn-9Z
 for barebox@lists.infradead.org; Mon, 26 Mar 2012 08:47:38 +0000
MIME-Version: 1.0
Message-ID: <OFC5456862.5E2219B4-ONC12579CD.002FB0FF-C12579CD.00304E9A@o0802.rafi.inhouse>
From: guenter.gebhardt@rafi.de
Date: Mon, 26 Mar 2012 10:47:36 +0200
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5908017570672605927=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: imx53 internal boot from NAND
To: barebox@lists.infradead.org

Dies ist eine mehrteilige Nachricht im MIME-Format.
--===============5908017570672605927==
Content-Type: multipart/alternative; boundary="=_alternative 00304E9AC12579CD_="

Dies ist eine mehrteilige Nachricht im MIME-Format.
--=_alternative 00304E9AC12579CD_=
Content-Type: text/plain; charset="US-ASCII"

Hello,

I tried to use barebox in order to boot from NAND.

The ROM loader needs a FCB (Firmware Configuration Block) table at the 
beginning of the flash (according to chapter 7.5.2.2 of the reference 
manual).
I looked at the existing imx53 boards within the barebox sources but I 
founx that no one used this mode there.

Has someone done this or can give me some advice?

-- Gebhardt
--=_alternative 00304E9AC12579CD_=
Content-Type: text/html; charset="US-ASCII"

<font size=2 face="sans-serif">Hello,</font>
<br>
<br><font size=2 face="sans-serif">I tried to use barebox in order to boot
from NAND.</font>
<br>
<br><font size=2 face="sans-serif">The ROM loader needs a FCB (Firmware
Configuration Block) table at the beginning of the flash (according to
chapter 7.5.2.2 of the reference manual).</font>
<br><font size=2 face="sans-serif">I looked at the existing imx53 boards
within the barebox sources but I founx that no one used this mode there.</font>
<br>
<br><font size=2 face="sans-serif">Has someone done this or can give me
some advice?</font>
<br>
<br><font size=2 face="sans-serif">-- Gebhardt</font>
--=_alternative 00304E9AC12579CD_=--


--===============5908017570672605927==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============5908017570672605927==--
