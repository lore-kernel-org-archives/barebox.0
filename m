Delivery-date: Fri, 09 Dec 2022 10:12:56 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p3ZR9-00FtgX-MU
	for lore@lore.pengutronix.de; Fri, 09 Dec 2022 10:12:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p3ZR8-0004I4-Iu
	for lore@pengutronix.de; Fri, 09 Dec 2022 10:12:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Subject:To:
	Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=L6KUKSYApl16X12C21aP1ivJ/sunQcDlzQ86u47kTNs=; b=03hA+qhHrwzk11
	sJ4Fo9voBawnUthdgE3nzRcKxpNuCCRAtzptP7ydq6QgbV7eWNik51y3DmGzcslKEK+c5Cu+uoNxl
	9HKfuV2HalzkruJmd5XtiuzNlWoRD0We238tcsJz3fQC/GjwJpfzSE74cnJ8N/otJSkGmKUk9ELuC
	2Am2Mgazwt71l312Pb5BxIMd8A4MBogOBJTEyySG9KyznqkalKePpukphq+BSAmUvCvDM2Xiu67y4
	/zkEc9tbcSQbsL+HDnxQVsfQfQM5Uc3YL7zjE+HZGY+l6zG0v3Kuy2+q9RIBPB6jTOl47V/S9bBfz
	Nr9272PvoHC56ucxSb5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3ZPX-0068Eb-Gb; Fri, 09 Dec 2022 09:11:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3ZPR-0068BE-54
	for barebox@lists.infradead.org; Fri, 09 Dec 2022 09:11:11 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p3ZPK-0003x6-SL; Fri, 09 Dec 2022 10:11:02 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p3ZPI-0001Er-KP; Fri, 09 Dec 2022 10:11:00 +0100
Date: Fri, 9 Dec 2022 10:11:00 +0100
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <20221209091100.GK29728@pengutronix.de>
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
X-CRM114-CacheID: sfid-20221209_011109_411807_A7BF2B9C 
X-CRM114-Status: GOOD (  14.53  )
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
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: v2022.12.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


Hi All,

barebox-2022.12.0 is out. This seems more like a bug fix release this
time. The bcmgenet driver used for ethernet on Raspberry Pi 4 is working
properly now. The ARM entry points are now written in assembly which
resolves the occasional issues we had with newer gcc versions. Also we
have new board support for the TQ MBA8MPXL board.

See below for a full list of changes.

Have Fun!
 Sascha

---------------------------8<---------------------------

Ahmad Fatoum (52):
      mfd: axp20x: drop info message on successful probe
      ARM64: cpu: select HAVE_PBL_MULTI_IMAGES globally
      ARM64: asm: define ENTRY_FUNCTION in terms of ENTRY_FUNCTION_WITHSTACK
      pbl: have linker define __pbl_board_entry alias
      asm-generic: memory_layout: define __keep_symbolref()
      ARM64: asm: rewrite ENTRY_FUNCTION(_WITHSTACK) fully in assembly
      ARM64: asm: drop __barebox_arm_head
      ARM: asm: cleanup 32-bit entry points
      Documentation: devel: porting: bring it up-to-date
      commands: add new stat command
      usb: gadget: fsl_udc: add imx7_barebox_(load/start)_usb
      restart: make restart.h header self-contained
      restart: do restart-priority OF parsing in restart_handler_register
      restart: add reset -w for warm bootrom reset
      watchdog: imxwd: don't register broken imxwd-warm for i.MX7
      watchdog: imxwd: set imxwd-warm as reboot mode default handler
      Documentations: devicetree: bindings: document watchdog-priority
      ARM: i.MX7: describe USB serial download boot mode
      ARM: stm32mp: mark iwdg2 with barebox,restart-warm-bootrom
      ARM: i.MX7: replace hardcoded UART clocking defines
      ARM: i.MX7: don't hardcode UART1 in imx7_early_setup_uart_clock
      spi: imx_spi: match fsl,imx6ul-ecspi compatible
      ARM: i.MX8MM: innocomm-wb15: imply AT803X_PHY for EVK
      aiodev: port Linux imx7d-adc driver
      test: self: only include ramfs selftest when CONFIG_SELFTEST_FS_RAMFS=y
      lib: string: implement mempcpy
      commands: add new uptime command
      sandbox: configs: enable new uptime command
      include: debug_ll: define puthexc_ll
      lib: hexdump: make available for PBL debugging
      pbl: decomp: print mismatched hashes on one line each
      ARM: i.MX: xload-gpmi-nand: refactor for more SoC support
      commands: uptime: add note about caveats
      ARM: stm32mp: lxa-mc1: enable deep probe
      ARM64: asm: mark __barebox_arm64_head as function
      ARM: asm: set aside new arm_mem_scratch space
      ARM: i.MX8M: esdctl: export imx8m_barebox_earlymem_size
      ARM: i.MX8M: define imx8mX_scratch_space() helper
      ARM: i.MX8M: support saving BootROM event log before clobbering OCRAM
      regulator: rk808: fix misplaced DCDC_REG5
      regulator: core: don't call of_regulator_get with NULL argument
      i2c: bcm283x: fix use of unregistered device in debug print
      net: bcmgenet: fix OF node of MII bus controller
      ddr: imx8m: warn about unsupported frequencies
      ddr: imx8m: use pr_warn instead of plain prints
      treewide: rename CONFIG_HAS_ARCH_SJLJ to CONFIG_ARCH_HAS_SJLJ
      of: have of_property_match_string accept pointer to const device_node
      of: platform: port Linux of_dma_is_coherent
      common: boards: qemu-virt: fix env path for QEMU RISC-V
      ARM: i.MX8M: implement bootrom log viewing command
      include: soc: switch to SPDX-License-Identifier
      bootsource: export bootsource_to_string()

Dominik Haller (1):
      ARM: configs: Remove NS16550_OMAP_EXTENSIONS

Holger Assmann (1):
      ARM: i.MX8MP: add TQ mba8mpxl board

Johannes Zink (1):
      mfd: axp20x: support AXP313A PMIC

Marco Felsch (2):
      of: of_node_name_eq: correct alignment
      firmware: Makefile: fix firmware file dependency tracking

Oleksij Rempel (8):
      net: add promiscuous mode configuration support
      net: usb: asix: add promisc mode support
      ethlog: option to enable/disable promisc mode
      net: dsa: enable promiscuous mode for switch master edev
      drivers: net: fec_imx: add promiscuous mode configuration support
      net: dsa: fix of_device_ensure_probed*() for switch ports
      ARM: boards: skov-imx6: convert all pr_ to dev_ prints
      ARM: boards: skov-imx6: assigned separate MAC address to LAN2

Robin van der Gracht (1):
      ARM: mach-imx: Add missing ocotp dependency to protonic-imx6 platform

Sascha Hauer (60):
      ARM: imx6qdl-phytec-pfla02: Remove unused environment nodes
      Treewide: Reference environment partitions by phandle
      dts: update to v6.1-rc1
      dts: update to v6.1-rc2
      hush: Fix handling '\ '
      readline: Complete strings containing whitespaces correctly
      ARM: i.MX8M bootsource: alias i.MX8MN functions as i.MX8MP functions
      ARM: i.MX8M bootsource: pull imx6_bootsource_serial() out of __imx7_get_boot_source()
      ARM: imx8mm-evk: Switch to deep-probe
      ARM: imx8mm-evk: Add missing fsp_table
      ARM: i.MX bootsource: adapt boot device detection for imx8mp
      ARM: kamstrup-mx7-concentrator: Setup UART4
      mtd: nand: nand-mxs: Move register definitions to separate file
      ARM: i.MX: xload nand: Use common register defines
      ARM: i.MX: xload nand: add common readid
      dma: apbh-dma: Simplify code
      dma: apbh-dma: unify register defines
      imx-bbu-nand-fcb: pull printing debug info out of get_fcb()
      ARM: i.MX: xload nand: Pull ECC status checking out of read page
      ARM: i.MX: xload nand: Use final page layout from FCB
      imx-bbu-nand-fcb: Fix reading FCB information from BCH registers
      ARM: i.MX: xload nand: reset NAND before accessing it
      ARM: i.MX: xload nand: Move mxs_nand_mode_fcb_62bit() to header file
      ARM: i.MX: xload nand: Implement i.MX7 support
      imx-bbu-nand-fcb: Drop ifdeffery
      imx-bbu-nand-fcb: Add fcb command
      dts: update to v6.1-rc3
      nvmem: remove IS_ERR_VALUE abuses
      make IS_ERR_VALUE() complain about non-pointer-sized arguments
      fs: avoid uninitialized var warning
      ARM: i.MX: romapi: Hide using NULL pointers from gcc
      ARM: fix unwinding for XIP kernels
      bitmap: Implement bitmap_*zalloc()
      bitops: include linux/types.h
      bitops: implement assign_bit()
      gpio: Add gpio latch driver
      dts: update to v6.1-rc4
      fixup! drivers: net: fec_imx: add promiscuous mode configuration support
      Kbuild: create LDFLAGS_common
      Kbuild: link with -z noexecstack and --no-warn-rwx-segments
      Merge branch 'for-next/arm64-entry'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/env'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/promisc'
      Remove unused struct partition
      dts: update to v6.1-rc5
      dts: update to v6.1-rc6
      ARM: i.MX: romapi: Hide using NULL pointers from gcc #2
      mtd: peb: return success for reading/writing 0 bytes
      fastboot: ubiformat: Fix writing sparse images
      net: bcmgenet: Fix MAC address setting
      dts: update to v6.1-rc7
      dts: update to v6.1-rc8
      Merge branch 'for-next/bootrom-log' into next
      Merge branch 'for-next/dts' into next
      Merge branch 'for-next/misc' into next
      Merge branch 'for-next/imx7-nand-xload' into next
      Merge branch 'for-next/misc' into next

Thorsten Scherer (2):
      Documentation: devicetree: bindings: Fix broken ref
      Documentation: devicetree: Add folders to toctree

Uwe Kleine-König (1):
      kvx,openrisc,riscv,sandbox/dts: harmonize clean-files definition
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


