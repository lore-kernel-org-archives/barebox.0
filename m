Delivery-date: Fri, 21 Feb 2025 15:22:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tlTv7-0058vG-0y
	for lore@lore.pengutronix.de;
	Fri, 21 Feb 2025 15:22:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tlTv5-0005jM-Gk
	for lore@pengutronix.de; Fri, 21 Feb 2025 15:22:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=q8yi13SOfyBA6EDqjPLCRY1N7MQJUhHoanuSCs0YMtg=; b=Izx/KWZxiL1ua3sFCy1CfXzqDU
	yWGO/T00BgQp9i9aCCo1qWm7rHT6OEPfGTky2RRmooBkz1s5SXNWqM1QOM8UzbdB8jQXAcPpBHgEb
	YcOAtf1UCUKEuzIojPkjXxYBbgSxc0ZolCJsomyaAkk6HBqbBdi1wVq+LR3jA2llj3oFjAKmlVzcm
	AzC3FDya6sgs5mRl13USD1Nf2BYn4XnyolAMrGEzOXzVlxgRvECisKGUuVo0QkQ7xmr/89yhCT1Ud
	+E7Xg/7Y33o+j4hgvOIyYXwiv2i2dfD7OC6K/oi451hcb2nHpE7hJlnkudXKeDRw43vRvS5jVibcp
	WJc6leOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlTuN-00000005o0U-4247;
	Fri, 21 Feb 2025 14:21:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlTil-00000005lIS-33hb
	for barebox@lists.infradead.org;
	Fri, 21 Feb 2025 14:09:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tlTij-0001k4-Qx; Fri, 21 Feb 2025 15:09:37 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tlTij-0027FQ-25;
	Fri, 21 Feb 2025 15:09:37 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tlTij-009zeF-1n;
	Fri, 21 Feb 2025 15:09:37 +0100
Date: Fri, 21 Feb 2025 15:09:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <Z7iJIYuoxZAja_F7@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250221_060940_078939_FB58791A 
X-CRM114-Status: GOOD (  24.37  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: barebox-2025.02.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi All,

barebox-2025.02.0 is out.

Topic of the month is security. This release has several memory overflow
fixes for different filesystems.  barebox has a history of being a great
bring-up and development tool for embedded hardware. While barebox can
be used in a secure boot environment, doing so requires many of the
features being disabled. So far we've never written that up explicitly,
but this changed recently. Have a look at [1], thanks Ahmad.

A common way to start barebox development on a new hardware often is to
start barebox from U-Boot. We now have a FIT image target for this
purpose.  the FIT image build target that can be activated with
CONFIG_BOARD_GENERIC_FIT. The resulting FIT image contains a 2nd stage
barebox binary along with all device trees that the barebox binary has
support for and can be started from U-Boot with the regular bootm
command.

The AM625 support continues to evolve. This release brings us 1st stage
support including DDR, clock and power domain drivers. Also with the
AM625-SK we have a new board supported.

For Rockchip we have a new board as well, the Pine64 PineTab 2.

As usual, for a detailed list of patches that went into this release see
below.

Have Fun!
 Sascha

[1] https://www.barebox.org/doc/latest/user/security.html


----------------------------------------------------------------
Ahmad Fatoum (71):
      bbremote: fix 'NoneType' object has no attribute 'encode'
      bbremote: decode bytes output of getenv and md on command line
      images: don't compare filesizes if file didn't change
      images: don't check for missing FW if file didn't change
      images: fix missing FORCE prerequisite
      images: don't prelink if input file didn't change
      images: don't compute size if input file didn't change
      bbu: fix bbu_register_std_file_update regression for file systems
      ARM: beaglebone: register bbu handlers for FAT partition
      of: fdt: reserve properties and nodes starting with $ for barebox use
      of: fdt: rename /memreserve special node to /$memreserve
      FIT: cache uncompressed data
      Documentation: devel: project-ideas: add SDL input support
      sandbox: add support for --loglevel option
      sandbox: add support for architecture-specific debug options
      sandbox: move CONFIG_ASAN to architecture Kconfig
      startup: set barebox_main in data section
      cdev: allow overriding partition overlap check
      commands: addpart: allow force creation of overlapping partition
      ARM: ep93xx: delete unused drivers
      compiler: drop intel compiler support
      fs: ramfs: drop unneeded indirection during unlink
      fs: squashfs: delete unreferenced source file
      fs: collect legacy file system operation in new struct fs_legacy_ops
      fs: return error pointer not NULL from cdev_mount_default
      commands: stat: fix size display for FILE_SIZE_STREAM
      commands: stat: print mode in octal if type unknown
      include: rename printk.h to printf.h
      vsprintf: document %JP format specifier as being barebox-specific
      driver: replace single info callbacks with stack
      virtio: allow inlining of trivial virtio_find_vqs function
      test: pytest: add support for --dump-dtb
      images: rename k3-am625-beagleplay extension from fit to itb
      sandbox: os: define referenced config symbols
      fs: derive file descriptor number by pointer arithmetic
      fs: drop ifdefs in linux/fs.h
      fs: retire FILE.in_use member
      fs: align FILE struct member names with upstream struct file
      fs: fat: rename f_size to f_len
      fs: replace FILE.size by f_inode.i_size
      fs: merge struct file and struct filep
      fs: retire FILE typdef
      fs: introduce hidden CONFIG_FS_WRITABLE option
      ARM: ep93xx: delete unused drivers
      ARM: dts: add device trees for the QEMU Virt machine
      treewide: collect the name of all board device trees
      kbuild: collect available device trees in dtbs-list
      scripts: add new scripts_dtc target
      kbuild: restrict dtbs target to enabled DTs by default
      kbuild: improve make help description
      kbuild: allow dependency on any file in images/
      arch: maintain Linux kernel and mkimage ARCH mapping in Kconfig
      arch: make BOARD_GENERIC_DT a user-selectable option across archs
      Import ARM Trusted Firmware fiptool utility
      MAKEALL: rename target in symbols to more appropiate defconfig
      MAKEALL: add support for building arbitrary targets
      ci: container: add python3-libfdt dependency for barebox.fit
      images: add barebox FIT image target
      dma: fix fixup warning for SoCs without /soc node
      kbuild: remove stale references to README
      scripts: define _GNU_SOURCE for all source files
      ARM: boards: colibri-imx6: make BBU setting independent of DT alias
      partitions: efi: update warning message after addition of parted command
      environment: autoprobe environment only when CONFIG_INSECURE=y
      SECURITY.md: add security policy
      ARM: zii-imx8mq-dev: fix warnings about missing #address-/#size-cells
      common: introduce CONFIG_HAS_INSECURE_DEFAULTS
      Documentation: user: optee: bring up-to-date
      Documentation: user: add security consideration for using barebox
      scripts: define _GNU_SOURCE for every user tool build
      scripts: common.h: define loff_t on musl

Alexander Shiyan (12):
      ARM: dts: rk356x: Use RNG node from upstream DTSI
      clk: rk3588: Add reset line for HDMI Receiver
      ARM: rockchip: dmc fix LPDDR5 bank info for sys_reg version 3
      clk: rk3588: sync with kernel
      ARM: at91: Compile at91sam9g45_reset handler only for affected SOCs
      ARM: at91: Remove AT91SAM9_SMC dependency for SAMA5D2
      mfd: atmel-flexcom: Driver refresh
      spi: Fix hang on spi_sync() when driver does not support transfer() call
      spi: at91: Use the SPI alias from devicetre
      usb: host: ehci-atmel: Add HSIC mode support
      mtd: Remove orphan symbol MTD_SST25L
      i2c: at91: Fix driver for SAMA5D2 SoC

Bastian Krause (4):
      keytoc: check for memory allocation failures in print_bignum()
      keytoc: move __ENV__ resolving to dedicated function
      keytoc: allow __ENV__ lookup for keyname hint
      crypto: document __ENV__ lookup in CRYPTO_PUBLIC_KEYS

Dang Huynh (1):
      ARM: rockchip: Add support for Pine64 PineTab 2

David Dgien (1):
      macb: Fix tx completion check

Jonas Rebmann (3):
      ARM: i.MX6: correct UART IOMUX_PADs
      ARM: dts: i.MX6: drop OCOTP MAC address provider
      ARM: boards: Add support for todarex colibri imx6 on iris

Jules Maselbas (1):
      scripts: include: rename printk.h to printf.h

Lucas Stach (10):
      ARM: zynq: add MMC aliases
      ARM: zynq: zed: define SDHCI bus-width
      ARM: zynq: zed: guard board initcall
      ARM: zynq: zed: add environment
      ARM: zynq: zed: add Barebox update handler
      ARM: zynq: enable some useful things in defconfig
      ARM: zynq: zed: switch to entry function with stack
      ARM: zynq: call common arm lowlevel init from zynq lowlevel init
      ARM: zynq: zed: always relocate in PBL
      environment: don't return raw device when file-path is specified

Marco Felsch (12):
      spi: cosmetic style fixes
      spi: fix spi_message init during __spi_validate
      spi: add spi_{set,get}_ctldata accessors
      gpiolib: add support for gpiod_get_index and gpiod_get_index_optional
      gpiolib: add support for gpiod_set_consumer_name
      spi: add support to handle cs-gpios
      spi: add support to setup spi-cs-{setup,hold,inactive}-delay-ns
      spi: allow reporting the effectivly used speed_hz for a transfer
      spi: import spi_controller::flags
      spi: add support for spi_controller::set_cs_timing
      spi: Provide common spi_message processing loop
      spi: add support for BCM2835 SPI controller

Oleksij Rempel (3):
      ARM: stm32mp151-mecio1: use kernel dts
      ARM: stm32mp151-mect1s: use kernel dts
      ARM: stm32: move stm32-bsec-optee-ta.h to include/soc/stm32

Roan van Dijk (1):
      ARM: protonic-stm32mp1: Add Add Priva E-Measuringbox board support

Sascha Hauer (66):
      ARM: dts: i.MX51 babbage: use upstream FEC pinctrl group
      dts: update to v6.13-rc1
      dts: update to v6.13-rc2
      fdt: Add function to check if a pointer contains a fdt
      store external device tree as file
      ARM: beagleplay: put external device tree into handoff data
      ARM: psci-client: better search for existing psci node
      dts: update to v6.13-rc3
      dts: update to v6.13-rc4
      dts: update to v6.13-rc5
      dts: update to v6.13-rc6
      gpio: fix static inline stub selection
      commands: add config option for dfu command
      common: always compile usbgadget.c when USB_GADGET is enabled
      usb: dwc3: add am62 support
      i2c: omap: add ti,am64-i2c compatible
      mfd: add tps65219 support
      ARM: enable CONFIG_USE_COMPRESSED_DTB by default
      usb: add static inline wrapper for of_usb_get_phy_mode()
      regulator: add tps65219 regulator support
      ARM: add ARMv7R MPU support
      lib/rationale: compile for pbl
      DDR: Add k3 DDR driver
      ARM: move ARM_CPU_PART_* defines to header
      nommu_v7_vectors_init: disable for r5
      clocksource: timer-ti-dm: add support for K3 SoCs
      ARM: K3: mount /boot even with env handling disabled
      clk: add K3 clk driver
      pmdomain: add K3 driver
      rproc: add K3 arm64 rproc driver
      ARM: k3: add k3_debug_ll_init()
      ARM: K3: use debug_ll code for regular PBL console
      elf: use iomem regions as fallback when loading to non-sdram memory
      rproc: add K3 system_controller
      firmware: ti_sci: add function to get global handle
      ARM: k3: Add initial r5 support
      dts: update to v6.13-rc7
      scripts: k3: add script to generate cfg files from yaml
      ARM: k3: Add k3img tool
      ARM: beagleplay: add Cortex-R5 boot support
      Documentation: add build documentation for TI K3 SoCs
      ARM: am625: disable secondary watchdogs
      ARM: k3: Add DRAM size detection
      ARM: k3: am625-sk board support
      ARM: k3: fix bootsource detection
      Merge branch 'for-next/arm'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/fit'
      Merge branch 'for-next/fs'
      Merge branch 'for-next/images'
      Merge branch 'for-next/k3'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/spi'
      ARM: k3: beagleplay: Use correct file for GP device
      ARM: beagleplay: Add missing DRAM frequencies
      file-list: fix file_list_detect_all()
      console: print countdown aborted message only once
      partitions: efi: Fix position of alternate gpt when writing
      environment: fix free() of unitialized variable
      net: Fix DRIVER_NET_TI_DAVINCI_MDIO dependency
      fs: squashfs: Ensure positive inode length
      fs: cramfs: fix malloc(size + constant) buffer overflow issues
      fs: ext4: fix malloc(size + constant) buffer overflow issues
      fs: jffs2: fix malloc(size + constant) buffer overflow issues
      CVE-2025-26721: fs: pstore: fix malloc(size + constant) buffer overflow issues
      Release v2025.02.0

Stefan Kerkmann (1):
      ARM: i.MX8MM: Phytec i.MX8MM SoC: change ddr_fsp0_cfg to static struct

Ulrich Ölmann (1):
      partitions: efi: fix error message in mkpart



-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


