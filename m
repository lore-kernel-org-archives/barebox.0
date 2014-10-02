Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XZZi3-0002bp-Bz
 for barebox@lists.infradead.org; Thu, 02 Oct 2014 06:17:51 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 ident=Debian-exim) by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1XZZhh-00049A-48
 for barebox@lists.infradead.org; Thu, 02 Oct 2014 08:17:29 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1XZZhh-0007X0-27
 for barebox@lists.infradead.org; Thu, 02 Oct 2014 08:17:29 +0200
Date: Thu, 2 Oct 2014 08:17:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141002061729.GJ4992@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: v2014.10.0
To: barebox@lists.infradead.org


Hi All,

Here's barebox-2014.10.0. Not very much has happened since the last
release. Many of the patches are fixes so chances are good we fixed
more bugs than we created new ones. Nice :)

Sascha

----------------------------------------------------------------
Antony Pavlov (2):
      Documentation: davinci.rst: fix code-block formatting
      net: dm9k: fix copy-paste typo

Christian Hemp (1):
      dts:imx6:pfla02: Fix SPI NOR for phyFLEX-i.MX6

Ezequiel Garcia (2):
      nand: Add Marvell Orion NAND driver
      ARM: mvebu: Add Plat'home's Kirkwood Openblocks A6 board support

Jan Weitzel (1):
      commands: of_dump switch to get fixed devictree

Michael Grzeschik (1):
      ubi: add setting devnum to ubiattach

Michael Olbrich (1):
      efi: use objcopy with CROSS_COMPILE prefix

Philipp Zabel (1):
      serial: imx: Fix for non-devicetree boards

Rapha=EBl Poggi (8):
      mtd: nand: add has_pmecc member
      mtd: atmel_nand: retrieve ecc_mode from pdata
      mtd: atmel_nand: add support for device tree
      arm: mach-at91: move gpio.h to include folder
      pinctrl: at91: add pinctrl driver
      pinctrl: at91: add driver data
      pinctrl: at91: fix the pin_to_controller function
      pinctrl: at91: retrieve device id in non dtb probe

Sascha Hauer (14):
      ARM: dts: Use local version of rk3188-clocks.dtsi
      ARM: dts: move imx6q-embedsky-e9.dtsi to arch/arm/dts/boot
      dts: update to v3.17-rc1
      dts: update to v3.17-rc2
      Merge branch 'for-next/at91'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/marvell'
      Merge branch 'for-next/misc'
      ARM: AT91: Add missing include
      ARM: AT91: Make gpio mux functions inline
      net: Call edev->recv with correct eth_device
      USB: gadget: fastboot: Add missing include
      USB: gadget: dfu: Add max_speed to dfu_driver
      Release v2014.10.0

Silvio Fricke (1):
      ARM: i.MX: edmqmx6: free phy-reset gpio pin

Teresa G=E1mez (4):
      defaultenv: Reorder overlay append order
      commands: of_dump: Fix return value
      read_file_2: Fix return value
      i2c: omap: fix dts property "clock-frequency" usage

Wjatscheslaw Stoljarski (1):
      commands: usb: drop help for force rescan option

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
