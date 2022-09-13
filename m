Delivery-date: Tue, 13 Sep 2022 15:58:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oY6Qb-003lB3-Ge
	for lore@lore.pengutronix.de; Tue, 13 Sep 2022 15:58:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oY6QZ-0007gR-KW
	for lore@pengutronix.de; Tue, 13 Sep 2022 15:58:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Subject:To:
	Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ATe4cLsAm0UspErmjN5jWr6Ix7CMszqbvz3s4f3nLjY=; b=Wa+rM0anUj7kQK
	A/RYCMp2lbB0r0aV3Sw/s5CtGAHxKNTin+jku+XZR5oL2plFRd9UJXnCsoqREU/KAHNV4/B4jbFob
	oouhcq4x4XVNBsYgfc139cA6ydbxrTrc+SRsgHX92T+CT550hzfb4hBFsB9t0yulCkOSFKYxRhrPu
	i5nDAya+UIJjwTP1L6UB7evk+OUXnZu2+Psd4mL4mPFOytW8BClX/Q0Hg6oV6R1SJFaI52jtrBD3T
	uX9F7VNHHbeA4I50FoiuJwmq6vfetXq7PbAAn7ieHARaew3/u/kPREYK5ZtcdRBb1iBn0VG9ODmQw
	ln7ZO2Xj8yqfhRvJjZtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY6Oi-00B4BD-6H; Tue, 13 Sep 2022 13:56:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY6Ob-00B42K-II
	for barebox@lists.infradead.org; Tue, 13 Sep 2022 13:56:17 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oY6OX-0007Mr-F6; Tue, 13 Sep 2022 15:56:09 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oY6OX-0005HK-57; Tue, 13 Sep 2022 15:56:09 +0200
Date: Tue, 13 Sep 2022 15:56:09 +0200
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <20220913135609.GO6477@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_065614_841150_5861DD46 
X-CRM114-Status: GOOD (  19.57  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: v2022.09.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi All,

I am happy to announce barebox-2022.09.0.

This time we have a few new board supports: Support for the 96Boards Meerkat96
board is added as well as support for the Enclustra AA1 (SoCFPGA).  Also worth
noting is that we now have ROMAPI support for the i.MX8MP and i.MX8MN.  This
allows us to bootstrap barebox via USB on these SoCs. Another nice detail has
been added by Ahmad. The of_dump command now has an option to limit the data
size for each property to be printed. This makes it particularly useful for
showing FIT images.

A lot of other small fixes and improvements went into this release, see
below.

Have Fun!
 Sascha

-------------------------8<--------------------------

Ahmad Fatoum (75):
      ARM: i.MX8M: select ARM_USE_COMPRESSED_DTB for all boards
      ARM: i.MX8M: use compressed DTBs
      partitions: efi: register guid device parameter for disk GUID
      commands: implement devlookup to find device behind device file
      block: efi: allow disabling /dev/usbdiskX renaming
      ARM: i.MX8MN: pass along correct DT depending on variant
      regulator: fixed: remove duplicate always-on handling
      aiodev: add ST L3GD20 Gyroscope and temperature sensor support
      pinctrl: stm32: keep GPIO bank clocks enabled throughout
      spi: stm32: fix reads for sizes bigger than SZ_64K-1
      common: don't allow compressing in-barebox binaries again
      pbl: make USE_COMPRESSED_DTB a PBL-only feature
      pbl: remove redundant select UNCOMRPESS
      kbuild: gen-dtb-s: use Makefile.lib instead of duplicating cmd_lzo
      pbl: compressed-dtb: use flexible array member to access data
      kbuild: pbl: use same compression algo for both barebox and DTB
      lib: zstd: sync with Linux
      decompressor: define macros for non-PBL case as well
      of: base: factor out duplication for property formatting
      commands: of_dump: support limiting size of printed properties
      string: implement str_has_prefix
      booti: add debug prints for kernel header parsing
      reset: Fix of_reset_control_get() for consistent return values
      reset: implement reset_control_get_optional()
      reset: implement reset_control_get_count()
      ARM: i.MX8M: move TF-A chainload functions in <mach/xload.h>
      ARM: i.MX8M: imx8mn-evk: use generic imx8mn_load_and_start_image_via_tfa
      ARM: i.MX8MN: add SDPS barebox-side support
      ARM: i.MX8MN: evk: simplify DDR4/LPDDR4 selection code
      ddr: imx8m: rename type to more fitting ddrc|dram_type
      ARM: i.MX8M: remove struct dram_timing_info::dram_type again
      pbl: generalize fsl i2c_early API into pbl_i2c
      i2c: add <pbl/pmic.h> for PBL use
      ARM: i.MX8M: use new pbl/pmic.h API
      mci: imx-esdhc-pbl: fix warning about unused static function
      gitignore: add device tree blobs to top-level .gitignore
      defaultenv: ikconfig: add generated directory to .gitignore
      pbl: factor out pbl_bio API into pbl/bio.h
      scripts: imx-usb-loader: add i.MX8MN support
      RISC-V: asm: factor relocation related functions into asm/reloc.h
      ARM: asm: factor relocation related functions in asm/reloc.h
      MIPS: asm: add get_runtime_offset stub
      ARM: i.MX8MP: remove select for unused ARC PBL USB gadget driver
      driver: probe: report power domain attach failure
      commands: boot: support preselecting boot entry in menu
      mfd: implement mfd_add_devices
      regmap: implement regmap_init_i2c_smbus
      regulator: consult min_uv, max_uv for regulator_get_voltage
      blspec: refactor to prepare for booting by file path
      blspec: iterate over entries in lexical order
      boot: allow booting by bootspec absolute path
      mci: add hint on how to resolve warning about vmmc-supply
      test: self: add simple environment variable test
      test: self: include new tests in CONFIG_SELFTEST_ENABLE_ALL
      bootsource: rename existing bootsource_set to bootsource_set_raw
      bootsource: allow DT aliases and bootrom numbering to differ
      ARM: dts: rk356x: align bootsource_instance numbering and MMC DT aliases
      net: designware: rework Kconfig text and menu structure
      net: designware: eqos: stm32: remove duplicate error message
      net: designware: eqos: replace double accounting of interface up status
      net: designware: eqos: remove undefined eqos_reset prototype
      FIT: add first support for compressed images
      of: implement of_append_property
      test: self: add tests for of_append_property
      power: reset: reboot-mode: refactor to allow other mode- prefixes
      power: reset: reboot-mode: parse barebox,mode-* properties
      ARM: dts: stm32mp: reuse now upstream tamp node
      ARM: dts: stm32mp: add bootrom serial (DFU) reboot mode
      regulator: recursively enable/disable regulator dependency tree
      regulator: fixed: request vin-supply as needed
      regulator: add Rockchip rk808 support
      ARM: dts: imx6: marsboard: fix flash node after upstream rename
      ARM: i.MX8M: HABv4: make barebox SHA256 embedding POSIX-shell compatible
      fs: ubootvarfs: fix double-free unlinking U-Boot variables
      ARM: sync_caches_for_execution: don't flush disabled data cache

Alexander Shiyan (15):
      ARM: vexpress: Simplify sysctl initialization
      of: Use appropriate header for of_clk_init()
      usb: gadget: Fix Kconfig dependencies
      logo: Fix Kconfig dependencies
      ARM: mxs: Fix Kconfig dependencies
      ARM: boards: ccmx51: Remove unused KConfig option
      serial: ns16550: Reuse 48MHz default clock definition for non-DT OMAP boards
      drivers: rtc: pcf8536: Remove redundant variable
      drivers: rtc: abracon: Remove redundant variable
      drivers: regulator: fixed: Fix error path in probe
      drivers: pwm: imx: Remove redundant assignment
      drivers: gpio: pcf857x: Remove redundant assignment
      drivers: led: pca955x: Remove redundant assignment
      drivers: firmware: arm-scmi: Use core_platform_driver() macro
      ARM: dts: am335x-myirtech: Update to use upstream DT partition scheme

Antony Pavlov (1):
      asm-generic: provide phys_to_virt() and virt_to_phys()

An¸e Le¨nik (1):
      drivers: net: fec_imx: Fix system halt after FEC reinit

Bastian Krause (1):
      ARM: i.MX23: fix memory size calulcation

Daniel Brát (1):
      i2c: bcm283x: fix ending of transfer in case of NACK

Denis Orlov (7):
      net: e1000: remove superfluous allocation check
      net: e1000: properly read/write MDI registers on 8254x cards
      net: e1000: do not actually acquire/put swfw_sync on 8254x cards
      net: e1000: configure tx/rx and rctl in open() instead of init()
      net: rtl8169: properly map rx/tx buffers for dma
      net: rtl8169: enable pci device bus mastering on ifup
      net: rtl8169: free allocated memory on halt()

Johannes Zink (3):
      ARM: i.MX: configs: add recent boards to imx_v7_defconfig
      ARM: i.MX7: add 96Boards Meerkat96 support
      base: driver: print dev_err_probe message on permanent probe deferral

Jules Maselbas (1):
      gpiolib: Add of_xlate support

Marco Felsch (8):
      common: bootm: print error in case of appendroot failed
      ARM: i.MX8MN: fix phy-reset gpio
      phy: fix deep probe support
      phy: propagate error in of_phy_get_by_phandle
      usb: chipidea: imx: call enable_clk after all resources are requested
      ARM: i.MX8MP: adapt atf bl31 base address
      clk: imx8mm: remove SYS PLL 1/2 clock gates
      clk: imx8mn: remove SYS PLL 1/2 clock gates

Sam Ravnborg (8):
      pwm: atmel: Fix build and update
      ARM: at91: Make sdramc.h useable in multi image builds
      ARM: at91: Add initialize function to sdramc
      ARM: at91: Provide at91_mux_pio_pin for use in lowlevel
      mci: atmel_mci: Add PBL helper to configure highcapacity
      ARM: at91: Add at91sam9 xload_mmc for PBL use
      ARM: at91: Add extra register definitions
      ARM: at91: Add lowlevel helpers for at91sam9263

Sascha Hauer (29):
      dts: update to v5.19-rc4
      dts: update to v5.19-rc6
      ARM: i.MX8M: include only necessary ddrphy firmwares in image
      fs: Check if automount actually mounts something
      arm: rockchip: radxa-rock3: Add bbu handler for sd card
      ARM: i.MX8M: Add romapi support
      ARM: i.MX8MP: Add common code to load image and jump to it via TF-A
      ARM: i.MX8MP-EVK: Use imx8mp_load_and_start_image_via_tfa()
      imx-usb-loader: Factor out common code to function
      imx-usb-loader: rename mxs functions
      imx-usb-loader: Add i.MX8MP support
      imx-usb-loader: drop some casting
      imx-usb-loader: Fix first stage length
      imx-usb-loader: simplify read_memory()
      imx-usb-loader: verify correct image length
      imx-usb-loader: drop some unnecessary casting
      Merge branch 'for-next/at91'
      Merge branch 'for-next/bootsource'
      Merge branch 'for-next/compression'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/e1000'
      Merge branch 'for-next/efi'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/net-designware'
      Merge branch 'for-next/rk808'
      Merge branch 'for-next/socfpga'
      ARM: Fix barebox header generation on arm64
      Release v2022.09.0

Stefano Manni (1):
      kbuild: make FIT public key overwritable

Steffen Trumtrar (8):
      scripts: socfgpa_xml_to_config: document pincfg
      ARM: socfpga: achilles: remove cargo-cult
      ARM: socfpga: achilles: use dtbz instead of dtb
      ARM: socfpga: achilles: use ENTRY_FUNCTION_WITHSTACK
      ARM: socfpga: achilles: replace use of magicvalue
      ARM: socfpga: achilles: guard macros with braces
      ARM: socfpga: add support for Enclustra AA1
      ARM: socfpga: defconfig: add aa1

Uwe Kleine-König (4):
      watchdog: imxwd: Convert error messages in .probe to dev_err_probe()
      watchdog: imxwd: Add error messages for some failure points in .probe()
      ARM: i.MX8MM: Consolidate common code to load image and jump to it via TF-A
      ARM: i.MX8MM: Prepare loading only piggydata in imx-usb-loader

Yannick FERTRE (1):
      video: stm32: stm32_ltdc: fix data enable polarity

Yegor Yefremov (4):
      ARM: dts: am335x: update cpsw nodes
      ARM: baltos: use GPIO names for TCA6416 chip
      ARM: baltos: use GPIO names for DIP switches
      ARM: baltos: use GPIO name for mPCIe power enable pin

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


