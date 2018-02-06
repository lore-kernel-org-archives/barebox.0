Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eiyx4-0002X8-Ve
 for barebox@lists.infradead.org; Tue, 06 Feb 2018 08:50:10 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1eiyws-0006sm-E7
 for barebox@lists.infradead.org; Tue, 06 Feb 2018 09:49:54 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1eiyws-0008Ea-2u
 for barebox@lists.infradead.org; Tue, 06 Feb 2018 09:49:54 +0100
Date: Tue, 6 Feb 2018 09:49:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180206084953.sf7eot3p753blqye@pengutronix.de>
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
Subject: v2018.02.0
To: Barebox List <barebox@lists.infradead.org>

Hi All,

We have a Release for Febuary. There are some reasons for updating:
- We now have a more robust way of finding nodes in a loaded device
  tree which correspond to our internal device tree. This has become
  necessary because the OF mtd fixups did not work anymore on i.MX6
  due to renaming the device tree nodes upstream
- Fastboot now has sparse support. This is particularly useful to
  upload images that do not fit into RAM
- Sam has started moving the AT91 port over to device tree. Some
  SoCs can probe from device tree already
- ubiformat is much faster now because we do not waste our time
  printing console messages anymore.

As usual see below for a complete list of patches that went into this
release.

Have Fun!

 Sascha

----------------------------------------------------------------
Aleksander Morgado (1):
      of: base: fix segfault in of_get_machine_compatible()

Andrey Smirnov (6):
      i.MX: Fix MX7_UART2_BASE_ADDR
      i.MX7: Add CCM definitions for UART2
      i.MX: ecspi: Enable imx->clk as a part of initialization
      i.MX: Select DRIVER_SPI_IMX_2_3 for i.MX7
      Revert "mci: imx-esdhc: Enable clock"
      partitions: dos: Treat all extended partition types equally

Antony Pavlov (4):
      Kconfig: drop unused HAS_POWEROFF
      move parseopt to lib/
      include/parseopt.h: add guard macro
      parseopt: introduce parseopt_u16() and parseopt_str()

Christoph Fritz (1):
      ARM: i.MX6: add new silicon revision number 1.6

Lucas Stach (2):
      net: designware: add missing headers
      reset: add missing stub for reset_control_get

Masahiro Yamada (1):
      linux/kernel.h: move ALIGN_DOWN() to include/linux/kernel.h

Oleksij Rempel (2):
      of: base: use root_node compatible as suggestion for a hostname
      net: phy: ar8327: fix ar8327n_reg_read

Peter Mamonov (3):
      lib: parse_area_spec: don't modify *start value if parse failed
      lib: parse_area_spec: part of the area spec after -/+ should start wi=
th a digit
      lib: parse_area_spec: no extra symbols after area spec are allowed ex=
cept for spaces

Sam Ravnborg (30):
      build: fix that defaultenv is always rebuilt
      build: fix that passwd.h is always built
      build: fix that the bbenv file is always rebuilt
      build: fix that LZO file is always rebuilt
      at91: mmccpu: remove board support for mmccpu
      arm: at91: refactor lowlevel_init selection
      arm: at91: drop unused at91sam9x5_lowlevel_init.c
      arm: at91: add at91sam926x_board_init.h
      arm: at91: code cleanup in at91sam926x_board_init
      at91sam9263ek: move reset vector to board code
      at91sam9261ek, at91sam9g10ek: move reset vector to board code
      pm9261: move reset vector to board code
      at91: drop unused at91sam9261_lowlevel_init
      pm9263: move reset vector to board code
      {usb,tny}-a926x: move reset vector to board code
      qil-a926x: move reset vector to board code
      haba-knx: move reset vector to board code
      sama5d{3, 4}{xek, xplained}: move reset vector to board code
      at91sam9n12ek: move reset vector to board code
      at91sam9260ek, at91sam9g20ek: move reset vector to board code
      at91sam9m10g45ek, at91sam9m10ihd, pm9g45: move reset vector to board =
code
      animeo: move reset vector to board code
      telit-evk-pro3: move reset vector to board code
      dss11: move reset vector to board code
      at91rm9200ek: move reset vector to board code
      arm: at91: remove leftovers from moving reset code in mach-at91
      atmel_lcdfb: introduce driver data
      arm: at91: move irq_fixup to header file
      arm: at91: simplify soc setup
      at91sam9263ek: enable DT support

Sascha Hauer (28):
      fs: implement ftruncate
      device parameters: Allow dots in device names for setenv aswell
      ubiformat: Lower message printing frequency
      ubiformat: Add ubiformat write function
      Documentation: USB gadget: Add section for partition description
      usbgadget: Update command help text
      dts: update to v4.15-rc2
      dts: update to v4.15-rc3
      dts: update to v4.15-rc4
      dts: update to v4.15-rc5
      dts: update to v4.15-rc6
      dts: update to v4.15-rc7
      Add support for fastboot sparse images
      filetype: Add fastboot sparse format detection
      file_list: Add ubi flag
      usb: gadget: fastboot: Add sparse image support
      FIT: export fit_open_configuration() and fit_open_image()
      Merge branch 'for-next/at91'
      Merge branch 'for-next/build'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/fastboot-sparse'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/net-designware'
      Merge branch 'for-next/socfpga'
      of: Add function to find the same node in another tree
      of: mtd: partition: Use reproducible node names for fixup
      Release v2018.02.0

Steffen Trumtrar (8):
      i2c: designware: evaluate i2c-sda-hold-time property
      net: designware: move probe to generic driver
      net: add SoCFPGA-specific designware driver
      ARM: SoCFPGA: remove emac init code
      net: designware: add warning for drvdata
      ARM: socfpga: get rid of clock-frequency assignments
      ARM: socfpga: move environment from dtsi to board dts
      reset: reset-socfpga: sync driver with linux

Ulrich =D6lmann (1):
      commands/Kconfig: fix copy'n'paste error in CMD_GPIO help

Uwe Kleine-K=F6nig (2):
      string.h: Implement strndup
      mci: drop unused parameter from mci_switch()


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
