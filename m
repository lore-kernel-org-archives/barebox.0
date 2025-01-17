Delivery-date: Fri, 17 Jan 2025 09:28:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tYhiM-000wPp-00
	for lore@lore.pengutronix.de;
	Fri, 17 Jan 2025 09:28:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tYhiL-0006wF-ES
	for lore@pengutronix.de; Fri, 17 Jan 2025 09:28:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=h7Q8h+BKDxkzsmOkdQwh0lInc3NZWJgdAqPXIckUEWU=; b=f25rtsWDKvBrRULzVX8EfccqnW
	dUnxY7FyITt0T2EFjoQGUxADwsMWgCFUjg8QlwBbrN0LM7QlNuQxKf59+V7005nl9CisBrCzA+Wtp
	wIl84W4c3W5IbsXYULq04I/VS92dddcLhB7Y6qbV6JZA9NvDwhBPwDYuMCPPh882UXEcjxcpcoFdq
	iizPLhp46AG9bGFV9IkxWr2k2L4OOb8rAA1VC3PfXjd6KoyAjViPhxX9h56set7vehAqSiCvcyoNt
	9JARkSNJ69Uy9DxmHZg+NqywVE+kC5+LFq7ckKV/1NujaKHO+KCljt6Iy5y5v/EB0409w62Lg1dZN
	NILGZWSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYhhd-0000000HKGg-1z6H;
	Fri, 17 Jan 2025 08:27:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYhhD-0000000HKDR-39f9
	for barebox@lists.infradead.org;
	Fri, 17 Jan 2025 08:27:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tYhhB-0006l3-D5; Fri, 17 Jan 2025 09:27:13 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tYhhB-000OYP-0h;
	Fri, 17 Jan 2025 09:27:13 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tYhhB-00FeZ5-0P;
	Fri, 17 Jan 2025 09:27:13 +0100
Date: Fri, 17 Jan 2025 09:27:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <Z4oUYdHXEAtnkySC@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250117_002716_094718_A3FE800E 
X-CRM114-Status: GOOD (  24.40  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: v2025.01.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi All,

I am happy to announce the first release for 2025, namely v2025.01.0.

This release brings LLVM/clang support for the sandbox architecture.
Other architectures might follow, but require some more work like
removing usage of naked functions on ARM.

Another nice feature is the support for running arbitrary barebox
commands in sandbox directly from the command line, so for simple tests
the sandbox barebox doesn't have to be started interactively anymore.

The TFTP support has been reworked a bit. TFTP is implemented as a
filesystem in barebox and due to that we used to open multiple
connections to the server when transferring a single file. We now cache
dentries for a while and with this now only a single connection is
needed.
The TFTP window size support has caused some problems, so the default
window size has now been set to 1, effectively disabling the feature.
You can still opt-in by setting the window size to something higher
during runtime.

Ahmad has added some hardening options like register zeroing on function
exit, initializing stack variables by default and zeroing malloc
buffers.

The AM625 support continues to evolve, this release brings us network
support, a watchdog driver and bootsource detection.

See below for a full list of patches for this release.

Have Fun!
 Sascha

----------------------------------------------------------------
Ahmad Fatoum (103):
      test: enable JSON web token support in full.config
      optee: fix use of IS_ENABLED() on option without CONFIG_ prefix
      string: add strlcat support
      string: support overriding strchr/strrchr/strstr macros
      include: barebox.h: document enum autoboot_state
      partitions: efi: use calloc instead of kzalloc
      partition: dos: use xmalloc for unchecked allocations
      console_countdown: use CTL_CH macro for control characters
      firmware: rockchip: rename from rk3xxx-op-tee.bin to rk3xxx-bl32.bin
      ARM: lds: move stack top section to front of rodata
      ARM: Rockchip: fix clang warning about passing 32-bit register operand
      ARM: Rockchip: save pointer to scratch memory in global variable
      ARM: Rockchip: implement tee.bin v1 header parsing
      ARM: Rockchip: use vendor blob OPTEE load addresses
      of: fixup reset source device path into DT if known
      mfd: pca9450: add support for PCA9450B variant
      reset_source: have reset_source_set_device actually set device
      mfd: rn5t568: refactor to call reset_source_set_device only once
      reset_source: give reset_source_set_device a priority parameter
      ARM: dts: i.MX8MP: remove now unneeded DSP reserved mem override
      bootchooser: export bootchooser_entry_boot function
      of: partition: don't parse nvmem-cells in legacy OF binding
      nvmem: probe nvmem-cells container via driver model
      environment: register barebox env OF driver regardless of /chosen
      environment: add support for a single node barebox,environment binding
      sandbox: switch to new barebox environment binding
      common: misc: use isalnum macro instead of open-coding
      partitions: dos: fix memory leaks
      partitions: efi: remove guid device parameter on free
      partitions: efi: remove unnecessary NULLing of local variable
      commands: reginfo: make command mpc5xxx-specific
      include: common.h: move out get_ram_size
      include: align: reword STACK_ALIGN_ARRAY macro parameter for clarity
      ARM: bcm283x: remove common.h include in mbox.h
      MAKEALL: allow users to increase verbosity and sidestep logging
      ci: don't run make in silent mode
      dma: define compile-time ARCH_DMA_MINALIGN constant for all archs
      kbuild: don't allow GCC data store races
      scripts: include: add definitions for printk and BUG()
      xfuncs: include <malloc.h> for free definition
      pbl: define IN_PBL & IN_PROPER macros globally
      treewide: replace inverted check for PBL with new IN_PROPER macro
      lib: random: add stubs for PBL
      bootsource: stub out when in PBL
      crypto: provide crypto_memneq for PBL
      cdev: stub out cdev_read/write for PBL
      libfile: stub out file descriptor API for PBL
      environment: stub out environment API for PBL
      of: stub out live tree API when using PBL
      errno: stub out perror/strerror API when built for PBL
      xfuncs: stub out API when built for PBL
      sandbox: hostfile: strdup device tree node names
      lds: implement is_barebox_rodata
      string: implement proper strdup_const/free_const
      treewide: replace basename with kbasename
      treewide: use strdup_const where appropriate
      fs: efi: replace allocation with local buffer
      cdev: fix string leaks in devfs links
      scripts: implement read_fd and pread_full for tools
      startup: don't fallback to shell from menu
      sandbox: use host system's UBSan library
      common: implement CC_IS_GCC and CC_IS_CLANG symbols
      fixdep: sync with Linux
      Makefile: add LLVM/clang support
      dlmalloc: add aliases with dl as prefix
      hardening: support zeroing all malloc buffers by default
      hardening: support initializing stack variables by default
      hardening: support register zeroing on function exit
      tlsf: panic in asserts if CONFIG_BUG_ON_DATA_CORRUPTION=y
      stdio: stub out basprintf and friends when built for PBL
      memory: stub out request_barebox_region for PBL
      malloc: add PBL stubs
      of: add helpers to get alias from device node path + property name
      environment: implement of_env_get_device_alias_by_path helper
      bootsource: have bootsource_get_alias_name return const char *
      ARM: i.MX8MP: tqma8mpxl: fix bbu registration for other boards using SoM
      sandbox: sdl: fix use of variable before it was defined
      kbuild: split off compiler helpers into separate Makefile.compiler
      kbuild: sync scripts/Kbuild.include with Linux
      sandbox: asm: support inclusion from sandbox os support code
      test: self: setjmp: add simple initial testcase
      sandbox: setjmp: mark C version as __weak
      sandbox: use native setjmp/longjmp/initjmp implementation by default
      sandbox: source/invoke um Makefiles provided by host architecture
      sandbox: retire HAVE_ARCH_ASAN
      bthread: move asan fiber API into header
      test: self: setjmp: make compatible with ASAN
      bthread: fix use of ASAN fiber stack switch API
      sandbox: barebox cmdline
      sandbox: add cpuinfo command
      sandbox: use barebox' own sbrk
      net: tap: return -ENODEV when TAP permission is denied
      video: dw-hdmi: populate missing I2C adapter device node
      i2c: i2c: fix getting adapter.nr for I2C muxes
      i2c: order dynamically numbered adapter after highest alias id
      optee: fix i.MX8M link error when loading OP-TEE without CONFIG_TEE
      video: dw-hdmi: fix I2C controller probe breakage
      startup: fix infinite loop falling into menu without /env/menu/mainmenu
      test: self: ramfs: add regression test for recursive opendir
      fs: fix resolving paths when directory name repeats
      kbuild: fix clangd warning with GCC compile_commands.json
      partitions: dos: allocate NT signature param when recreating partition
      partitions: efi: allocate disk GUID param when recreating partition

Alaa Ali (1):
      sandbox: sdl: Fix unresponsive SDL GUI by handling SDL_QUIT events

Alexander Shiyan (7):
      scripts/.gitignore: Add generated mkimage to .gitignore
      mtd: nand: Fix unconditional message "CONFIG_NAND_NEED_ECC_PLACEMENT_INTERLEAVED is disabled"
      ARM: omap: Unify the definition of DRAM start address
      video: omap-fb: Remove orphan driver
      ARM: at91: Compile aic.c for SAMA5D2 only
      ARM: cpu: dtb: Drop unnecessary check
      pci: pcie-designware: Do not consider missing PCI device as an error

Bastian Krause (1):
      common: reflect rename of CRYPTO_RSA_KEY to CRYPTO_PUBLIC_KEYS

Johannes Schneider (1):
      common: add custom autoboot_abort_key

Jonas Rebmann (1):
      automount: add nfs section to board automount scripts

Jules Maselbas (1):
      kvx: watchdog: Add early watchdog init

Julian Vetter (2):
      kvx: Split sfr definition for kv3-1 and kv3-2
      kvx: Request additional owner bit-fields on CV2

Konstantin Kletschke (1):
      ARM: beaglebone: add delay in lowlevel.c

Louis Morhet (1):
      kvx: socinfo: Fix mppa ID read from fuses

Lucas Stach (3):
      mci: sdhci: arasan: use correct input clock for divider calculation
      mci: sdhci: arasan: remove dead no 1.8V quirk
      mci: sdhci: initialize dma state on non-data commands

Oleksij Rempel (3):
      net: designware: eqos: stm32: add stm32mp13 support
      rtc: pcf85063: fix potential OOB write in PCF85063 NVMEM read
      nvmem: bsec: Fix incorrect size calculation for PTA read

Sascha Hauer (82):
      dts: update to v6.12-rc3
      dts: update to v6.12-rc4
      ARM: Layerscape: TQMLS1046a: Update DDR timings
      ARM: Layerscape: images: fix variable name
      ARM: Layerscape: images: add missing FORCE
      ARM: Layerscape: TQMLS1046a: add support for 8GiB variant
      ARM: Layerscape: ls1046ardb: remove unused variable
      ARM: Layerscape: remove register arguments
      ARM: Layerscape: LS1046a: add TF-A support
      ARM: Layerscape: LS1046a-rdb: Switch to TF-A support
      ARM: Layerscape: TQMLS1046a: Switch to TF-A support
      ARM: Layerscape: LS1046a: remove PPA support
      ARM: Layerscape: LS1046a: add PSCI node
      ARM: Layerscape: Update Documentation for TF-A
      ARM: rockchip_v8_defconfig: Enable VOP2 driver
      i2c: set adapter.nr explicitly to -1
      i2c: get adapter.nr from device tree
      i2c: start dynamic I2C bus numbers at 32
      regmap: implement regmap_multi_reg_write()
      phy: make of_phandle_args constant
      phy: put phy devices in class
      phy: add of_phy_simple_xlate()
      reset: add __reset_control_get()
      reset: implement reset_control_bulk_get()
      dts: update to v6.12-rc5
      spi: add rockchip spi controller support
      mfd: mx13xxx: drop unnecessary ifdefs
      mfd: rk808: factor out common probe function
      mfd: rk808: update header file from kernel
      mfd: rk808: add support for RK806
      regulator: add regulator_register()
      regulator: rk808: update from kernel
      regulator: rk808: Add apply_bit for BUCK3 on RK809
      dts: update to v6.12-rc6
      filetype: detect i.MX flash header v3
      ARM: Layerscape: ls1046ardb: add missing machine protection
      ARM: k3: fix debug_ll
      ARM: i.MX93: add destination argument to imx93_romapi_load_image()
      ARM: i.MX: Add bootm handler for i.MX flash header v3 images
      ARM: i.MX: move handoff-data out of OCRAM
      handoff_data: add handoff_data_add_dt()
      handoff-data: set flags of moved handoff data entry
      handoff-data: add protection against multiple invocation
      fs: open loopback device before using it
      fs: tftp: cache dentries for some time
      fs: kill invalid dentries
      fs: tftp: Set default window size to 1
      dts: update to v6.12-rc7
      mailbox: make mailbox.h self contained
      net: davinci_mdio: separate driver
      mci: parse upstream boot/gp partition binding
      ARM: dts: Use upstream eMMC boot partition binding
      firmware: ti_sci: update from U-Boot
      ARM: K3: add navss-ringacc driver
      dma: add dma-devices support
      dma-devices: add k3-udma support
      ARM: k3: am625: add syscon compatible to phy_gmii_sel
      net: add am65-cpsw-nuss driver
      ARM: k3: add bootsource detection
      ARM: k3: implement environment handling
      watchdog: cleanup timeout_cur parameter
      watchdog: add watchdog ping support
      watchdog: add rti_wdt support
      net: davinci_mdio: drop phy_mask detection
      net: davinci_mdio: initialize priv->dev
      net: davinci_mdio: initialize divider from clk
      Merge branch 'for-next/arm'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/gc-section'
      Merge branch 'for-next/handoff-data'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/k3'
      Merge branch 'for-next/kvx'
      Merge branch 'for-next/layerscape-tfa'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/rk808'
      Merge branch 'for-next/sandbox'
      Merge branch 'for-next/strdup-const'
      Merge branch 'for-next/tftp'
      MIPS: remove accidently merged file
      ARM: i.MX: HAB: Allow for semicolons in HAB environment variables
      Release v2025.01.0

Sebastien Bourdelin (4):
      mci: add a busy_timeout member to the struct mci_cmd
      mci: zeroed all structs mci_cmd instances
      mci: sdhci: use the busy_timeout value in the sdhci_wait_idle functions
      mci: bcm2835: set timeout value to 100ms

Stefan Kerkmann (11):
      block: downgrade noisy debug calls to verbose debug
      fs: ramfs: downgrade noisy debug calls to verbose debug
      bootm: make dryrun controllable via global variable
      arm: crypto: sha256: fix generation of thumb2 assembly
      arm: configs: multi_v5_v6_defconfig: move rpi1 armv6 targets
      arm: configs: multi_v5_v6_defconfig: enable arm optimized sha1/sha256 digest
      arm: configs: multi_v7_defconfig: compile for thumb2
      arm: configs: multi_v7_defconfig: enable arm optimized sha256 digest
      arm: configs: multi_v8_defconfig: enable arm optimized sha1/sha256 digest
      test: arm: rpi: run tests against multi_v5_v6_defconfig
      commands: mmc_extcsd: split background operations

Sven Püschel (3):
      ARM: dts: i.MX8MP: imx8mp-skov: skip sd/sdio detection on the eMMC
      video: mipi_dbi: fix swapped width and height in mipi_dbi_blank
      video: mipi_dbi: don't send image before initialization

Ulrich Ölmann (3):
      ARM: dts: skov-imx6: switch barebox' environment from MBR to GPT
      common: Kconfig: BOOTM_FITIMAGE_SIGNATURE: fix help text
      bootm: add missing spaces in error messages


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


