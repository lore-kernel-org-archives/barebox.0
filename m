Delivery-date: Tue, 24 Oct 2023 11:31:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qvDko-00288L-3H
	for lore@lore.pengutronix.de; Tue, 24 Oct 2023 11:31:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qvDkl-0002xZ-JY
	for lore@pengutronix.de; Tue, 24 Oct 2023 11:31:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:Content-Type:
	MIME-Version:Message-ID:Subject:To:Date:Reply-To:Cc:Content-Transfer-Encoding
	:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=arifn7DzL3RGKHiknRBdzPeGzdvNs3d8QUAsLt/972U=; b=qW08WOo0UL3LBlqpMDgHCy0LnC
	Ft2llTGZKn74ZgPa2J8fAv96NolYPbt6NBaJLxi+F0z1884WmouB1CB61GS48v8jvM90jzP/LS0m+
	3JKp4/TZAy+MCv9MrPN/MUvT9cKLc9cLrycMMUN2qWeJMhAvaMOEDN3NuE2piVwpGFzRmkJDsu1wf
	L0PJ03Zj7QXdsap8ofMwWvrXuOz/krL9FhfpfIzMggODxjCycQ1TYKwU/6temhRdL9XtOgHnEjYvl
	qEEPiUENNdgd6ILJyDuNtFcigpS7vWdEf04EFMRDNjiVkTXviNcndEk9tBkbGqBpf7c7c8vi4eo5R
	8pVBZ4pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvDir-009Jzr-20;
	Tue, 24 Oct 2023 09:29:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvDio-009Jwy-03
	for barebox@lists.infradead.org;
	Tue, 24 Oct 2023 09:29:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qvDij-0002ZF-Dh; Tue, 24 Oct 2023 11:29:05 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qvDij-003ug8-11; Tue, 24 Oct 2023 11:29:05 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qvDii-00G6JJ-V2; Tue, 24 Oct 2023 11:29:04 +0200
Date: Tue, 24 Oct 2023 11:29:04 +0200
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <20231024092904.GV3359458@pengutronix.de>
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
X-CRM114-CacheID: sfid-20231024_022910_208886_C91D40B1 
X-CRM114-Status: GOOD (  19.00  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: v2023.10.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi All,

We finally have a release for October.

There are some nice new things in this release. First of all we now have
stackprotector support, so we can be sure now we do not overflow our
stacks. Along with it there is a stacksmash command to test if
stackprotector support is working as expected.
The regulator support has undergone some changes. Most important in some
cases is that we not only enable the always-on regulators, but we also
set the correct voltage before enabling them. The 'regulator' command
now shows the regulators in a tree structure to give a better overview.
We have some new boards as well, namely the Phytec i.MX8MM SoM and
ZynqMP ZCU102. New drivers this time are NAND support for STM32MP SoCs
and a vf610-adc driver which can be used on i.MX6SX and i.MX6UL SoCs.

For the full list of changes see below.

Have fun!
 Sascha

----------------------------------8<---------------------------------

Ahmad Fatoum (57):
      crypto: crc32: use uint32_t instead of ulong
      mci: sdhci: don't hang indefinitely waiting for DMA completion
      fastboot: scale default sparse max_download_size with available memory
      ARM: stm32mp: phycore: register barebox update handlers
      ARM: mmu64: mark barebox text section executable during early init
      console: pbl: correctly handle relocate_to_adr after pbl_set_putc
      Documentation: dt-bindings: ocotp: deprecate barebox,provide-mac-address
      lib: random: make linux/hw_random.h header self-contained
      KAsan: support including header from PBL
      include: linux/kernel.h: define PTR_ALIGN_DOWN/PTR_IS_ALIGNED
      ARM: unwind: don't allocate while printing stack trace
      ARM64: backtrace: print stacktrace to stderr
      KASan: only print to stderr
      KASan: don't allocate memory while printing report
      ARM: Zynqmp: define cdns_serial_putc for use with pbl_set_putc
      clk: implement clk_get_enabled helper
      watchdog: add Cadence watchdog support for Xilinx SoCs
      ARM: drop unreferenced left-over lib/Makefile
      fs: fat: enable VFAT long file names by default
      treewide: remove remaining _d suffixes from struct driver_d/device_d
      commands: test: support signed comparisons
      test: self: add some test cases for test command
      remoteproc: imx: don't re-request reserved SDRAM region
      remoteproc: update Kconfig text for IMX_REMOTEPROC symbol
      include: move PAGE_ definitions into linux/pagemap.h
      ARM: mark early C setup functions as __prereloc
      ARM: i.MX: HABv4: point out i.MX6 specifics in docs and Kconfig help text
      clk: have clk_get always return -ENOENT on missing clock
      ARM: stm32mp: don't generate .img symlinks for .stm32 binaries
      ARM: ZynqMP: Add ZCU102 support
      ARM: zynqmp: defconfig: enable zcu106
      common: elf: support loading to address 0
      ARM: add support for booting ELF executables
      kbuild: support generating stripped ELF files for PBL
      lib: add stackprotector support
      ARM: mmu: catch stack overflowing into TTB with stack guard page
      commands: add stacksmash command for causing stack overflows
      net: import Linux eth_addr_inc/dec/add helpers
      startup: don't skip countdown if consoles were runtime enabled
      console: implement of_console_by_stdout_path helper
      include: linux/spinlock: add stubs for Linux _bh variants
      include: asm-generic/atomic.h: always define atomic/atomic_64
      include: add linux/atomic.h header
      scripts: allow user to build rsatoc if COMPILE_HOST_TOOLS
      rsatoc: support extracting RSA public key from X.509 SPKI format
      rsa: fix typos and missing type definitions
      rsatoc: support generating standalone keys unreferenced by FIT keyring
      lib: jsmn: add and use new jsmn_token_size helper
      lib: jsmn: add helper for allocating tokens
      lib: jsmn: add case-insensitive comparison
      lib: rename json_strcpy to json_strdup
      digest: add digest_algo helper
      driver: add support for device aliases
      firmware-zynqmp: export functions for setting GGS/PGGS
      firmware-zynqmp: add device parameters for ggs/pggs
      remoteproc: stm32: fix typo in Kconfig symbol
      remoteproc: stm32: fix breakage after DT sync with upstream

Alexander Shiyan (4):
      memory: Add driver for FMC2 External Bus Interface on STM32MP SoCs
      mtd: nand: Add driver for NAND controller on STM32MP SoCs
      imx: Fix Kconfig dependency
      ARM: imx: Fix build error without CONFIG_USB_GADGET_DRIVER_ARC_PBL

Bastian Krause (2):
      ARM: dts: i.MX8: add pwm aliases
      commands: pwm: add option to list registered PWMs

Christian Eggers (1):
      aiodev: port Linux vf610-adc driver

Jules Maselbas (3):
      decompressors: Update xz to include ARM64 BCJ decoder
      scripts: Select XZ --arm64 BCJ filter for 64-bit arm
      kbuild: remove duplicated xz compressions target

Marc Kleine-Budde (3):
      i2c: add <pbl/eeprom.h> for PBL use
      common: board: phytec: import SoM detection for imx8m based SoM from u-boot
      ARM: i.MX8MM: add Phytec i.MX8MM SoM support

Marco Felsch (4):
      ARM: boards: polyhex-debix: fix RGMII pin setup
      ARM: boards: polyhex-debix: add SoM/Baseboard combination compatible
      ARM: boards: polyhex-debix: add support to read MAC addresses
      ARM: dts: imx8mp-debix-som-a-bmb-08-upstream: sync with mainlined kernel version

Roland Hieber (1):
      doc: booting-linux: improve bootspec chapter

Sascha Hauer (35):
      crypto: crc32: Lindent
      crypto: crc32: allocate crc_table statically
      crypto: crc32: Drop CONFIG_DYNAMIC_CRC_TABLE option
      crypto: crc32: enable for PBL
      i2c: Add slices for I2C adapters
      spi: Add slices for SPI controllers
      net: ksz9477: Add mdio bus slice dependency to i2c/spi device
      clk: imx8mp: Drop SAI4 clk
      dts: update to v6.6-rc1
      regulator: rename variable rd to rdev
      regulator: merge struct regulator_internal fields into struct regulator_dev
      regulator: introduce regulator logging functions.
      regulator: add regulator_get_voltage_internal()
      regulator: Add missing cases in regulator_map_voltage()
      regulator: stpmic1: add .get_voltage_sel
      regulator: stpmic1: add .supply_name
      regulator: register regulator as last step in of_regulator_register()
      regulator: Set initial voltage
      regulator: drop struct regulator_dev::supply_name
      regulator: print regulator tree
      regulator: replace _internal suffix by _rdev
      net: phy: Add phy_(set|clear)_bits_mmd()
      net: phy: dp83867: Sync with Linux
      ARM: dts: phycore-stm32mp15: Use upstream dts
      Merge branch 'for-next/arm-stackprotector'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/dump-stack-stderr'
      Merge branch 'for-next/i2c-spi-slices'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/regulator'
      Merge branch 'for-next/stm32'
      Merge branch 'for-next/zynqmp'
      test: self: Fix testing test on 32bit architectures
      Release v2023.10.0

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


