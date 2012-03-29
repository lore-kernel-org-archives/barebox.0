Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx2.rafi.de ([178.15.151.13])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SDDxC-0004zG-7p
 for barebox@lists.infradead.org; Thu, 29 Mar 2012 11:55:47 +0000
MIME-Version: 1.0
Message-ID: <OF440839EF.2383F590-ONC12579D0.00410F43-C12579D0.004184D1@o0802.rafi.inhouse>
From: christian.buettner@rafi.de
Date: Thu, 29 Mar 2012 13:55:43 +0200
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8976589444979662762=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Create NAND Partition through barebox
To: barebox@lists.infradead.org

Dies ist eine mehrteilige Nachricht im MIME-Format.
--===============8976589444979662762==
Content-Type: multipart/alternative; boundary="=_alternative 004184D1C12579D0_="

Dies ist eine mehrteilige Nachricht im MIME-Format.
--=_alternative 004184D1C12579D0_=
Content-Type: text/plain; charset="US-ASCII"

Hi,

i need to create a NAND Partition through the barebox prompt to be able to 
flash a kernel image on it.

This is the current devinfo of my target:

barebox:/ devinfo 
devices:
`---- imx_serial0
     `---- cs0
`---- mem0
     `---- 0x00000000-0x1fffffff: /dev/ram0
`---- mem1
     `---- 0x00000000-0x1fffffff: /dev/ram1
`---- imx_iim0
     `---- 0x00000000-0x0000001f: /dev/imx_iim_bank0
     `---- 0x00000000-0x0000001f: /dev/imx_iim_bank1
     `---- 0x00000000-0x0000001f: /dev/imx_iim_bank2
     `---- 0x00000000-0x0000001f: /dev/imx_iim_bank3
     `---- 0x00000000-0x0000001f: /dev/imx_iim_bank4
     `---- 0x00000000-0x0000001f: /dev/imx_iim_bank5
     `---- 0x00000000-0x0000001f: /dev/imx_iim_bank6
     `---- 0x00000000-0x0000001f: /dev/imx_iim_bank7
`---- ramfs0
`---- devfs0
`---- mem2
     `---- 0x00000000-0x000018ab: /dev/defaultenv
`---- mem3
     `---- 0x00000000-0xfffffffe: /dev/mem
`---- cs1
`---- fec_imx0
     `---- miidev0
          `---- 0x00000000-0x0000003f: /dev/phy0
     `---- eth0

drivers:
imx_serial
     ramfs
     devfs
   imx_iim
   fec_imx
    miidev
       mem


I tried using
$ nand -a /dev/nand0.*

Nothing happens..
What is wrong?

- - Christian
--=_alternative 004184D1C12579D0_=
Content-Type: text/html; charset="US-ASCII"

<font size=2 face="sans-serif">Hi,</font>
<br>
<br><font size=2 face="sans-serif">i need to create a NAND Partition through
the barebox prompt to be able to flash a kernel image on it.</font>
<br>
<br><font size=2 face="sans-serif">This is the current devinfo of my target:</font>
<br>
<br><font size=2 face="sans-serif">barebox:/ devinfo </font>
<br><font size=2 face="sans-serif">devices:</font>
<br><font size=2 face="sans-serif">`---- imx_serial0</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp;`---- cs0</font>
<br><font size=2 face="sans-serif">`---- mem0</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp;`---- 0x00000000-0x1fffffff:
/dev/ram0</font>
<br><font size=2 face="sans-serif">`---- mem1</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp;`---- 0x00000000-0x1fffffff:
/dev/ram1</font>
<br><font size=2 face="sans-serif">`---- imx_iim0</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp;`---- 0x00000000-0x0000001f:
/dev/imx_iim_bank0</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp;`---- 0x00000000-0x0000001f:
/dev/imx_iim_bank1</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp;`---- 0x00000000-0x0000001f:
/dev/imx_iim_bank2</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp;`---- 0x00000000-0x0000001f:
/dev/imx_iim_bank3</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp;`---- 0x00000000-0x0000001f:
/dev/imx_iim_bank4</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp;`---- 0x00000000-0x0000001f:
/dev/imx_iim_bank5</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp;`---- 0x00000000-0x0000001f:
/dev/imx_iim_bank6</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp;`---- 0x00000000-0x0000001f:
/dev/imx_iim_bank7</font>
<br><font size=2 face="sans-serif">`---- ramfs0</font>
<br><font size=2 face="sans-serif">`---- devfs0</font>
<br><font size=2 face="sans-serif">`---- mem2</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp;`---- 0x00000000-0x000018ab:
/dev/defaultenv</font>
<br><font size=2 face="sans-serif">`---- mem3</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp;`---- 0x00000000-0xfffffffe:
/dev/mem</font>
<br><font size=2 face="sans-serif">`---- cs1</font>
<br><font size=2 face="sans-serif">`---- fec_imx0</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp;`---- miidev0</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; `----
0x00000000-0x0000003f: /dev/phy0</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp;`---- eth0</font>
<br>
<br><font size=2 face="sans-serif">drivers:</font>
<br><font size=2 face="sans-serif">imx_serial</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp;ramfs</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp;devfs</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp;imx_iim</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp;fec_imx</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; miidev</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp; &nbsp;mem</font>
<br>
<br>
<br><font size=2 face="sans-serif">I tried using</font>
<br><font size=2 face="sans-serif">$ nand -a /dev/nand0.*</font>
<br>
<br><font size=2 face="sans-serif">Nothing happens..</font>
<br><font size=2 face="sans-serif">What is wrong?</font>
<br>
<br><font size=2 face="sans-serif">- - Christian</font>
--=_alternative 004184D1C12579D0_=--


--===============8976589444979662762==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============8976589444979662762==--
