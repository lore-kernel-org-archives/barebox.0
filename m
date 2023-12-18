Delivery-date: Mon, 18 Dec 2023 09:03:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rF8ao-002Y6J-2s
	for lore@lore.pengutronix.de;
	Mon, 18 Dec 2023 09:03:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rF8an-0000W4-Qy
	for lore@pengutronix.de; Mon, 18 Dec 2023 09:03:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:Content-Type:
	MIME-Version:Message-ID:Subject:To:Date:Reply-To:Cc:Content-Transfer-Encoding
	:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Nw5zaxo6TFDqF9980LbWwYEdJwH8tbqWzs/xHZx1ODw=; b=cC8+Yp1NrmrqHsB/UMgHWnD3lh
	w1kU5A4x0MkXFS9K6LW3D2zkz0y8q+JMHETq01OZT82PUYCWptuJhBcdHvUuK84kHYfNYV1r5/FVR
	7ue5gp5EfPCS9ZT8GROzoIL1OBXaDQuNLGQL6xGcN4WReP9Ob93eONZIVxLahpnU+MgjSqXh1SvzY
	J2mfJNhvUz5yGRP+Y/aX7tMuKMigttG5sMgH2jChVTu4tljraV/NiiyHCObJB9fOkPLnwIIjkVws4
	4WhlVxRlLVw59O7L4MAF1zg2FlukpcxQHx6Sp9w+FMBaJjMSnMwxqoZiO1SLtXv3QTH5cvPUJG5ad
	L8M4i6JA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rF8ZU-009Q7X-0T;
	Mon, 18 Dec 2023 08:01:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rF8ZN-009Q6d-1k
	for barebox@lists.infradead.org;
	Mon, 18 Dec 2023 08:01:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rF8ZL-00005l-Ca; Mon, 18 Dec 2023 09:01:43 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rF8ZL-00GeKF-0D; Mon, 18 Dec 2023 09:01:43 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rF8ZK-007Y0t-Tp; Mon, 18 Dec 2023 09:01:42 +0100
Date: Mon, 18 Dec 2023 09:01:42 +0100
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <20231218080142.GS1318922@pengutronix.de>
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
X-CRM114-CacheID: sfid-20231218_000145_745782_B000B012 
X-CRM114-Status: GOOD (  18.82  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: v2023.12.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi All,

The time has come for the final release for this year. I am happy
to announce barebox-2023.12.0. This release brings us support for the
i.MX93 SoC. This support is fairly complete with DDR, ESDHC, network
(Eqos, FEC), I2C, watchdog, GPIO, OCOTP and SPI support. Also there is
another new SoC support, for the TI AM625 along with the BeaglePlay
board. This one is not so complete, but at least there is SDHCI support
for storage, pinmux and clock support.
Ahmad has continued his quest to implement more Linux API in barebox,
this time we have the ktime API, dev_warn_once and friends, IDR support,
and strscpy. Also barebox is now compiled wth -std=gnu11, so variable
declarations in loop initializations become possible.

There's more to it, see below for a full list of patches that went into
this release.

I wish you all a merry Xmas!

 Sascha

---------------------------------8<---------------------------

Ahmad Fatoum (68):
      lib: base64: add support for base64url
      crypto: add JSON Web Token (JWT) support
      test: self: add JSON Web Token tests
      ARM: stm32mp: define stm32_serial_putc for use with pbl_set_putc
      KASan: test_kasan: hide buggy accesses from compiler
      malloc: use __attribute((alloc_size)) for dynamic memory allocation
      usb: dwc2: use linux/spinlock.h for stubs
      barebox-wrapper: define stub for MODULE_VERSION
      include: pm_domain.h: make header self-contained
      include: spinlock.h: mark DEFINE_SPINLOCK with __always_unused
      ARM: stm32mp: fix typo in STM32MP135-DK prompt
      test: self: malloc: hide allocation size from compiler
      test: self: mmu: skip false positive test fail when no RAM at address 0
      glob: drop needless ifdeffery in {glob,fnmatch}.h
      complete: add support for spaces in completions
      commands: drvinfo: support filtering by driver
      console: move ARCH_HAS_CTRLC into Kconfig
      common: machine_id: support deriving app specific UUIDs
      net: add generic MAC address derivation from machine ID
      test: self: fix JSON Web Token tests compilation with CONFIG_CONSOLE_NONE
      sandbox: libc_malloc: populate barebox errno on error
      dlmalloc: populate errno on error
      ARM: dts: stm32mp: stm32mp135-dk: drop duplicate property
      ARM: dts: stm32mp: fix model string for stm32mp135f-dk
      ARM: stm32mp: init: drop unused macros
      ARM: stm32mp: don't re-enable DBGCFGR clock
      ARM: stm32mp: init: handle differences between STM32MP13 and STM32MP15
      ARM: stm32mp: init: don't print STM32MP15 CPU type
      ARM: stm32mp: init: ignore of_register_fixup return value
      ARM: stm32mp: stm32mp15x-ev1: enable deep probe
      include: provide linux/errno.h
      include: add linux/refcount.h
      bitops: split off linux/bits.h
      include: import <linux/instruction_pointer.h>
      asm-generic: split off typeconfused readl and friends
      asm-generic: migrate relaxed helpers into asm-generic/io.h
      include: add linux/io.h with strict prototypes
      include: import Linux word-at-a-time.h
      string: implement strscpy
      of: add CONFIG_OF for Linux compatibility
      include: asm-generic/atomic.h: define atomic_cmpxchg
      kbuild: build barebox for -std=gnu11
      include: linux/idr.h: implement more Linux API
      test: self: add simple IDR test
      include: implement dev_warn_once and friends
      include: add blocking notifier aliases
      include: add Linux ktime API
      of: constify string pointed to by struct of_device_id::compatible
      of: define of_devices_ensure_probed_by_compatible
      include: add linux/device.h wrapper around driver.h
      drivers: pxa: don't define clk_enable/clk_disable with different prototype
      console: provide best-effort clk_get_for_console helper
      serial: stm32: support probing with missing clock provider
      of: reserved-mem: add debug print for reservations
      clk: document struct clk_ops
      mci: core: check for both 3.3v and 1.8v DDR support
      mci: stm32_sdmmc2: enable eMMC 52MHz DDR mode
      commands: regulator: add support for enabling/disabling regulators
      Documentation: i.MX: point out that barebox-*-u.img is i.MX6-specific
      Documentation: user: barebox: make barebox chainloading clearer
      kbuild: don't mix overlay and normal DTC and CPP flags
      kbuild: don't warn about reg formatting
      ARM: dts: i.MX8MP: imx8mp-skov: fix reserved-memory cells
      clk: ti-sci: fix build failure without TI_SCI_PROTOCOL
      clk: rockchip: pll fix out of bounds read
      ARM: mmu: align size of remapped region to page size
      ARM: i.MX8M: delete unused per-board ddr_ddrphy_trained_csr array
      Documentation: bcm283x: be clearer about Raspberry Pi 4 support

Antony Pavlov (2):
      virtio: ring: fix erroneous behavior on MIPS
      MIPS: qemu-malta*_defconfig: enable virtio network driver

LI Qingwu (4):
      mci: correct ENH_ATTRIBUTE_EN_MASK bit mask
      mci: core: check switch error for switch command
      commands: mmc: add write_reliability subcommand
      commands: mmc: add partition_complete subcommand

Marco Felsch (7):
      usb: gadget: initialize serialnumber
      scripts: get_maintainers: drop --status enforcement
      scripts: imx: add Makefile.mingw64
      commands: mmc: deprecate -c option
      mci: export mci_get_ext_csd as helper
      mci: core: cosmetic cleanup mci_register
      mci: core: add partitioning_completed device parameter

Sascha Hauer (98):
      dts: update to v6.6
      pm_domain: Add onecell support
      gpio: davinci: Redesign driver to accommodate ngpios in one gpio chip
      gpio: davinci: Add support for GPIO controllers on TI K3 SoCs
      ARM64: Add support for debug_ll on TI AM62x SoCs
      Add initial mailbox support
      mailbox: Add TI K3 Secure Proxy Driver
      serial: ns16550: Add support for UARTs on K3 SoCs
      firmware: Add basic support for TI System Control Interface (TI SCI) protocol
      test/Containerfile: Install U-Boot-tools
      lib: Add generic binary search function
      clk: Add K3 SCI clock driver
      soc: ti: Add ti_sci_pm_domains driver
      mci: fix define
      mci: make debugging output more useful
      mci: sdhci: Add common wait for idle function
      mci: sdhci: wait for idle before stopping clock
      mci: Add am654 SDHCI driver
      ARM: Add Texas Instruments K3 architecture
      ARM: k3: Add initial BeaglePlay board support
      ARM: k3: BeaglePlay: Work around non working SD card
      ARM: k3: BeaglePlay: generate FIT image
      doc: K3: Add documentation
      ARM: multi_v8_defconfig: Enable K3 SoCs
      net: mvneta: increase RX ring size
      ARM: i.MX8MQ: Streamline lowlevel startup code
      ARM: i.MX8M: detangle lowlevel code
      ddr: imx8m: rename driver to imx
      ddr: imx8m: introduce dram_controller struct
      ddr: imx8m: move get_trained_CDD() to SoC code
      ddr: imx8m: move PLL init to SoC specific code
      ddr: imx8m: clean up defines
      ddr: imx8m: move phy_base to controller struct
      ddr: imx8m: remove empty function
      ddr: imx8m: get rid of hardcoded phy address
      ddr: imx8m: split header file
      ddr: imx8m: return cfg from dram_config_save()
      ddr: imx8m: Drop '8m' suffix from pr_fmt
      ddr: move imx8m_ddr_old_spreadsheet to controller
      ddr: Initial i.MX9 support
      mfd: pca9450: Add support for pca9451a
      mfd: pca9450: Add init callback
      usb: gadget: i.MX: Move PBL USB gadget driver to arch/
      dts: update to v6.7-rc1
      scripts: Add imx9image tool
      scripts: imx9image: Add PBL size option
      clk: Add i.MX93 clock support
      clk: imx: clk-fracn-gppll: make usable from PBL
      iomux: Add i.MX93 support
      watchdog: Add ULP wdog support
      I2c: Add i2c_8bit_addr_from_msg()
      i2c: Add lpi2c support
      serial: Add lpuart32 driver
      imx-usb-loader: Add i.MX9 support
      spi: spi-nxp-fspi: Enable for i.MX9
      usb: i.MX chipidea: Enable usbmisc driver for i.MX9
      net: eqos: rename i.MX8 driver glue code to i.MX
      net: eqos: imx: move common stuff to probe()
      net: eqos: Add i.MX93 support
      ARM: i.MX: Add ELE communication support
      ARM: i.MX: Add i.MX93 TRDC support
      ARM: initial i.MX9 support
      gpio-vf610: Add i.MX93 support
      ARM: Add local imx93.dtsi
      ARM: i.MX: add i.MX9 debug_ll support
      ARM: i.MX93: Add DDR size read support
      ARM: i.MX: romapi: rename functions to *romapi*
      ARM: i.MX: romapi: Implement i.MX93 support
      ARM: i.MX: atf: add imx93_load_and_start_image_via_tfa()
      nvmem: Add support for i.MX ELE ocotp
      ARM: Add TQ MBA9XXXCA board support
      ARM: Update imx_v8_defconfig
      ARM: multi_v8_defconfig: enable i.MX9 boards
      dlmalloc: hide out of bounds accesses from compiler
      mtd: spi-nor: add support for Winbond w25q512nwq
      ARM: ls1046a: use compressed dtbs
      debug_ll ns16550: Add base address argument to register functions
      dts: update to v6.7-rc2
      mci: imx-esdhc: add layerscape flag
      mci: imx-esdhc: Layerscape: fix clock setup
      mci: imx-esdhc: Layerscape: add eMMC DDR52 support
      Merge branch 'for-next/dts'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/k3'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mmc'
      Merge branch 'for-next/prepare-optee'
      Merge branch 'for-next/stm32mp1'
      ARM64: mmu: Fix alloc_pte() address calculation
      ARM64: mmu: panic when out of PTEs
      ARM: Rockchip: dmc: print memory sizes in hex
      drivers: firmware: arm-scmi: Fix iterating over idr
      ARM: rockchip: rk3588: Use upstream dts files
      ARM: rockchip: rock-5a: Disable non working devices
      mci: imx-esdhc: Fix WML setting for layerscape PBL
      mci: imx-esdhc-pbl: ls1046a: Add missing ESDHC_FLAG_MULTIBLK_NO_INT
      mci: imx-esdhc-pbl: fix prediv setting
      Release v2023.12.0

Stefan Kerkmann (2):
      doc: user: barebox: bootz instead of bootm
      doc: user: barebox: add chainloading of fit images

Steffen Trumtrar (3):
      net: macb: fix dma_alloc for rx_buffer
      net: macb: convert to volatile accesses
      include: net: align PKTSIZE to 64 bytes

Yann Sionneau (2):
      mci: set RCA to 2 according to eMMC specification
      mci: eMMC responds to CMD12 with R1 in case of read

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


