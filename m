Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from poutre.ipv6.nerim.net ([2001:7a8:1:1::124]
 helo=poutre.nerim.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tr3Hu-0001NS-Ka
 for barebox@lists.infradead.org; Fri, 04 Jan 2013 09:10:03 +0000
Received: from localhost (localhost [127.0.0.1])
 by poutre.nerim.net (Postfix) with ESMTP id 17A3B39DED0
 for <barebox@lists.infradead.org>; Fri,  4 Jan 2013 10:09:55 +0100 (CET)
Received: from poutre.nerim.net ([127.0.0.1])
 by localhost (poutre.nerim.net [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kzXCh8XcSmOJ for <barebox@lists.infradead.org>;
 Fri,  4 Jan 2013 10:09:53 +0100 (CET)
Received: from SERVEUR0.nvp.local (navocap.net2.nerim.net [213.41.131.28])
 by poutre.nerim.net (Postfix) with ESMTP id 4B8D939F40A
 for <barebox@lists.infradead.org>; Fri,  4 Jan 2013 10:09:53 +0100 (CET)
MIME-Version: 1.0
Content-class: urn:content-classes:message
Date: Fri, 4 Jan 2013 10:09:05 +0100
Message-ID: <CA78C307B8F06747967D122FC656B15377433D@SERVEUR0.nvp.local>
From: "Mylene Josserand" <Mylene.Josserand@navocap.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [help] PHY driver : Unable to find a PHY (unknown ID?)
To: barebox mailist <barebox@lists.infradead.org>

Hi everyone !


I am new in compiling Barebox (with OE-core) and I need your help.

I am using the master branch (maybe I need to checkout a tag ?). The =

ethernet of my board is a SMSC LAN8700 and the microchip is iMX27.

I have configured the new source of barebox to use the Phylib and MII =

drivers. When my barebox starts, I have an error about the PHY driver :

"
Unable to find a PHY (unknown ID?)
dhcp failed: I/O error
dhcp: I/O error
"

My devinfo :

"
barebox:/ devinfo
devices:
`---- platform
    `---- imx_iim0
    `---- imx27-ccm0
    `---- imx1-gpt0
    `---- imx1-gpio0
    `---- imx1-gpio1
    `---- imx1-gpio2
    `---- imx1-gpio3
    `---- imx1-gpio4
    `---- imx1-gpio5
    `---- imx21-wdt0
    `---- imx27-esdctl0
    `---- imx21-uart0
       `---- cs0
    `---- mem0
       `---- 0x00000000-0x07ffffff: /dev/ram0
    `---- mem1
       `---- 0x00000000-0xfffffffe: /dev/mem
    `---- cfi_flash0
       `---- 0x00000000-0x01ffffff: /dev/nor0
       `---- 0x00000000-0x0003ffff: /dev/self0
       `---- 0x00040000-0x0005ffff: /dev/env0
       `---- 0x00000000-0x0003ffff: /dev/nor0.barebox
       `---- 0x00040000-0x0005ffff: /dev/nor0.bareboxenv
       `---- 0x00060000-0x002bffff: /dev/nor0.kernel
       `---- 0x002c0000-0x01ffffff: /dev/nor0.root
    `---- cfi_flash1
       `---- 0x00000000-0x01ffffff: /dev/nor1
    `---- imx_nand
       `---- nand0
       `---- 0x00000000-0x1fffffff: /dev/nand0
       `---- 0x00000000-0x00ffffff: /dev/nand_oob0
    `---- i2c-fsl0
       `---- i2c0
          `---- lp39720
             `---- 0x00000000-0x000000ff: /dev/lp3972
          `---- ds133x0
             `---- 0x00000000-0x000000ff: /dev/ds133x
          `---- pca95350
             `---- 0x00000000-0x000000ff: /dev/pca9535
    `---- i2c-fsl1
       `---- i2c1
    `---- imxfb
    `---- imx27-fec
       `---- miibus0
       `---- eth0
`---- mdio_bus
`---- i2c
`---- fb
    `---- fb0
       `---- 0x00000000-0x000bb7ff: /dev/fb0
`---- fs
    `---- ramfs0
    `---- devfs0
`---- net
`---- global

drivers:
imx27-ccm
imx_serial
imx-esdctl
ramfs
devfs
tftp
imx-gpt
imx-gpio
SMSC LAN83C185
SMSC LAN8187
SMSC LAN8700
SMSC LAN911x Internal PHY
SMSC LAN8710/LAN8720
fec_imx
Generic PHY
imx_nand
cfi_flash
i2c-gpio
i2c-fsl
fb
imxfb
lp3972
ds133x
pca9535
imx-watchdog
mem
"

The SMSC LAN8700 is here but I can not make it work !

I have added some prints on the phy.c and the problem is in the fonction =

"mdiobus_scan" :

if (!edev->phydev) {
	if (addr >=3D 0) {
		dev =3D mdiobus_scan(bus, addr);
		if (!dev) {                     << Failed here
			ret =3D -EIO;
			goto fail;
		}

Did I miss something ?
Did I have to specify something in the board info ?
Is it correct to use the master branch ? I tried the v2012.12.1 tag but =

I get some errors before starting barebox ("no stack data available" and =

other errors).


Thank you in advance for any help and happy new year !


-- =

Myl=E8ne JOSSERAND

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
