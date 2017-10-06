Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e0KF7-00013k-PW
 for barebox@lists.infradead.org; Fri, 06 Oct 2017 04:28:11 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1e0KEm-00039g-01
 for barebox@lists.infradead.org; Fri, 06 Oct 2017 06:27:48 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1e0KEl-0005k4-Pw
 for barebox@lists.infradead.org; Fri, 06 Oct 2017 06:27:47 +0200
Date: Fri, 6 Oct 2017 06:27:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171006042747.eeihimu6x2ml7vjh@pengutronix.de>
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
Subject: v2017.10.0
To: Barebox List <barebox@lists.infradead.org>

Hi All,

We have an October Release. Mostly fixes this time which is good,
so there shouldn't be anything to worry about in this release.
I'm back to vacation for the next week, so don't expect any
reviews or comments from me.
See below for a list of patches that went into this release.

Have fun!
Sascha

----------------------------------------------------------------
Antony Pavlov (3):
      MIPS: add virt_to_phys() and phys_to_virt()
      gpio: gpio-generic: fix bgpio_map()
      gpio: gpio-generic: add dt support

Cl=E9ment Leger (1):
      Phy: Check NULL bus case and undetected phy via of

Daniel Schultz (4):
      arm: dts: am335x: Add emmc node to phycore-som
      arm: dts: Enable NAND in DTS instead of DTSI
      arm: dts: am335x: Add phycore emmc device tree
      arm: configs: AM335x: Enable mmc-extcsd command

Ga=EBl PORTAY (2):
      readline_simple: return -1 if getc fails
      readline_simple: remove obsolete documentation

Jan Luebbe (1):
      ARM: mvebu: armada-xp: configure PLL and PHY register

Juergen Borleis (12):
      state: keep backward compatibility
      bootchooser: avoid a use after free
      bootchooser: allow an empty namespace
      docs: remove build warning
      state: add debugging help
      docs: rework and extend the 'state' and 'bootchooser' documentation
      state: provide an error message when an error occurs
      state command: extend help part I
      state command: extend help part II
      state: use the given backend storage type name
      state: don't use uninitialized variable
      docs/DS1307: fix layout

Lucas Stach (4):
      Merge branch 'for-next/imx'
      Merge branch 'for-next/mips'
      Merge branch 'for-next/misc'
      ARM: phycore-imx6ul: use MAC address from OCOTP

Marc Kleine-Budde (1):
      bootm: bootm_open_initrd_uimage(): propagate error if initrd verifica=
tion fails

Michael Olbrich (1):
      efi: make sure efi-fs is started in the right order

Oleksij Rempel (17):
      filetype: fix file type detection for Barebox MIPS
      MIPS: ath79: add barebox update handler
      MIPS: ath79: provide CONFIG_SOC_QCA_AR9331 option
      MIPS: ath79: add initial QCA AR9344 SoC support
      MIPS: ath79: add TP-Link WDR4300 board support
      MIPS: tplink-mr3020: pbl: move WMAC init after flash addr test
      MIPS: tplink-mr3020: pbl: move hornet_mips24k_cp0_setup after flash a=
ddr test
      MIPS: tplink-mr3020_defconfig: enable more options
      MIPS: tplink-mr3020.dts: add partition table
      phy: don't crash if we have no parent
      usb: gadget: autostart: properly release f_multi_opts
      Documentation: efi: add example how to create EFI partition
      efi: add iBASE MI991AF documentation.
      of: base: port of_device_is_big_endian from linux
      asm-generic: partially sync io.h with linux kernel
      x86: asm: include asm-generic.h
      serial: ns16550: provide big-endian support

Sam Ravnborg (7):
      atmel_lcdfb: move dmacon, lcdcon2 to local data
      atmel_lcdfb: move lcd_wiring_mode, have_intensity_bit to local data
      atmel_lcdfb: define power_control gpio in platform_data
      atmel_lcdfb: move pdata init to a separate function
      atmel_lcdfb: add DT support
      at91_udc: add DT support
      at91: sync mach/barebox-arm-head.h

Sascha Hauer (19):
      mtd: nand: Only call ONFI get/set features on supported chips
      mtd: nand: nand_mxs: Don't call get/set features on chips which do no=
t support it
      dts: update to v4.13-rc3
      dts: update to v4.13-rc4
      dts: update to v4.13-rc6
      dts: update to v4.13-rc7
      dts: update to v4.13
      Merge branch 'for-next/at91'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/efi'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/mips'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mtd'
      Merge branch 'for-next/mvebu'
      Merge branch 'for-next/net'
      Merge branch 'for-next/omap'
      Merge branch 'for-next/state'
      Release v2017.10.0

Steffen Trumtrar (1):
      memtest: fix list iteration in region setup

Uwe Kleine-K=F6nig (8):
      ARM: imx: phyCORE i.MX7: use register defines in dcd table
      spi: imx: add error checking
      spi: imx: add timeout to xchg_single
      scripts/imx: fix out-of-bounds access for big DCD tables
      clk: imx: cpu: don't store the address of a function parameter
      loadxy: add missing ) to help text
      mtd: nand-mxs: improve error messages
      regsubst.pl: fix typo in help text

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
