Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f4Qgg-0006LA-22
 for barebox@lists.infradead.org; Fri, 06 Apr 2018 12:41:51 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1f4QgU-0002jL-J1
 for barebox@lists.infradead.org; Fri, 06 Apr 2018 14:41:38 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1f4QgU-0007h5-B7
 for barebox@lists.infradead.org; Fri, 06 Apr 2018 14:41:38 +0200
Date: Fri, 6 Apr 2018 14:41:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180406124138.t5o4luk3wkbhw4gp@pengutronix.de>
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
Subject: v2018.04.0
To: Barebox List <barebox@lists.infradead.org>

Hi all,

barebox-2018.04.0 is out. Nothing fundamentally, small improvements
here and there.

Sascha

----------------------------------------------------------------
Aleksander Morgado (9):
      ratp: implement generic command support
      ratp: moved logic to its own subdirectory
      ratp: allow building without full console support
      ratp: implement ping as a standard ratp command
      ratp: implement getenv as a standard ratp command
      ratp: use xstrndup() instead of a custom xmemdup_add_zero()
      ratp: new md and mw commands
      ratp: new reset command
      docs: add reference to libratp-barebox in the remote-control docs

Andreas Schmidt (1):
      net: cpsw: fix probe with fixed-link

Antony Pavlov (1):
      commands: i2c_write: enable raw write to address

Denis 'GNUtoo' Carikli (1):
      Backport "ARM: dts: am335x-bone*: usb0 is hardwired for peripheral" f=
rom linux

Enrico Jorns (1):
      efi: add bootsource detection

Eugen Wiens (1):
      console: added colored print out of log levels

Ga=EBl PORTAY (1):
      fs: check pointer returned by get_fsdevice_by_path before dereferenci=
ng

Juergen Borleis (1):
      ARM/i.MX53: fix SDRAM setup routines

Lucas Stach (6):
      watchdog: implement bcm2835 watchdog
      ARM: rpi: enable watchdog in defconfig
      arm: ARM64 doen't provide the armlinux_ functions
      lib: add weak clz/ctz functions
      at91sam9263ek: don't build legacy init when OFDEVICE is enabled
      arm: ARM64 doen't provide the armlinux_ functions

Marc Kleine-Budde (2):
      Makefile.lib: imx hab: fix hab files with embedded variables
      bootm: fit: add option to add DT snipped that contains fit public key

Michael Grzeschik (1):
      mtd: spi-nor: add support for w25q16dw

Oleksij Rempel (5):
      MIPS: add initial qca4531 support
      MIPS: add initial 8devices-lima board
      MIPS: dts: enable heartbeat led for ar9331-dptechnics-dpt-module
      MIPS: ath79: fix different typos
      Documentation: framebuffer: update documentation to current state

Philipp Zabel (2):
      improve soc revision calculation
      of: partition: fix typo when writing #address-cells

Sascha Hauer (34):
      ubiformat: Allow to ubiformat with a buffer given
      usb: gadget: fastboot: Make sparse support optional
      usb: gadget: fastboot: pass struct f_fastboot * around
      usb: gadget: fastboot: use read_file_2
      usb: gadget: fastboot: Always remove temporary file
      usb: gadget: fastboot: fix typo
      usb: gadget: fastboot: beautify fb_run_command()
      usb: gadget: fastboot: Add option to download to a buffer
      usb: gadget: fastboot: Add external command execution support
      ARM: i.MX25: Fix restoring of volatile register
      arm: crypto: initialize digests earlier
      net: cpsw: Call phy_device_connect() earlier
      console: move global.allow_color handling to C code
      Use globalvar_add_simple_string for model and hostname
      ARM/i.MX53: fix compiler warning
      dts: update to v4.15-rc9
      arm: crypto: initialize digests earlier
      dts: update to v4.16-rc1
      dts: update to v4.16-rc2
      of: Make locally used function static
      of: Make locally used function static
      Merge branch 'for-next/arm'
      Merge branch 'for-next/arm-1'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/efi'
      Merge branch 'for-next/fastboot'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/mips'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/ratp'
      Merge branch 'for-next/rpi'
      Revert "startup: Load default environment earlier"
      ARM: zbarebox: Fix linking with new ld
      Release v2018.04.0

Steffen Trumtrar (3):
      ARM: imx25: clk: add rngb clock
      hw_random: add driver for Freescale RNGC
      gitignore: ignore pblx.simximg files

Yegor Yefremov (1):
      DHCP: fix option 54 passing

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
