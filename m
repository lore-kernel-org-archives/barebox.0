Delivery-date: Wed, 27 Aug 2025 17:54:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1urITr-0058Ae-3D
	for lore@lore.pengutronix.de;
	Wed, 27 Aug 2025 17:54:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1urITq-0005Pc-5N
	for lore@pengutronix.de; Wed, 27 Aug 2025 17:54:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZDI0NosZRojzUVk1EpTQ+pl+jbg+a12W97sFs1Hr8lI=; b=SoW8qE3dC2amh1sPA+VOyu3KR7
	+WDLgQWWVJgAqM4LrhZkkoY199rLJpFjCiu8NXpaf34O4l7vFP4EEVKzKklDT/M8RbY9I6NvpDmkc
	tDERf0cCXhBGjRL+Msr2N80D4kv0Lf4wOclFMqRuljq0Zkb0t7YOWQ92hd6w7N7DphApoWDlRFqiu
	BfPOKnBcVgy8zPmnSlN8sLsis+tCfSejsy5YBITjXjy2oxG5HV7+ZIo/XR1OZyWR4f7dJZXU+qtr2
	X3eNOJ16XMvNZLq+HX0GQa6RVp1Q74h5FqX3DXdxn4w8YcmfrYdlEZt9j2W2K6jYBm+i8zNRddbg4
	1mCRPKgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urITJ-0000000G3WD-1ivT;
	Wed, 27 Aug 2025 15:54:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urFvH-0000000FWxX-2Zsf
	for barebox@lists.infradead.org;
	Wed, 27 Aug 2025 13:10:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1urFvF-0001aV-EY; Wed, 27 Aug 2025 15:10:41 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1urFvD-002OvG-1l;
	Wed, 27 Aug 2025 15:10:39 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1urFvD-002rGO-1S;
	Wed, 27 Aug 2025 15:10:39 +0200
Date: Wed, 27 Aug 2025 15:10:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <aK8Dz3gTWhaQbvod@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250827_061043_810763_A4840924 
X-CRM114-Status: GOOD (  20.15  )
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
Subject: v2025.08.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi All,

barebox-2025.08.0 is out now.

This release brings us readonly data segments on ARM. With this data
readonly data cannot be modified and only the code segments can be
executed. Violation gives us aborts which is good for improving security
and will help debugging.

Also we now have a createnv command. This command creates a barebox
environment partition on disk devices (eMMC/SD). barebox recognizes
environment partitions on GPT formatted disks for longer. While these
can be easily generated with YOCTO/ptxdist/buildroot, it was not so easy
when barebox is used without a build system on a unpartitioned device.
Now with createnv this is also easily possible, so adding the
environment partiton to the device tree becomes more and more
unnecessary.

Another nice this is that on ARM we now have exception handling support.
This was originally done to detect if we can access the TZASC on i.MX6
in order to configure it, but in the end this can become really useful
to debug PBL code.

Other than that many patches all over the place went into this release,
see below.

Have Fun!
 Sascha

----------------------------------------------------------------
Ahmad Fatoum (69):
      Documentation: migration-2025.08.0: add new empty file
      resource: mark normal memory as supporting being uncacheable
      lib: display_options: constify pointer to static size_human_readable buf
      commands: iomem: print human readable sizes by default
      commands: iomemport: support showing info for particular argument
      commands: iomem: add support for printing type/attributes
      efi: payload: iomem: populate resource type/attributes
      test: self: jwt: rename jwt_test key to development_rsa2048
      ARM: multi_v7/8_defconfig: enable FIT image support
      ci: pytest: mount virtfs with signed FIT image into VMs
      test: py: add FIT boot test
      ci: pytest: multi_v8_defconfig: pass --runxfail
      ci: container: add device-tree-compiler
      mmu: explicitly map executable non-SDRAM regions with MAP_CODE
      driver: bus: embed bus driver node into bus
      driver: switch busses to device class
      driver: factor out bus definitions into separate header
      driver: bus: add helpers for finding devices in busses
      drive: bus: make use of new bus_find_device helper
      of: implement of_alias_from_compatible
      video: vpl: fix potential read of uninitialized variable
      video: vpl: factor out vpl_for_each
      video: vpl: handle missing struct vpl::ioctl gracefully
      video: vpl: add vpl_bridge abstraction
      video: factor out drm_mode_vrefresh
      video: add base MIPI DSI support
      video: add Designware MIPI-DSI support
      video: add STM32 MIPI DSI video driver
      video: add support for Orise Technology otm8009a panel
      ARM: stm32mp: dk2: enable MIPI-DSI display by default
      test: self: idr: add test for idr_remove in idr_for_each_entry
      test: py: test mount/unmount of ramfs file system
      test: py: add bootchooser attempt decrement and locking test
      ARM: vexpress: increase barebox partition size
      commands: add dedicated security menu
      clock: make SECOND/MSECOND/USECOND constants a constant expression
      console: fix loose coupling between getchar and is_timeout delays
      commands: sleep: add support for running without pollers
      poller: add option to detect delayed poller activation
      menu: schedule pollers/workqueues while waiting for menu item selection
      fastboot: populate is-logical:$partition variable
      drivers: fix buggy comparisons of casted device_get_match_data to zero
      ppc: fix missing cache maintenance before mapping uncached
      Documentation: boards: k3: fix typo in build instructions
      Documentation: migration-2025.07.0: fix formatting
      Documentation: devel: fuzzing: fix wrong ReST syntax
      Documentation: gen_commands.py: fix Option list warning
      Documentation: devel: porting: split out architecture intro
      Documentation: devel: architecture: detail first/second stage handling
      Documentation: user: split community from feedback
      Documentation: devel: troubleshooting: add new chapter
      partition: fix kernel doc for region_identical
      ARM: interrupts: fix guard page linker error in PBL
      partition: rename region_overlap_end to region_overlap_end_inclusive
      partition: define new region_overlap_end_exclusive helper
      ARM: mmu: skip TLB invalidation if remapping zero bytes
      ARM64: mmu: pass map type not PTE flags to early_remap_range
      ARM: mmu: provide setup_trap_pages for both 32- and 64-bit
      ARM: mmu: setup trap pages before remapping R/O
      ARM: mmu: share common memory bank remapping code
      ARM: mmu: fix hang reserving memory after text area
      tlv: drop assigned MAC addresses from fixup
      bootm: ignore global.bootm.initrd if unavailable
      test: py: add regression test for missing x86 EFI child devices
      kbuild: images/Makefile: fix broken if_changed usage
      RISC-V: stacktrace: add missing header for eprintf
      ARM: drop unused ARM_USE_COMPRESSED_DTB
      fastboot: implement dummy has-slot:partition variables
      ARM: mmu: increase early page table size to 256K for now

Alexander Kurz (1):
      mci: imx-esdhc-pbl: fix iMX50 prediv setting

Alexander Shiyan (9):
      ARM: at91: clock: remove unused SAMA5D2/SAMA5D3 support from legacy clock driver
      ARM: at91: xload: use pin_to_mask for peripheral pin configuration
      ARM: at91: sam9x5ek: enable missing DT and clock options for devicetree boot
      ARM: at91: setup: improve address handling for DBGU and CHIPID detection
      ARM: at91: setup: refactor SoC subtype detection with switch statements
      ARM: at91: sam9_smc: remove redundant SAMA5D2 check
      ARM: boards: sama5d4 xplained: Use proper header for image start
      ARM: at91: remove AT32AP7000 (AVR32) remnants
      ARM: at91: remove unused soc type/subtype getter functions

Bo Sun (1):
      spi: convert transfer delay to new spi_delay struct

Chali Anis (1):
      pinctrl: tegra30: fix typo with variables to control the drive state on nvidia pins.

Johannes Roith (2):
      Added support for Zynq 7000 FPGA firmware loading
      Added documentation for the Zynq 7000

Jonas Rebmann (1):
      clk: clk-gpio: Use clk_register instead of bclk_register

Lars Schmidt (4):
      bootchooser: implement locking of attempts counter
      bootchooser: extend cmd tool by option to set attempts_locked
      Documentation: bootchooser: add information about attempts_locked
      Documentation: migration-2025.08.0: add information about attempts_locked

Marco Felsch (8):
      crypto: caam - adapt pr_fmt to make it more clear
      ARM: i.MX6QDL: add imxcfg helper to configure the TZASC1/2
      ARM: i.MX6Q: add imx6_get_mmdc_sdram_size
      ARM: mach-imx: tzasc: add region configure helpers
      ARM: mach-imx: tzasc: add imx6[q|ul]_tzc380_is_bypassed()
      ARM: optee-early: add mx6_start_optee_early helper
      ARM: i.MX8M: remove early handoff-data handling
      block: fix block device detection

Mathieu Anquetin (1):
      ddr: imx9: fix DRAM PLL bypass

Matthias Wauer (1):
      net: usb: ax88179_178a.c: add missing poller unregister

Oleksij Rempel (16):
      nvmem: Add 'protect' operation to core framework
      nvmem: rmem: add write and protect support
      commands: nvmem: Add support for creating dynamic rmem devices
      regmap: Add reg_seal operation for hardware protection
      nvmem: regmap: Implement protect operation using regmap_seal
      nvmem: bsec: Implement NVMEM protect via regmap_seal for OTP locking
      nvmem: rmem: ensure unique device name per instance
      nvmem: Add 'protect' operation to core framework
      nvmem: rmem: add write and protect support
      commands: nvmem: Add support for creating dynamic rmem devices
      regmap: Add reg_seal operation for hardware protection
      nvmem: regmap: Implement protect operation using regmap_seal
      nvmem: bsec: Implement NVMEM protect via regmap_seal for OTP locking
      nvmem: rmem: ensure unique device name per instance
      test: Add pytest suite for NVMEM framework
      sandbox: configs: enable CMD_NVMEM and NVMEM_RMEM

Sascha Hauer (47):
      dts: update to v6.16-rc2
      partitions: efi: calculate instead of hardcode gpt header fields
      ARM: pass barebox base to mmu_early_enable()
      ARM: mmu: move ARCH_MAP_WRITECOMBINE to header
      ARM: MMU: map memory for barebox proper pagewise
      ARM: MMU: map text segment ro and data segments execute never
      ARM: MMU64: map memory for barebox proper pagewise
      ARM: MMU64: map text segment ro and data segments execute never
      dts: update to v6.16-rc3
      partitions: Start partitions at 8MiB offset
      cdev: fix cdev_open_by_name() misuse
      commands: create createnv command
      mci: add option to detect non-removable cards during startup
      commands: sleep: add msleep support
      fs: drop f_dentry
      pbl: add panic_no_stacktrace()
      arch: Allow data_abort_mask() in PBL
      ARM: add exception handling support for PBL
      ARM: i.MX: add config symbol for TZASC
      ARM: mach-imx: tzasc: add imx6[q|ul]_tzc380_early_ns_region1()
      ARM: i.MX: add imx6_can_access_tzasc()
      ARM: i.MX: tqma6ulx: fix barebox chainloading with OP-TEE enabled
      ARM: i.MX: Webasto ccbv2: fix barebox chainloading with OP-TEE enabled
      ARM: i.MX: tqma6ulx: use ENTRY_FUNCTION_WITHSTACK
      ARM: lib64: remove unused section
      common: PBL_OPTEE: Allow to compile in THUMB2 mode
      dts: update to v6.16-rc4
      Merge branch 'for-next/arm'
      Merge branch 'for-next/at91'
      Merge branch 'for-next/base'
      Merge branch 'for-next/createnv'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/iomem'
      Merge branch 'for-next/mipi-dsi'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/nvmem'
      Merge branch 'for-next/optee-early'
      Merge branch 'for-next/test'
      cdev: fix mtd partition handling
      watchdog: rti_wdt: Fix reset on AM62L
      ARM: dts: AM62L: switch watchdog to SoC specific compatible
      watchdog: rti_wdt: fix discard const modifier
      partition: Fix wrong check
      logo: work around broken inkscape in Debian Trixie
      kbuild: move PBL_CODE_SIZE_ out of rule_pblb
      Release v2025.08.0

Tobias Waldekranz (1):
      efi: fix probing of EFI devices with parents

Ulrich Ölmann (1):
      ARM: i.MX: Kconfig: fix typos


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


