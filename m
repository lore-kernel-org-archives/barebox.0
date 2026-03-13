Delivery-date: Fri, 13 Mar 2026 17:23:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w15Il-000HCZ-1n
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 17:23:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w15Ik-0003Io-D4
	for lore@pengutronix.de; Fri, 13 Mar 2026 17:23:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=cUA41yOtELJEmpTaCqZUYaLnmfeYhoa221q5mVLbsUA=; b=2+Yi1CsJ0BaDaFU7i+eodptZwk
	JqSoAwwElFUAUJJdPMBKR0pBhZ7iS3FM0Bpzh+CuUiH6szSFwC9tlwFlXXmjeAD01iauCTAOhiwQ6
	Unb0uo04UBCRb0AkAY8siL71tMwaBF00NofoUnHMvWsa8H07QxrTv2Qf4NG+9ZyHao2IiCNveOsXX
	DAca88yn2zeZf4It8utK8A+i+KDf5wGjd9TqPqSw093M8n66TmJVfX1TelJQssB4nLI4F+tI8wiWG
	MVh8WvleRRXaLyTX07ePc6SKamlowv6ilY+ulz3sYChHpahPCu/yZZfd/Kr6XGPFQhd72FMp/u+bE
	Ihfrm31w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w15I8-00000000ddM-3NLa;
	Fri, 13 Mar 2026 16:23:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w15I5-00000000dcp-2m8d
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 16:23:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1w15I3-00039Y-H7; Fri, 13 Mar 2026 17:23:07 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1w15I3-0006le-17;
	Fri, 13 Mar 2026 17:23:07 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1w15I3-0000000HHx3-13aL;
	Fri, 13 Mar 2026 17:23:07 +0100
Date: Fri, 13 Mar 2026 17:23:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <abQ56zuKfzKlZvcr@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_092310_026768_92E51965 
X-CRM114-Status: GOOD (  21.19  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: v2026.03.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


Hi All,

I am happy to announce barebox-2026.03.0

Most important thing first: There is a signed FIT image vulnerability
fixed with this release. If you are doing secure boot with signed FIT
images you should update to this release or the v2025.09 stable version
to be released later.

Other than that there are also some good things to announce. With this
version the Rockchip support grows by another SoC: The RK3562 along with
the KickPi K3 board.

USB Fastboot now supports to booting Linux Kernels generically. We
previously only had very limited ARM32 zImage support for that, now this
works across different architectures.

Our CI infrastructure gained support for testing PowerPC on Qemu. While
not widely used, it's nice to have some test coverage for that
architecture to prevent it from bitrotting.

As usual there are a lot of other changes, see below for a full list.

Have Fun!
 Sascha

Migration notes for Release v2026.03.0
======================================

ARM NXP i.MX8MP
---------------

On NXP i.MX8MP the SoC UID was read out wrong. It really is 128bit from which
barebox only read 64bit. barebox now does it correctly, but rolled out devices
might depend on the SoC UID being constant. In that case
CONFIG_ARCH_IMX8MP_KEEP_COMPATIBLE_SOC_UID should be enabled.

----------------------------------------------------------------
Ahmad Fatoum (87):
      net: phy: realtek: sync with Linux v6.19 state
      of: fdt: implement of_del_reserve_entry
      ARM: sm: fix repeated call to of_add_reserve_entry on every fixup
      bootm: delete initrd reserve entry on bootm_boot return
      video: stmfb: add screen base only once
      of: base: add new barebox,status property
      arm: dts: rk356x: rock3a: disable pcie3x2
      test: py: helper: return typed data from of_get_property
      test: py: add test with actual TFTP server
      serial: efi-stdio: fix repeated carriage return with putc callback
      KASan: turn warning into panic if CONFIG_BUG_ON_DATA_CORRUPTION=y
      commands: readlink: restore support for non-existent last component
      test: py: add dry run check for FIT image
      common: tlv: fix link error when CONFIG_NET is disabled
      test: py: strategy: disable EFI when booting barebox
      test: arm: modules32_defconfig: increase memory size
      include: array_size.h: make header self-contained
      serial: ns16550: add "ns16550" compatible string
      lib: stackprot: omit HAVE_STACKPROTECTOR for powerpc
      gpio: mpc8xxx: allow build on MPC85xx platforms
      mach-mpc85xx: speed: add fsl_set_timebase_clock() override
      powerpc: add QEMU ppce500 board support with CI test infrastructure
      test: add ARMv8 EFI app testing
      firmware: xilinx-fpga: fix double free in probe error path
      driver: fix missing va_end in dev_add_alias error path
      net: eth: avoid overlapping memcpy in eth_set_ethaddr
      pmdomain: fix dereference before NULL check in genpd_get_from_provider
      net: phy: add NULL check for phy driver in page accessors
      open: add missing mode argument to O_CREAT calls
      hush: add NULL check for gl_pathv after do_glob_in_argv
      i2c: rk3x: fix NULL pointer dereference on repeated NACK
      mci: imx-esdhc: remove misleading NULL check for cmd pointer
      mci: spi: initialize r1 to fix garbage return value
      ARM: stm32mp: lxa: reuse USB nodes from upstream DT
      commands: cd: implement support for cd - and $OLDPWD
      commands: test: add support for [[ -v var_to_check_existence ]]
      net: make default netboot artifact directory configurable
      ARM: configs: multi: enable CONFIG_BOOT_OVERRIDE
      efi: loader: reduce warning about non-persistent EFI variables to notice
      kconfig: add merge_into_defconfig_named to set CONFIG_NAME
      test: report used Labgrid environment and build dir
      test: 9p: switch security_model from mapped to none
      virtio: fix variable shadowing in virtqueue_add_sgs input scatter loop
      test: py: linux: use utilities available in Debian netinstall images
      test: test boot with Debian netinstaller CDROM image
      test: py: linux: remove test_ prefix for intermediate functions
      boot: aggregate bootentry provider entries one by one
      blspec: sort entries according to specification
      boot: give struct bootentry a path member
      commands: boot: support file path in boot -M for default entry
      test: self: add bootloader spec files test
      FIT: implement fit_count_images
      FIT: add image index argument to fit_open_image
      resource: implement gap-aware lookup_region
      bootm: give bootm_load_ functions an end address
      bootm: store separate image_type and kernel_type
      bootm: fit: move length calculation into fit_open
      libfile: factor out zero-page resistant read_file as __read_full_anywhere
      resource: implement resize_region
      bootm: rename image_data::os/initrd with _uimage suffix
      uimage: record original file name in uimage_handle
      bootm: factor out file detection into helper
      efi: payload: bootm: add dry run support
      efi: initrd: make efi_initrd_register initrd pointer param const
      clk: rockchip: add RK3562 clock and reset driver support
      pinctrl: rockchip: sync driver with Linux
      ARM: boards: Rockchip: add RK3562-EVB2 support
      commands: cat: add support for concatenating into file
      scripts: include: break dependency of list.h on kernel.h
      include: linux/printk.h: allow forcing log level per file
      images: allow suppressing missing firmware stderr output
      MAKEALL: add a new develop mode option
      commands: bootm: add proper support for boot script calling bootm
      MAKEALL: early exit if config specified, but no arch
      MAKEALL: devel mode: abort if no positional config
      MAKEALL: flock build directory to prevent concurrent builds
      test: py: network: await prompt after ctrl+c
      treewide: fix -Wformat-security warnings for run_command()
      jwt: fix buffer overflow and double-free in jwt_part_parse
      of: fdt: fix heap-buffer-overflow in fdt_machine_is_compatible
      Makefile: pass KBUILD_OUTPUT to pytest in check target
      test: py: network: preserve saved_log_level across _await_prompt
      powerpc: fix initjmp storing function pointer at wrong offset
      powerpc: qemu-ppce500_defconfig: increase malloc area to default 4 MiB
      test: selftest: mmu: skip mirroring tests when not supported
      of: fdt: refuse / in property and node names
      security: hide PBL_OPTEE_DTB_MAX_SIZE behind PBL_OPTEE

Fabian Pflug (2):
      ARM: i.MX: scratch: add generic init for imx
      ARM: i.MX6: load optee in PBL before barebox proper

Giandomenico Rossi (4):
      video: mipi-dbi: support for MIPI DBI Type C Option 1
      video: mipi-dbi: add display rotation support
      dt-bindings: display: panel: add Ilitek ILI9488 panel
      video: add Ilitek ILI9488 driver for WF35 panel

Hemanth Kumar M D (1):
      scripts: fix build failure with glibc 2.43

Jonas Rebmann (7):
      tlv: Add tlv_bind_soc_uid mapping
      bareboxtlv-generator: add raw "bytes"-format
      common: tlv clarify the difference between mac list and sequence
      common: tlv: Correct eth address list fixup
      ARM: stm32mp: Make ARCH_STM32MP13 and ARCH_STM32MP157 selectable
      Makefile: include scripts/ in compile_commands.json
      scripts: Kconfig: Update help text for ECDSA support

Marco Felsch (25):
      handoff-data: add missing include
      ARM: i.MX8MM: add MX8MM_PAD_CTL defines
      lib: hexdump: make use of pr_print
      ARM: i.MX8M: add support to pass DT via lowlevel __imx8m*_load_and_start_image_via_tfa()
      ARM: i.MX8M: move BL32 setup into imx8m_tfa_start_bl31()
      ARM: i.MX8M: imx8m_tfa_start_bl31() add support for bl33 and fdt
      pbl: decomp: add pbl_dtbz_uncompress helper
      pbl: fdt: add pbl_load_fdt helper
      ARM: i.MX: scratch: add FDT support
      ARM: mach-imx: tzasc: keep default region 0 secure settings for i.MX8M
      ARM: i.MX8M: esdctl: drop ddrc base from imx8m_ddrc_sdram_size
      ARM: i.MX8M: esdctl: export imx8m_ddrc_sdram_size()
      ARM: i.MX8M: add support to pass BL3x bl_params
      handoff-data: Add TEE_DT_OVL entry
      security: optee: add optee_handoff_overlay helper
      security: optee: add helpers to register OF overlays
      ARM: i.MX8M: Pass optional OP-TEE overlay to barebox
      of: base: register optional OP-TEE overlay
      serdev: add proper error cleanup to serdev_device_open()
      serdev: add serdev_device_close
      mfd: Add Hexagon EFI driver
      watchdog: Add Hexagon EFI watchdog driver
      commands: make run_command variadic
      treewide: make use of new run_command variadic
      ARM: i.MX8MM: add Hexagon Geosystems GS05

Renaud Barbier (4):
      net: gianfar: disable link information
      gianfar: apply checkpatch recommendations
      net:gianfar: add device tree support
      ARM: ls1021a: initial Ethernet and mdio configuration

Sascha Hauer (42):
      dts: update to v6.19-rc6
      introduce SoC UID
      libfile: copy_fd: add size argument
      soc: imx8mp: Soc ID is 128bit
      ARM: i.MX6: print leading zero for SoC ID
      nvmem: bsec: call barebox_set_soc_uid()
      nvmem: imx-ocotp-ele: call barebox_set_soc_uid()
      nvmem: ocotp: Fix SoC ID reading for i.MX8MP
      nvmem: imx-ocotp: call barebox_set_soc_uid()
      soc: imx8m: register SoC UID
      dts: update to v6.19-rc7
      dts: update to v6.19-rc8
      dts: update to v6.19
      bootm: add generic android image handler
      usb: fastboot: increase max answer size to 256
      regulator: fix handling of off_on_delay
      regulator: fixed: handle startup-delay-us property
      nvmem: k3: add regulator support
      mci: dw_mmc: Add pbl support
      mmu: add MAP_CACHED_RWX mapping type
      ARM: MMU: drop forced pagewise mapping
      ARM: pbl: MMU: drop unnecessary barebox mapping
      Merge branch 'for-next/blspec'
      Merge branch 'for-next/bootm'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/fixes'
      Merge branch 'for-next/layerscape'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/optee'
      Merge branch 'for-next/powerpc'
      Merge branch 'for-next/rk3562'
      Merge branch 'for-next/testing'
      Merge branch 'for-next/tlv'
      Merge branch 'for-next/video'
      pbl: console: implement vprintf()
      pbl: fix panic() message printing
      net: r8169: drain RX descriptor ring
      pbl: console: fix undefined reference to vprintf()
      booti: Use %pa to print a resource_size_t
      bareboxtlv-generator: make compatible to python < 3.12
      FIT: reconstruct hashed-nodes property during verification
      Release v2026.03.0

Sohaib Mohamed (11):
      ARM: rockchip: Add initial RK3562 SoC support
      ARM: boards: Rockchip: Add device tree for kickpi k3 board
      ARM: rockchip: Add RK3562 KickPi K3 board support
      pmdomain: rockchip: Add RK3562 power domain support
      aiodev: rockchip_saradc: Add RK3562 support
      phy: rockchip-inno-usb2: Add support for RK3562 PHY
      rockchip-rng: Add RK3562 support
      mci: sdhci: rockchip-dwcmshc: Add RK3562 support
      nvmem: rockchip-otp: Add RK3562 support
      phy: rockchip: inno-dsidphy: Add RK3562 support
      phy: rockchip: naneng-combphy: Add RK3562 support

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


