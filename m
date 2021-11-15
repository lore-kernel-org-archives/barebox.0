Delivery-date: Mon, 15 Nov 2021 14:22:25 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mmbwH-00018o-CS
	for lore@lore.pengutronix.de; Mon, 15 Nov 2021 14:22:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mmbwF-0001Yt-1D
	for lore@pengutronix.de; Mon, 15 Nov 2021 14:22:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:MIME-Version:Message-ID:Subject:To
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sp+T/juhIBC1L+77neAzsmU8St6cRy350kpDFP2XtQA=; b=gfJf2RnqMCu0TY
	Sx2xa3RQz8J2N+mAjtRIPk6I4cEWBNSbvfbg6ZFmaR01yZAMifcG8f9+rt4h/LJhbEdJK00HfYOpV
	g+j5baHqVcXbCTpgrR54jBbLMCvIE2HPsw+WRD2mLGrjJ90+yNVGw0EkHP2woALDZec9GTTNsQJdr
	gbwDnFJWQERsLOdMGXapWqA/M+0j/O4WmUnNkZotG7SmKZyk1/YuV8ciHmoQiY4jZWAvx2j2ZCGNk
	HNCQWSJl47oE4Khs3VqenNt2Jrx16WxkrtXfmmfwlbk+IkCRhWuqJzYCTYYWv4BkyTuSw2/c6d1tq
	K2yr4YDy9R9cVKWiG0Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmbur-00FeCW-4Y; Mon, 15 Nov 2021 13:20:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmbul-00FeB8-EG
 for barebox@lists.infradead.org; Mon, 15 Nov 2021 13:20:54 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mmbuj-0001Gp-Gy; Mon, 15 Nov 2021 14:20:49 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mmbuj-0004F4-81; Mon, 15 Nov 2021 14:20:49 +0100
Date: Mon, 15 Nov 2021 14:20:49 +0100
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <20211115132049.GB6556@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:11:17 up 270 days, 16:35, 152 users,  load average: 0.34, 0.30,
 0.28
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211115_052051_676510_366E2128 
X-CRM114-Status: GOOD (  20.37  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: v2021.11.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi All,

barebox-2021.11.0 is out. Worth mentioning this time is a new SoC
supported: RISC-V Litex. Also we have i.MX8MN-EVK and Xilinx zcu106
board support. There are some new drivers as well: virtio network,
LiteX SPI flash support, LiteEth support and NXP IFC NAND support.

As usual, see below for a full list of changes.

Have Fun!
  Sascha

--------------------------------8<---------------------------------

Ahmad Fatoum (47):
      watchdog: imxwd: register explicit warm reset handler
      ARM: i.MX8MM: add reboot to serial download mode
      net: drop Calxeda Highbank xgmac driver support
      net: make ARC MAC driver 32-bit only
      asm-generic: include bitio.h from io.h
      x86: define phys_to_virt and virt_to_phys
      net: e1000: split EEPROM and barebox MTD wrapper into separate files
      Documentation: boards: at91: remove done TODOs
      ARM: at91: sam9_smc: register driver earlier
      ARM: AT91: migrate sama5d3-xplained to DT
      common: remove !SANDBOX dependency for target tools
      common: add new menu for target tools
      scripts: omap3-usb-loader: make proper use of pkg-config --cflags
      scripts: allow building USB loader tools for target as well
      arm64: Don't truncate upper 32 bits in ENTRY_FUNCTION arg registers
      ARM: i.MX8MP: move SCTR enabling into imx8mp_cpu_lowlevel_init
      ARM: at91: sama5d27_som1_ek: populate MAC address from EEPROM
      ARM: i.MX8MP: bbu: fix wrong flash header offset for eMMC boot partit=
ion
      ARM: i.MX8MP: EVK: change bbu handler from eMMC user to boot partition
      pinctrl: bcm2835: Probe driver earlier
      pinctrl: bcm2835: Add support for bcm2711
      mci: imx-esdhc-pbl: support eMMC boot partitions on i.MX8MP
      ARM: i.MX: add i.MX8MN (Nano) SoC support boilerplate
      clk: imx: add i.MX8MN (Nano) support
      ARM: i.MX8MN: adapt early clock support
      ARM: i.MX: extend drivers for i.MX8MN (Nano) support
      ddr: imx8m: add i.MX8MN (Nano) support
      ddr: imx8m: ddrphy_train: add DDR4 support
      scripts: imx: add i.MX8MN support to imx-image
      ARM: i.MX8MN: add i.MX8MN-EVK support
      net: add virtio network driver
      fs: remove unused struct fs_device_d::parent_device
      Documentation: framebuffer: remove note about lack of backlight suppo=
rt
      video: simplefb-client: populate video mode field
      video: simplefb-client: make probe less verbose
      commands: smc: disable -c (start cpu) test option for ARMv8
      ARM: document arm_setup_stack() pitfalls
      RISC-V: virt: support poweroff/restart on tinyemu
      console: fixup add new CONFIG_CONSOLE_DISABLE_INPUT option
      ARM: Rockchip: fix path to rkbin firmware in documentation
      ARM: psci: client: fix power off and reset via 64-bit secure monitor
      ARM: i.MX8M: nxp-imx8mn-evk: use regular i2c read for device detection
      net: designware: eqos: fix MDIO regression for STM32MP1 boards
      mci: dw_mmc: make reset control optional again
      pci: efi: skip driver model fixup for non-EFI PCI busses
      efi: efi-iomem: don't add EFI loader code/data as memory banks
      efi: efi-iomem: fix erroneous use of IS_ENABLED()

Andrej Picej (1):
      hush: fix conditional statements exit code

Antony Pavlov (9):
      clocksource: timer-riscv: select CSR from device tree
      serial: add litex UART driver
      console: support set baudrate for fixed baudrate drivers
      gpio: add driver for 74xx-ICs with MMIO access
      mtd: core: fix whitespaces
      spi: add litex spiflash driver
      net: add LiteEth driver
      RISC-V: add LiteX SoC and linux-on-litex-vexriscv support
      RISC-V: add litex_linux_defconfig

Daniel Br=E1t (1):
      ARM: rpi_defconfig: Enable PHY core for dwc2 USB driver

Ian Abbott (2):
      ARM: Terasic DE0-Nano-SoC/Atlas-SoC: Use upstream compatible string
      ARM: Terasic SoCkit: Use upstream compatible string

Jules Maselbas (2):
      common: Select CRC32 dependency for DEFAULT_ENVIRONMENT
      usb: gadget: dfu: Rework dfu command to use usbgadget

Karfich, Oleg (1):
      net: cpsw: fix ethernet bringup in case of a fixed-link phy

Marcelo Politzer (1):
      serial: implement riscv SBI console support

Marco Felsch (5):
      scripts: bareboxenv: add erase hint if build as host-tool
      ARM: i.MX6: boot: detect USB serial downloader more reliable
      fastboot net: add setter for global.fastboot.net.autostart
      usb: imx-us-phy: add vbus_valid ro parameter
      state: backend_raw: fix ignoring unpack failures

Michael Riesch (4):
      arm: rockchip-rk3568-evb: add hardware id detection
      arm: zynqmp: add support for xilinx zcu106 board
      Documentation: boards: zynqmp: fix broken links
      arm: zynqmp: add boot source support

Michael Tretter (4):
      firmware: zynqmp-fpga: initialize flags at function start
      firmware: zynqmp-fpga: avoid additional buffer for size argument
      firmware: zynqmp-fpga: do not use DMA coherent memory for bitstream
      ARM: zynqmp: use std_file_update as update handler

Oleksij Rempel (4):
      ARM: boards: protonic-imx6: enable deep-probe support
      ARM: boards: protonic-imx6: use decode error values instead error num=
bers.
      net: dhcp: send current hostname as part of the DHCP request
      net: dhcp: set default DHCP vendor ID to "barebox"

Renaud Barbier (3):
      ARM: atomic.h: add 64-bit counter support
      nand: add NXP IFC nand driver
      ls1046ardb: enable IFC NAND.

Robin van der Gracht (8):
      ARM: boards: protonic-imx6: Run usb boot entry instead of bare device
      ARM: boards: protonic-imx6: Don't fixup MAC address for disabled devi=
ce
      ARM: dts: imx6dl-prtvt7: Add brand state variable
      ARM: boards: protonic-imx6: Don't register SD with bbu
      ARM: boards: protonic-imx6: Add emmc_usdhc machine data variable
      ARM: boards: protonic-imx6: Enable bootchooser on prti6g board
      ARM: boards: protonic-imx6: Skip usb check on prtvt7 by default
      ARM: boards: protonic-imx6: Add support for jozacp board

Rouven Czerwinski (4):
      file_list: add file_list_parse_null()
      fastboot: use file_list_parse_null()
      console: add new CONFIG_CONSOLE_DISABLE_INPUT option
      net: eqos: let phy_resume handle fixed link phys

Sascha Hauer (25):
      dts: update to v5.14-rc1
      dts: update to v5.14-rc2
      dts: update to v5.14-rc3
      dts: update to v5.14-rc4
      dts: update to v5.14-rc5
      dts: update to v5.14-rc6
      ARM: i.MX8m: Add of_compatible imd tags for i.MX8 boards
      dts: update to v5.14-rc7
      dts: update to v5.14
      dts: update to v5.15-rc1
      dts: update to v5.15-rc2
      dts: update to v5.15-rc3
      Merge branch 'for-next/arm'
      Merge branch 'for-next/at91'
      dts: update to v5.15-rc4
      Merge branch 'for-next/dts'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/layerscape'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/protonic'
      Merge branch 'for-next/riscv'
      Merge branch 'for-next/targettools'
      Merge branch 'for-next/zynqmp'
      sandbox: Fix stickypage.bin dependencies
      Release v2021.11.0

Steffen Trumtrar (2):
      scripts: socfpga_import_preloader: make sdk optional
      mci: sdhci: fix big-endian write for blockcount/size

Trent Piepho (2):
      ddr: imx8m: Rework ddrphy code and fix DDR-1067 on iMX8MM
      kbuild: dtc: Allow adding device tree fragments via config

Ulrich =D6lmann (3):
      common: Kconfig: fix typos
      common: Kconfig: fix indentation
      Documentation: reboot-mode: fix typos

Uwe Kleine-K=F6nig (6):
      arm/mvebu: sync barebox-arm-head.h to generic variant
      arm: mxs: Replace license and copyright boilerplate by SPDX identifie=
rs
      mci: imx-esdhc-pbl: Fix two typos in a comment
      mci-bcm2835: Don't block infinitely while waiting for a command compl=
etion
      mci-bcm2835: Fix return type handling of bcm2835_mci_wait_command_don=
e()
      mci: Improve error message for non-existent vmmc regulator
-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

