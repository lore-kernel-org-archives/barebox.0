Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dKgdp-00043Y-W7
 for barebox@lists.infradead.org; Tue, 13 Jun 2017 07:53:36 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1dKgdT-0008RD-Ht
 for barebox@lists.infradead.org; Tue, 13 Jun 2017 09:53:11 +0200
Received: from sha by pty.hi.pengutronix.de with local (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1dKgdT-0006Sn-BC
 for barebox@lists.infradead.org; Tue, 13 Jun 2017 09:53:11 +0200
Date: Tue, 13 Jun 2017 09:53:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170613075311.jwdw4j4pv3vhvusb@pengutronix.de>
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
Subject: v2017.06.0
To: Barebox List <barebox@lists.infradead.org>


Hi All,

barebox v2017.06.0 is available. I originally wanted to wait for the
fix of the OMAP Nand controller issue, but unfortunately there's no
full solution in sight. Since waiting longer would effectively mean that
we skip the June release, I decided to do a release with this bug still
standing.

See below for changes in this release

Sascha

----------------------------------------------------------------
Aleksander Morgado (4):
      Documentation: remote-control: fix typo
      sandbox: fix registering multiple consoles
      ratp: avoid using already freed memory
      ratp: only allow bidirectional consoles

Alexander Kurz (5):
      ARM: i.MX50: Add imx50.dtsi as workaround
      ARM: i.MX50 clock: add clock for USB physbase
      ARM: i.MX50: Add support for i.MX50 based Amazon Kindle e-book readers
      ARM: i.MX50: Amazon Kindle: Model EY21 compatibility check
      ARM: i.MX50: Kindle-MX50 DT fixes

Andrey Panov (1):
      Fix linking with new ld, based on u-boot

Antony Pavlov (9):
      drivers: video: drop unused of_display_timings_exist()
      of: base: exclude memcpy-like code from of_property_write_u8_array()
      of: base: of_new_property(): use xstrdup() instead of strdup()
      globalvar: make nv_device static
      readline_simple: drop unusable u-boot legacy stuff
      eeprom: at24: add the "read-only" dt parameter support
      commands: add spd_decode to the 'hardware manipulation' group
      net: rtl8139: drop unused rtl8139_intr_mask constant
      state: backend_bucket_circular: drop unused free_pattern constant

Christian Hemp (1):
      watchdog: i.MX: fix i.MX6 reset

Christoph Fritz (1):
      mci: be more verbose about wrong bus-width

Daniel Schultz (1):
      arm: boards: Add MLO handler for EMMC devices

Dennis Menschel (1):
      scripts: mkmakefile: apply changes from Linux kernel

Ian Abbott (1):
      xfuncs: fix format specifier in pr_emerg call

Jan Remmet (1):
      imx-bbu-nand-fcb: add support for imx6ul

Juergen Borleis (1):
      PPC: request a consistent memory layout

Lucas Stach (5):
      ARM: imx6: add Hummingboard2 support
      ARM: socfpga: fix QSPI platform data init
      param: fix stub prototype of dev_add_param
      mtd: only build mtdraw_raw_to_mtd_offset when write support is enabled
      video: select OFTREE from DRIVER_VIDEO_IMX_IPUV3

Michael Grzeschik (1):
      mci: add Marvell Dove SDHCI driver

Sascha Hauer (46):
      ARM: socfpga: change param_type struct name
      parameter: Give device parameters types
      lib: implement simple_strtoll
      console: Use dev_add_param_string
      mtd: nand: use dev_add_param_enum
      mtd: use dev_add_param_string
      net: use dev_add_param_string
      param: make parameter functions more consistent
      globalvar: make globalvar functions more consistent
      param: remove unnecessary device_d * argument
      lib/strtox: whitespace cleanup
      lib/strtox: remove unnecessary islower()
      usb: gadget: fastboot: delete temporary file
      of: use of_property_read_bool where appropriate
      of: of_net: use a loop
      libgen: implement posix_basename
      cp: Use posix_basename() on source argument
      commands: basename: Use posix_basename()
      dts: update to v4.11-rc6
      dts: update to v4.11-rc7
      xfuncs: Be more informative when out of memory panic occurs
      state: Binding: remove @0 from node name
      state: warn when a state node will be overwritten
      state: Make an alias mandatory
      state: Create alias in of_state_fixup()
      dts: update to v4.11-rc8
      Merge branch 'for-next/arm'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/libgen'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mvebu'
      Merge branch 'for-next/omap'
      Merge branch 'for-next/parameter-types'
      Merge branch 'for-next/socfpga'
      Merge branch 'for-next/state'
      clock: initialize dummy clocksource statically
      nv: Fix setting of nv.dev.<devname>.<param> variables
      globalvar: Fix value of new globalvar when nvvar exists
      state: Fix example in documentation
      ARM: i.MX50: Amazon Kindle: Add missing compatibility checks
      of: of_find_node_by_devpath: Fix offset in mtd devices
      usb: imx: Only use clock when it exists
      Makefile: Speed up evaluation of ld options
      sandbox: Fix registering file/fifo consoles
      Release v2017.06.0

Stefan Lengfeld (5):
      images: clean *.imx-sram-img files
      imx-usb-loader: add prefix '0x' for hex value
      docs: fix hiding of chapter from imx.rst
      docs: add file suffix rst for inclusion in sphinx documentation
      docs: render DIP switches as verbatim text

Steffen Trumtrar (10):
      mtd: spi-nor: cadence: change devicetree bindings to upstream
      ARM: socfpga: dtsi: use upstream node
      ARM: socfpga: rename socfpga->cyclone5
      clk: socfpga: move driver to subdirectory
      net: designware: add dwmac-3.72a compatible
      ARM: socfpga: make debug_ll configurable
      ARM: socfpga: add arria10 support
      clk: socfpga: add arria10 clk drivers
      ARM: socfpga: add support for reflex achilles board
      ARM: socfpga: add arria10 defconfig

Ulrich =D6lmann (1):
      docs: update vendor URL for Vincell-LT

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
