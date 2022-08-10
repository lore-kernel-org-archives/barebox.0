Delivery-date: Wed, 10 Aug 2022 09:09:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLfqV-000imD-HQ
	for lore@lore.pengutronix.de; Wed, 10 Aug 2022 09:09:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLfqV-0002fW-Dv
	for lore@pengutronix.de; Wed, 10 Aug 2022 09:09:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Subject:To:
	Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PXXPWSXzASErvJ0KcZk96Vcp9F13lVEwFu+yJRK+Wc4=; b=VINOhUbWOPf13I
	Fr+pe08M7KNN1nLgMexVSumic/y4QGse/Ls5Vt+wp2XwqOCZzTyQByLTih2iVkWgH+B8r1/Tu4fr6
	nQjfnjfA/GslwecBkw/Aagg7EdeJgXxxgnEPdCJgE1Sld+3RGpu5UONsA6ibIFbZPXCkWZn2bAmuK
	KRw8q+2Z7fSBckP4fLSudPNTEqMq1Rk78CuQSLAUYZjLI+j9hQfXxsiFNyWvtycU/uqUZM1pn8deG
	EO3LhaPTOoyBq4VIBItQVQMeseBIIWD1BvHqDHKmWPiaGXEtDhqnlhEUCqAWp1efHCdtN/2ETjrgO
	lZyRfXhhSjpkSSsw4tIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLfoy-00AFVA-No; Wed, 10 Aug 2022 07:08:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLfoq-00AFRz-4J
	for barebox@lists.infradead.org; Wed, 10 Aug 2022 07:08:00 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oLfoo-0002XE-Na; Wed, 10 Aug 2022 09:07:54 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oLfoo-00036w-AI; Wed, 10 Aug 2022 09:07:54 +0200
Date: Wed, 10 Aug 2022 09:07:54 +0200
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <20220810070754.GX31528@pengutronix.de>
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
X-CRM114-CacheID: sfid-20220810_000756_410164_00E665C1 
X-CRM114-Status: GOOD (  17.46  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: v2022.08.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi All,

I just released barebox-2022.08.0. In case you wonder I skipped the
release for July due to my summer holidays.
For this release we gained two new board supports: The RK3568 based
Radxa Rock3 board is now supported and also the Raspberry Pi 4 in 64bit
mode. Also we now have I2C support for the Raspberry Pi family, give it
a try!
As usual, many more small changes detailed below.

Have Fun!
  Sascha

-----------------------------8<-------------------------------------

Ahmad Fatoum (68):
      ARM: cpuinfo: print exception level
      bbu: move barebox_update eMMC boot handling into common code
      bbu: use free(NULL) to simplify function cleanup
      bbu: add flag for enabling eMMC boot ack
      bbu: export bbu_std_file_handler for use in custom handlers
      filetype: differentiate between STM32MP FSBL and SSBL images
      ARM: stm32mp: bbu: add FIP update handler
      fastboot: support TF-A FSBL and FIP images for barebox update
      ARM: cpuinfo: print CPU mainid if unknown
      ARM: cpuinfo: detect Cortex-A72
      ARM64/RISC-V: booti: support global.bootm.image.loadaddr
      console: add new $global.bootm.earlycon parameter
      serial: ns16550: add $global.bootm.earlycon fixup support
      serial: amba-pl011: add $global.bootm.earlycon fixup support
      serial: atmel: add $global.bootm.earlycon fixup support
      serial: imx: add $global.bootm.earlycon fixup support
      serial: litex: add linux console/earlycon fixup support
      serial: lpuart: add $global.bootm.earlycon fixup support
      video: efi_gop: add $global.bootm.earlycon fixup for framebuffer console
      commands: ls: explicitly check for directories with S_ISDIR
      block: set S_IFBLK for block devices instead of S_IFCHR
      common: add help text for CONFIG_STATE
      nvmem: rmem: get, don't request, memory region
      of: remove unused and misleading #cells in /memreserve
      of: request reserved memory regions so other code can't
      fastboot: always try barebox_update handler for bbu- partitions
      dma: avoid clash between static inline and extern dma_alloc declarations
      dma: add dma_sync nop stubs for PBL
      ARM64: asm: implement read_cpuid_id()
      ARM: rpi: move bcm2835_add_device_sdram() into header
      ARM: rpi: support PBL use of mbox
      ARM: rpi: split out mbox helpers to share code with PBL
      ARM: rpi: switch to ARM_USE_COMPRESSED_DTB
      ARM: rpi: add generic Raspberry Pi image
      ARM: rpi: support FDT in x0 for 64bit configurations
      serial: ns16550: rpi: remove ungating now done by proper clk driver
      ARM: cpu: prevent recursive dependencies via CPU_SUPPORTS_64BIT_KERNEL
      ARM: cpu: remove unnecessary CONFIG_SYS_SUPPORTS_64BIT_KERNEL
      ARM: cpu: remove unused SYS_SUPPORTS_32BIT_KERNEL
      ARM: rpi: add Raspberry Pi 3 64-bit build support
      ARM: rpi: rpi3: disallow MMU_EARLY && 64BIT
      clk: rpi: add Raspberry Pi 4 support
      clocksource: bcm2835: bump below architeced timer for AArch64
      ARM: rpi: add Raspberry Pi 4 support
      ARM: rpi: add debug_ll support for Raspberry Pi 4
      doc: bcm283x: reference newer firmware
      ARM: rpi: use correct kernel8.img as name for 64-bit
      net: designware: rockchip: future-proof driver for more SoCs
      state: don't report error for -ENOMEDIUM
      ddr: imx8m: remove header including itself
      ARM: cpu: start: don't panic when only initial memory known
      checkpatch: don't warn about %pe
      ubifs: fix crash building without decompressors
      Documentation: devel: project-ideas: update after DSA framework addition
      Documentation: devel: porting: bring up to date
      net: dsa: fix format string mismatch
      file_list: factor out file_list_new
      USB: gadget: fastboot: allow exporting only barebox update handler
      driver: disassociate dev from device_node on unregister_device
      regulator: handle regulator_get_voltage(NULL) gracefully
      common: don't fixup empty serial/machine_compatible strings
      soc: imx: gpcv2: associate PGC device tree node with platform device
      drivers: power: ignore power domains with barebox,allow-dummy
      ARM: i.MX8MM: assume USBOTG power domains to be powered
      ARM: i.MX8MN: assume USBOTG power domains to be powered
      common: machine_id: simplify early exit
      common: machine_id: guard against digest algo being unavailable
      crypto: restrict digest algos implemented in ARM assembly to 32-bit

Alexander Shiyan (23):
      ARM: OMAP: Rearranging EMIF4 definitions
      ARM: OMAP: Move EMIF4 definitions to appropriate header
      ARM: OMAP: Adopt am35xx_emif4_init() to use fixed offset definitions
      ARM: OMAP: Move locally used definitions from emif4 header to am35xx_emif4
      ARM: OMAP: emif: Abstract am35xx_emif4 from any CPU-specific includes
      ARM: OMAP: emif: Rename am35xx_emif4 unit
      ARM: OMAP: Use EMIF4 registers for get SDRAM size
      ARM: OMAP: Move am33xx_sdram_size() into EMIF module and make it generic
      serial: ns16550: Adding compatibility for the AM437X platforms
      serial: ns16550: Remove redundant driver data for generic ns16550 variants
      ARM: OMAP: syslib: Optimize wait_on_value() function
      serial: Kconfig: Remove DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS option
      ARM: clps711x: Switch to devicetree usage
      .gitignore: Add directories generated by MAKEALL script
      ARM: myir-x335x: Fix memory size detect
      ARM: DTS: myir-x335x: Add GPIO aliases
      ARM: at91sam9n12ek: Use xz compression
      drivers: soc: Fix unconditional compilation of imx directory
      globalvar: Add missing empty prototype for globalvar_set()
      treewide: Remove duplicate incudes
      common: reset_source: Remove of_get_reset_source_priority()
      read_file: Pass NULL for the size parameter if the return value is not used
      ARM: OMAP: Rework watchdog code

Antony Pavlov (1):
      net: rtl8169: make it work on big-endian system

Daniel Brát (2):
      i2c: add bcm283x i2c host controller support
      ARM: rpi: parse useful data from vc fdt

Jules Maselbas (1):
      serial: ns16550: Remove empty line after return

Lucas Stach (3):
      mci: core: add device parameter for eMMC boot ack
      ARM: nxp-imx8mq-evk: install Barebox into eMMC boot partitions
      ARM: mnt-reform: switch to upstream DT

Marco Felsch (4):
      regulator: fixed: use local device_node reference
      regulator: fixed: add off-on-delay-us device-tree parsing support
      ARM: i.MX8MM: fix phy-reset gpio
      ARM: i.MX8MM: increase off-on delay on the SD Vcc regulator

Michael Riesch (3):
      arm: rockchip: add support for the radxa rock3 board
      arm: rockchip: switch to mainline dts for rk3568-evb1
      arm: rockchip: radxa-rock3: enable deep probe support

Robin van der Gracht (8):
      lib: parameter: Free previous string value in param_string_set
      ARM: boards: protonic-imx6: Free allocated autoboot_timeout string
      ARM: boards: protonic-imx6: Always free allocated alias string
      ARM: boards: protonic-imx6: Remove unsused argument from prt_imx6_usb_mount
      ARM: boards: protonic-imx6: Register prt-usb boot entry
      ARM: boards: protonic-imx6: Remove usb_delay from the priv struct
      ARM: boards: protonic-imx6: Read serial and mac from fuses if available
      ARM: boards: protonic-imx6: Register serial_number parameter with ocotp

Rouven Czerwinski (1):
      of: add of_get_reserve_map stub for !CONFIG_OFTREE

Sascha Hauer (22):
      dts: update to v5.18
      ARM: dts: edmqmx6: Use upstream flash node
      dts: update to v5.19-rc1
      ARM: rockchip_v8_defconfig: Enable realtek phy
      arm: rockchip: radxa-rock3: register barebox update handler
      net: dns: Return error when nameserver not given
      lib: parameter: Do not modify pointer returned from xstrdup()
      dts: update to v5.19-rc2
      bootchooser: rename pr_setenv() to bc_setenv()
      dts: update to v5.19-rc3
      env: Introduce pr_setenv()
      treewide: Use pr_setenv() where appropriate
      Merge branch 'for-next/arm'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/earlycon'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/omap'
      Merge branch 'for-next/protonic'
      Merge branch 'for-next/rockchip'
      Merge branch 'for-next/rpi4'
      Release v2022.08.0

Ulrich Ölmann (1):
      doc: bootchooser: fix typo

Uwe Kleine-König (10):
      mci: bcm2835: add bcm2711-emmc2 (Rpi4) support
      imx-usb-loader: Drop nearly unused struct usb_id
      ARM: i.MX7/8M: Fix boot source detection on i.MX8MP
      ARM: i.MX: Make sure *_get_boot_source always assignes *src
      scripts: imx-usb-loader: simplify code flow for file size calculations
      video: imxfb: Fix call of memalign()
      devfs: take into account for the partitions check that mtd is different
      devfs: Fix device name in overlap error message
      ARM: imx/bbu-external-nand: Rename offset -> nand_offset
      ARM: imx/bbu-external-nand: Fix freeing image copy


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


