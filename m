Delivery-date: Tue, 23 May 2023 10:19:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1NEz-00AY8t-9m
	for lore@lore.pengutronix.de; Tue, 23 May 2023 10:19:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1NEw-00041v-D9
	for lore@pengutronix.de; Tue, 23 May 2023 10:19:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:Content-Type:
	MIME-Version:Message-ID:Subject:To:Date:Reply-To:Cc:Content-Transfer-Encoding
	:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=pjIjDBhSKWiu/YnwgJFdvgL45+QQkeufCzT/Z39lAyw=; b=xgYgAe8Z2y+nCS5e1LFQ3s5CWb
	Ws0ib9JcOvD2H1UEHlzWpa9uX7/42p5CNlKcoDdKGQikuEjVesAZxGV9NTtghXj8Oqb9qYdeZBFOE
	xNTD6ufYdmz+Nx3vIecX0y9qHlUiXWn7/mhIV02TUhBLdl5qO7Mh4OFJh5TQC0NxgqsigcEKBvA/h
	ij4lREkV8ypUZ9B82ZTs9DKvr2DPqNIaJg4DLruusw/u8ZJULRw06MzNEqk2dBgOQUyi1o9DWJRzm
	dE4Ts2ZoyBfRkf85PAeLqkOxwQglvA7HYRbSP6sNnRjJ6o+vUbe68BpACW4NoDhdvqcyIsEmg+2Fj
	lr3pRVZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1ND7-009PUE-0a;
	Tue, 23 May 2023 08:17:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1ND3-009PSV-13
	for barebox@lists.infradead.org;
	Tue, 23 May 2023 08:17:35 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q1NCp-0003p0-Ee; Tue, 23 May 2023 10:17:19 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q1NCo-0005uZ-FO; Tue, 23 May 2023 10:17:18 +0200
Date: Tue, 23 May 2023 10:17:18 +0200
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230523081718.GU15436@pengutronix.de>
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
X-CRM114-CacheID: sfid-20230523_011733_695964_3FDE65A5 
X-CRM114-Status: GOOD (  22.34  )
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
Subject: v2023.05.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


Hi all,

I am happy to announce barebox-2023.05.0. This release brings us an
overhaul of the USB gadget framework. This is now much better in sync
with current Linux: The core is updated and files are now where Linux
has them as well. Furthermore the DWC3 driver is synced with the Kernel.

The Kconfig selection for 32/64 bit barebox has been improved. Now we
can first select whether a 32 bit or 64 bit barebox shall be built, and
then all SoCs/boards can be selected for that architecture. Previously
it was easy enough to select 32 bit boards on a 64 bit build and vice
versa, leading to compiler errors.

The MMC stack now has support for eMMC DDR52 mode when the controller
driver supports this. Support for that mode for now is implemented only
in the i.MX ESDHC controller, but if you are interested in faster eMMC
modes have a look at the patches. Unlike other higher speed modes the
DDR52 doesn't require tuning, so is relatively easy to implement.

Thanks to Marco the i.MX8M now supports booting from QSPI. This includes
generating the images as well as support for the barebox-update command.

Last not least we have support for a new Rockchip board, the Radxa CM3
board which comes with a RK3566 SoC.

See below for a full list of changes that went into this release.

Have Fun!

  Sascha


----------------------------------------------------------------
Ahmad Fatoum (43):
      Documentation: booting-linux: document booting specific FIT configuration
      ARM: Rockchip: implement memory read out from controller
      ARM: Rockchip: make bootsource logic generic to all SoCs
      common: state: make barebox-state enabling in Kconfig easier
      of: implement of_property_present helper
      imx-usb-loader: don't depend on arpa/inet.h for endianness conversion
      scripts: compiler.h: add Windows support
      scripts: common: drop unused mman.h include
      scripts: gen-dtb-s: reference OF IMD entries automatically
      treewide: remove no-longer needed IMD_USED_OF
      clock: implement CLOCKSOURCE_MASK in terms of GENMASK_ULL
      commands: menu: enable help text parsing for sphinx docs
      kbuild: drop reliance on echo -e extension for DT fragments
      usb: misc: onboard_hub: sync compatibles with kernel
      usb: dwc3: populate parent of xHCI dev
      usb: xhci: pass physical device to DMA API
      net: rtl8169: pass physical device for DMA API
      firmware: zynqmp-fpga: pass physical device to DMA API
      net: designware: eqos: pass physical device to DMA API
      of: implement of_copy_property
      ARM: rpi: fixup prefix property from VideoCore FDT
      mci: core: drop unused DDR/SDR constants
      mci: introduce new dedicated enum mmc_bus_width type
      mci: core: factor out MMC bus width selection for reuse
      mci: add eMMC DDR52 support
      mci: imx-esdhc: add uSDHC eMMC DDR52 support
      test: self: printf: compile test with -Wno-format-security
      treewide: use non-executable stack annotations for blobs
      lib: genalloc: drop reliance on mmio-sram driver
      fs: fail gracefully in get_mounted_path/get_cdev_by_mountpath
      block: refuse registering block devices with absurdly large blocks
      net: dsa: realtek: fix Kconfig selects
      efi: don't skip default efi devinfo for old EFI block revisions
      net: dsa: realtek: fix Kconfig selects
      .clangd: black-list -mabi=lp64 to enable LSP for 64-bit ARM
      .gitattributes: import diff directives from Linux v6.3
      .clang-format: import kernel coding style rules from Linux v6.3
      test: self: ramfs: fix unintended macro identifier confusion
      include: zero_page: hide possibly NULL pointer variable from optimizer
      pbl: have DEBUG_PBL depend only on PBL_CONSOLE
      meminfo: avoid out-of-bounds compiler warning
      console: don't fixup baud rate into earlycon string
      imx-usb-loader: Don't try to verify more data than contained in the image

Alexander Shiyan (1):
      mfd: syscon: Remove unused helper syscon_base_lookup_by_pdevname

Andreas Kemnade (1):
      ARM: i.MX: bbu: fix compilation without CONFIG_BAREBOX_UPDATE

Antony Pavlov (1):
      powerpc: Kconfig: fix reference to unknown symbol

Denis Orlov (1):
      video: bochs: fix IOMEM usage

Marco Felsch (25):
      spi: remove flash_platform_data support
      bbu: make it possible to check multiple of-compatibles
      ARM: i.MX8MM: add missing IMD_USED_OF image metadata entry
      ARM: i.MX8MN: add missing IMD_USED_OF image metadata entries
      mci: imx-esdhc-pbl: fix number of read blocks
      mci: imx-esdhc-pbl: refactor the esdhc_load_image function
      mci: imx-esdhc-pbl: move imx_load_image into common xload code
      ARM: i.MX8M: Add QSPI image load support
      ARM: i.MX bootsource: set QSPI instance
      ARM: i.MX8MM bootsource: fix QSPI boot source detection
      ARM: i.MX8M: Add QSPI boot support
      scripts: imx-image: convert flag variables into bool
      scripts: imx-image: header_v2: factor out offset parameter
      scripts: imx-image: header_v2: add header_len parameter
      scripts: imx-image: add FlexSPI image support
      filetype: add NXP FlexSPI filetype
      ARM: i.MX: bbu: rename IMX_INTERNAL_FLAG_ERASE to IMX_BBU_FLAG_ERASE
      ARM: i.MX: bbu: add filetype offset
      ARM: i.MX: bbu: add FlexSPI update handler
      ARM: i.MX8M: enable FlexSPI image support
      ARM: i.MX8M: add qspi barebox and barebox-environment partitions
      ARM: i.MX8M: add QSPI update handler
      Documentation: i.MX8M: add EVK QSPI NOR barebox installation documentation
      ARM: dts: i.MX8MP: add dual-role usb-type-c PORT1 support
      Documentation: barebox environment: recommend a partition type GUID for GPT partitions

Oleksij Rempel (3):
      net: dsa: add adjust_link support
      net: dsa: sja1105: move port enable to adjust link code.
      net: dsa: sja1105: fall back to default speed configuration if no link was detected

Philipp Zabel (12):
      firmware: Add request/release_firmware() calls
      video: Add of_get_display_timing
      video: add MIPI DBI framebuffer helpers
      video: Add MIPI DBI compatible SPI driver
      spi: add per-driver bits-per-word mask
      spi: stm32: support per-transfer bits per word switching
      video: mipi_dbi: disable byte swapping if 16-bit SPI transfers are supported
      spi: update spi_board_info FIXME comment
      video: fb: add optional damage tracking
      graphic_utils: add optional damage tracking
      video: mipi_dbi: add damage tracking and partial updates
      video: fbconsole: implement non-fullscreen fbconsole

Rouven Czerwinski (1):
      arm: rockchip: add support for CM3 on IO board

Sascha Hauer (56):
      usb: gadget: fastboot: Allocate IN requests when needed
      usb: gadget: drop gadget_chips.h
      usb: gadget: move files to place where Linux has them
      usb: move include files to place where Linux has them
      usb: ch9: Update from Linux Kernel
      phy: Add mode setting support
      driver: Add unregister_driver()
      pbl: Implement dev_printf()
      clk: clk-gpio: Add Kconfig symbol
      clk: clk-gpio: Turn into driver
      clk: of: drop arguments from of_clk_init()
      clk: of: make of_clk_init() safe for being called multiple times
      commands: of_overlay: Allow to register clocks from overlay
      usb: gadget: Update core to Linux-6.3-rc2
      uuid.h: sync with Linux-6.3-rc2
      usb: gadget: Add super-speed-plus descriptors
      usb: gadget: update composite.c from Linux-6.3-rc2
      Add dev_WARN_ONCE()
      usb: dwc3: sync with Linux-6.3-rc2
      usb: gadget: dfu: Assign super speed descriptors
      usb: gadget: fastboot: Add super speed descriptors
      usb: gadget: mass storage: Add super speed descriptors
      usb: gadget: u_serial: Put back to list if shutdown
      usb: gadget multi: support USB Super Speed
      usb: xhci-hcd: Give it some more time to stop
      ARM: rockchip_v8_defconfig: Enable some commands
      usb: gadget: fastboot: Do not dequeue idle request
      dts: update to v6.3-rc4
      ARM: dts: rk356x: Add DMC controller node
      ARM: Rockchip: Add rk3568 specific barebox entry function
      ARM: Rockchip: rk3568: use rk3568_barebox_entry()
      ARM: Rockchip: Do not pass device tree to TF-A
      dts: update to v6.3-rc5
      mci: sdhci: Add and use common sdhci_wait_for_done()
      ARM: Rockchip: let boards depend on 32/64bit
      ARM: ZynqMP: Move ZynqMP feature selection into submenu
      ARM: remove freescale-mx21-ads_defconfig
      ARM: update defconfigs
      ARM: cleanup 32bit/64bit support in Kconfig
      mci: rockchip-dwcmshc-sdhci: use sdhci_reset()
      mci: arasan: use sdhci_reset()
      dts: update to v6.3-rc6
      Merge branch 'for-next/clk-of-overlay'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/imx-image'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/rockchip'
      Merge branch 'for-next/usb'
      ARM: multi_v7_defconfig: Enable BCM283X Pinctrl/GPIO driver
      scripts: rkimage: Use non-deprecated functions for sha256/512
      ARM: NXP i.MX8MN EVK: Drop unnecessary IMD_USED_OF
      ARM: rockchip: bootm: move image to 4k alignment
      pcie-designware: Fix dev_get_resource_by_name error check
      ARM: rockchip: bbu: Fix getting active boot slot
      i.MX: HABv4: Hide NULL pointers from optimizer
      Release v2023.05.0

Schoyswohl, Roland (1):
      mmc: fix calculation of Max Enhanced Area

Wolfram Sang (2):
      ARM: at91: usb-a926x: remove nand partitions from config
      defconfigs: usb-a9g20: update to a working version
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


