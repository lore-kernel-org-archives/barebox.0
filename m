Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dQuTN-00007O-Iu
 for barebox@lists.infradead.org; Fri, 30 Jun 2017 11:52:31 +0000
Date: Fri, 30 Jun 2017 13:52:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170630115201.hyeqwm2xxxakwbu7@pengutronix.de>
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
Subject: v2017.07.0
To: Barebox List <barebox@lists.infradead.org>
Cc: lst@pengutronix.de

Hi All,

I just releaed barebox-2017.07.0. The reason for this early release is
that I am away for the next two months. During this time Lucas will take
over maintainership and also make the next release.

Most notable new feature this time I think is the support for links to
directories. Until now only links to files were supported. Links to
directories help for example on the Omap port where we used to mount
the partition the ROM boots from to /boot. With links to directories we
can now mount the partition to its standard location in /mnt/... while
still maintaining the /boot/ directory several Omap boot scripts depend
on. I am sure links to directories will prove useful on other occasions
aswell.

See below for a detailed list of changes that went into this release.

Sascha

----------------------------------------------------------------
Aleksander Morgado (2):
      ratp: avoid using already freed memory
      sandbox: new --stdinout option to enable a bidirectional console

Alexander Kurz (4):
      ARM: i.MX6 Wandboard: dont do MMDC Write Leveling Calibration
      ARM: i.MX6 Wandboard Quad: fix PBL UART MUX
      ARM: i.MX6 Wandboard: enable Wandboard Quad
      ARM: i.MX6 Wandboard: add Documentation

Andrey Panov (2):
      of: Search for /memory node by type, if it is not found by name
      ARM: Embedsky E9: Update environment

Andrey Smirnov (7):
      gpio-imx: Do not use gpio_set_value()
      gpiolib: Add code to support "active low" GPIOs
      gpiolib: Add support for GPIO "hog" nodes
      usb-nop-xceiv: Add support for 'reset-gpios' binding
      clk-vf610: Mark all of CCSR muxes with CLK_OPS_PARENT_ENABLE
      i.MX: clk-pllv3: Do not touch PLL_BYPASS bit
      i.MX: clk: Remove imx_clk_pllv3_locked()

Antony Pavlov (7):
      MIPS: start*.S: drop redundant .text
      MIPS: barebox.lds.S: drop unneeded '_start =3D .'
      MIPS: barebox.lds.S: remove unused got
      MIPS: barebox.lds.S: put .text_entry contents after _stext and _text
      MIPS: start.S: put entry code into the ".text_entry" section
      rtc-lib: drop unused rtc_ydays
      i2c: mv64xxx: fix indentation

Bastian Stender (1):
      firmware: altera-serial: add support for Arria 10

Christian Hemp (1):
      imx-bbu-nand-fcb: add support for imx6ull

Daniel Schultz (2):
      arm: mach-omap: Change mountpoint of boot partitions
      fs: Makefile: Add parseopt to all builds

Ian Abbott (7):
      commands: add ':' as alias for 'true'
      commands: allow <cmd>_aliases[] to be const
      hush: make source_aliases[] const
      edit: make edit_aliases[] const
      help: make help_aliases[] const
      test: make test_aliases[] const
      true: make true_aliases[] const

Juergen Borleis (1):
      i.MX/WD: setup the watchdog according to its datasheet

Lucas Stach (3):
      ARM: imx6: gw54xx: add function to retrieve board revision from GSC
      ARM: imx6: gw54xx: fixup watchdog nodes on pre rev E boards
      ARM: imx6: gw54xx: use wdog1 for barebox

Marc Kleine-Budde (1):
      ARM: i.MX: HAB: update documentation of command sequence files (CSF)

Michael Grzeschik (7):
      i.MX: fec: also enable optional clocks
      ARM: phytec-som-imx6: the ethernet clocks get enabled by fec_imx
      ARM: mx6sx-sabresdb: the ethernet clocks get enabled by fec_imx
      ARM: i.MX: setup ENET_TX_CLK_DIR in imx6_init for every imx6ul
      ARM: phytec-som-imx6: remove needles enet refclk setup
      i.MX: fec: add post PHY reset delay DT property
      ARM: i.MX6: add Technexion Pico Hobbit support

Michael Tretter (1):
      ARM: dts: i.MX6: fix usdhc3 pinmuxing on tqma6x

Oleksij Rempel (3):
      Documentation: usbgadget: provide autostart notes
      commands: usbgadget: update fastboot help text
      Documentation: provide documentation for RNG interfaces.

Philipp Zabel (5):
      cdev: make file operations const
      commands: mount: combine dev and devstr, which are the same
      fs: add parseopt_b for loop mount option
      fs: add cdev_create_loop and cdev_remove_loop for loop mount option
      commands: mount: mention file loop mounts in the help text

Roland Hieber (1):
      Documentation: improve network boot section

Sascha Hauer (32):
      fs: Create automount entries for the default mount pathes
      state: remove unused variables
      errno: Include string for ELOOP
      fs: drop path_check_prereq()
      fs: Implement links to directories
      ls: Fix showing links to directories
      fixup! fs: Implement links to directories
      state: do not complain about missing backend-storage-type
      state: Add working example dtsi file
      dts: update to v4.12-rc1
      dts: update to v4.12-rc2
      dts: update to v4.12-rc3
      dts: update to v4.12-rc4
      Revert "globalvar: Fix value of new globalvar when nvvar exists"
      Revert "nv: Fix setting of nv.dev.<devname>.<param> variables"
      Revert "globalvar: make nv_device static"
      Revert "globalvar: don't use nv_device if CONFIG_NVVAR is disabled"
      Revert "param: remove unnecessary device_d * argument"
      Revert "globalvar: make globalvar functions more consistent"
      Revert "globalvar: remove code for unqualified globalvars"
      Revert "nv: Do not create globalvars from nvvars"
      Merge branch 'for-next/arm'
      Merge branch 'for-next/directory-links'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/gpio'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/mips'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/misd'
      Merge branch 'for-next/state'
      pinctrl: at91: Bail out if atmel,pins property does not exist
      Release v2017.07.0

Stefan Riedmueller (3):
      ARM: i.MX: Add i.MX6 ULL support
      ARM: i.MX6ul: Add Clock support for i.MX6ull
      ARCH: ARM: Add support for phytec-phycore-imx6ull

Uwe Kleine-K=F6nig (5):
      new make helper to decode binaries using base64
      docs: mvebu can do 2nd stage booting
      docs: move kwboot description to generic mvebu section
      ARM: mvebu: fix size mask for RAM window
      pci: mvebu: terminate error message with a newline


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
