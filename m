Delivery-date: Mon, 19 Jan 2026 14:51:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhpfO-0032zS-1c
	for lore@lore.pengutronix.de;
	Mon, 19 Jan 2026 14:51:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhpfM-0007dm-NW
	for lore@pengutronix.de; Mon, 19 Jan 2026 14:51:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8YHIduuVYtuL5gzjbjRhJkQheMVLNIUCng/ZcE77Tm8=; b=szzCPROzUw4jaVFQsiEPhiKe57
	cG18Moog8F/mTFa5gKQebKWJz1CGFN4NRbj+q8nklFQtaPIAZJhdbHIxj+nWpj8AA/1a7Wzb3WI4y
	mvlUuQOuiHFk2QmHA0NHEIL01ePozh2/uEbcDsr4VykkmlrNO/i0aUyGYDtNFBBWQQo8GnejnYg0Y
	cKZ84J7Sx3RnT5hdE9WeypRIrFfnpGaO8kiNgkC8ztWVrmofFr8KxZb5CdOATdeQwAZ2U7zXYejPW
	j+JwIqRojI/ORyXJFBmZMU6TStE2tgOUAC1InQLBNdoX3v/S9F+6IdrjjKG8UM/yxEGb+XQMxhhHl
	OuBvxcTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhpeg-00000002BdT-3vtO;
	Mon, 19 Jan 2026 13:50:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhpeZ-00000002Bd3-0gst
	for barebox@lists.infradead.org;
	Mon, 19 Jan 2026 13:50:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vhpeX-0007TI-Io; Mon, 19 Jan 2026 14:50:45 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vhpeY-001QMv-0C;
	Mon, 19 Jan 2026 14:50:45 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vhpeX-003Oyf-10;
	Mon, 19 Jan 2026 14:50:45 +0100
Date: Mon, 19 Jan 2026 14:50:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <aW42tXvmSurUGNg-@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260119_055047_540418_9D2E6B87 
X-CRM114-Status: GOOD (  23.44  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: v2026.01.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


Hi all,

I just released the first barebox for 2026! v2026.01.0 is out.

This brings us some exciting new features. First to mention is that barebox
no longer can only be a EFI payload, but also act as an EFI loader. With this
barebox can now boot Debian images out of the box. A lot of work has been done
to get this 54 patches series and even more preparatory patch series into barebox,
thanks Ahmad for not giving up on this.

Another change is that barebox now has device special files in /dev/ rather than
regular files that have a cdev beneath them. With this we no longer have a devfs
filesystem anymore and /dev/ simply becomes a regular directory in the initial
ramfs mount. Links are no longer special and we'll be able to create /dev/disk/by-*/
entries.

barebox now also has "storage.removable" and "storage.builtin" boot aliases to
allow booting from the specified device class.

Finally the family of supported boards gets a new member: The Amazon Kindle
generation 6/7 are now support.

See below for migration guide and patches that went into this release.

Have Fun!

Migration guide for Release v2026.01.0
======================================

<config.h> removal for PowerPC
------------------------------

PowerPC was the last remaining user of per-board ``<config.h>`` files.
The alternative for out-of-tree boards is now to patch
``arch/powerpc/include/asm/config.h`` to include the board's config.h,
like the in-tree boards are already doing.

Filesystems
-----------

``{linux.bootargs}`` is replaced with ``root={linux.bootargs.root} {linux.bootargs.rootopts}``

The variable linux.bootargs has been replaced by the two variables
linux.bootargs.root and linux.bootargs.rootopts, splitting the previous bootargs
into three parts. A nonexistent fixed "root=", then the root filesystem and then
additional optional params for this particular filesystem.

for example the previous::

    linux.bootargs="root=/dev/nfs nfsroot=192.168.1.1:/rootfs"

becomes::

    linux.bootargs.root="/dev/nfs"
    linux.bootargs.rootopts="nfsroot=192.168.1.1:/rootfs"

Boards
------

ARM i.MX6 RIoTboard
^^^^^^^^^^^^^^^^^^^

The barebox update handler has been changed to write barebox to the
eMMC boot partitions rather than the user data area.

CONFIG_SHELL_NONE
-----------------

If there's nothing to do for a shell-less barebox, it will now attempt
to poweroff the system instead of busy-looping indefinitely.
This changes behavior for systems that rely on a watchdog to reset
a hanging barebox in this situation. If this breaks anything for you,
please reach out.

----------------------------------------------------------------
Ahmad Fatoum (173):
      poller: activate POLLER_WARN_OVERTIME only on third strike
      drivers: don't propagate of_alias_get_id's -ENODEV out of probe
      bootm: allow custom struct image_handler::check_image callbacks
      efi: payload: bootm: allow compiling without FIT support
      efi: payload: x86: make handover vs startimage a runtime decision
      mvebuimg: replace errant sizeof(4)
      fs: qemu_fw_cfg: make use of the automount
      fs: qemu_fw_cfg: handle non-existent opt/org.barebox.env key gracefully
      defaultenv: don't abort defaultenv_load silently on error
      defaultenv: add base and external defaultenv in pure_initcall
      efi: payload: image: set LoaderTimeExecUSec for kernel images
      efi: payload: fold setup_header.h into handover.c
      test: populate qemu_bin, even if missing features
      test: arm: qemu-sabrelite: drop -nographic
      test: arm: add default board for multi_v5_v6_defconfig.yaml
      ARM: sunxi: drop unneeded Makefile
      test: exit directly when invoking QEMU states on non-QEMU targets
      ARM: mmu: set up vectors prior to full MMU setup
      environment: prefer non-removable over removable devices for autoprobe
      memory: drop superfluous struct memory_bank::start/size parameters
      memory: keep memory_banks sorted
      usb: align with Linux usb_get_dr_mode API
      usb: add support for barebox,dr_mode
      kbuild: drop non-existent targets from CLEAN_FILES
      sandbox: fix race with .old_version removal
      ARM: lib64: rename pbl.o to delay.o
      sandbox: setjmp: avoid conflict with noinline macro
      openrisc: drop <config.h> usage
      ARM: drop <config.h> usage
      ppc: drop <config.h> usage
      treewide: drop last remnants of <config.h>
      mci: am654-sdhci: correctly configure SLOTTYPE_EMBEDDED
      printf: define printk/no_printk in terms of prints
      bug: add support for CONFIG_DEBUG_BUGVERBOSE
      include: move sprintf prototypes to new linux/sprintf.h
      console: move non-stdio elements to console.h
      video: dw_mipi_dsi: drop unused and misleading dw_mipi_dsi_crtc_node()
      video: Rockchip: add MIPI-DSI support
      video: dw_mipi_dsi: activate pattern generator during enable as a hack
      ARM: zynqmp: dts: mark power domain as dummy
      ARM: rpi: make power domain optional
      pmdomain: add Rockchip power domain support
      of: add proper driver for simple-pm-bus
      pmdomain: warn if deep probe enabled and driver missing
      pmdomain: genpd_activate() automatically for deep probe platforms
      net: arp: collect context into new struct pending_arp
      net: reset pending ARP state when request is done
      devinfo: print DMA offset and mask in devinfo
      clk: rk3568: sync driver with Linux
      ARM: mmu: include <asm/io.h> from <mmu.h>
      driver: base: report driver remove before, not after operation
      clk: vexpress: clk-sp810: sync with Linux
      efi: add option to generate vfat file for barebox.efi
      lib: import Linux UCS2 library functions
      lib: wchar: reimplement in terms of Linux UCS2 helpers
      libfile: use different memory types for os and initrd
      memory: fix dangling if in for_each_reserved_region
      efi: payload: enable build for sandbox
      malloc: define malloc_add_pool outside of TLSF
      cdev-alias: support referencing diskuuid without child partition
      cdev-alias: fix memory leak in diskuuid handling
      cdev-alias: add support for storage{.removable,.builtin}
      boot: try builtin and removable media before net for boot.default
      boot: assign names to bootentry providers
      globalvar: suppress nvvar_save when no external environment was loaded
      startup: bump down log message about lack of persistent environment
      environment: allow board code to suppress external env loading
      ARM: cpu: disable interrupts before MMU disabling
      efi: payload: restructure Kconfig
      efi: mode: add efi_get_runtime_services helper
      filetype: move is_dos_exe into header
      rtc-lib: implement rtc_calc_weekday
      ARM64: support reserving the x18 platform register
      poweroff: make header self-contained
      cache: provide <asm/cache.h> for x86 and sandbox as well
      resource: implement resource walker
      test: self: implement resource walker selftest
      commands: iomem: add support for printing gaps
      test: py: add test for valid JSON output from iomem/clk_dump
      memory: add helpers for iterating over memory regions
      resource: implement release_region_range
      bbu: detect devices when devicefile has no /dev/ prefix as well
      treewide: replace open-coded variants of devpath_to_name
      fs: implement new resolve_fsdevice_path helper
      efi: payload: make EFI variable helpers usable for loader as well
      fs: efivarfs: prepare for use with barebox as EFI loader
      efi: handle: build for both EFI payload and loader
      efi: provide populate $efi.payload_default_path depending on arch
      efi: tidy up header includes for reuse
      efi: types: add efi_intn_t/efi_uintn_t definition
      efi: devicepath: make fully usable for loader
      efi: guid: don't interleave protocol and event GUIDs
      ARM64: mmu: implement mmu_disable completely in assembly
      efi: guid: add some more GUIDs
      efi: guid: move static GUIDs out of drivers
      efi: gop: flesh out efi_graphics_output_protocol::blt definition
      efi: payload: initrd: move into common efi code
      efi: add missing EFIAPI to functions
      resource: change MEMATTRS_NORMAL to MEMATTR_WB
      bootm: add os_type field to struct image_data
      startup: implement get_autoboot_state() helper
      of: implement of_get_machine_vendor()
      lib: smbios: add support for populating SMBIOS table
      cdev: maintain partition index in struct cdev
      efi: payload: initrd: fix type mismatch on 32-bit
      efi: loader: switch over event/memory key type to efi_uintn_t
      lib: vsprintf: print human-readable EFI GUIDs with %pUs
      fs: fat: don't duplicate dentries when resolving differently cased paths
      efi: loader: add memory accounting
      efi: loader: add pool allocator
      efi: types: add EFI_RUNTIME_SECTION
      resource: assign memory banks a default type and attr
      ARM: lds: add EFI runtime service section
      ARM: move needed assembly routines into EFI runtime section
      crypto: crc32: implement position independent CRC32
      efi: loader: add support for tracing calls back into UEFI
      efi: loader: add table utility functions
      lib: add charset helpers
      efi: loader: add object handling API
      efi: loader: add devicepath support
      efi: loader: add debug support
      efi: loader: add boot services support
      efi: loader: add support for runtime services before ExitBootServices
      efi: loader: setup root node
      efi: loader: add watchdog support
      efi: loader: move PE implementation out of common code
      efi: loader: protocol: add file protocol support
      efi: loader: protocol: add Block IO support
      efi: loader: protocol: implement efi_file_from_path
      efi: loader: boot: implement LoadImage BootService
      efi: loader: add EFI load option handling
      efi: loader: protocol: add graphical output protocol support
      efi: loader: protocol: add console support
      efi: loader: protocol: add HII support
      efi: loader: protocol: add unicode collation support
      efi: loader: protocol: add random number generator protocol
      efi: loader: protocol: add device_path_utilities
      efi: loader: support formatting only first device path node to text
      efi: loader: protocol: add efi_device_path_to_text support
      restart: allow drivers to register runtime restart handler
      poweroff: allow drivers to register runtime poweroff handler
      ARM: psci: client: register runtime service poweroff handler
      ARM: psci: client: register runtime service restart handler
      hardening: disable some features when EFI runtime support is enabled
      filetype: add new filetype for efi-stubbed ARM zImages
      bootm: add global.bootm.efi toggle
      efi: loader: add ESP boot entry provider
      efi: loader: add rudimentary EFI boot manager
      efi: loader: implement bootm handler
      efi: runtime: add EFI variable support
      efi: loader: populate OsIndicationsSupported/PlatformLang variables
      ARM: don't disable MMU when EFI booting
      efi: runtime: add runtime service support after ExitBootServices
      efi: runtime: add relocation check
      efi: loader: CONFIG_EFI_RT_VOLATILE_STORE
      efi: loader: support ExitBootServices
      efi: loader: pass along SMBIOS table
      ARM: configs: add multi_v7/8_efiloader_defconfig
      boot: allow prioritizing boot entry providers
      test: py: strategy: add OS shell state
      test: py: add simple SMBIOS tests
      test: py: add simple EFI loader integration test
      test: arm: add Labgrid env YAML for multi_v8_efiloader_defconfig
      Documentation: devel: contributing: fix URL ReST syntax
      sandbox: fix make dependency for sandbox
      ARM64: dts: Layerscape: workaround v6.19-rc1 DT sync DWC3 breakage
      mci: use partition table index for Linux mmcblkdev fixup
      Documentation: turn more magic variable literals into references
      scripts: .gitignore: add imx9image
      scripts: pblimage: add to .gitignore
      virtio: ring: fix stale data in queue after reset
      scripts: Makefile.lib: suppress graph_port warnings for overlays
      ARM: Rockchip: rk3576-prtpuk: suppress video graph warning

Alexander Kurz (1):
      ARM i.MX6SL: Add Kindle generation 6/7 support

Alexander Shiyan (2):
      commands: truncate: improve help text clarity
      commands: truncate: fix multiple file handling with relative sizes

Bruno Knittel (2):
      ARM: socfpga: arria10-reset-manager: release UART0
      ARM: socfpga: arria10-init: setup uart earlier

Chali Anis (3):
      treewide: rename remnants of struct device_d
      pci: pci-tegra: fix null pointer assignation.
      blspec: derive root prefix from blspec config path instead of mountpoint

Enrico Jörns (3):
      state: helpful error message if state GUID cannot be found
      block: don't error while flushing when write support is disabled
      bootchooser: clarify error message for disabled barebox-state

Fabian Pflug (4):
      block.h: renamed get_rootargs to get_root
      fs: split rootargs into root and options
      bootm: use new api to get kernel command line params
      bootm: introduce bootm.root_param variable

Jan Luebbe (1):
      boards: qemu-virt: disable system1 in state by default

Jonas Rebmann (3):
      lib: base64: Fix out-of-bounds potential by respecting dst_len
      test: self: add base64 selftests
      ci: coverity: Run monthly, on branch next

Maud Spierings (2):
      net: designware-imx: don't set txclk when mode is (r)mii
      ARM: i.MX8M: Fix the RAM size calculation for DDR3

Michael Grzeschik (11):
      include: linux: ioport.h: port resource_set_range from linux
      simplefb-fixup: depend res fields on root size-cells and addr-cells
      simplefb-fixup: add reserved memory-region entry for the simple-framebuffer
      simple-panel: parse for bus-format of the panel
      video: fsl-ldb: add ported driver from linux kernel
      video: lcdif_drv: add ported driver from linux
      soc: imx: imx93: add ported source driver for pmdomain from linux
      pmdomain: imx: imx93-blk-ctrl: add ported driver from linux
      arm: dts: imx93: Add LCDIF & LDB nodes
      clk: imx: clk-fracn-gppll: Add 355.6MHz config for video pll
      clk: imx: clk-fracn-gppll: Add 135MHz config for video pll

Rouven Czerwinski (1):
      Documentation: imx8mq-evk: warn for EVKB variant

Sascha Hauer (68):
      dts: update to v6.18-rc5
      k3: add keywriter lite support
      dts: update to v6.18-rc7
      test: tlv: fix memory leak
      test: ramfs: close opened directory
      commands: oftree: fix memory leak
      bootargs: fix memory leak
      fs: free inode->i_link
      driver: call devinfo_del() during free_device_res()
      driver: call free_device_res() from unregister_device()
      dm: fix memory leak
      nvmem: k3: add fuse support
      ARM: K3: am62l: don't put sysfwdata into 1st stage image
      ARM: k3: make some firmware files SoC specific
      ARM: k3: am62l: Add dedicated config option for OP-TEE
      ARM: k3: am62l: fix dependencies on k3img input files
      driver: implement get_free_deviceid_from()
      nvmem: fix device name setting
      driver: fix device name clashes
      eeprom: at24: reserve EEPROM names which have an alias
      dts: update to v6.18
      partitions: gpt: allow to create barebox state partitions
      ARM: i.MX Riotboard: Use eMMC boot partition to boot
      fs: get path in path_init()
      fs: warn when mount reference count becomes negative
      test: dirfs: use ramfs rather than devfs
      ARM: i.MX8MM EVK: refactor early startup
      ARM: i.MX8MN EVK: refactor early startup
      fs: devfs-core: add devfs_create_link_node()
      storage-by-alias: drop fake cdev
      fs: implement mknod
      commands: add mknod command
      fs: ramfs: add device file support
      cdev: add cdev_size() helper
      fs: fix st_size for device files
      fs: retire devfs as filesystem
      fs: include cdevname in struct stat
      fs: stat_print: get cdevname from stat
      common: cdev-alias: rename struct
      fs: replace cdev links with aliases
      ls: use ~0 for FILE_SIZE_STREAM
      partitions: gpt: pass epd context pointer to find_valid_gpt()
      partitions: gpt: only write actual ptes size to device
      partitions: gpt: factor out a function to write primary/alternate GPT
      partitions: gpt: write inactive GPT first
      partitions: gpt: fix GPT restauration from alternate GPT
      clk: rockchip: rk3288: Drop CLK_NR_CLKS usage
      dts: update to v6.19-rc1
      partitions: gpt: refresh partition tables when necessary
      of: replace of_alias_get_highest_id() with of_alias_get_free_id()
      i2c: implement i2c_unregister_device()
      eeprom: at24: unregister devices in error path
      Merge branch 'for-next/arm' into next
      Merge branch 'for-next/devfs' into next
      Merge branch 'for-next/dts' into next
      Merge branch 'for-next/efi' into next
      Merge branch 'for-next/env' into next
      Merge branch 'for-next/gpt' into next
      Merge branch 'for-next/imx' into next
      Merge branch 'for-next/k3' into next
      Merge branch 'for-next/memleaks' into next
      Merge branch 'for-next/misc' into next
      Merge branch 'for-next/resource-walk' into next
      Merge branch 'for-next/test' into next
      Merge branch 'for-next/efi' into for-next/aa-efi-loader
      Merge branch 'for-next/aa-efi-loader'
      fs: tmpfile_create(): add missing mntget()
      Release v2026.12.0

Sohaib Mohamed (3):
      common: bbu: refactor flash operations into separate function
      ARM: stm32mp: bbu: add NOR flash FIP update handler
      ARM: stm32mp: add support for STM32MP157A Avenger96 board

Steffen Trumtrar (2):
      ARM: i.MX8MP: skov: update variant-3 Rev.C
      ARM: i.MX93: cpu_init: enable media+mlmix

zhengxiaojun (1):
      mmc: resolve conflict between MMC_CAP_NONREMOVABLE and MMC_CAP_1_8V_DDR


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


