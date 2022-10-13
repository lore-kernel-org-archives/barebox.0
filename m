Delivery-date: Thu, 13 Oct 2022 10:18:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oitQ2-0079O8-P2
	for lore@lore.pengutronix.de; Thu, 13 Oct 2022 10:18:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oitQ0-0005BY-8O
	for lore@pengutronix.de; Thu, 13 Oct 2022 10:18:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Subject:To:
	Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TuTVbGzj9LFEpHGDP7wRBWxgIJ6bwhbaBq8Vcek2nX0=; b=wNVeZMhh4AG5WA
	AGbwn/EmAwSWC20T8ouf028ty1oeV6cNKtdRr88AorHXLvM9/fMnsk928r8+T+/06FYGGkCIZa/N3
	sAy/7MJCmwvudJ2KHBJOtecUc7vjgUt08UoEbdCeTjHcMIhWIvjL8qKM9J+mJzYMgY3Vx2SakPsTm
	eDPNXv12jR5+H3Net/OoJ/+Tmd4j6Xc7EVkZkF7m8jH7jS82+XBQBUTVbOD+Vpwg2yfKavkkWLWDt
	jtwbbTJ8M56INO6BAdSrPKJGKRGdn0Bs7Inr0TVSZ27jPur7GCWrRutR3PFLi7BO3s7oFgN7pclSY
	XLTxge/+MzIMASyfy5bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oitOB-00B2u7-5B; Thu, 13 Oct 2022 08:16:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oitO5-00B2t6-Dw
	for barebox@lists.infradead.org; Thu, 13 Oct 2022 08:16:19 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oitO1-00051a-Qs; Thu, 13 Oct 2022 10:16:13 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oitO1-0008PL-Ix; Thu, 13 Oct 2022 10:16:13 +0200
Date: Thu, 13 Oct 2022 10:16:13 +0200
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <20221013081613.GF6702@pengutronix.de>
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
X-CRM114-CacheID: sfid-20221013_011617_652946_50321CF3 
X-CRM114-Status: GOOD (  19.25  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: v2022.10.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


Hi All,

I am happy to annouce barebox-2022.10.0.

This time we have some interesting new features. First of all our TFTP
implementation now supports RFC7440 aka windowsize support. This greatly
improves speed for TFTP transfers on servers which also support this
(atftpd-0.8.0 being one of them). Also barebox is now finally Python-2
free. The barebox-remote infrastructure has now been ported to Python-3
and works fluently on modern systems. One new board has been merged, the
InnoComm WB15 i.MX8MM board. Several fixes and improvements all over the
place have been merged as well, as usual see below for a full list of
changes that went into this release.

Have Fun!
 Sascha

----------------------------------------------------------------
Ahmad Fatoum (101):
      pstore: disable double memory reservation fixup
      ARM: i.MX8M: add TrustZone Address Space Controller 380 init function
      of: add new of_fixup_reserved_memory() helper
      pstore: ram: use new of_fixup_reserved_memory() helper
      fs: export cdev_get_linux_rootarg() for reuse
      common: bootm: reuse cdev_get_linux_rootarg()
      ARM: i.MX8M: atf: mark ATF start functions as __noreturn
      ARM: i.MX8M: rename imx8m_atf_load_bl31 for clarity
      ARM: i.MX8M: define imx8mX_load_bl33 and imx8mX_load_and_start_tfa
      of: move of_get_node_by_reproducible_name() into common code
      reset: starfive: add dependency on CONFIG_COMMON_CLK
      usbgadget: autostart: add usbgadget_autostart() for board code
      resource: add flags parameter to __request_region
      common: allow requesting SDRAM regions with custom flags
      memory: define reserve_sdram_region helper
      init: define new postmem_initcall()
      of: reserved-mem: reserve regions prior to mmu_initcall()
      ARM: mmu64: map reserved regions uncached
      ARM: mmu: define attrs_uncached_mem() helper
      kbuild: make sha256sum command available generally
      pbl: export pbl_barebox_verify
      firmware: add external firmware PBL support
      pbl: replace __piggydata_end with __image_end
      mfd: axp20x: add mfd axp20x driver
      driver: add feature controller framework
      driver: consult feature controller prior to device probe
      driver: featctrl: fixup kernel device tree
      dt-bindings: add i.MX8M feature controller bindings
      soc: imx: add i.MX8M feature controller driver
      nvmem: import Linux nvmem_cell_read_variable_le_u32
      nvmem: ocotp: add i.MX8M[MN] feature controller support
      ARM: dts: i.MX8MN: describe feature controller
      ARM: dts: i.MX8MM: describe feature controller
      soc: imx: gpcv2: switch to regmap
      soc: imx: gpcv2: split power_up/power_off
      soc: imx: gpcv2: align with upstream Linux driver
      soc: imx: gpcv2: extend for i.MX8M Mini/Nano/Plus support
      Revert "ARM: i.MX8MM: assume USBOTG power domains to be powered"
      Revert "ARM: i.MX8MN: assume USBOTG power domains to be powered"
      usb: gadget: fsl_udc: add imx6_barebox_(load/start)_usb
      of: platform: propagate of_devices_ensure_probed_by(name|property) errors
      of: implement of_rename_property()
      i2c: implement of_i2c_register_devices_by_node()
      i2c: implement of_i2c_device_enable_and_register_by_alias()
      clk: have SCMI and SiFive clock controllers depend on COMMON_CLK
      meminfo: support SANDBOX build with DEBUG log level
      net: phy: micrel: drop useless assignment of dummy read
      mci: core: drop useless assignment
      nvmem: core: propagate read failure
      fs: remove never-read initializer in mount_all()
      usb: otg: always propagate failure to register parameters
      usb: dwc2: gracefully handle unknown hs_phy_type
      state: propagate failure to fixup enum32 into DT
      commands: trigger: drop unused variable
      commands: tutorial: fix memory leak
      bthread: fix null pointer dereference in error path
      common: env: drop never-read initialization
      password: avoid static analyzer false positive
      regmap-mmio: regmap_mmio_get_min_stride: unify branches for readability
      crypto: caam - delete unused variable
      misc: ubootvar: always initialize struct ubootvar_data::flag
      nvmem: core: drop always true condition
      of: fdt: gracefully handle out-of-place properties
      of: overlay: drop unused variable of_overlay_apply_dir()
      of: partition: drop unused variable
      serial: ns16550_pci: drop useless assignment
      phy: core: drop useless else clause
      fs: ext4: ext_barebox: handle ext_get_inode() errors
      fs: fat: propagate f_lseek failure
      fs: drop duplicate follow_managed() call
      lib: parse_area_spec: guard against NULL pointer dereference
      net: ping: propagate failure
      net: fastboot: keep error message initialized at all times
      ARM: early-mmu: don't cache/prefetch OPTEE_SIZE bytes from end of memory
      commands: iomem: point out [R]eserved regions
      soc: imx: gpcv2: make available to all i.MX8M
      ARM: i.MX8MM: add InnoComm WB15 support
      gpiolib: implement gpio_get_chip_by_dev()
      of: platform: optimize of_find_device_by_node when deep probing
      driver: implement find_device() helper
      commands: gpio: add -d argument to set/get commands
      gpiolib: gpioinfo: add optional CONTROLLER command line argument
      of: refactor for of_fixup_reserved_memory() for clarity
      commands: add pm_domain for listing power domains
      commands: mm: don't ignore pread() errors for larger access sizes
      of: implement of_prepend_property
      test: self: provide selftest_is_running()
      blspec: fix memory leak handling NFS URLs
      of: of_probe: create board's machine device at the earliest
      fs: ubifs: remove always-false check
      mci: bcm2835: reset host controller on barebox shutdown
      bbu: fix exporting i.MX NAND bbu handler over fastboot
      imx-usb-loader: skip initial SDP_ERROR_STATUS query for SDPS
      Revert "mci: bcm2835: reset host controller on barebox shutdown"
      clks: imx7: fix initial clock setup with deep probe enabled
      test: emulate.pl: fix support for multiple block devices
      efi: payload: image: fix commandline-less boot
      ARM: i.MX7: enable caches when booted over USB
      block: fix calling cdev_get_block_device with partitions
      ARM: MXS: fix breakage for non-DT boards
      ARM: start: drop support for machine type casted to boarddata pointer

Antony Pavlov (9):
      Documentation/gen_commands.py: use python3
      Documentation: OKUD Max9331: fix sphinx warning
      Documentation: Altera SOCFPGA FPGA Manager: fix sphinx error
      Documentation: Altera FPGAs in passive-serial mode: fix sphinx issues
      Documentation: barebox DT aliases: fix sphinx issues
      Documentation: barebox environment: fix list rendering
      Documentation: Common leds properties: fix 'panic-indicator' list entry rendering
      Documentation: Voltage/Current Regulators: fix sphinx error
      Documentation/conf.py: fix copyright years

Enrico Scholz (23):
      tftp: add some 'const' annotations
      tftp: allow to change tftp port
      cmd:tftp: add '-P' option to set tftp server port number
      tftp: do not set 'tsize' in WRQ requests
      tftp: assign 'priv->block' later in WRQ
      tftp: minor refactoring of RRQ/WRQ packet generation code
      tftp: replace hardcoded blksize by global constant
      tftp: remove sanity check of first block
      tftp: add debug_assert() macro
      tftp: allocate buffers and fifo dynamically
      tftp: add sanity check for OACK response
      tftp: record whether tftp file is opened for lookup operation only
      tftp: reduce block size on lookup requests
      tftp: refactor data processing
      tftp: detect out-of-memory situations
      tftp: implement 'windowsize' (RFC 7440) support
      tftp: do not use 'priv->block' for RRQ
      tftp: reorder tftp packets
      tftp: add selftest
      tftp: accept OACK + DATA datagrams only in certain states
      tftp: add some documentation about windowsize support
      tftp: make read() fail in error case
      zstd: fix assert() logic

Frank Wunderlich (1):
      arm: rockchip: switch to mainline dts for bpi-r2-pro

Hans Christian Lonstad (1):
      usb: dwc3: support snps,dis-u2-freeclk-exists-quirk for i.MX8MP

Johannes Zink (1):
      drivers: mtd: nand: nand_mxs: enable nand_mxs on imx7

Michael Riesch (2):
      of: overlay: improve error handling in of_overlay_apply_tree
      of: overlay: avoid potential null pointer exception

Sascha Hauer (41):
      dts: update to v5.19-rc7
      dts: update to v5.19-rc8
      dts: update to v5.19
      dts: update to v6.0-rc1
      dts: update to v6.0-rc2
      dts: update to v6.0-rc3
      mdio_bus: Configure pinctrl for phy devices
      net: Add driver for bcmgenet
      ARM: rpi: enable bcmgenet driver
      remove local pyserial
      bbremote: Convert to python3
      ratp: getenv: Do not crash on non-existing variables
      ratp: i2c: Do not return error
      bbremote: Print usage when no command is given
      dts: update to v6.0-rc4
      dts: update to v6.0-rc5
      ARM: i.MX: Atlascopco: Fix wrong #address-cells warning
      ARM: rdu2: Drop redundant of graph link
      ARM: rdu2: fix dtc warning
      ubifs: Fix pointer type mismatch in gzip decompressor
      ARM: imx_v7_defconfig: Limit TFTP window size
      Merge branch 'for-next/arm'
      Merge branch 'for-next/clang-analyze'
      Merge branch 'for-next/doc'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/ratp'
      Merge branch 'for-next/rockchip'
      Merge branch 'for-next/rpi'
      Merge branch 'for-next/sha256'
      Merge branch 'for-next/socfpga'
      Merge branch 'for-next/tftp'
      net: Use dma_alloc to allocate net packet
      Merge branch 'bugfix/issue13' of https://github.com/hcl-dr/barebox-imx8mp into hcl-dr-bugfix/issue13
      Merge branch 'hcl-dr-bugfix/issue13'
      arm: rk3568 boards: call setup_c() before accessing global pointers
      gpiolib: Fix gpioinfo without args
      gpio: Fix gpio commands called without -d option
      Revert "lib: zstd: sync with Linux"
      Release v2022.10.0

Steffen Trumtrar (4):
      ARM: socfpga: achilles: fix entry_function usage
      ARM: socfpga: add Arria10-specific errata init
      ARM: socfpga: Enclustra AA1: enable ARM errata
      ARM: Socfpga: Achilles: Enable ARM errata

Uwe Kleine-König (2):
      clk: imx25: Add comments to clk list with offsets
      clk: imx25: Add support for watchdog clock
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


