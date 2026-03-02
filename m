Delivery-date: Mon, 02 Mar 2026 08:11:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vwxR8-007Cwb-2L
	for lore@lore.pengutronix.de;
	Mon, 02 Mar 2026 08:11:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vwxR8-0001yf-CN
	for lore@pengutronix.de; Mon, 02 Mar 2026 08:11:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tJuTdKMTjTYRQAWrRVNAJxZj4gzCr+rEESOXgl74oWk=; b=YpwZwdQYz+fC9FwkZMqQr955AW
	BYTlLao0Y4Bm+pWvUfcxlx9kdlx1Yk7mwj1YRtwJQoEFeZIHF7RGg+T1W7UIGxnyGgLiw5DJC1DF3
	Eic3W1Z5Ph29O502qLyTSyHZVYbrug/i7xjTlE/uwWlhbUat3sz6NYFFgDGBUpd6PbQ8aaHJiT+AC
	TLenbYxV/rsHcixHoZbU+GQ6RGE0ToYI75baijpjdKo/gJBjTUNR9/rr1u/48evfmuSShtVcNuncZ
	FulfGnQT+DrvmH2pGKX6x6yomYNQPh/jsio8S6SJqDLQCg4wxzrJxEjWGL0AwPXzxXM3ykhXq640U
	ySP6nMnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwxQc-0000000CO5x-3yDF;
	Mon, 02 Mar 2026 07:10:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwxQZ-0000000CO5V-3Odx
	for barebox@lists.infradead.org;
	Mon, 02 Mar 2026 07:10:53 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vwxQY-0001uN-8c; Mon, 02 Mar 2026 08:10:50 +0100
Message-ID: <9df48cb4-af7f-450a-be0c-a35f9394d90d@pengutronix.de>
Date: Mon, 2 Mar 2026 08:10:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <aaBDHkpK8p8fkWWN@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <aaBDHkpK8p8fkWWN@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260301_231052_154061_13AE1BA4 
X-CRM114-Status: GOOD (  37.71  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: v2026.02.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,

On 2/26/26 13:57, Sascha Hauer wrote:
> 
> Hi All,
> 
> We have a barebox for February, right before February is over: v2026.02.0
> 
> This time I am happy to announce that we now have EFI loader support in
> barebox, which means we can not only act as EFI consumer, but also as
> provider. Thanks for the tremendous work, Ahmad.

Thank you for highlighting this :-)

Just a small correction: This release was fixes, the support itself was
added with v2026.01.0.

Cheers,
Ahmad

> 
> We have made some changes in the Arm MMU initialization. barebox proper
> is no longer put as a raw binary into the PBL, but as an ELF file
> instead which gives the PBL the informations necessary to configure the
> MMU for barebox proper which allows us to get rid of some knotty code
> in barebox proper.
> 
> Also we gained support for the QNAP ts-433 4bay NAS. If you have one of
> those, try it out.
> 
> As usual see below for a detailed list of changes that went into this
> release.
> 
> Have Fun!
>   Sascha
> 
> Migration notes for Release v2026.02.0
> ======================================
> 
> CONFIG_SHELL_NONE
> -----------------
> 
> If there's nothing to do for a shell-less barebox, it will now attempt
> to poweroff the system instead of busy-looping indefinitely.
> This changes behavior for systems that rely on a watchdog to reset
> a hanging barebox in this situation. If this breaks anything for you,
> please reach out.
> 
> ----------------------------------------------------------------
> Ahmad Fatoum (147):
>       ARM64: elf: set ELF_CLASS64 for ARM64
>       ARM: remove unused constructor support
>       ARM: virt: add DEBUG_LL support
>       common: elf: use strdup_const for symmetry
>       common: elf: use memcmp for fixed-size comparison
>       ARM: socfpga: replace select of undefined symbols
>       malloc: make malloc_add_pool return void
>       startup: attempt poweroff if no shell and nothing to do
>       Documentation: split Rockchip documentation
>       Documentation: rk35xx: expand on supported SoCs/boards
>       usb: dwc3: export dwc3_core_probe/dwc3_core_remove like Linux
>       usb: dwc3: add support for Global SoC Bus Configuration Register
>       ARM: cpu: common: skip R_ARM_NONE relocations
>       ARM: cpu: common: define generic relocate_image
>       tee: drivers: rksecure: move header to soc/rockchip/
>       bootm: set image_data::initrd_res at a single place
>       bootm: fit: split support into dedicated file
>       bootm: uimage: split support into dedicated file
>       filetype: introduce filetype_fit
>       bootm: refactor for readability and extensibility
>       memory: move release_sdram_region into header
>       resource: make NULL in release_[sdram_]region a no-op
>       common: elf: use release_region unconditionally
>       memory: always print errors on request_sdram_region failure
>       memory: drop now duplicate request_sdram_region error messages
>       ci: drop workaround for missing opensbi-riscv32-generic-fw_dynamic.bin
>       commands: test: implement test -s for non-zero size check
>       test: arm: multi_v8_efiloader_defconfig: use qcow2 image
>       test: py: strategy: add helpers for booting kernel and bootm
>       test: py: efiloader: prepare get_dmesg for more general usage
>       test: py: add more kernel boot tests
>       ci: add Debian ARM64 EFI loader boot test
>       debug_ll: pl011: add PBL console helper
>       ARM: cpu: setupc: implement 32-bit relocate_to_adr_full
>       regulator: bcm2835: register only on Raspberry Pi
>       pbl: decomp: report errors on PBL console as well
>       openrisc: bump reserved size to 1M
>       commands: delpart: return success when no error occurred
>       lib: cmdlinepart: support RO both in lower and upper case
>       ARM: mmu: panic after pr_debug_remap if base address is unaligned
>       ARM: layerscape: defconfig: refresh defconfig
>       kbuild: fold rmdirs into rmfiles
>       boards: qemu-virt: reserve BIOS device tree
>       clk: implement and use clk_bulk_get_all_enabled helper
>       usb: dwc3: add DesignWare USB3 generic platform driver
>       Revert "ARM64: dts: Layerscape: workaround v6.19-rc1 DT sync DWC3 breakage"
>       gitignore: ignore Labgrid --lg-log's console_main
>       firmware: qemu_fw_cfg: use wider PIO reads if applicable
>       param: support uuid/guid parameter type
>       lib: smbios: add support for setting product UUID
>       common: boards: qemu: process some standard fw_cfg keys
>       firmware: qemu_fw_cfg: add proper DMA and PIO bidirectional operating modes
>       ARM: configs: multi: enable QEMU FW_CFG
>       boards: qemu-virt: drop unused __dtb_fitimage_pubkey_start
>       boards: qemu-virt: add overlay for when first flash is secure-world only
>       efi: payload: enable both efi loader and payload for *_efi_defconfig
>       ARM: mmu: optimize dma_alloc_coherent for cache-coherent DMA masters
>       virtio: use DMA coherent APIs
>       ARM: qemu-virt: add image for use as -bios
>       kbuild: build *.mod.c with -std=gnu11
>       ARM32: mark modules as incompatible with ARM_MMU_PERMISSIONS
>       treewide: fix some missing EXPORT_SYMBOL
>       pci: ecam: enable build as module
>       kbuild: add support for installing and stripping modules
>       ARM32: module: handle more relocations
>       commands: pm_domain: make command tristate
>       test: conftest: add support for describing FW_CFG environment in YAML
>       defaultenv: add barebox_modules_env target
>       test: arm: add simple driver/command module test
>       include: asm-generic/bug.h: allow disabling CONFIG_DEBUG_BUGVERBOSE
>       ARMv7: hyp: allow disabling support for invoking barebox in HYP mode
>       ARM: socfpga: shrink socfpga-xload configs in size
>       pmdomain: rockchip: enable driver by default
>       arm64: rockchip: qnap-tsx33: support USB installer with EFI
>       partitions: efi: allow refresh without command support
>       efi: loader: protocol: gop: guard behind CONFIG_EFI_LOADER_GOP
>       efi: loader: remove dependency on LIBFDT
>       scripts: add helper for generating Origin-URL references
>       elf: rename elf.h to <linux/elf.h>
>       common: elf: split barebox proper-only ELF support from the rest
>       common: elf: reorganize barebox proper parts in struct elf_image
>       boot: do not attempt booting bootsource more than once
>       FIT: fix double free issue with >1 reference count
>       FIT: fuzz: fix reference count underflow
>       net: phy: mdio_bus: fix freeing of cdev name before devfs_remove
>       bootm: fix bootm override saving/restoring
>       ci: container: install isoinfo package into container
>       efi: payload: bootm: fix memory corruption on initrd load error
>       ci: container: set LLVM_SUFFIX instead of CROSS_COMPILE_llvm
>       ci: container: fix various breakage in container build
>       of: overlay: propagate error unflattening DTBO
>       efi: fix potential NULL dereference
>       efi: trace: fix EFI_EXIT2 to not evaluate output value on error
>       efi: loader: fix CRC32 computation in table header update
>       efi: loader: fix pointer vs value comparison in free_efi_only
>       efi: loader: fix disk write return value check
>       efi: loader: fix EFI_ENTRY/EFI_EXIT ordering in efi_set_time
>       efi: runtime: fix missing EFI_EXIT in efirt_query_variable_info
>       efi: loader: fix file handle leak in efi_file_from_path
>       efi: loader: fix missing field init in deferred protocol add
>       efi: loader: fix memory leak in efi_var_to_file
>       efi: loader: fix multiple bugs in efi_loader_bootm
>       efi: loader: fix return type and memory leak in efi_smbios_register
>       efi: loader: fix memory leak in efi_dp_split_file_path
>       efi: loader: fix HII string table realloc and memset bugs
>       efi: loader: fix format specifier and missing EFI_EXIT in boot services
>       efi: fix unreachable free in efi_set_variable_printf
>       efi: payload: fix missing NULL check after read_file in handover
>       efi: payload: fix EFI page leak in efi_read_file
>       efi: payload: fix inverted error check after state_load
>       efi: fix out-of-bounds read in device path unknown node printing
>       efi: payload: fix wrong page count in efi_unload_fdt
>       efi: fix out-of-bounds read in 1394 device path printing
>       efi: loader: initialize block IO ops before installing protocol
>       efi: runtime: fix variable store bounds check to account for alignment
>       efi: fix Fibre Channel device path type vs sub_type comparison
>       efi: loader: fix file open mode always setting O_RDWR
>       efi: loader: fix NULL pointer dereference when deleting root volume handle
>       efi: loader: fix memory leak of variable file buffer on success
>       efi: loader: fix memory leak in efi_var_collect on buffer overflow
>       efi: fix signed format specifier for uint64_t timestamp
>       efi: payload: fix possible memory leaks during init
>       efi: payload: protect against missing state alias
>       efi: loader: fix stale return value in console out-of-memory path
>       efi: loader: fix off-by-one in FAT codepage translation
>       efi: loader: fix co-existence with EFI payload support
>       efi: payload: skip ELF MMU handling when booted via stub
>       efi: payload: register dummy device tree
>       console: introduce helper for printing binary buffers as-is
>       efi: loader: protocol: console: don't turn LF into CRLF
>       ci: container: add qemu-efi-aarch64 for testing against EDK-II
>       gitignore: ignore /vmbarebox
>       FIT: fix potential uninitialized read during fuzzing
>       FIT: fix potential underflow of stack array
>       of: fdt: fix double free in fdt_ensure_space
>       of: overlay: initialize ret to fix garbage return value
>       video: mode-helpers: preserve sync polarity in fb_videomode conversion
>       video: dw_mipi_dsi: remove VPG workaround for panel initialization
>       ci: container: include qemu-system-ppc
>       boot: guard net in global.boot.default behind CONFIG_NET
>       scripts: container.sh: explicitly pass build dir as volume
>       regulator: bcm2835: fix USB-breaking regression
>       net: am65-cpsw-nuss: fix up PHY mode for fixed RGMII TX delay
>       Documentation: migration-guides: split off 2026.02.0 into own file
>       Documentation: migration-guides: 2026.01.0: clarify fsdev linux.bootargs change
>       ARM: Layerscape: LS1046: re-enable USB bus snooping
>       ARM: Layerscape: icid: fixup ICID also for new fsl,ls1028a-dwc3 compat
> 
> Alexander Shiyan (1):
>       mtd: nand: mxc_nand: use clk_get_optional for clock handling
> 
> Enrico Jörns (2):
>       Documentation: bootchooser: fix grammar and wording for 'attempts_locked'
>       Documentation: bootchooser: move attempts locking to own section
> 
> Fabian Pflug (5):
>       i.MX: HAB: fix field return unlock fuse uid
>       arm: mach-imx6: use kconfig for field return
>       nvmem: ocotp: extend support to query the sticky bit
>       i.MX: HAB: extend field_return support to imx6
>       commands: hab: extend by field_return fuse burn
> 
> Jonas Rebmann (1):
>       common: tlv: drop unused field void *driverata
> 
> Marco Felsch (6):
>       pbl: fdt: fix fdt_fixup_mem error handling
>       pbl: compressed-dtb: add missing includes
>       ARM: atf: add missing includes in atf_common.h
>       ARM: i.MX8M: cosmetic cleanup
>       pbl: string: add strncmp
>       bootm: fix initrd pr_info
> 
> Maud Spierings (1):
>       RISC-V: dts: fix generation of dtbs-list
> 
> Michael Tretter (5):
>       scripts: rockchip: add script to calculate key hash
>       tee: drivers: add driver for Rockchip Secure Boot PTA
>       commands: implement rksecure command
>       tee: drivers: rksecure: make ta_uuid static
>       ARM: rockchip: fix SD card startup for Radxa ROCK 5T
> 
> Robert Schwebel (1):
>       Documentation: spell out what TLV actually means
> 
> Sascha Hauer (49):
>       ARM: i.MX6: Riotboard: ungate peripheral clocks
>       ARM: i.MX6: Riotboard: Add hint how to enable DEBUG_LL
>       ARM: boards: remove #define DEBUG in board files
>       gpio: Fix GPIOD_ASIS flag
>       dts: update to v6.19-rc2
>       dts: update to v6.19-rc3
>       test/strategy.py: optionally don't activate BareboxDriver
>       scripts/k3img: Add workaround for erratum i2474
>       ARM: k3: am62l: Detect DRAM from controller
>       ARM: i.MX: remove barebox,provide-mac-address property
>       dts: update to v6.19-rc5
>       Merge branch 'for-next/elf' into for-next/arm
>       Makefile.compiler: add objcopy-option
>       elf: only accept images matching the native ELF_CLASS
>       elf: build for PBL as well
>       elf: add elf segment iterator
>       elf: add dynamic relocation support
>       ARM: implement elf_apply_relocations() for ELF relocation support
>       riscv: define generic relocate_image
>       riscv: implement elf_apply_relocations() for ELF relocation support
>       elf: implement elf_load_inplace()
>       elf: create elf_open_binary_into()
>       Makefile: add vmbarebox build target
>       PBL: allow to link ELF image into PBL
>       mmu: add MAP_CACHED_RO mapping type
>       ARM: drop arm_fixup_vectors()
>       ARM: linker script: create separate PT_LOAD segments for text, rodata, and data
>       ARM: link ELF image into PBL
>       ARM: cleanup barebox proper entry
>       ARM: PBL: setup MMU with proper permissions from ELF segments
>       riscv: linker script: create separate PT_LOAD segments for text, rodata, and data
>       riscv: link ELF image into PBL
>       riscv: Allwinner D1: Drop M-Mode
>       ARM: i.MX8M: atf: add debug messages just before TF-A jump
>       riscv: add ELF segment-based memory protection with MMU
>       Merge branch 'for-next/arm' into HEAD
>       Merge branch 'for-next/arm'
>       Merge branch 'for-next/bootm'
>       Merge branch 'for-next/dts'
>       Merge branch 'for-next/dwc3'
>       Merge branch 'for-next/imx'
>       Merge branch 'for-next/misc'
>       Merge branch 'for-next/modules'
>       Merge branch 'for-next/qemu'
>       Merge branch 'for-next/test'
>       pbl/mmu: remove uninformative pr_debug()
>       ARM: rockchip: dmc: use define instead of hardcoded value
>       ARM: rockchip: atf: Fix memend
>       Release v2026.02.0
> 
> Uwe Kleine-König (1):
>       arm64: rockchip: Add support for QNAP's ts-433 4bay NAS
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


