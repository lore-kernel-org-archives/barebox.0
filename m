Delivery-date: Tue, 18 Jan 2022 10:25:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9kjt-005Qsd-Ir
	for lore@lore.pengutronix.de; Tue, 18 Jan 2022 10:25:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9kjr-0007KC-Ae
	for lore@pengutronix.de; Tue, 18 Jan 2022 10:25:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:MIME-Version:Message-ID:Subject:To
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XekBviVhKV08VKxrlqE9Qrs/g6ptOC/8nIAi5Vfg8FE=; b=gswDuJhSs/rPmV
	R8/cLzRaXt1lpzGkoQh/ow9TA+PrbgxaJxkwTxy+gHWrlJbPFB1c4sdFvvoVQBVpSLNhtV6bIS3/5
	QLM6/bENGiMdhymNqrMNMK5opGdrcF4ACnxf+bPVapQETMcVhZllzZpPQnKSd2TVsNshnGy5cmjDs
	EA3QfG+otxVy4+qbVCLB1sFV9RP0vW8jHjubboUCRPnvDpf1Kt6a0dQTjFrvFog3QRmqKALCoMqLA
	yE+76Y0Kub6kpE2FyW3xmariqyFz7WcZwPjAz84TNB6h+AkrNa/JesamqfY5LJ7pwgKhS58FxtVgR
	hgCMQb4r9OFqz2EgtFtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9kiF-000ss6-Um; Tue, 18 Jan 2022 09:23:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9kiA-000srH-Kf
 for barebox@lists.infradead.org; Tue, 18 Jan 2022 09:23:32 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n9ki9-0007BN-5e; Tue, 18 Jan 2022 10:23:29 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n9ki8-0004jR-TH; Tue, 18 Jan 2022 10:23:28 +0100
Date: Tue, 18 Jan 2022 10:23:28 +0100
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <20220118092328.GG23490@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:42:14 up 38 days, 17:27, 77 users,  load average: 0.08, 0.31, 0.31
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220118_012330_871670_B2ACBD1F 
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: v2022.01.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi All,

I am happy to announce that barebox-2022.01.0 is out. The biggest
changes are in the area of EFI this time. The EFI screen output handles
a lot more control sequences now and thus feels much better. If you're
using barebox on EFI try it out. Other than that Michael added support
for the Quartz64 board which offers a cheap possibility to try barebox
on a shiny new Rockchip RK3568 SoC. As usual many more small changes went
into this release, see below.

Have Fun!
  Sascha

----------------------------------------------------------------
Ahmad Fatoum (72):
      pci: add ECAM generic controller support
      ARM64: qemu-virt: enable PCI support
      ARM64: qemu-virt64: extend config for PCI, Virt I/O and more
      of: address: mark 64-bit PCI resources explicitly as such
      fs: remove useless AT_FDCWD references
      fs: remove unused struct node_d in struct dir
      block : efi: rename driver variable from efi_fs_driver to efi_bio_dri=
ver
      include: <linux/types.h>: wrap in #ifndef __ASSEMBLY__
      hw_random: stm32: propagate error codes from rng read
      efi: align LOAD_FILE_PROTOCOL_GUID's name with other PROTOCOL_GUIDs
      asm-generic: move sync_caches_for_execution declaration to <asm/cache=
.h>
      common: move EFI code into new efi/ top level directory
      serial: efi-stdio: move efi-stdio.h header to central location
      efi: use SPDX-License-Identifier where appropriate
      drivers: efi: move Kconfig options to new menu
      efi: factor out errno translation
      efi: rename <efi/efi.h> to <efi/efi-payload.h>
      efi: centralize efivarfs_parse_filename
      kbuild: force 16-bit wchar_t treewide
      include: <linux/nls.h>: remove duplicate wchar_t typedef
      lib: wchar: add wctomb and mbtowc
      lib: implement wcsnlen
      RISC-V: enable HW_HAS_PCI
      RISC-V: configs: virt: enable networking and PCI
      RISC-V: LiteX: fix comment about running from ROM
      driver: implement dev_err_probe()
      commands: devinfo: Omit parent if direct descendent of bus
      envfs-core: write to log where appropriate
      test: emulate.pl: fix typo in help text
      of: skip machine device creation on subsequent of_probe
      of: base: improve documentation of global exports
      ARM: Rockchip rk3568 EVB: git ignore sdram-init.bin
      phy: rockchip-inno-usb2: add support for older rockchip SoC bindings
      RISC-V: virt: add DEBUG_LL support
      state: mark state init errors specially
      state: make first boot less verbose
      of: overlay: rescan aliases calling of_overlay_apply_tree on live tree
      ARM: qemu: enable deep probe support
      ARM: qemu: move board code to central location
      common: boards: qemu-virt: genericize to support non-ARM architectures
      RISC-V: qemu-virt: add overlay for environment and state
      clk: bulk: improve error message on failure to get
      of: make of_dump abortable by ctrlc()
      commands: of_diff: don't mix tabs and spaces for indentation
      include: <linux/build_bug.h>: define static_assert
      crypto: crc32: add big endian CRC implementation
      vsprintf: add optional support for %ls format modifier
      libfile: null-terminate read_file of wchar_t buffer
      commands: echo: add wide file output via wecho alias
      efi: make efi_main __noreturn
      efi: define and use new EFI_ERROR_MASK macro
      common: move CONFIG_ELF into General Settings
      efi: don't zero executable buffer before freeing
      partitions: efi: move header to central location
      efi: print early efi_main string on CONFIG_DEBUG_LL=3Dy
      ARM64: board-dt-2nd: remove no longer needed noinline function split
      bus: acpi: register bus even if without ACPI EFI table
      efi: guid: fix typos
      misc: sram: remove duplicated resource handling code
      vsprintf: add support for printing raw buffers as hex (%*ph)
      common: add new PRINTF_FULL option
      of: implement new of_property_sprintf
      pwm: atmel: point MMIO accesses at correct address
      clk: fixed: record parent name in clk_register_fixed_rate
      imx-bbu-nand-fcb: suppress compiler warning about uninitialized use
      regulator: fix broken reference counting on disable
      RISC-V: cpu: fix build with CONFIG_RISCV_EXCEPTIONS=3Dn
      net: cpsw: add support for new binding in Linux v5.15-rc1 DTs
      Revert "ARM: beaglebone: init MPU speed to 800Mhz"
      x86: <asm/io.h>: fix outl/outsl access size
      pinctrl: Rockchip: abort GPIO probe gracefully on out-of-range alias =
id
      of: add trailing 0 in of_property_sprintf()

Andrej Picej (5):
      ARM: configs: imx_v7_defconfig: add OF commands
      ARM: configs: imx_v7_defconfig: add OCOTP write support
      regulator: allow use of dummy regulator
      ARM: dts: imx6qdl: pfla02: use dummy regulators
      documentation: regulator: add allow-dummy-supply

David Jander (1):
      arm: boards: Add support for PRTT1x STM32MP151 based boards

Enrico Jorns (1):
      regulator: respect "regulator-always-on" property

Enrico Scholz (1):
      usb:chipidea-imx: honor "phys" dtree property

Ian Abbott (1):
      ARM: socfpga: Set reset-names property for &mmc

Jules Maselbas (1):
      debug_ll: ns16550: Fix interrupt disable on init

Lucas Stach (1):
      clk: ignore of_device_ensure_probed error in clock lookup

Masahiro Yamada (5):
      kbuild: remove unneeded -nostdlib flag
      x86: remove x86-specific cmd_barebox__
      x86: stop copying unneeded sections to barebox.efi
      x86: reuse cmd_objcopy to generate barebox.efi
      x86_64: do not pass the EFI image handle or system table to relocation

Michael Riesch (2):
      arm: rockchip: add support for the quartz64 board
      pinctrl: rockchip: use alias rather than full of name

Oleksij Rempel (2):
      ARM: stm32mp_defconfig: Enable Protonic STM32MP1 boards
      nvmem: bsec.c: add optional permanent write support

Roland Hieber (3):
      drivers: mci-bcm2835: remove useless comment
      drivers: migrate "GPL-2.0" license identifiers to SPDX 2.0
      drivers: migrate "GPL-2.0+" license identifiers to SPDX 2.0

Sascha Hauer (36):
      dts: update to v5.16-rc1
      ARM: rockchip_v8_defconfig: Enable Quartz64 board
      dts: update to v5.16-rc3
      dts: update to v5.16-rc5
      efi-devicepath: Make efi_device_path argument const
      efi: move device-path defines and types to header file
      efi: Implement device_path_to_subtype()
      efi: Do not register IPv[46] devices
      console: Fix message colours
      efi-stdio: remove unnecessary check
      efi-stdio: rename to efi_process_escape
      efi-stdio: return bytes actually consumed
      efi-stdio: fix escape sequence end detection
      efi-stdio: improve escape sequence parsing
      efi-stdio: Fix out of bounds error in puts
      efi-stdio: Fix tab printing
      efi-stdio: Implement efi_console_putc() using efi_console_puts()
      efi-stdio: Fix '\b' handling
      efi-stdio: implement input buffering with a kfifo
      efi-stdio: limit set_cursor to screen size boundaries
      efi-stdio: implement getting the cursor position
      efi-stdio: Implement setting cursor visibility
      efi-stdio: Support different text modes
      edit: improve screen size detection
      edit: Improve behaviour on efi-stdio console
      edit: send escape sequence only for smartscroll
      net: efi-snp: Check for carrier before sending
      efi: add efi_device hook to be called before an image is started
      net: efi-snp: Open protocol exclusively
      Merge branch 'for-next/dts'
      Merge branch 'for-next/efi'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/rockchip'
      Merge branch 'for-next/x86'
      Release v2022.01.0

Stefan Riedmueller (1):
      flash-header-phytec-pcl063: Set SOC voltage to 1.25 V during boot

Ulrich =D6lmann (1):
      scripts: Kconfig: fix typo

Uwe Kleine-K=F6nig (2):
      scripts/kwboot: Fix normalizing timeval
      mci: bcm2835: Don't send MMC_CMD_GO_IDLE_STATE at the end of .init()

 =

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

