Delivery-date: Wed, 02 Jul 2025 15:00:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWx4N-00DIqm-0I
	for lore@lore.pengutronix.de;
	Wed, 02 Jul 2025 15:00:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWx4L-0000EI-T0
	for lore@pengutronix.de; Wed, 02 Jul 2025 15:00:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Da0394TC+7l23qwVazOuJeX1Se1Hag4ECkOzGW/fQEY=; b=ho2iyWY8Gx+woLJfQUy9qCTcr1
	g3f1SYlNxR/iHSpURKXzjZW+lpveI4BzbdysIRC6E97o3/XnT0R8jV0j7lEpIFCdMt/iVHEw+IOGe
	fbGSuURj2AdBs5jaDhYJXqaBp0p371FJ0/PgU7On61R9q6hE9coQicrBYd7Q7UkQchPZFq7wLtI3o
	0/vMX4eFrJ/5Pj3gTPcsYpc3i1z2Zrm9tX0tXBeGpwl0TtNOa041Dj4aPPxVJf6k8dJjAQvs7ObdT
	2FLltsCgdXeriUteYlO8dPblC1B75faH7oF+EA1kIYvihjsiJT8sKskruErsg8fcX/3ztQn/KPs0j
	ExrufO+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWx3g-00000008NdY-3HHh;
	Wed, 02 Jul 2025 12:59:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWx3d-00000008Nd5-11mP
	for barebox@lists.infradead.org;
	Wed, 02 Jul 2025 12:59:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uWx3a-0007mP-Ft; Wed, 02 Jul 2025 14:59:22 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uWx3a-006RIi-0z;
	Wed, 02 Jul 2025 14:59:22 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uWx3a-00Dcni-0e;
	Wed, 02 Jul 2025 14:59:22 +0200
Date: Wed, 2 Jul 2025 14:59:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <aGUtKn1BbPXi4Y9m@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250702_055925_597112_CF2FE88D 
X-CRM114-Status: GOOD (  24.08  )
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
Subject: v2025.07.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi All,

We have a release for July: v2025.07.0

It's an early release this time for two reasons. First we have another
important bugfix: FIT image booting on ARM32 is broken since v2025.05.0.
It's fixed in this release. The other reason is that I am on holidays
until the end of July.

The release is early, but still has some interesting new features.
barebox now has support for 9pfs (For unknown reasons I accidently
hijacked the commit.  Sorry Ahmad, I don't know how this happened) . For
now only the Virt I/O transport is implemented, but USB is about to
come. Also this barebox release now supports another SoC in the OMAP AM
series, the AM62L. Ahmads fuzzing patches have finally hit a release, we
merged Fuzzing infrastructure along with some initial fuzzing tests.
Finally we now have support for TLV which is a new format forstoring
factory and meta data in non volatile memory. TLV is an acronym for "Tag
Length Value" and that's what it is: A list of tags which can carry
arbitrary data.

For a full list of patches for this release see below.

Have Fun!
  Sascha

----------------------------------------------------------------
Ahmad Fatoum (139):
      arch: sync READ_ONCE/WRITE_ONCE with Linux
      ARM64: mmu: document granule size calculation
      ARM: mmu: ensure PTE is written at once
      compiler: check for __SANITIZE_ADDRESS__ instead of CONFIG_KASAN
      fbconsole: use symbolic names for ANSI colors
      fbconsole: darken shade of non-bright white
      fbconsole: add support for aixterm bright colors
      fbconsole: use only one default color
      dma: apbh: pass integer, not pointer as value to writel
      ARM: Arria10: xload: don't check writel return value
      video: panel-mipi-dbi: fix fake clock calculation
      lib: random: add CONFIG_INSECURE logging of seeds
      net: phy: seed PRNG when PHY comes up and when generating MAC address
      common: deep-probe: inform only about lack of deep-probe support
      common: deep-probe: support specifying support in DT
      treewide: dts: describe deep probe support in device tree
      ARM: configs: enable deep probe for the most popular configs
      Documentation: migration-2025.07.0: document CONFIG_DEEP_PROBE_DEFAULT
      net: factor out eth_of_get_fixup_node
      net: export list of registered ethernet addresses
      common: add optional systemd.hostname generation
      common: add barebox TLV support
      commands: add TLV debugging command
      scripts: add bareboxtlv host/target tool
      boards: add decoder for LXA TLV v1 format
      ARM: stm32mp: lxa: enable TLV support for TAC & FairyTux2
      arch: add new HAVE_ARCH_BOOTM_OFTREE symbol
      bootm: enable CONFIG_BOOTM_OFTREE by default
      ARM: lib32: disable ATAGS support by default
      kvx: bootm: enforce existence of device tree
      string: add delimiter output parameter to strsep_unescaped
      test: self: string: add test cases for strsep_unescaped
      startup: add semihosting filesystem automount
      ci: pytest: don't attempt uploading test logs if build fails
      lib: stackprot: fix type for %pS
      fastboot: use correct format specifier for size_t
      Makefile: don't warn over zero-size format string
      scripts: define __printf attribute macro
      treewide: specify __printf attribute directly on static definition
      treewide: replace attribute with shorter __printf macro
      treewide: add missing __printf attributes
      vsprintf: add %ps format specifier for symbols without offset
      lib: random: print get_crypto_bytes caller when no HWRNG is registered
      lib: wchar: add wide char string comparison functions
      ARM: select HW_HAS_PCI architecture wide
      efi: types: define efi_char16_t as wchar_t
      efi: types: document efi_physical_addr_t being always 64-bit
      efi: payload: early-mem: EFI_ALLOCATE_ANY_PAGES on non-x86
      string: implement kmemdup_nul
      memory: export inside_barebox_area
      resource: record EFI memory type and attributes
      resource: add MEMATTRS_ definitions for common attribute sets
      drivers: tee: optee: separate local variables for each resource
      efi: types: implement efi_phys_to_virt/efi_virt_to_phys helpers
      efi: return pointer from efi_earlymem_alloc
      efi: payload: image: use new efi_phys_to_virt helper
      efi: payload: iomem: use virt_start if set
      efi: use size_t for UINTN array sizes instead of unsigned long
      efi: payload: unify duplicate code in ifdef
      efi: payload: use efi_virt_to_phys instead of pointer to u64 casts
      clocksource: efi: use DIV_ROUND_DOWN_ULL for 64-bit devision
      efi: payload: use ktime_to_us to avoid plain 64-bit division
      libfile: give copy_file a flags parameter
      libfile: pass copy_file flags through copy_recursive
      libfile: add support for not clobbering files in copy_file
      Documentation: migration-2025.07.0: create empty section
      video: give struct fb_videomode::pixclock a strong picoseconds_t type
      logo: spell out CONFIG_ options for fixdep
      gui: bmp: add support for alpha channel
      common: tlv: clean up device name setting
      treewide: use only string literals as format string
      fastboot: switch to using error format specifiers
      resource: supply memory type/attrs on all SDRAM requests
      resource: retire IORESOURCE_BUSY in favor of resource::type
      pbl: add provision for architectures without piggy loader
      firmware: make Layerscape FMan firmware proper-only
      mci: sdhci: support compiling common SDHCI code for sandbox PBL
      kbuild: define and use more generic symlink command
      kbuild: collect compatibility symlink creation in symlink-y
      kbuild: allow customizing barebox proper binary
      sandbox: make available all CONFIG_ symbols to OS glue code
      sandbox: switch to using PBL
      kbuild: populate non-host CXX variables
      string: add fortify source support
      sandbox: populate UNAME_M variable
      Add fuzzing infrastructure
      filetype: add fuzz target
      block: mark underlying cdev with DEVFS_IS_BLOCK_DEV
      block: add lightweight ramdisk support
      fuzz: add support for passing fuzz data as r/o ramdisk
      partitions: add partition table parser fuzz target
      fdt: add fuzz test
      fit: add fuzz test
      Documentation: add LLVM libfuzzer documentation
      sandbox: add support for coverage info generation
      fs: ramfs: do not bother unmounting ramfs on shutdown
      of: partition: do not try to translate offset as OF address
      commands: dmesg: add -p option for setting maximum log level
      clk: make use of %pC format specifier for printing name
      Documentation: migration-2025.06.0: mention char becoming unsigned
      fbconsole: reset cursor to origin when changing fonts
      commands: bthread: fix format specifier for ulong
      common: optee: improve documentation of options
      scripts: rockchip: rename SECTOR_SIZE/PAGE_SIZE
      ci: add new musl-tools Github CI workflow
      tftp: centralize 2 sec d_revalidate optimization to new netfs lib
      Port Linux __cleanup() based guard infrastructure
      lib: idr: implement Linux idr_alloc/_u32 API
      lib: add iov_iter I/O vector iterator support
      lib: add parser code for mount options
      include: add definitions for UID/GID/DEV
      net: add support for 9P protocol
      fs: 9p: enable 9P over Virt I/O transport in defconfigs
      test: add support for --fs option in QEMU
      bootm: booti: make device tree optional
      filetype: add new file type for 0-sized files
      bootm: have bootm_get_devicetree return NULL if passed empty DT
      bootm: make fallback to barebox internal tree optional
      commands: oftree: add option to return device tree without fixups
      of: drop undefined fdt_get_tree declaration
      ARM: multi_v8_defconfig: enable new boards
      ARM: optee-early: drop superfluous sync_caches_for_execution
      ARM: Cortex-A9: invalidate caches in early lowlevel init
      ARM: i.MX6Q: drop duplicate arm_early_mmu_cache_invalidate
      fs: add qemu_fw_cfg file system
      firmware: qemu_fw_cfg: register at device initcall level
      video: ramfb: use new qemu fw_cfg FS
      fs: qemu_fw_cfg: support populating environment via QEMU fw_cfg
      dlmalloc: remove in favor of TLSF
      Documentation: migration-2025.05.0: note compressed kernel regression
      commands: stat: fix leaking file descriptors on early exit
      lib: idr: make idr_for_each_entry removal safe
      startup: track system state with regards to initcall/exitcalls
      fs: do not skip fs_remove when calling umount ramfs
      fs: fix file creation by not pointing file dentry at parent dir
      Documentation: migration-2025.07.0: note env part change on 6ullevk
      mci: imx-esdhc: restore longer timeouts for idle
      kbuild: don't define _GNU_SOURCE if already defined
      mci: sdhci: fix too short timeout in sdhci_wait_idle_data

Alexander Shiyan (2):
      i2c: at91: Using "clock-frequency" property from devicetree
      at91: xload: Fix MCI instance selection for SAMA5D3

Andrei Lalaev (1):
      common: fastboot: send FAIL if variable does not exist

Bastian Krause (1):
      console: handle input consoles in of_console_by_stdout_path() gracefully

Bo Sun (2):
      docs: fix git checkout command for next branch
      barebox.h: correct barebox_main default comment

Chris Fiege (2):
      scripts: Add Barebox TLV Generator Tooling
      doc: Add User-Documentation for Barebox TLV

Enrico Jörns (6):
      doc: user: barebox: improved and consistent markup for console examples
      doc: user: devicetree: fix indentation and typo
      doc: user: barebox: add markup for release scheme and update dates
      doc: conf.py: update copyright from 2022 to 2025
      doc: user: booting-linux: fix double code-block markup
      docs: conf.py: tweak SearchEnglish to be hyphen- and dot-friendly

Johannes Roith (1):
      added zynq 7000 usb support

Jonas Rebmann (2):
      ARM: i.MX8M: Add support for eCSPI boot
      ARM: i.MX8M: Add bbu support for eCSPI boot

Lucas Stach (1):
      ARM: Cortex-A9: document core versions used in various SoCs

Michael Graichen (1):
      add zynq-7000 i2c support

Michael Tretter (9):
      ARM: rockchip: fix formatting
      ARM: rockchip: dmc: use RK3588_INT_REG_START for rk3588
      lib: fdt: add fdt_addresses
      PBL: fdt: refactor helper for reading nr of cells
      PBL: fdt: add fdt_fixup_mem to fixup memory nodes
      ARM: add CONFIG_SCRATCH_SIZE
      ARM: rockchip: dmc: add rk3588_ram_sizes to get full ram size
      ARM: rockchip: pass device tree to TF-A
      ARM: rockchip: fixup memory in device tree for TF-A

Philipp Zabel (1):
      ARM: imx6ull-evk: Grow barebox partition, reduce environment

Roland Hieber (4):
      envfs: remove unused symbols
      doc: user: rename appendix section and keep it as last entry
      doc: user: usb: link to syntax when explaining the partition variables
      doc: user: net: document Fastboot over UDP usage

Sascha Hauer (75):
      initrd: fix lz4 decompress with initrd
      uncompress: fix prebuffering
      dts: update to v6.15-rc6
      dts: update to v6.15-rc7
      mci: am654-sdhci: Clear SDHCI_CTRL_HISPD bit for some speed modes
      parted: align partitions to 1MiB
      partitions: add function to find free space on partition table
      parted: implement mkpart_size command
      dts: update to v6.15
      environment: explicitly set env path to /dev/env0 where used
      cdev: pass master cdev to cdev ops
      nvmem: Drop now unnecessary partition quirk
      cdev: pass master cdev to cdev ops
      nvmem: Drop now unnecessary partition quirk
      Documentation: boards: k3: adjust to reality
      Documentation: boards: k3: remove obsolete k3.rst
      fs: add new 9P2000.l (Plan 9) File system support
      scripts/k3img: make more flexible
      images: K3: rename %.k3img target to %.k3_am62x_img
      ARM: K3: prepare support for other SoCs
      ARM: dts: add k3-am62l dts(i) files
      ARM: dts: am62l: Fix assigned-clock-parents
      ARM: K3: add am62lx base support
      ARM: Makefile: descend into mach-* for cleaning
      ARM: k3: rename yaml files from am625 to am62x
      dts: update to v6.16-rc1
      firmware: add ti-linux-firmware submodule
      scripts/ti-board-config.py: fix length
      ARM: k3: add yaml files for AM62l
      k3: ringacc: pass ringrt address in struct k3_ringacc_init_data
      drivers: soc: ti: k3-ringacc: handle absence of tisci
      drivers: soc: ti: k3-ringacc: fix k3_ringacc_ring_reset_sci
      dma: ti: k3-psil: Add PSIL data for AM62L
      dma: ti: k3-udma: Refactor common bits for AM62L support
      dma: ti: k3-udma-common: Update common code for AM62L DMAs
      dma: ti: k3-udma-am62l: Add AM62L support DMA drivers
      ARM: dts: am62l: Add ethernet ports
      ARM: dts: am62l evm: Add ethernet ports
      ARM: k3: am62l: add barebox specific am62l.dtsi
      net: davinci_mdio: Use fallback clock rate
      firmware: arm_scmi: Add support for clock parents
      clk: add struct clk_parent_data
      clk: arm_scmi: implement clock parent setting
      ARM: dts: am62l3-evm: add MMC aliases
      dma: ti: k3-udma: limit asel to am625
      gpio: increase ARCH_NR_GPIOS to 512
      ARM: dts: k3-am62l: reserve memory for TF-A and OP-TEE
      ARM: k3: add AM62l3 EVM board support
      ARM: K3: am62l: add serial aliases
      Documentation: boards: k3: split generic and am62x specific documentation
      Documentation: boards: k3: add AM62lx documentation
      test/generate-dummy-fw.sh: generate dummy fw only when file does not exist
      Merge branch 'for-next/9p'
      Merge branch 'for-next/am62lx'
      Merge branch 'for-next/arm'
      Merge branch 'for-next/cdev-partition-fix'
      Merge branch 'for-next/deep-probe'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/fb'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/libfuzzer'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/parted'
      Merge branch 'for-next/resource-flags'
      Merge branch 'for-next/rockchip-optee'
      Merge branch 'for-next/tlv'
      Merge branch 'for-next/zynq'
      test/generate-dummy-fw.sh: Add missing am62x firmware file
      Documentation: AM62lx: Add note about required TF-A
      imd: Increase expected file size
      Release v2025.06.1
      Merge tag 'v2025.06.1'
      common: drop duplicate inclusion of common/boards/Kconfig
      ARM: ARM32: Fix FIT image booting
      Release v2025.07.0

Ulrich Ölmann (1):
      common: Kconfig: fix location of FILETYPE_STRINGS

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


