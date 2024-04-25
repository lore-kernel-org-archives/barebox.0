Delivery-date: Thu, 25 Apr 2024 09:38:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rztgU-00GIDJ-0g
	for lore@lore.pengutronix.de;
	Thu, 25 Apr 2024 09:38:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rztgS-0008Ju-QO
	for lore@pengutronix.de; Thu, 25 Apr 2024 09:38:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hfUKxBu6u5GqP4MrO91prs80LdFiOGzxrbt+zN81+qs=; b=cfq7FSMpS0U8iiHoRZgvPV71t/
	ZNoypxFkIUgk95lt+wrzKZU+sWUxKR5cRridpceq6M2yH/UbrH72rC35JnDyv9xlbYfr+6TjPgZog
	jzECeEUHQeRLdZ0dNgeaAGPBvgAxzZHOiZXHDUlwKqAr4Jf6PwBP+eaWulbk1ANFsB6j4eH2XOF2m
	dGnlvh48kQj6t0sjh9C8uvfC8lLaLKeRIBsOlw+gIfXUnAFiL0uiZXT6hj/i1tEeIbYdIa0fpmVL+
	ysSbPWry2DqQxdYZC4m0TTCH6v0RufMT9pa38ZXDr2Z9THY51A7X158LjKTlqfEhifdDGhxsPQXbL
	9T4s77Hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rztff-00000007If9-48RI;
	Thu, 25 Apr 2024 07:37:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rztfa-00000007Ic7-3i3P
	for barebox@lists.infradead.org;
	Thu, 25 Apr 2024 07:37:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rztfW-0007yW-Ay; Thu, 25 Apr 2024 09:37:22 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rztfV-00EDoN-UW; Thu, 25 Apr 2024 09:37:21 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rztfV-00DDeX-2b;
	Thu, 25 Apr 2024 09:37:21 +0200
Date: Thu, 25 Apr 2024 09:37:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <ZioIMQA9EpBWUxuz@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240425_003727_287825_40B099E1 
X-CRM114-Status: GOOD (  20.32  )
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
Subject: v2024.04.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi All,

I am happy to announce barebox-2024.04.0.

This release brings us some nice things. Our MMC layer now supports HS200
speed modes and the arasan SD controller is the first driver that supports
this. We have two new i.MX boards supported which are the Ka-Ro qsxp-ml81
i.MX8MP board and the Congatec WMX8MP board. Ahmad has continued to prepare
ARM64 EFI loader support which was a huge series with a lot of cleanups and
reworks.
There are also some nice little goodies I'd like to mention here. Whith
CONSOLE_FLUSH_LINE_BREAK enabled the console is now flushed on every
newline character, so chances are increased that the last message before
a crash is really printed. Also the number of stored log messages is now scaled
with the available RAM, so we can enable more debugging without rotating
the messages out too fast and still not eat up to much RAM on memory
constrained system.

There's a lot more, see below for a list of patches.

Have Fun!
 Sascha

Ahmad Fatoum (184):
      mci: atmel_mci: disable power save mode
      mci: atmel_mci: fix zeroing of block length on AT91SAM9263
      ARM: replace ENTRY_FUNCTION_HEAD with ENTRY_FUNCTION_WITHSTACK_HEAD
      ARM: at91: use AT91 header instead of generic barebox ARM's
      ARM: at91: implement SAM9_ENTRY_FUNCTION
      ARM: at91: sam9263_ll: drop PLL charge pump initialization
      ARM: at91: sam9263_ll: pass AT91_PMC_LL_AT91SAM9263 to PMC functions
      ARM: at91: sam9263_ll: refactor MCK switch to PLLA for clarity
      ARM: at91: sam9263_ll: support configuration of PLLB
      ARM: dts: AT91: skov-arm9cpu: remove barebox environment on NOR
      ARM: at91: skov-arm9cpu: configure SMC for NOR flash use
      ARM: at91: skov-arm9cpu: configure more appropriate hostname
      ARM: AT91: skov-arm9cpu: support environment on SD-Card
      driver: make struct bus_type::match optional
      driver: make struct bus_type::probe optional
      treewide: remove bus probe functions that just call driver probe
      usb: otg: maintain list of USB OTG controllers
      usb: otg: turn global otg device into device alias
      usb: print number of skipped OTG controllers when scanning
      of: fdt: factor out FDT header parsing
      string: implement strcmp_ptr and streq_ptr helpers
      commands: efiexit: flush console and shutdown barebox
      treewide: add errno_set helper for returning positive error code in errno
      vsprintf: guard against NULL in UUID %pU
      common: add option to poweroff system on failure
      boot: print error code when booting fails
      common: efi: move directory to top-level
      efi: payload: rename CONFIG_EFI_BOOTUP to CONFIG_EFI_PAYLOAD
      efi: payload: image: return actual read_file() error
      of: don't report failure to of_read_file twice
      efi: payload: make missing state reporting less verbose
      libfile: factor out read_file_into_buf helper
      efi: payload: image: allocate image via loader if it exceeds malloc area
      efi: payload: image: use assigned barebox loader type on x86
      efi: payload: iomem: adjust types to avoid casting
      commands: kallsyms: add command-line interface
      block: define BLOCKSIZE globally in block.h
      cdev: implement setter/getter for cdev device node
      block: virtio: assign virtio-mmio device tree node to cdevs
      commands: stat: print DT node for cdevs if available
      partitions: have parsers record bootable bits
      commands: stat: display bootable partition table bit info
      block: record block device type
      include: add definitions for UAPI discoverable partitions spec
      efi: payload: restrict 8250 UART at I/O port 0x3f8 registration to x86
      fs: fix unreaddir, so readdir returns unread dirent first
      fs: turn creat into static inline helper
      fs: drop unused LOOKUP_ flags
      fs: opendir: reference mount point until closedir is called
      fs: factor out opendir iteration
      fs: implement fdopendir and rewinddir
      fs: remove unused member from struct nameidata
      fs: always check path_init for errors
      fs: set current working dir directly when mounting root
      fs: implement openat and friends
      fs: implement O_PATH
      fs: support different root directories
      fs: implement O_CHROOT
      commands: introduce new findmnt command
      fs: initialize struct nameidata::last
      fs: support opening /
      test: self: add dirfd tests
      commands: stat: add option for statat
      efi: payload: lower command line options print from error to info
      efi: payload: init: warn if /boot FS is unknown
      commands: time: switch to using getopt for -n
      commands: time: reduce strjoin runtime, drop trailing space
      commands: time: refactor into new strjoin
      test: self: add strjoin tests
      filetype: have cdev_detect_type take a cdev
      ARM: mmu-early: gracefully handle already enabled MMU
      efi: don't hide structs, enums or unions behind _t
      efi: make headers self-contained
      efi: unify whitespace for GUIDs
      efi: efi-guid: add more GUIDs
      ARM64: cpu: setupc: rewrite to be fully PIC
      ARM64: runtime-offset: make get_runtime_offset fully PIC
      pbl: introduce CONFIG_PBL_FULLY_PIC
      efi: payload: fix ARM build
      efi: payload: init: restrict barebox mem to first 1G only on x86
      efi: add efi_is_loader/efi_is_payload helpers
      efi: payload: suppress EFI payload initcalls when not EFI-loaded
      ARM: make board data definitions accessible to other architectures
      boarddata: add barebox_boarddata_is_machine helper
      common: add PE/COFF loader
      efi: use efi_handle_t where appropriate
      efi: block: move definitions into header file
      efi: define efi_handle_t as opaque pointer
      efi: constify guid_t in API
      efi: rename efi_simple_input_interface to efi_simple_text_input_protocol
      efi: add EFI_WARN constants
      efi-stdio: fix wait_for_event argument
      efi-stdio: wait for extended input key event when using extended input
      efi: flesh out EFI definitions in header
      efi: add efi_driver_binding_protocol
      efi: improve usability of EFI_PAGE_* macros
      fs: efi: move definitions into header
      efi: fs: flesh out file system definitions
      efi: stdio: fix efi_register_keystroke_notify prototype
      video: mark EFI_GOP driver x86-only for now
      filetype: add new file types for EFI-enabled Linux images
      efi: payload: register handler for EFI-stubbed ARM64 kernel
      efi: payload: factor C efi_main into dedicated file
      efi: payload: early-mem: simplify error message reporting
      efi: payload: early-mem: use EFI_PAGE_SIZE instead of PAGE_SIZE
      ARM64: add optional EFI stub
      efi: devicepath: improve const safety
      efi: refactor device_path_to_partuuid for code reuse
      efi: devicepath: implement device_path_to_str_buf variant
      lib: vsprintf: align documentation with current feature set
      vsprintf: add %pD for printing EFI device path
      lib: string: import Linux strreplace helper
      efi: payload: dynamically determine bootloader file name
      efi: payload: iomem: register later
      efi: payload: protect against buggy EFI implementations
      efi: payload: don't require efi_loaded_image->parent_handle for bootsource detection
      commands: add cpuinfo -s option for stacktrace
      efi: devicepath: align MemoryMapped name with spec
      efi: devicepath: pretty print BBS BEV DeviceType
      efi: devicepath: format GUIDs as little endian
      efi: devicepath: move END device node definitions into header
      efi: devicepath: drop underscores in hex constants
      efi: devicepath: namespace definitions
      efi: devicepath: use flexible array members for trailing strings
      efi: devicepath: drop unused macro
      efi: devicepath: let compiler worry about unaligned unpacking
      efi: devicepath: correct formatting of BBS
      commands: provide efi_handle_dump in both payload and loader
      lib: uuid: implement uuid/guid_parse
      commands: efi_handle_dump: prepare for supporting EFI loader
      commands: efi_handle_dump: print loaded image devpath
      commands: efi_handle_dump: use guid_parse instead of open-coding
      commands: efi_handle_dump: don't ignore failure to parse GUID
      of: fdt: implement fdt_machine_is_compatible
      blspec: don't parse whole device tree to compare compatibles
      FIT: support finding compatible configuration by FDT compatible
      console: scale number of log messages with available RAM
      commands: dmesg: support aborting dmesg output with ctrl-c
      mci: add comment about hardcoded 512 bytes for DDR
      dma: debug: detect repeated DMA sync
      pbl: make PBL_FULLY_PIC specific to ARM64
      fs: fix overlap of O_RWSIZE with new O_PATH/O_CHROOT flags
      of: fdt: justify fdt_machine_is_compatible parsing only the root node
      ARM: i.MX: phytec-som-imx6: use strdup instead of basprintf
      ARM: i.MX8MM: innocomm-wb15: switch to upstream DT
      ARM: i.MX8M: drop function prototype for removed imx8m_uid
      env: export getenv_ullx() helper
      console: flush consoles on newline when debugging
      net: add net_alloc_packets helper
      net: ep93xx: replace global NetRxPackets with per-interface allocation
      net: enc28j60: replace global NetRxPackets with per-interface allocation
      net: gianfar: replace global NetRxPackets with per-interface allocation
      net: ethoc: replace global NetRxPackets with per-interface allocation
      net: cpsw: replace global NetRxPackets with per-interface allocation
      net: retire global NetRxPackets arrays
      hw_random: support ctrlc()
      ARM: io: read 32 bits at once for aligned I/O memcpy/memset
      driver: implement dev_platform_get_and_ioremap_resource
      hw_random: add struct hwrng::priv member
      hw_random: remove confusing left-overs from kernel help texts
      hw_random: remove reference to undefined CONFIG_HW_RANDOM
      hw_random: add Atmel RNG driver
      hw_random: add BCM2835 RNG driver
      hw_random: add IPROC RNG200 driver for BCM2711
      hw_random: add Rockchip RNG support
      hw_random: add timeriomem_rng driver
      hw_random: add OMAP RNG driver
      ddr: imx8m: add deprecation warnings for ddrphy_trained_csr
      net: cpsw: map/unmap buffers used for DMA
      ARM: i.MX: define MUX_MODE_SION for use in board code
      dma: correctly honour dma-noncoherent device tree property
      soc: sifive: l2_cache: fix 32-bit compilation
      RISC-V: riscvemu: build overlay as DTSO
      treewide: replace references to barebox.org/jsbarebox with demo
      Documentation: devel: project-ideas: remove outdated info on MMC speed
      Documentation: aarch64-qemu-virt: add name of defconfig
      gpio: rockchip: fix support for RK3588/RK3566
      soc: rockchip: io-domain: handle missing supply correctly
      partitions: efi: fix NULL dereference on corrupted GPT
      mci: core: don't fail MMC probe if HS200 isn't supported in HW
      clk: imx: add IMX_COMPOSITE_CLK_FLAGS_DEFAULT macro
      clk: imx: composite-8m: fix muxing of core and bus clocks
      clk: imx: imx8mp: sync with Linux v6.9-rc3
      mci: core: allocate memory used for DMA with dma_alloc

Antony Pavlov (2):
      net: drop unused rarp.h
      MIPS: add generic device tree 2nd stage support

Bastian Krause (3):
      ARM: i.MX8MM: set SION bits for i2c2, i2c3, i2c4 mux options
      ARM: i.MX8MN: set SION bits for i2c mux options
      firmware: fix SoC variant in help text of FIRMWARE_IMX93_OPTEE

Denis Orlov (3):
      ddr_spd: add DDR3 Load Reduced module specific data
      ddr_spd: add routine for printing DDR3 SPD contents
      clk: fix clk_set_rate command help text

Enrico Scholz (2):
      of: do not acccess 'prop->value' directly
      ARM64: let 'end' point after the range in cache functions

Johannes Zink (1):
      ARM: i.MX8MP: add König+Bauer AlphaJet board

Jonas Richardsen (1):
      of: do not copy properties if they already exist in the destination

Lucas Stach (1):
      usb: onboard-hub: bail out if peer hub is already probed

Marc Kleine-Budde (4):
      net: phy: micrel: update id table from Linux kernel
      net: phy: micrel: add support for ksz9131 phy
      arm: dts: karo: import dts for karo-qsxp-ml81
      arm: imx8mp: add karo electronics qsxp-ml81 som support

Marco Felsch (5):
      fastboot: add support to set fastboot_bbu from board code
      boot: add helper to set default boot source from board file
      startup: fix autoboot_state in case of abort
      common: barebox_banner: fix missing newline
      pmdomain: imx8mp-blk-ctrl: fix adb handshake handling

Oleksij Rempel (1):
      ARM: i.MX8MP: skov: add MAC address assignment support

Sam Ravnborg (1):
      ARM: at91: skov-arm9cpu: Add SD-Card xload support

Sascha Hauer (37):
      gpio: add slice support
      gpio: pca953x: depend on i2c slice
      input: gpio_keys: limit poll rate
      input: gpio_keys: only use gpios in poller when not in use
      dts: update to v6.8-rc6
      dts: update to v6.8
      board: tq: add missing select
      board: tq: fix format specifier
      board: tq: add support for 16bit eeprom
      ARM: i.MX6: add i2c4 base address
      ARM: tqma6ul: add pr_fmt string
      ARM: tqma6ul: enable enet_ref_125m clk
      net: phy: fix miibus parent device of_node not matching phy node
      ARM: tqma6ul: use upstream device trees
      ARM: i.MX6: TQMa6ulx: add OP-TEE support
      ARM: i.MX6ul: TQMa6ul: fix mmc aliases
      ARM: i.MX6ul: TQMa6ul: install barebox on eMMC boot partitions
      ARM: i.MX93: add bootsource detection
      ARM: i.MX: ele: remove unnecessary argument
      ARM: i.MX: ele: move ELE_READ_SHADOW_REQ definition
      ARM: i.MX: ele: add function comments
      ARM: i.MX: ele: add ele_write_shadow_fuse
      nvmem: add nvmem_device_get_device()
      nvmem: imx-ocotp-ele: implement permanent write support
      Merge branch 'for-next/arm-efi-prepare'
      Merge branch 'for-next/at91'
      Merge branch 'for-next/bus-probe'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/hwrng'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/misc'
      dma: Fix compiler warning
      mtd: nand: stm32: fix wrong regmap_bulk_read() usage
      clk: imx27: add nand clock
      clk: imx27: add watchdog clock
      Revert "ARM64: let 'end' point after the range in cache functions"
      Release v2024.04.0

Sebastian Reichel (1):
      of: introduce of_property_read_s32

Stefan Kerkmann (4):
      arm: mach-imx: tzasc: lock id_swap_bypass bit
      arm: mach-imx: set cpu type in pbl
      arm: mach-imx: tzasc: convert to cpu_is_mx8xyz macros
      arm: dts: karo: add karo imx8mp-karo-qsxp-ml81-qsbase4

Stefano Manni (1):
      ARM: i.MX: sabresd: Add support for i.MX6DL board variant

Steffen Trumtrar (18):
      mci: arasan: add dma support
      mci: arasan: fix dma support
      ARM: zynqmp: add sd_dll_reset call
      zynqmp: firmware: add functions to set tap delay
      mci: arasan: implement 25MHz quirk for zynqmp
      include: mci: sync mci_timing with linux
      mci: arasan: read clk phases from DT
      mci: core: save the set clock as actual_clock
      mci: arasan: register sdcard/sampleclk
      include: mci: add more EXT_CSD_CARD_TYPE_*
      mci: core: parse more host capabilities from DT
      mci: mci-core: add HS200 support
      mci: mci-core: replace value with define
      mci: sdhci: add tuning support
      mci: arasan-sdhci: add HS200 tuning support on ZynqMP
      mci: sdhci: replace sdhci_wait_idle
      mci: mci-core: fix mci_switch_status call
      mci: arasan: fix build for non-ZynqMP

Uwe Kleine-König (3):
      bbu: Emit a message about what happens also when -y is given
      of: partition: Also add partitions created by addpart to the boot dtb
      imx25: Feed the unique id to machine_id_set_hashable()

Yann Sionneau (4):
      mci: dwcmshc-sdhci: Remove superfluous call to sdhci_enable_v4_mode
      mci: dwcmshc-sdhci: Fix f_max computation
      mci: sdhci: add register define for P_VENDOR_SPECIFIC_AREA
      mci: dwcmshc-sdhci: add support for Kalray Coolidge v2 SoC eMMC controller

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


