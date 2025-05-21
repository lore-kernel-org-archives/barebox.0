Delivery-date: Wed, 21 May 2025 14:05:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uHiC4-0019ZL-08
	for lore@lore.pengutronix.de;
	Wed, 21 May 2025 14:05:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uHiC2-0006F1-QC
	for lore@pengutronix.de; Wed, 21 May 2025 14:05:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CDgNQPlGyrcXteBoRcjcYm4ieOTn/muBE7uAJWdBIeI=; b=zYDhRAt9yYLV0acdZos9oE2vke
	4lhsgLk9iQ/L6Vj6XiENQWl+3KZct+3wrWSFZxfsfRpmRN0zZp+820zlahK1Mq6O6NDYaT2ifIOEG
	0LQgOC4GXINsEkCTd6Yx9xaTFwCgwxAMx7aKr9T+pTw+so/FOjglh2ZIyhw3U3DpBWD7CJ0LgD/DJ
	FUWQppUuIr89z1xBV/U8kAoSXWtJ1MMRicYh4ubeZkDWs+CmCp6fQcAzMASjcJFQr+6VfkAKHTNTM
	HODtFICzOhc5C6LeI6e0XJhns6wbb1D/+0GJJJbfV6BiP4808M5/hx+O7oICh1lUpd9R2KwysyJ7/
	sPgf4YYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHiBI-0000000Fibe-41Dy;
	Wed, 21 May 2025 12:04:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHi9p-0000000FiU9-1FUe
	for barebox@lists.infradead.org;
	Wed, 21 May 2025 12:02:50 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uHi9n-0005eL-GF; Wed, 21 May 2025 14:02:47 +0200
Message-ID: <a72ef903-af71-4f7a-a34e-092ceb73d48c@pengutronix.de>
Date: Wed, 21 May 2025 14:02:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <aC2N-bXXRByPYqiM@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <aC2N-bXXRByPYqiM@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_050249_633517_14920515 
X-CRM114-Status: GOOD (  39.44  )
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
Subject: Re: v2025.05.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 21.05.25 10:25, Sascha Hauer wrote:
> Hi All,
> 
> We have the v2025.05.0 barebox Release.
> 
> There are quite a few changes this time. barebox now has RPMB support
> for eMMC devices. The first thing we can do with it is to access the AVB
> persistent value store, so barebox can store variables in RPMB
> partitions. We also have some new commands: The tree command shows a
> directory tree like its Linux pendant. The truncate command can truncate
> files to specified sizes which can be useful for debugging and testing
> filesystem stuff. The varinfo command can be used to show information
> about variables.
> Some new boards are supported as well, all STM32MP1 based: The Linux
> Automation TAC board, the Linux Automation Fairytux 2 and the Protonic
> MECT1S board.
> Another nice thing is that we no longer need two barebox builds for the
> Beaglebone board. The regular build can now produce a MLO first stage
> image as well.
> The TLSF allocator is now the default allocator. This is done in
> preparation to remove the dlmalloc allocator later this year.
> 
> See below for a full list of patches for this release.

\o/

One thing of note that I'd like to add is that we have a migration guide
now: https://barebox.org/doc/latest/migration-guides/migration-2025.05.0.html

I intend to maintain this for future releases as well.

Cheers,
Ahmad

> 
> Have Fun!
>    Sascha
> 
> ----------------------------------------------------------------
> Ahmad Fatoum (168):
>       fs: use filename_create/filename_lookup instead of open-coding
>       fs: implement O_DIRECTORY
>       fs: implement opendir in terms of fdopendir
>       commands: implement tree command
>       commands: add new truncate command
>       Documentation: devel: add short section on file systems
>       scripts: define le32_to_cpup and friends for host/target tools
>       booti: sanity check image magic before parsing header
>       complete: give device_param_complete a flags parameter
>       env: add envvar_for_each helper for variable iteration
>       commands: add varinfo command
>       driver: base: class: remove device from class on registration
>       fs: squashfs: drop unused struct squashfs_dir definition
>       common: elf: drop unused arch notes stubs
>       driver: drop unused dev_open/close_default stubs
>       Revert "ci: container: downgrade OpenRISC toolchain from 14.2.0 to 13.1.0"
>       ci: container: download and delete kvx.tgz in the same layer
>       ci: container: don't leave labgrid checkout in /tmp
>       ci: container: don't install recommended packages
>       ci: container: run apt-get clean after installation
>       ci: container: add musl-tools
>       ci: container: install LLVM/clang
>       sandbox: use CROSS_PKG_CONFIG when compiling sandbox arch code
>       sandbox: hide sdl/libftdi symbols if libraries not found
>       MAKEALL: fix check_pipe_status usage
>       MAKEALL: remove use of alias in script
>       ci: pytest: run test suite on sandbox allyesconfig
>       ci: run static analysis on allyesconfig
>       blspec: drop explicit devicetree "none" handling
>       sandbox: env: switch from CONFIG_DEFAULT_ENVIRONMENT_PATH to bbenv-y
>       common: make TLSF the default allocator
>       test: bthread: change comparison condition for switches vs. yields
>       ci: pytest: rename build directories
>       ci: pytest: enable console and libc allocator for allyesconfig
>       fs: mark string returned by get_mounted_path as const
>       spi: add STM32F7 QSPI controller driver
>       printk: make dev_printf a PBL stub
>       net: nfs: retire nfs command in favor of filesystem
>       ARM: configs: replace NET_NFS command option with FS_NFS
>       banner: print out enabled sanitizers
>       boot: change bootentry_register_provider to take struct argument
>       boot: move nfs:// parsing out of bootloader spec code
>       blspec: remove unused blspec_scan_devices
>       blspec: don't export blspec functions
>       commands: devlookup: factor out cmd_export_val
>       commands: findmnt: add support for exporting target as variable
>       commands: devlookup: add option to print kernel root option
>       tee: optee: of_fixup: allow static shared memory size of 0
>       bootsource: retire bootsource_set_alias_name
>       bootsource: add optional read of /chosen/bootsource
>       ARM: stm32mp: switch internal SoC code to hexadecimal
>       ARM: stm32mp: init: expand bootsource logic to STM32MP13{1,3}
>       include: linux/limits: add definition for RESOURCE_SIZE_MAX
>       defaultenv: boot/bnet: fallback to booting generic 2nd stage FIT image
>       mci: stm32_sdmmc2: fix benign typo in dma_map_single
>       commands: introduce simple base64 command
>       of: use pr_ family functions to log messages
>       blspec: factor out generic parts into bootscan helper
>       common: bootscan: add scan_disk callback
>       blspec: support boot /dev/virtioblkX
>       boot: split off bootarg API into new bootargs.h header
>       block: add get_rootarg block op into block_device_ops
>       block: fixup rootwait argument when needed by default
>       of: implement stub for of_cdev_find
>       bootsource: implement bootsource_of_cdev_find
>       common: bootdef: add new boot entry provider
>       kconfig: implement IF_ENABLED helper
>       boot: make bootsource the default boot target if enabled
>       cdev: make cdev_find_child_by_gpt_typeuuid external
>       cdev: constify cdev_find_child_by_gpt_typeuuid's guid_t pointer argument
>       partition: efi: respect DPS_TYPE_FLAG_NO_AUTO flag
>       blspec: iterate over all XBOOTLDR partitions
>       blspec: support GPT XBOOTLDR partition
>       blspec: collect bootloader spec entries from ESP
>       cdev: alias: add support for partition links
>       cdev: do not dereference partname for non-partitions
>       cdev: use common cdev_free helper internally
>       cdev: implement devfs_create_link in terms of devfs_create
>       misc: storage-by-uuid: consider only first diskuuid match
>       misc: storage-by-uuid: prepare for generalizing to different aliases
>       misc: storage-by-uuid: rename to storage-by-alias
>       misc: storage-by-alias: switch over to using cdev aliases
>       misc: storage-by-alias: add support barebox,bootsource
>       misc: storage-by-alias: register as link to main cdev
>       cdev: constify cdev_readlink argument
>       cdev: follow links in cdev_find_child_by_gpt_typeuuid
>       common: clarify global.of.kernel.add_machine_compatible
>       commands: saveenv: remove outdated info about envfs directories
>       commands: saveenv: mention where environment is saved to
>       base: class: add convenience helpers for iteration
>       mux: port Linux multiplexer framework
>       drivers: port Linux gpio-mux driver
>       ARM: stm32mp: drop all images with legacy STM32 header
>       ARM: dts: i.MX8MP: drop now upstream imx8mp-nominal.dtsi
>       ARM: i.MX8MP: skov: decrease VDD_SOC to 850mV
>       ARM: i.MX8MP: skov: assert switch reset early
>       ARM: i.MX8MP: skov: halt startup until power is good
>       ARM: skov-imx8mp: print initial > on every boot
>       ARM: i.MX8MP: skov: add new 7" g07017 variant support
>       defaultenv: boot/bnet: print message when booting generic 2nd stage FIT image
>       regulator: adapt warning message when resolving supply
>       lib: random: implement Xorshift* RNG
>       clock: always seed Xorshift* from clocksource on startup
>       random: replace all rand/srand API with Xorshift
>       random: replace get_random_bytes with get_noncrypto_bytes
>       ARM: drop unused mmiocpy/mmioset symbols
>       ARM: define position-independent __pi_memmove/memset/memcpy
>       RISC-V: define position-independent __pi_memmove/memset/memcpy
>       virtio: make more robust in face of misbehaving devices
>       include: add support for NOTIFY_BAD
>       clk: add compatibility for prepare/unprepare/is_prepared
>       clk: mux: replace width member with mask as in Linux
>       clk: mux: fix mask/width confusion in clk_hw_register_mux
>       clk: gate: underscore-prefix barebox-specific parent member
>       clk: gate: add bit_idx member as in Linux
>       clk: composite: change mux/rate/gate members to clk_hw
>       clk: move struct clk_composite definition to header
>       of: address: implement dummy iounmap
>       include: linux/iopoll.h: add optional PBL support
>       mfd: syscon: make mfd/syscon.h header self-contained
>       dma: make header self-contained
>       stddev: make reads from /dev/null return 0 bytes
>       driver: have dev_platform_ioremap_resource return error pointer
>       bootm: fix error reporting around optee_verify_header_request_region
>       treewide: replace strerror of errno with %m
>       commands: memtester: fix erroneous use of errno
>       treewide: fix wrong signed value passed to strerror
>       treewide: replace strerror with %pe format specifier
>       net: dhcp: mention that eth0 is the default
>       clocksource: make available in PBL
>       clocksource: ti-dm: make available in PBL
>       restart: give poweroff_machine and restart_machine a flag parameter
>       fip: add struct fip_image_desc::private_data
>       fip: mark predefined toc_entries array const
>       bootm: implement UIMAGE_IS_ADDRESS_VALID helper
>       ARM: legacy: make architecture number unsigned
>       ARM: introduce jump_to_linux helper
>       ARM: add support for chainloading barebox inside FIP images
>       ARM: stm32mp: retire non-FIP stm32mp_bbu_mmc_register_handler
>       mci: move mci_setup_cmd definition into header
>       mci: add common PBL helper for chainloading after BootROM initialization
>       mci: pbl: add autodetection of BootROM-initialized standard capacity cards
>       mci: omap_hsmmc: split out common code
>       ARM: OMAP: add am33xx_hsmmc_start_image for PBL
>       mci: omap_hsmmc: add xload implementation for PBL
>       ARM: OMAP: beaglebone: add PBL SD xload support
>       restart: give all restart_handler::restart callbacks a flags parameter
>       poweroff: give all poweroff_handler::poweroff callbacks a flags parameter
>       restart: make warm reboot a callback argument
>       video: ramfb: fix frame buffer screen size
>       firmware: qemu_fw_cfg: drop duplicate definitions
>       firmware: qemu_fw_cfg: add support for seeking
>       firmware: qemu_fw_cfg: rename from /dev/fw_cfg0 to /dev/fw_cfg
>       Documentation: user: versioning: fix formatting
>       Documentation: user: versioning: reduce indentation
>       linux/iopoll: fix inverted condition in read_poll_timeout
>       kbuild: Use -fzero-init-padding-bits=all
>       fastboot: terminate request for non-file-backed partition properly
>       Documentation: add migration guide for v2025.05.0
>       PWM: core: fix deep probe for PWM backlight
>       resource: replace wrong NULL check for dev_get_resource_by_name with IS_ERR
>       common: reword CONFIG_PBL_OPTEE help text
>       Documentation: security: add cross references with SECURITY.md
>       clocksource: ti-dm: fix EPROBE_DEFER handling
>       Documentation: migration-2025.05.0: document more changes
>       ARM: i.MX: fix cpu_is_imx on CONFIG_ARM_MULTIARCH configurations
>       ARM: omap: fix cpu_is_omap on CONFIG_ARM_MULTIARCH configurations
>       of: partition: overwrite arm,arm-firmware-suite unless donttouch
> 
> Alexander Shiyan (23):
>       ARM: at91: xload: Unify loader functions to use a single xload_instance structure
>       ARM: at91: xload: Replace magic values with definitions
>       ARM: at91: xload: Remove len argument from at91_fat_start_image()
>       ARM: at91: xload: Use the variable name as described in include/mach/at91/xload.h
>       ARM: at91: xload: Remove intermediate variable
>       ARM: at91: xload: Rename the sama5d2 output image names
>       ARM: at91: xload: Add QSPI boot support for SAMA5D2
>       phy: rockchip: naneng-combphy: Updating the driver from the kernel repository
>       reset: Fix name of exported symbol
>       regulator: core: Implement regulator_is_enabled() call
>       gpio: clk-gpio: Updating the driver from the kernel repository
>       ARM: at91: Remove at91sama5d3_get_ddram_size() call
>       ARM: at91: sama5d3_xplained: Fix lowlevel barebox_entry() call
>       i2c: muxes: pca954x: Switch to gpiod api
>       phy: rockchip: snps-pcie3: Updating the driver from the kernel repository
>       spi: spi-mem: Partially update the driver
>       spi: atmel-quadspi: Updating the driver from the kernel repository
>       ARM: dts: rockchip: Remove extra file rk3588s.dtsi
>       clk: Update clk_fractional_divider driver
>       clk: rockchip: fix finding of maximum clock ID
>       ARM: rockchip: rk3568: Remove hardcoded clock initialization
>       ARM: rockchip: Remove support for RK3399
>       clk: rockchip: Update RK3188 driver
> 
> David Dgien (1):
>       tlsf: Add tracking of added tlsf memory pools
> 
> David Jander (1):
>       arm: boards: protonic-stm32mp13: Add support for MECT1S board
> 
> Jules Maselbas (1):
>       commands: hwclock: rework argument handling
> 
> Leonard Göhrs (1):
>       ARM: stm32mp: add Linux Automation FairyTux 2
> 
> Michael Tretter (3):
>       ARM: rockchip: dmc: fix DRAM for sizes 16+ GiB on rk3588
>       mci: only count partitions from partition table
>       mci: fix NULL pointer dereference
> 
> Oleksij Rempel (3):
>       arm: boards: protonic-stm32mp13: Use unique board driver name
>       arm: boards: protonic-stm32mp: fix stack corruption by passing correct ctx to stm32_bsec_optee_ta_close()
>       arm: boards: protonic-stm32mp: free shift register GPIOs after use
> 
> Robin van der Gracht (3):
>       ARM: boards: protonic-imx6: Add prt-usb as fallback preferred boot target
>       ARM: boards: protonic-imx6: Re-introduce generic boot target board string
>       ARM: boards: protonic-imx6: prtvt7: Use the input system for key detection
> 
> Rouven Czerwinski (2):
>       ARM: stm32mp: add Linux Automation TAC board
>       virt: select COMMON_CLK & COMMON_CLK_OF_PROVIDER
> 
> Sascha Hauer (30):
>       dma: add function to check a buffer for proper DMA alignment
>       mci: implement mci_set_blockcount()
>       mci: export some functions for RPMB support
>       mci: detect RPMB partitions
>       mci: add RPMB support
>       tee: optee: probe successfully even when no devices are found
>       tee: optee: implement shared mem alloc/free RPC commands
>       ARM: omap: remove unused file
>       tee: optee: implement RPMB support
>       tee: optee: implement AVB named persistent values support
>       dts: update to v6.14
>       dts: update to v6.15-rc1
>       bootm: move ELF handling to bootm handlers
>       bootm: create generic FIT image handler
>       commands: add avb_pvalue command
>       ARM: omap: remove unused file
>       clk: rockchip: Add linked gate clock support
>       Merge branch 'for-next/dts' into HEAD
>       Merge branch 'for-next/at91'
>       Merge branch 'for-next/boot'
>       Merge branch 'for-next/ci'
>       Merge branch 'for-next/dts'
>       Merge branch 'for-next/fs'
>       Merge branch 'for-next/misc'
>       Merge branch 'for-next/misc-2'
>       Merge branch 'for-next/rpmb'
>       net: am65-cpsw-nuss: fix common enable counter
>       ARM: k3: fix banks count in DRAM size detection
>       ARM: K3: remove unused variable
>       Release v2025.05.0
> 
> Sven Püschel (1):
>       scripts/make_fit: move the dtbs to the start
> 
> Uwe Kleine-König (1):
>       arm64: rockchip: Enable rockchip otp driver in defconfig
> 
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


