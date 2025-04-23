Delivery-date: Wed, 23 Apr 2025 11:02:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7VzY-004PjF-2y
	for lore@lore.pengutronix.de;
	Wed, 23 Apr 2025 11:02:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7VzX-0002sY-Dg
	for lore@pengutronix.de; Wed, 23 Apr 2025 11:02:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=wEjiMRg+03nRmK/q7/1jUkvBswptLhjstuuZYuQg3dg=; b=nOJdYqhU+ykdWRzZyI3RVxmoyo
	HBbm8AtxI3dhrJ22sZeqBpHy/p8t+pz0womeWI03dmz6Y9JMo0TTmVC1eNMjM8h6G7WemOu6GAv4A
	gJ5vhrdJIcf0DItVtSA0OiFJ1ERSbDZIPDZSVFO7bf1XW4yleBN4zhyzmemARxV6gGRf9kONRnurN
	6hnIsMCRg2qxe15ffym1Lot96BGOqf6ozO1msae/0V1742ohzzo1dQx49n+3yemCNiH4mLSjzkjkK
	BCoLxpqcQamSq0ZAubNXJzMJwgocCdbsgrQwB/q05AqZraBXttvZUCjmwplQla4GSHxtO8L8oX+pn
	b3Sj0Ajg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7VyU-00000009r6H-1Dp9;
	Wed, 23 Apr 2025 09:00:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7V6I-00000009csr-3UQq
	for barebox@lists.infradead.org;
	Wed, 23 Apr 2025 08:05:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1u7V6G-0000R6-6c; Wed, 23 Apr 2025 10:04:56 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u7V6F-001gZk-3C;
	Wed, 23 Apr 2025 10:04:56 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u7V6F-00Gxbh-2o;
	Wed, 23 Apr 2025 10:04:55 +0200
Date: Wed, 23 Apr 2025 10:04:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <aAifJzWra0F7zY-U@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250423_010459_179219_F39B0985 
X-CRM114-Status: GOOD (  21.74  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: v2025.04.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


Hi All,

barebox-2025.04.0 is just released. Overall a total of 196 patches went
into this release. The TI K3 support continues to evolve and this
release brings us verification of the 2nd stage full barebox using the
K3 ROM API or via compiling a hash of the full barebox into the first
stage barebox. The latter could be reused on other SoCs which also
require chainloading a full barebox. Some codesize cleanups in the
filetype detection now makes the am335x_mlo_defconfig compile again
within its size constraints. This has been broken since the last NAND
layer update.  Other than that we have a new i.MX93 board supported, the
Phytec phyBOARD Segin i.MX93. The majority of patches is still the usual
flow of fixes and cleanups.

See below for a full list.

Have Fun!
 Sascha

----------------------------------------------------------------
Ahmad Fatoum (83):
      kbuild: export whether we are cross compiling
      kbuild: override host system KCONFIG_DEFCONFIG_LIST
      fs: combine __d_alloc's allocations into one
      kbuild: add support for clang-analyzer with scan-build
      soc: ti: k3-navss-ringacc: fix COMPILE_TEST link error
      treewide: fix missing headers in sandbox allyesconfig
      drivers: don't cast pointer directly to enum
      firmware: arm_scmi: smc: compile only for ARM
      video: stm32-ltdc: fix printing uninitialized variable
      usb: core: remove unnecessary comparison
      ddr_spd: fix always true sub-condition
      hush: fix make_string behavior on empty strings
      nvmem: fix clang-analyzer false-positive use of uninitialized value
      string: initialize string array in string selftest
      commands: ubsan: hide zero division in test
      crypto: ecc: fix clang-analyzer warning about NULL dereference
      mci_spi: fix possible use of uninitialized variable
      mtd: have mtd_read populate retlen always
      of: fdt: silence possible static analyzer false positive
      ubi: workaround zero division on malformed input in ubi_assert
      video: Rockchip: fix zero division in rk3588_calc_cru_cfg
      lib: scatterlist: don't assert last element for empty sglist
      scripts: omap3-usb-loader: fix clang-analyzer false-positive
      clk: analogbits: wrpll-cln28hpc: bail out before zero division
      watchdog: stm32_iwdg: bail out before zero division
      arch: move promptless options to end of Kconfig file
      RISC-V: rename HAS_CACHE to RISCV_ICACHE
      treewide: retire CONFIG_HAS_CACHE
      arch: move hidden arch options to arch/Kconfig
      arch: move PHYS_ADDR_T_64BIT definition to arch/Kconfig
      x86: move CONFIG_PHYS_ADDR_T_64BIT setting into Kconfig
      malloc: return ZERO_SIZE_PTR for 0-byte allocations
      vsprintf: make basprintf an alias of xasprintf
      treewide: remove NULL checks for revised basprintf
      MAKEALL: support direct options for KCONFIG_ADD
      MAKEALL: parse kconfig_add out of YAML files
      scripts/make_fit: factor dtb file name into configuration name
      amba: drop unused hepers for creating AMBA devices outside OF
      amba: support masking data abort during identification
      ARM: qemu: mask data aborts during AMBA identification
      Documentation: user: intro: update feedback section on ML
      Revert "Documentation: remove info about bridging to matrix"
      firmware: disable MISSING_FIRMWARE_ERROR for COMPILE_TEST builds
      include: asm-generic/pointer.h: fix ASM_PTR definition for i386
      sandbox: do not enable SANDBOX_LINUX_I386 in allyesconfig
      Documentation: devicetree: fix Sphinx warnings
      ARM: mvebu: kwb_bbu: add missing header
      net: phy: fix of_get_phy_mode for XLGMII and beyond
      vsprintf: fix left indentation when formatting wide string arguments
      test: self: printf: add tests for formatting wide strings
      commands: ubsan: fixup hide zero division in test
      video: ssd1307fb: set default mode
      ci: coverity: fix git hash truncation to 10 characters
      fs: smhfs: fix crash when stat'ing file
      sandbox: use POSIX header instead of Linux one
      sandbox: don't build tap support code without CONFIG_DRIVER_NET_TAP
      sandbox: os: tap: make it compile with musl
      common: pe: fix pe reloc pointer overrun
      efi: payload: init: fix condition in warning message
      i2c: muxes: pca954x: switch to device_get_match_data
      treewide: export symbols needed for i2c-mux-pca954x.ko
      kbuild: compile *.mod.c files with -fshort-wchar
      hardening: add missing word in Kconfig comment
      fs: add only successful filesystem probes to fs_device_list
      common: pe: fix crash when pe_load was not called
      barebox.h: annotate __hang as __noreturn
      bootm: associate bootm overrides with struct bootentry
      bootm: remove ability for late override of bootm.image
      bootm: have bootm_open_fit return -ENOSYS if support missing
      Revert "mmc: merge block read/write functions"
      tlsf: hardening: unpoison trailing padding before zeroing it
      tlsf: hardening: skip KASAN checks when zeroing memory
      ARM: cpu: start: fix ramoops and OP-TEE co-existence
      lib: select HAS_INSECURE_DEFAULTS from ALLOW_PRNG_FALLBACK
      crypto: ecc: use HWRNG for random numbers
      crypto: imx-scc: blobgen: use HWRNG for random numbers
      KASan: fix possible breakage with CONFIG_INIT_STACK_ALL
      ARM: Layerscape: fix compilation of LS1028 without LS1046
      ARM: k3: define debug_ll_write_reg only on CONFIG_DEBUG_AM62X_UART=y
      memory: correct return value in request_barebox_region stub
      Documentation: document querying of barebox version
      Documentation: devicetree: add of_diff hint for visualizing fixups
      font: fbconsole: fix underflow when printing non-ASCII characters

Alexander Shiyan (13):
      at91: Remove non-devicetree board support for SAMA5D3 SOC
      at91: sama5d2: Do not use the contents of BSC_CR if the DISABLE_BSCR bit is set in the fuse
      at91:: Remove dead definition of atmel_nand_load_image()
      at91: ddramc: Trivial code cleanup
      at91: Use proper values of stashed SAMA5D2/3/4 bootsource
      at91: Remove AT91_LOAD_BAREBOX_SRAM option
      images: at91: Fix MAX_PBL_IMAGE_SIZE value for xload
      ARM: at91: Remove SAMA5D2 handling from sam9_smc driver
      ARM: at91: Add PBL_BREAK support
      ARM: at91: Merge sama5_boot_xload() asm code
      ARM: at91: Rename xload-mmc.c
      clk: rockchip: rk3588: make refclko25m_ethX critical
      firmware: .gitignore: Add *.sum generated file

Bastian Krause (11):
      bootchooser: fix state_prefix nv variable in error message
      kbuild: undefine linux/unix macros
      doc: bootchooser: drop article before bootchooser
      doc: bootchooser: drop confusing description for "remaining_attempts"
      doc: bootchooser: clarify marking boot successful from barebox
      doc: bootchooser: don't recommend NV backend
      doc: bootchooser: move global.bootchooser.reset_attempts docs down to other variables
      doc: bootchooser: rephrase global.bootchooser.reset_priorities description
      doc: bootchooser: document defaults of global.bootchooser.*
      doc: bootchooser: rephrase scenarios
      doc: bootchooser: document NV storage backend separately

Fabian Pflug (1):
      ARM: dts: tqma93xx add dummy supply to regulator

Hongxu Jia (1):
      scripts/dtc: clean up yamltree from dtc

Jonas Rebmann (3):
      ARM: boards: Add support for phyBOARD-Segin i.MX 93
      mfd: pca9450: configure pmic reset behavior
      ARM: boards: remove obsolete PCA9450_RESET_CTRL setup

Jules Maselbas (21):
      eeprom: at25: replace strncpy with strlcpy
      eeprom: at25: add explicit fallthrough
      common: deep-probe: make __barebox_deep_probe_{start,end} of array type
      dma-devices: k3-udma: remove duplicated include
      dma-devices: k3-udma: use snprintf instead of sprintf
      pmdomain: ti-k3: remove trailing whitespace
      mci: sunxi-mmc: do not log error message on EINVAL error
      commands: of_display_timings: prevent memory leak
      regulator: fan53555: suppress warning about uninitialized variable
      treewide: use fallthrough pseudo keyword in switches
      sandbox: sdl: fix compilation on musl-libc
      sandbox: sdl: make window variable static
      vsprintf: fix missing break when printing %pJP
      vsprintf: add explicit fallthrough
      treewide: add explicit fallthrough and break
      lib: add explicit fallthrough in strtoull_suffix
      mtd: spi-nor: add explicit fallthrough
      lib: add explicit break in kstrtox/strtox
      fbconsole: add missing break
      commands: edit: Fix potential out-of-bound access
      commands: edit: remove the memset call on screenline

Lars Schmidt (1):
      pinctrl: at91: add sama5d3 compatible after DT regression

Oleksij Rempel (4):
      net: dsa: Add global forwarding mode support
      Documentation: networking: Add DSA switch support documentation
      net: dsa: sja1105: Add support for global forwarding mode
      commands: Add `ip` command for listing interfaces, addresses, and routes

Sascha Hauer (59):
      dts: update to v6.14-rc4
      ARM: at91: remove obsolete defconfig
      barebox-environment: Use default mount path
      firmware: always generate sha256sum
      firmware: add function to verify next image
      ARM: k3: r5: drop loading of separate binaries
      ARM: k3: r5: add proper error handling
      fip: rework fip_image_open()
      fip: fix wrong function call
      fip: add function to calculate a sha256 over FIP image
      ARM: am625: support hash verification of full barebox
      ARM: k3: add support for authenticating images against the ROM API
      ARM: k3: r5: delete fip image when it can't be opened
      ARM: k3: r5: Allow to authenticate next image by ROM API
      scripts/k3img: remove temporary files
      scripts: add k3sign
      ARM: k3: r5: select HAS_INSECURE_DEFAULTS when necessary
      net: am65-cpsw-nuss: depends on DMA support
      ARM: multi_v8_defconfig: enable k3 drivers
      ARM: k3-r5_defconfig: enable eMMC boot partitions
      dts: update to v6.14-rc6
      mci: use struct cid
      mmc: merge block read/write functions
      mci: cleanup code around ready_for_use flag
      mci: mci_spi: remove stray return 0
      mci: mci_spi: fix warning message
      mci: mci_spi: use mci_of_parse()
      filetype: add file_detect_compression_type()
      filetype: add file_detect_fs_type()
      filetype: add function pointer to file_name_detect_type_offset()
      filetype: let cdev_detect_type() only detect filesystems
      filetype: make file type strings optional
      ARM: am33xx: myirtech-myd: add MLO specific device tree
      ARM: am335x_mlo_defconfig: disable file type strings
      dts: update to v6.14-rc7
      Merge branch 'for-next/am625'
      Merge branch 'for-next/at91'
      Merge branch 'for-next/clang-analyzer'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/filetype'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/mci'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/rockchip'
      Merge branch 'for-next/socfpga'
      linux/printk.h: fix typos
      mci: Do not access ext_csd on SD cards
      fip: remove debugging leftover
      mci: fix data write
      filetype: fix MBR detection
      filetype: fix FILETYPE_STRING misspelling
      ratp: Drop wrong alignment annotation
      ratp: do not export ratp command list
      ratp: make ratp commands const
      blspec: fix dryrun support
      commands: boot: document bootchooser option
      ARM: Layerscape: fix icid compilation for 32bit layerscape
      Revert "ARM: k3: define debug_ll_write_reg only on CONFIG_DEBUG_AM62X_UART=y"
      Release v2025.04.0

Stefan Kerkmann (1):
      i.mx8: ocotp: add GPx defines

Stefano Manni (1):
      imx-bbu-nand-fcb: do not use hardcoded devicefile

Steffen Trumtrar (5):
      ARM: SoCFPGA: move wait_on_timeout to generic
      ARM: SoCFPGA: arria10-sdram: cleanup emif_clear
      ARM: SoCFPGA: arria10-sdram: cleanup emif_reset
      ARM: SoCFPGA: arria10-sdram: remove workaround
      ARM: SoCFPGA: arria10-sdram: cleanup ddr_setup

Uwe Kleine-König (3):
      Documentation: rockchip: Update versions of DDR init blobs
      arm64: rockchip: Refresh rockchip_v8_defconfig
      arm64: rockchip: Enable rk-usb-loader in rockchip_v8_defconfig

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


