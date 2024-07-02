Delivery-date: Tue, 02 Jul 2024 09:12:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOXgy-000lof-1d
	for lore@lore.pengutronix.de;
	Tue, 02 Jul 2024 09:12:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOXgx-0003Vb-F5
	for lore@pengutronix.de; Tue, 02 Jul 2024 09:12:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TZNv7KiHvEX+yHBBoUKdRed1syqsmwCL+/r0zTOCIfg=; b=KTcKpIpWxTIuco+/7Y8BbIcRO7
	XpkBobgHTXmDuIqvzVLb9V5dwApAJh0SDOpOABq97ggTK8mzSXG0bSZMTaL2CNknr4ElI4xr/sqKx
	RPAtOyTLdFvvhrqBotiv+9l8uNbyZJwHd7rtiFmsbnn7I9P2FfSJwrzOrziQpUfbvxpI0NaHt1+35
	Objtw5Vx7ml18NGPiZUKMezMDPMdV+3OPjP4UTcHHbKTZtpYCxcpNEsNufCIEATYxg+ooZ2g570cM
	X4yMSZXVlES4kPjKp5P3DvMKZB9KjN30ZNB1h9BGIwbtUHIlF+sZo7BCaKpaUeP8a00X7JwopDG/Z
	4RfR6qOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOXgL-00000005pJb-3qYO;
	Tue, 02 Jul 2024 07:12:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOXgI-00000005pJB-1ESy
	for barebox@lists.infradead.org;
	Tue, 02 Jul 2024 07:12:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1sOXgH-0003T7-22; Tue, 02 Jul 2024 09:12:01 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1sOXgG-006YXh-Ld; Tue, 02 Jul 2024 09:12:00 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1sOXgG-00AMV8-1s;
	Tue, 02 Jul 2024 09:12:00 +0200
Date: Tue, 2 Jul 2024 09:12:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <ZoOoQLtntOAmgSfq@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240702_001202_514907_5EE6423F 
X-CRM114-Status: GOOD (  19.88  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: v2024.07.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi All,

barebox-2024.07.0 is out. The last release was delayed due to me being
ill and since it's July already I decided to skip the release for June
which brings us to a release closer to the beginning of the month rather
than at the end.

This release removes a lot of old ARM boards and long unmaintained SoCs.
With this the ARM architecture has now become PBL which makes the early
startup code simpler and more streamlined.

Also we now have a common way to pass data from PBL to barebox proper.
Until now we only used CPU registers to pass data and some SoCs/boards
used hardcoded locations in SDRAM/SRAM to pass data. With the new
handoff data support it has now become easy to pass arbitrary data
structures from PBL and to find them again in barebox proper. This
mechanism is currently only used on ARM, but could be extended to other
architectures.

Other than that there is the usual flow of fixes and improvements, see
below for details.

Have Fun!
 Sascha

----------------------------------------------------------------
Ahmad Fatoum (76):
      test: move common config fragments into common/boards/configs
      kconfig: merge_config.sh: sync with Linux v6.9
      memory: add support for requesting barebox area as a whole
      treewide: use request_barebox_region for possible barebox memory regions
      ARM: cpu: start: register barebox memory area
      net: fsl-fman: remove superfluous zeroing of new dma_alloc_coherent buf
      net: dsa: use dma_alloc in receive path for symmetry
      include: ktime: implement __ktime_divns for 32-bit systems
      poller: report pollers taking more than 20 milliseconds
      mfd: pca9450: print reset reason as hex if unknown
      uimage: move file_to_sdram implementation to libfile
      bootm: allow disabling uImage support
      uimage: have TIMESTMAP depend on UIMAGE
      kbuild: make implicit int to pointer conversion warning an error
      ddr: imx8m: fix broken sharing of DRAM timing with TF-A for DFS
      arm: rockchip: mecsbc: drop duplicate reserved-memory node
      mfd: pca9450: don't warn if PCA9450_PWRON_STAT is 0
      dma: of_fixups: add fallbacks if /soc doesn't exist
      ARM: layerscape: add helpful runtime warning when firmware is missing
      firmware: support optional firmware in barebox proper
      ci: test: remove generation of dummy firmware
      ARM: i.MX8M: pass cpu_type parameter to __imx8m_early_clock_init
      ARM: i.MX8MP: configure PLL3 as 600MHz
      ARM: i.MX8MP: configure PLL3 as noc_io parent
      ARM: i.MX8MP: don't reparent GIC from BootROM default
      ARM: dts: i.MX8MP: Add optional nominal drive mode DTSI
      pstore: move slash handling into common function
      pstore: add unlink implementation for deleting pstore files
      usb: gadget: ums: add support for optional partition flag
      fs: ramfs: allocate once instead of twice per ramfs chunk
      include/linux/kernel.h: fix mult_frac() multiple argument evaluation bug
      of: move ramoops device creation into common code
      ddr: imx: rename ddr_get_firmware_ddr to ddr_get_firmware_ddr4
      common: boards: wolfvision: use state_by_alias instead of opencoding
      treewide: use an unsigned type for ioctl commands
      sandbox: enable frame pointers unconditionally
      pbl: compile PBL decompression code optionally
      FIT: fix build with sandbox
      common: fit: don't have BOOTM_FITIMAGE depend on ARM
      of: free unflattened overlays after application
      of: overlay: do not leak fixed up path
      test: self: digest: don't leak digest buffers
      test: self: ramfs: fix memory leak
      regulator: of_regulator: remove unused allocation
      globalvar: fix memory leak
      power: reset: reboot-mode: fix memory leak
      images: sha_sum: mark as not needing executable stack
      x86: lib: setjmp: mark as not needing executable stack
      common: hide DEFAULT_COMPRESSION menu
      mci: collect host operation in struct mci_ops
      mci: imx-esdhc: retire esdhc_platform_data
      driver: move some inline getters for struct device into device.h
      include: linux/types.h: define intptr_t
      pinctrl: split off consumer API into linux/pinctrl/consumer.h
      pinctrl: rename barebox pinctrl_select_state to pinctrl_get_select
      pinctrl: implement pinctrl_lookup_state/select_state
      kbuild: add support for merged defconfigs
      MIPS: make use of merged defconfigs
      sandbox: stdio: fix ctrlc link error when CONFIG_CONSOLE_NONE=y
      net: fix build with CONFIG_SHELL_NONE
      power: reset: reboot-mode: fix link error without globalvar
      sandbox: add headless_defconfig
      bus: omap-gpmc: allow build with raw NAND support disabled
      mtd: nand: reinstate raw NAND IS_ENABLED(CONFIG_MTD_WRITE) checks
      serial: stm32: suppress -EPROBE_DEFER messages using dev_err_probe
      efi: hide EFI related symbols when !EFI
      lib: wchar: guard against NULL in strdup_wchar
      efi: payload: gracefully handle NULL parent image device path
      fs: legacy: gracefully handle non existent files
      scripts: container.sh: map to UID/GUID 1000 in container
      Documentation: boards: stm32mp: describe location of DIP switch
      bitops: change test_bit return type from int to bool
      video: backlight: make brightness and slew time parameters unsigned
      common: misc: do not run pollers inside panic()
      ARM: fix OP-TEE DT reservation clashing with barebox area at endmem
      clk: support inclusion of clk-provider.h in !COMMON_CLK code

Alexander Shiyan (1):
      mfd: rk808: Fix poweroff handler name

Andreas Helmcke (1):
      nandtest: fix start offset parameter

Antony Pavlov (6):
      pbl: enable image verification for MIPS and RISC-V too
      RISC-V: fix crash on start if CONFIG_IMAGE_COMPRESSION_NONE=y
      ARM: bcm283x: fix compilation with debug_ll enabled
      ARM: vexpress: make debug_ll work
      images: gitignore more files
      spi: spi-fsl-qspi: fix dev_request_mem_resource() usage

Clement Leger (1):
      kvx: handle syscalls gracefully

Julian Hascoet (1):
      kvx: robustify i/d cache startup

Julian Vetter (2):
      kvx: Fix barebox build for kvx
      kvx: Add 'stop' instruction to power down sequence

Marco Felsch (2):
      usbgadget: fix error code in common code base
      usbgadget: split usbgadget_register into prepare and register

Roland Hieber (3):
      net: phy: dp83867: reset PHY on probe
      ARM: dts: GoMe e143_01: fix default state priorities
      commands: mipi_dbi: fix null pointer dereference when writing data

Sascha Hauer (53):
      dts: update to v6.9-rc5
      dts: update to v6.9-rc6
      dts: update to v6.9-rc7
      dts: update to v6.9
      ARM: Freescale i.MX23 evk: use cdev_open_by_name()
      ARM: tx28: use cdev_open_by_name()
      ARM: omap: use cdev_open_by_name()
      ARM: Rockchip: use cdev_open_by_name()
      commands: devlookup: use cdev_open_by_name()
      commands: findmnt: use cdev_open_by_name()
      bootm: use cdev_open_by_name()
      ARM: move HAVE_PBL_MULTI_IMAGES up to ARCH_MULTIARCH
      ARM: move OFTREE and OFDEVICE up one level
      ARM: remove uemd architecure
      ARM: remove ep93xx
      ARM: remove canon-a1100 support
      ARM: remove davinci
      ARM: remove PXA boards
      ARM: remove nomadik
      ARM: remove non PBL OMAP boards
      ARM: remove non PBL Atmel boards
      ARM: move HAVE_PBL_MULTI_IMAGES to toplevel
      ARM: drop non PBL support
      ARM: drop barebox_arm_head()
      ARM: make relocatable mandatory
      ARM: drop TEXT_BASE
      ARM: remove MLO target
      ARM: move blob_is_arm_boarddata() to include
      add handoff-data support
      ARM: pass handoff data from PBL to proper
      ARM: barebox proper takes struct handoff_data *
      ARM: socfpga-xload_*defconfig: merge and disable unused features
      handoff-data: put handoff data into data section
      efi-payload: use handoff data to pass data to barebox proper
      ARM: beagle: setup C environment early
      ARM: replace boarddata with handoff data
      Merge branch 'for-next/cdev_open_by_name'
      Merge branch 'for-next/defconfig'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mtd'
      Merge branch 'for-next/pinctrl'
      Merge branch 'for-next/remove-arm-non-pbl'
      mtd: nand: mxc_nand: sync with kernel driver
      watchdog: dw_wdt: do not register restart handler
      watchdog: fix watchdog restart handler when autoping is enabled
      mtd: nand: raw: add back support for marking blocks as good
      nandtest: fix wrong initialization
      mtd: nand: Kconfig: whitespace cleanups
      mtd: nand: make exec_op optional
      mtd: nand: make interleaved placement optional
      mtd: nand: fix compilation
      Release v2024.07.0

Soren Andersen (2):
      ARM: i.MX8MP: skov: fix variant detection on boards without state
      ARM: i.MX8MP: skov: update timing parameters for Samsung RAM

Stefan Kerkmann (3):
      net: phy: allow PHY drivers to implement their own software reset
      net: phy: document core PHY structures
      net: phy: dp83867: sync dp83867_phy_rest

Steffen Trumtrar (1):
      net: designware-imx: add fix_reset callback

Uwe Kleine-König (4):
      mtd: nand: mxc_nand: Improve comment about vendor BBM and address verschwurbelung
      mtd: nand: mxc_nand: Cleanup code creating bad block table
      mtd: nand: mxc_nand: Add error message if BBT creation fails
      mtd: nand: mxc_nand: Only automatically create BBT if NAND seems to be pristine

Yann Sionneau (1):
      kvx: add support for Coolidge V1/V2 march selection

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


