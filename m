Delivery-date: Wed, 21 Jun 2023 14:28:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBwwU-00Fdwk-Vi
	for lore@lore.pengutronix.de; Wed, 21 Jun 2023 14:28:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBwwR-0007S2-Vp
	for lore@pengutronix.de; Wed, 21 Jun 2023 14:28:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:Content-Type:
	MIME-Version:Message-ID:Subject:To:Date:Reply-To:Cc:Content-Transfer-Encoding
	:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=pz9dNdznsdJjxJV/3A3GojAW2KcDcYTh42cs0kbs0mA=; b=HmCDxK9/eQNb7zTyjY+gu8R4Jz
	3eWcrvb7JQZG45NIHShqP9xgEGYBi4YMroegt50L2GnaTMOsoPMU6TwGswa49o3V33bFApsBFz+OL
	MNX9gN9fk0qDiAon04D7sTlhW8P6W2u2vnFMSGSRCZQionOCeDQcB3WB58OKLTl78uq2DUPShyBvR
	GGM1Kzx73ZMfcYCbUOrymPkQkaYL2Wv1pcrzCtddMtSxS5MzelOueD7FQ7HJM3zp80KXtN8xxsoS5
	pkI2FrrkzFL/eOZzSlXyggJVsgID7aCZSdYWST9mCH3AH/6CUW1GLpKr684V1C4trDpP7PKdMYtRh
	rw0Ox6tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBwus-00EXKB-0e;
	Wed, 21 Jun 2023 12:26:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBwun-00EXHn-1M
	for barebox@lists.infradead.org;
	Wed, 21 Jun 2023 12:26:27 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qBwuk-0007HN-Ei; Wed, 21 Jun 2023 14:26:22 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qBwuk-0000hm-6M; Wed, 21 Jun 2023 14:26:22 +0200
Date: Wed, 21 Jun 2023 14:26:22 +0200
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230621122622.GH18491@pengutronix.de>
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
X-CRM114-CacheID: sfid-20230621_052625_783347_73EB0672 
X-CRM114-Status: GOOD (  31.06  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: v2023.06.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


Hi All,

It's the longest (or shortest) day of the year, let's celebrate this
with a new barebox release: v2023.06.0 is out.

This release brings us CI implemented in GitHub actions. With this each
push to the GitHub barebox repository triggers a build of all
defconfigs. Also the images we have Qemu support for get runtime tested
with the selftest framework Ahmad created. We are confident that this
increases the quality of the barebox releases in future. See
https://github.com/barebox/barebox/actions for the current status.

Also there is a MMU rework on ARM within this release. We previously
used 1MiB (1GiB on Aarch64) sections in early MMU setup and reconfigured
the MMU during barebox startup. Now we use 4KiB pages directly in the
early code.  This has the advantage that we do not have to reconfigure
the MMU and that we can properly set the XN flag for areas used by the
secure world in early code so that the CPU cannot speculate into these
protected areas. Based on that Ahmad then added support for non-1:1
mappings in arch_remap_range which helps in some situations where
devices are mapped to 0x0, we had to disable NULL pointer protection in
these cases.

Beginning with v2023.06.0 barebox has support for the Rockchip RK3588
SoC. The only board supported so far is the Radxa Rock 5b. As this
particular board has ethernet connected to PCI instead of using the
SoC internal network controller, we have support for that as well.
Along with this the RTL8169 got an overhaul, the old driver supported
only a fraction of the available devices with the one found on the
Rock 5b not being one of it.

barebox manipulates the Linux device tree in many ways which sometimes
causes problems. There is a new command to help debugging these
problems. The of_fixup command allows to list the fixups that will be
applied on the Linux device tree and offers options to disable/enable
them one by one, so it will be easier to find problematic fixups.

As usual, there are several other changes not explicitly mentioned here,
see below for a full list.

Have Fun!
 Sascha


----------------------------------------------------------------
Ahmad Fatoum (58):
      clk: implement clk_to_clk_hw using container_of_safe
      sandbox: watchdog: handle missing stickypage gracefully
      sandbox: power: handle missing stickypage gracefully
      sandbox: hostfile: don't warn on failed hostfile fixup
      treewide: drop trailing space
      driver: be explicit about supported #feature-cells
      featctrl: drop useless NULL check
      sandbox: hostfile: add feature controller support
      asm-generic: atomic: implement atomic_inc/dec_return stubs
      phy: stm32-usphyc: sync with Linux v6.3-rc5
      ARM: stm32mp: defconfig: enable use of DKx USB hubs
      clk: bulk: return -EPROBE_DEFER in silence
      ARM: stm32mp: dkx: enable deep probe
      ARM: configs: multi_v7_defconfig: enable CONFIG_USB_ONBOARD_HUB
      commands: add new of_fixup command to list and disable DT fixups
      linux: limits: define INTPTR_MAX/UINTPTR_MAX
      treewide: use remap_range instead of arch_remap_range
      mmu: add physical address parameter to arch_remap_range
      ARM: mmu32: support non-1:1 mappings in arch_remap_range
      ARM: mmu64: support non-1:1 mappings in arch_remap_range
      of: platform: remap memory when encountering virtual-reg property
      common: boards: qemu-virt: remap cfi-flash from 0 to 0x1000
      ARM: prepare extending mmuinfo beyond ARMv7
      ARM64: mmu: implement ARMv8 mmuinfo command
      common: memtest: prepare for reuse in self test
      test: self: add MMU remapping self test
      ARM: mmuinfo: add options for enabling/disabling zero page trapping
      ARM: rockchip: don't attempt building MACH_RADXA_ROCK5 without firmware
      test: self: mmu: remap buffer with default attributes on exit
      test: self: mmu: fix invalid use of __is_defined
      ARM64: configs: multi_v8_defconfig: enable what qemu_virt64_defconfig had
      i.MX: HABv4: fix left-over old arch_remap_range prototype use
      ARM: mmu64: request TTB region
      ARM: mmu64: define early_remap_range for mmu_early_enable usage
      ARM: mmu32: define early_remap_range for mmu_early_enable usage
      ARM: mmu: invalidate when mapping range uncached
      ARM: rockchip: pine64-quartz64: add sdram-init.bin to .gitignore
      scripts: kwbimage: check return value of asprintf
      scripts: omap3-usb-loader: fix heap overflow
      ddr: imx8m: align function definition with prototype
      include: bitmask: avoid -Wint-in-bool-context warning
      net: fec_mpc5200: fix false positive -Wmisleading-indentation
      MIPS: boot: main_entry: use malloc_end instead of _stext
      MIPS: longsoon: restart: hide access to zero page
      bootm: booti: fix false positive uninitialized variable access
      of: override existing reg property in of_fixup_reserved_memory
      ARM: dts: state-example: fix use with Phytec phyFLEX i.MX6
      ci: fix build on master with newer container image
      net: smc1111: add missing drive's of_device_id array sentinel
      scripts: remove openssl dependency in multi_v7_defconfig
      clocksource: armv7m_systick: fix MMIO address
      of: select OF_OVERLAY where appropriate
      memory_display: don't skip va_end in error case
      regmap-mmio: fix use-after-free
      treewide: add MODULE_DEVICE_TABLE markers
      kbuild: Port silent mode detection to future gnu make.
      Documentation: user: usb: bring up to date
      of: define of_read_file/barebox_register_of when !CONFIG_OFTREE

Alexander Shiyan (3):
      ARM: clps711x: Remove unused file
      ARM: i.MX: Use postcore_platform_driver() macro for imx src driver
      ARM: dts: am335x-myirtech: Cosmetic: Remove empty extra line

Antony Pavlov (1):
      crypto: imx-scc: Kconfig: drop references to unknown symbols

Christian Melki (1):
      barebox: Fix excessive loading of FIT images

Christopher Ebner (1):
      partitions: efi: Continue partition enumeration on invalid pte

Hans Christian Lonstad (1):
      /arch/arm/dts: imx8mp: Do not mask out mediamix power domain

Johannes Zink (6):
      net: phy: print error messages to log
      imx-usb-loader: exit with success when displaying help on purpose
      imx-usb-loader: use proper return code macros
      imx-usb-loader: add commandline option for displaying version number
      imx-usb-loader: fix compilation if prepare make target was not called before
      imx-usb-loader: also add version information on target tool

Marc Reilly (1):
      Documentation: boards: nxp-imx8mp-evk; clarify firmware folder

Marco Felsch (1):
      gpiolib: fix gpio-hog functionality

Michael Grzeschik (1):
      usb: dwc2: fix multiplier handling in endpoint setup

Michael Olbrich (1):
      net: ifup: pass hostname and linuxdevname to linux with DHCP

Oleksij Rempel (3):
      usb: dwc2: Port support for USB FIFO devicetree properties from Linux v6.3
      usb: dwc2: Port FIFO configuration sync from Linux v6.3
      arm: dts: stm32mp151-prtt1l: Configure USB gadget FIFOs for multiple gadgets support

Roland Hieber (4):
      ARM: i.MX6: tqma6x: make use of ENTRY_FUNCTION_WITHSTACK
      ARM: i.MX: TQMa6x: migrate flash partitions to device tree
      ARM: i.MX6: TQMa6x: make tqma6x_env_init reusable
      commands: ethlog: wire up help text

Sascha Hauer (109):
      ARM: versatile: Enable CONFIG_RELOCATABLE
      ARM: versatile: Use common clk framework
      ARM: versatile: drop platform code to register UART
      ARM: versatile: drop platform code to register GPIOs
      ARM: versatile: Use flash from device tree
      ARM: versatile: Use smc91c111 from device tree
      ARM: versatile: make sure to run initcalls on versatile only
      ARM: versatile: simplify ARM1176 support
      ARM: versatile: move over to multi image support
      ARM: versatile: move over to multi arch support
      ARM: versatile: Use existing clocksource driver
      ARM: Merge imx_defconfig and versatilepb_defconfig into multi_v5_v6_defconfig
      ARM: vexpress: Disable non working devices
      Kconfig: source Kconfig.include earlier
      ARM: Rockchip: make boards only selectable when firmware is present
      dts: update to v6.3-rc7
      dts: update to v6.3
      mci: dove: Add unhandled enumeration value
      MAKEALL: Configure before setting up CROSS_COMPILE
      MAKEALL: Select arm64 toolchain for 64bit ARM configs
      MAKEALL: order configs alphabetically
      MAKEALL: Do not print sizes
      MAKEALL: Do not trap
      MAKEALL: fix printing number of compiled configs
      MAKEALL: support Kconfig fragments
      MAKEALL: rename variables
      MAKEALL: separate errors and warnings
      MAKEALL: allow multiple defconfigs as arguments
      ARM: arm64virt: move to multiarch
      ARM: multi_v8_defconfig: Enable ARM64 QEMU Virt board
      ARM: Remove qemu_virt64_defconfig
      ARM: remove vexpress_defconfig
      firmware: make drivers/firmware/ obj-y
      stddef: add sizeof_field()
      pci: add pci_select_bars() helper
      ARM: i.MX: make boards selectable only when firmware files are present
      dts: update to v6.4-rc1
      dts: update to v6.4-rc2
      ARM: remove unused membase argument
      ARM: remove unused define
      ARM: rename __arm_mem_scratch to arm_mem_scratch
      ARM: put scratch mem area below OP-TEE
      ARM: add arm_mem_optee()
      ARM: make arm_mem_scratch() a static inline function
      ARM: raspberry-pi: put video core fdt at end of RAM
      ARM: define stack base consistently
      ARM: move arm_mem_scratch_get() lower for consistency
      ARM: drop cache function initialization
      ARM: Add _32 suffix to aarch32 specific filenames
      ARM: cpu.c: remove unused include
      ARM: mmu-common.c: use common mmu include
      ARM: mmu32: rename mmu.h to mmu_32.h
      ARM: mmu: implement MAP_FAULT
      ARM: mmu64: Use arch_remap_range where possible
      ARM: mmu32: implement zero_page_*()
      ARM: i.MX: Drop HAB workaround
      ARM: Move early MMU after malloc initialization
      ARM: mmu: move dma_sync_single_for_device to extra file
      ARM: mmu: merge mmu-early_xx.c into mmu_xx.c
      ARM: mmu: alloc 64k for early page tables
      ARM: mmu32: create alloc_pte()
      ARM: mmu64: create alloc_pte()
      ARM: mmu: drop ttb argument
      ARM: mmu: always do MMU initialization early when MMU is enabled
      ARM: mmu32: Assume MMU is on
      ARM: mmu32: Fix pmd_flags_to_pte() for ARMv4/5/6
      ARM: mmu32: Add pte_flags_to_pmd()
      ARM: mmu32: add get_pte_flags, get_pmd_flags
      ARM: mmu32: move functions into c file
      ARM: mmu32: read TTB value from register
      ARM: mmu32: Use pages for early MMU setup
      ARM: mmu32: Skip reserved ranges during initialization
      ARM: mmu64: Use two level pagetables in early code
      of: add function to read a file as unflattened device tree
      test: Add emulated sabrelite labgrid config
      test: Add emulated raspberry pi labgrid configs
      pci: set upper word for 64bit base addresses
      ARM: SCMI: Use correct smc/hvc instructions on ARM64
      clk: rockchip: Add rk3588 support
      pinctrl: rockchip: Move struct definitions to separate header file
      ARM: rockchip: detect rockchip SoC type when asked for
      pinctrl/gpio: rockchip: separate gpio from pinctrl driver
      pinctrl: Update pinctrl-rockchip from kernel
      phy: rockchip: naneng-combphy: add rk3588 support
      reset: Implement reset array support
      pci: designware: add rockchip support
      phy: realtek: Add RTL8125 internal phy support
      net: Update Realtek r8169 driver
      ARM: rockchip: rk3588: add memsize detection
      ARM: rockchip: Add rk3588 support
      ARM: dts: Add rk3588 device trees
      ARM: rockchip: Add Radxa ROCK 5B support
      Merge branch 'for-next/arm-mmu'
      Merge branch 'for-next/arm64-virt'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/kconfig-missing-firmware'
      Merge branch 'for-next/makeall'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/rockchip'
      Merge branch 'for-next/stm32mp'
      Merge branch 'for-next/versatile'
      Merge branch 'for-next/vexpress'
      Add GitHub CI
      ARM: set zero page accessible before copying ATAGs there
      ARM: mmu_32: fix setting up zero page when it is in SDRAM
      Revert "dma: use dma/cpu conversions correctly in dma_map/unmap_single"
      ARM: mmu_32: Fix zero page faulting
      net: gianfar: make MAC addr setup endian safe, cleanup
      Release v2023.06.0

Yegor Yefremov (1):
      net: cpsw: increase a delay before reading the ALIVE register
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


