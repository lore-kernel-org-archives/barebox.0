Delivery-date: Wed, 19 Apr 2023 09:05:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pp1sG-008e5G-MI
	for lore@lore.pengutronix.de; Wed, 19 Apr 2023 09:05:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pp1sG-0005AH-07
	for lore@pengutronix.de; Wed, 19 Apr 2023 09:05:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:Content-Type:
	MIME-Version:Message-ID:Subject:To:Date:Reply-To:Cc:Content-Transfer-Encoding
	:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=eQBo6pNDf26d84YiTM7sp8bhITFl1qUMxAAdOUjILxI=; b=0aksDlKvBZXG157L4rW7B/vdRf
	8sm4OaKoeXZMdGO0eh3bCBqEBBiNx7dxqqJOwoN8nhPi4SjGGd2sw3BON2e+klJ1uE9wgUPMxGC/c
	n8sv2+vJM64M33ZdKZoOBZlxUebM3hjNOknAIPZoECq/6bfu0WgBCmVHzurysJL42QG8z+R4EXGRU
	7LDeWPRezfup2XgBUnVtOmxk1j6CGZ9DOBnTqYp39096YJRDe2ErWMAxjHKdTntnCpFQlUS4+s3Ze
	o/0gmze++5/LZZjIHmXserG+IvZJQEancJaH3GbTjy768kkbEVAYtw0IBF+MyM/7mYjYtOXzyLax1
	/CxXyMwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pp1qj-004LVd-2B;
	Wed, 19 Apr 2023 07:03:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pp1qe-004LT4-23
	for barebox@lists.infradead.org;
	Wed, 19 Apr 2023 07:03:28 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pp1qX-00051n-PE; Wed, 19 Apr 2023 09:03:17 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pp1qX-0002Cr-Ev; Wed, 19 Apr 2023 09:03:17 +0200
Date: Wed, 19 Apr 2023 09:03:17 +0200
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230419070317.GP13543@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230419_000324_854167_1EB06832 
X-CRM114-Status: GOOD (  22.88  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: v2023.04.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


Hi all,

I am happy to announce barebox-2023.04.0.

We have several interesting changes this time. First of all barebox now
supports building for multiple ARM SoCs in a single config. We now have
a multi_v7_defconfig (for bcm283x, i.MX, Omap, Rockchip, stm32mp and
vexpress) and a multi_v8_defconfig (bcm283x, i.MX, Omap, Rockchip and
zynqmp), more SoCs can be added later.
Furthermore the device tree overlay support can now patch the barebox
live tree, along with prbing additional devices enabled in an overlay.
This can help in cases when a generic board has different runtime
detectable extension boards detected during runtime. This works well for
regular platform devices and also for I2C devices, not so well for SPI
devices currently.
With this release barebox gains NXP Layerscape LS1021A support along
with the LS1021A IOT board support.
Some old boards/architectures have been removed this time. the Samsung
S3C support was removed as all supported boards were really old and
no longer actively maintained. Also the i.MX boards which haven't been
switched to device tree support have been removed, with this i.MX is
now device tree only. For the AT91 architecture all boards have been
moved over to multi image support, which allowed us to get rid of some
defconfig files.

Overall this is one of the bigger barebox releases. See below for a full
list of changes that went into this release.

Have fun!
 Sascha

--------------------------------8<----------------------------

Ahmad Fatoum (35):
      gpio: gpioinfo: use dev_name to get device name
      gpio: pca953x: sync DT compatibles with Linux
      gpio: pca953x: add optional support for regulator and reset GPIO
      blspec: support higher verbosity levels for boot
      ARM: i.MX8M: add option to install OP-TEE
      drivers: implement of_optee_fixup helper function
      ARM: i.MX8M: fixup op-tee nodes
      drivers: drop unneeded CONFIG_CRYPTO_HW guard
      of: base: factor out of_merge_nodes from of_copy_node
      of: support of_ensure_probed for top-level machine device
      boards: qemu-virt: ensure board driver probe at postcore_initcall level
      boards: qemu-virt: support passing in FIT public key
      net: dsa: abort registration when master is unresolvable
      hush: pacify clang -Wparentheses-equality warning
      ARM: dts: i.MX8MP: snps,dis-u2-freeclk-exists-quirk
      pinctrl: stm32: Remove check for pins-are-numbered
      test: riscv: fix YAMLs after defconfig rename
      RISC-V: board-dt-2nd: fix hang in startup
      RISC-V: sifive: disable non-functional SPI nodes
      video: qemu-ramfb: reduce -ENODEV lo level to debug
      gpiolib: fix gpio label generation with gpiod_get
      test: emulate.pl: fix firmware use with non-tuxmake out-of-tree build
      RISC-V: restrict GCC optimization some more
      RISC-V: configs: rv64i_defconfig: disable SBI serial
      net: dsa: realtek: include needed headers directly
      net: linux/mdio.h: add missing init.h header
      Kbuild: export CROSS_PKG_CONFIG
      treewide: fix includes missed by multiarch support
      mci: dw_mmc: make reset optional
      treewide: add missing device tree artifact cleanup where needed
      ARM64: setupc: don't invoke KASAN before relocation
      mci: bcm2835: return command timeout silently
      arm: error out if __LINUX_ARM_ARCH__ is undefined
      libfile: don't leak file descriptors in compare_file
      ARM: i.MX6: fix DEBUG_LL use

Albert Schwarzkopf (1):
      scripts: imx: Ignore ';' and '\n' in quotes

Denis Orlov (8):
      dma: use dma/cpu conversions correctly in dma_map/unmap_single
      MIPS: dma-default: use virtual addresses when flushing caches
      MIPS: dma-default: do not flush caches in dma_sync_single_* excessively
      lib: string: remove duplicated function
      MIPS: bootm: do not free fdt pointer that contains an error
      MIPS: bootm: do not leak memory on error in of_overlay_load_firmware()
      MIPS: bootm: remove unnecessary phys/virt conversions
      common: elf: use proper field to get segment memory size

Johannes Zink (1):
      Documentation: devicetree: list automatic boot argument fixups

Jules Maselbas (1):
      usb: dwc2: Fix memory leak in probe error path

Marco Felsch (1):
      ARM: boards: protonic-imx6: fix bbu_handler device paths

Oleksij Rempel (1):
      ARM: boards: protonic-imx6: fix board probe for LANMCU

Renaud Barbier (4):
      Subject: [PATCH 1/1] ARM:lib32: add architected timer
      ARM: add LS1021A to Layerscape machine support
      ARM: Layerscape: Add LS1021A IOT board support
      ARM: LS1021A: slow boot

Roland Hieber (1):
      Documentation: imx: improve reboot mode section

Sam Ravnborg (2):
      ARM: sama5d4_wifx: fix build with moved mach files
      ARM: add sama5d4_wifx to at91_multi_defconfig

Sascha Hauer (116):
      ARM: remove samsung arch
      mci: remove s3c driver
      mtd: nand: remove s3c driver
      serial: remove s3c driver
      video: remove s3c driver
      ARM: mxs: remove unused mach/clock.h
      ARM: imx: remove unused mach/clock.h
      ARM: rockchip: drop mach/timer.h
      ARM: i.MX: Move imxfb.h to include/platform_data/
      pinctrl: rockchip: Fix uninitialized var warning
      ARM: at91: remove unnecessary configs
      ARM: at91: Switch all boards to multiimage
      at91: consolidate usb-a963 128m images
      ARM: pxa: Move plat/ include files to mach/
      scripts: dtc: disable interrupt_provider warnings
      ARM: dts: digic4: Fix dtc warnings
      ARM: dts: ep7212-clep7212: Fix dtc warnings
      ARM: dts: Fix dtc warnings in state nodes
      ARM: dts: Fix dtc warnings in barebox,environment nodes
      ARM: dts: imx7d-peb-av-02: Fix dtc warning
      ARM: dts: imx7d-peb-eval-02: Fix dtc warnings
      ARM: dts: imx6ull-jozacp: Move regulators out of subnode
      ARM: i.MX: Remove old boards
      ARM: i.MX: Remove config CONFIG_ARCH_TEXT_BASE
      ARM: i.MX: Sort board Kconfig entries
      ARM: i.MX: let boards depend on 32/64bit
      ARM: add ENTRY_FUNCTION_HEAD macro
      ARM: mvebu: Use ENTRY_FUNCTION_HEAD
      ARM: at91: Use ENTRY_FUNCTION_HEAD
      ARM: Drop HAVE_MACH_ARM_HEAD
      ARM: drop CONFIG_HAS_ASM_DEBUG_LL
      regulator: pfuze: remove unused include
      ARM: drop unused zynq code in Makefile
      ARM: drop unused mvebu code in Makefile
      ARM: drop unused am35xx code in Makefile
      ARM: Makefile: Drop board-y
      ARM: i.MX: Add missing include
      ARM: stm32mp_defconfig: Enable remaining boards
      usb: dwc3: Use clk_bulk_get_all()
      mci: imx-esdhc-pbl: add missing include
      ARM: i.MX: Move mach header files to include/mach/imx
      ARM: Rockchip: Move mach header files to include/mach/rockchip
      ARM: Zynqmp: Move mach header files to include/mach/zynqmp
      ARM: mvebu: Move mach header files to include/mach/mvebu
      ARM: davinci: Move mach header files to include/mach/davinci
      ARM: bcm283x: Move mach header files to include/mach/bcm283x
      ARM: stm32mp: Move mach header files to include/mach/stm32mp
      ARM: zynq: Move mach header files to include/mach/zynq
      ARM: vexpress: Move mach header files to include/mach/vexpress
      ARM: versatile: Move mach header files to include/mach/versatile
      ARM: layerscape: Move mach header files to include/mach/layerscape
      ARM: tegra: Move mach header files to include/mach/tegra
      ARM: uemd: Move mach header files to include/mach/uemd
      ARM: socfpga: Move mach header files to include/mach/socfpga
      ARM: pxa: Move mach header files to include/mach/pxa
      ARM: omap: Move mach header files to include/mach/omap
      ARM: nomadik: Move mach header files to include/mach/nomadik
      ARM: mxs: Move mach header files to include/mach/mxs
      ARM: ep93xx: Move mach header files to include/mach/ep93xx
      ARM: digic: Move mach header files to include/mach/digic
      ARM: clps711x: Move mach header files to include/mach/clps711x
      ARM: at91: Move mach header files to include/mach/at91
      ARM: Drop mach dir include path
      include/mach/: use unique double inclusion protectors
      ARM: i.MX: Add missing include
      ARM: i.MX: Only provide PUTC_LL() when activated
      debug_ll ns16550: Do not define PUTC_LL()
      debug_ll ns16550: Use CONFIG_BAUDRATE
      ARM: Rockchip: Use ns16550 debug_ll helper
      ARM: Rockchip: Only provide PUTC_LL() when activated
      ARM: omap: Use ns16550 debug_ll helper
      ARM: omap: Only provide PUTC_LL() when activated
      ARM: omap: usbboot: Enable USB communication when needed
      ARM: omap: Make multi-arch safe
      ARM: Rockchip: Make safe for multi-arch
      pm_domains: Enable explicitly when we have power-domain providers
      ARM: add multi-arch support
      ARM: omap: Add support for multi-arch
      ARM: zynqmp: Add multi-arch support
      ARM: i.MX: move board selection into menu
      ARM: stm32mp: Only provide PUTC_LL() when activated
      ARM: stm32mp: Make safe for multi-arch
      ARM: stm32mp: Add multi-arch support
      ARM: vexpress: Drop unnecessary initcall
      ARM: vexpress: Only provide PUTC_LL() when activated
      ARM: vexpress: Add multi-arch support
      ARM: bcm283x: Only provide PUTC_LL() when activated
      ARM: bcm283x: Add multi-arch support
      ARM: Add multi_v7_defconfig
      ARM: Add multi_v8_defconfig
      clk: Rockchip: Fix arrays out of bounds access
      kbuild: Add target to build dtb overlay files
      driver: Add rescan hook to struct device
      i2c: implement rescan
      spi: Directly register SPI device
      spi: reduce scope of 'chip'
      spi: implement rescan
      ARM: Do not print exception stacktrace in panic
      of_overlay: Add option to apply overlay to live tree
      dts: update to v6.3-rc1
      dts: update to v6.3-rc2
      Merge branch 'for-next/arm' into next
      Merge branch 'for-next/dtc-warnings' into next
      Merge branch 'for-next/dts' into next
      Merge branch 'for-next/mips' into next
      Merge branch 'for-next/misc' into next
      Merge branch 'for-next/of-overlay' into next
      Merge branch 'next'
      net: macb: Adjust zynq compatibles to upstream device trees
      ARM: dts: rockchip: remove unused rk3568 dtsi files
      Revert "of: support of_ensure_probed for top-level machine device"
      Revert "boards: qemu-virt: ensure board driver probe at postcore_initcall level"
      Revert "boards: qemu-virt: support passing in FIT public key"
      ARM: i.MX: iim: Fix imx_iim_reg_write() return type
      arm: rockchip: radxa-rock3: Fix SD/eMMC device numbers
      Release v2023.04.0

Wolfram Sang (5):
      commands: edit: fix typo in Kconfig help text
      commands: nand: add missing parameters to help
      mtd: nand: atmel: legacy: add 'algo' to use
      mtd: nand: atmel: legacy: use proper ecc_shift
      mtd: nand: atmel: legacy: remove superfluous code

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


