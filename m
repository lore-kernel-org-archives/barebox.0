Delivery-date: Tue, 19 May 2026 21:37:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPQGD-001bUi-3B
	for lore@lore.pengutronix.de;
	Tue, 19 May 2026 21:37:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPQGC-0006e2-N8
	for lore@pengutronix.de; Tue, 19 May 2026 21:37:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:To:Subject:From:Reply-To:Cc:
	MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QuVH9DUQKGjjN6vAzdfEqvcn9WM5BPmwCaMaC+yTgds=; b=tn/ocOKlGtNIBH
	GLjf7VPkbFRhK4p1AY6wVqblqUVlv8aN+98my1VPFuhttGhscy+SpnoyacmG+8w+ogDM97yDdCGfw
	D79AyoDgLuy15VdULFGeQoMpzCn98jZdrOtiEbF3q+OiWITwWQIgvH3ysnBHHhbTDFsbUc40amLty
	VWlqY4zZ0BHuj/CkS2leCcbfJ0wPEZJsOsk/Ly+mt2b/AeW1oCDdVAT4Tz5SN3y7hH5zP/3OROp30
	ifje1KH8RJHfhB7LEvYPN2LBmwZtqzA3PvugI692QPZpKCNqSsk656aZN1yUWFUbNL1BXuc06EPyy
	34VXdormRKu7SVDpz38A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPQDT-00000002dF5-1IfK;
	Tue, 19 May 2026 19:34:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPQDP-00000002dEO-2861
	for barebox@lists.infradead.org;
	Tue, 19 May 2026 19:34:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wPQDN-0006M5-Jp
	for barebox@lists.infradead.org; Tue, 19 May 2026 21:34:53 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wPQDM-000oPt-3C
	for barebox@lists.infradead.org;
	Tue, 19 May 2026 21:34:53 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wPQDN-0000000HNwn-1uvZ
	for barebox@lists.infradead.org;
	Tue, 19 May 2026 21:34:53 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 19:34:53 +0000
Message-Id: <E1wPQDN-0000000HNwn-1uvZ@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_123455_698601_3EE7C44A 
X-CRM114-Status: GOOD (  19.78  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: v2026.05.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi All,

Here comes the barebox May Release - barebox-2026.05.0.

Our testing before releases has vastly improved over the last year(s)
which I can see clearly in the amount of regression fixes we need to do
before a release. This is good news as we detect and fix many
regressions before they go into a release, but of course also means more
work for us.

This release has some improvements that have the potential to make
the binaries smaller. builtin firmware files like TF-A or OP-TEE can now
be compressed. Decompression can be painfully slow on ARM without MMU,
so we also added very early MMU support to not hurt startup time too
much. Both features have been driven by the Rockchip support, they are
actively used there. Others would need additional SoC/board support to
use them.

Michael Tretter landed quite some SoCFPGA patches into this release,
mostly early startup cleanups. Thanks for that, I hope there are fewer
pitfalls in the code now.

Other than that the usual patch flow, fixes and cleanups, see below for
a full list.

Have Fun!


Migration notes for v2026.05.0
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D

CONFIG_CRYPTO_PUBLIC_KEYS
-------------------------

The syntax of keytoc keyspecs when fully provided via an environment variab=
le
was slightly changed to allow any number of keyspecs to be provided via an
environment variable. Such environment variables are now split at spaces to=
 be
interpreted as multiple keyspecs. Any literal spaces and backslashes contai=
ned
in such keyspecs need to be escaped with a backslash.

This only applies to the form:

  CONFIG_CRYPTO_PUBLIC_KEYS=3D"__ENV__A"

While the interpretation of environment variables specifying hint or URI re=
mains unchanged:

  CONFIG_CRYPTO_PUBLIC_KEYS=3D"keyring=3Dkr:__ENV__B"

Fit hints can no longer be specified by environment variables using the __E=
NV__
syntax. This functionality was broken since the last change to the keyspec
syntax in 2025.12.

register_simplefb parameter
---------------------------

The ``register_simplefb`` parameter on framebuffer devices has changed from
boolean to an enum with values ``disabled``, ``enabled``, and ``stdout-path=
``.

Scripts that **read** the parameter will now receive ``"disabled"`` or
``"enabled"`` instead of ``"0"`` or ``"1"``.

Scripts that **write** ``"0"`` or ``"1"`` continue to work.

----------------------------------------------------------------
Ahmad Fatoum (39):
      state: suppress state overwrite warning for barebox DT
      console: return characters written from console_putc
      stddef: implement scoped_var for use in iterators
      console: have for_each_console declare the iterator internally
      console: make console_puts and friends accept a console_device
      console: implement console_putc in terms of console_putbin
      console: implement console_printf
      commands: dmesg: give log_print a console_device parameter
      video: simplefb: add r5g5b5a1 and x8b8g8r8 formats to SIMPLEFB_FORMATS
      video: simplefb-fixup: use shared SIMPLEFB_FORMATS table
      parameter: allow enum params to be set by numeric index
      video: simplefb-fixup: add stdout-path mode to register_simplefb param
      Documentation: add OpenBSD booting guide
      gpio: have gpio_chip::set return an error code
      gpiolib: propagate errors from gpiod_set_(raw_)?value
      regmap: align dev_get_regmap error return with Linux
      usb: dwc2: remove non-existent brcm,bcm2708-usb compatible
      serial: introduce clk_get_enabled_for_console()
      clk: ignore -EPROTO in clk_get_enabled_if_available
      firmware: arm_scmi: clock: sync with Linux v7.0
      environment: support DT-compatible-specific overlays
      sandbox: add a match.of_compatible directory to exercise the feature
      efi: payload: image: exit if kernel image returned
      efi: payload: bootm: fix potential double-unload for image
      ppc: define sync_caches_for_execution only for MPC85xx
      riscv: make header self-contained
      mem: add flush callback to sync caches for execution
      efi: gop: use screen_base directly instead of shadow buffer
      kfifo: do not allocate a fifo smaller than 2 bytes
      Documentation: user: use matrix.to instead of element.io link
      ARM: dts: stm32mp: stm32mp135-dk: disable button on PA13
      efi: payload: handle NULL return from loadable_view for ramdisk
      fs: fix memory leak in automount_add()
      mci: atmel_mci: fix mci_pbl breakage after mci_cmd::data change
      ARM: i.MX8: esdctl: fix breakage for multi-SoC i.MX8M
      startup: point out that /env/bin/init is legacy
      doc: user: barebox: update typical barebox startup log
      ci: pytest: bump Debian installer image to 13.5
      serial: ns16550: add missing Linux console names

Anees Rehman (1):
      ARM: i.MX7: DDR size detection off-by-one in row_max

Chali Anis (1):
      usb: dwc2: host: initialize sub to fix maybe-uninitialized warning

David Jander (3):
      arm: mach-imx: esdctl.c: Add support for imx8mp inline ECC
      drivers: ddr: imx8m: ddr_init.c: support ECC scrubbing
      arm: boards: protonic-imx8ml: Add ECC + scrubbing

Fabian Pflug (3):
      ARM: i.MX: atf: pass scratch fdt if configured
      arm: i.mx: fix error in field return configuration
      doc: tlv: add images and custom format documentation

Gavin Schenk (1):
      docs: migration-guides: Fix typo

Jonas Rebmann (9):
      scripts: include: Add string_util.h for strsep_unescaped
      crypto: keytoc: Improve readability
      crypto: keytoc: Move special handling of legacy pkcs11 format to pars=
e_keyspec
      crypto: keytoc: Parse all keyspecs before writing to stdout
      crypto: keytoc: Split env-provided full keyspec on spaces
      Documentation: migration-guides: Document change in keyspec env vars
      crypto: keytoc: Allow fields to start with underscore
      crypto: keytoc: Deprecate fit-hint from env variable
      crypto: ecc: Add Origin-URL to document kernel revision

Lukas Wunner (1):
      crypto: ecdsa - Harden against integer overflows in DIV_ROUND_UP()

Michael Tretter (27):
      mci: cadence: fix device tree override of host_caps
      arm: socfpga: iossm: remove uninitialized variable
      arm: socfpga: iossm: add version check
      arm: socfpga: iossm: use local mb_ctrl variable
      arm: socfpga: iossm: store size in bytes
      arm: socfpga: iossm: refactor io96b_mb_init
      arm: socfpga: iossm: refactor return value handling
      arm: socfgpa: iossm: extract poll_bist_mem_init_status
      arm: socfgpa: iossm: extract initialization of one interface
      arm: socfpga: iossm: add memory initialization with inline ecc
      arm: socfpga: iossm: add support for mailbox v1
      arm: socfpga: iossm: make io96b_cal_status static
      arm: socfpga: iossm: use readl_poll_timeout
      arm: socfpga: iossm: remove duplicate read of response status
      arm: socfpga: iossm: remove multiple read of status_addr
      arm: socfpga: iossm: change io96b_csr_addr to void *
      arm: socfpga: iossm: extract io96b_mb_init_instance
      arm: socfpga: agilex5: cleanup TF-A loading
      arm: socfgpa: agilex5: remove unused memsize
      arm: socfpga: agilex5: configure firewall with base and size
      arm: socfpga: agilex5: fix read of memory limit
      arm: socfpga: agilex5: fix SDRAM size calculation
      arm: socfpga: agilex5: remove unused declarations
      arm: socfpga: agilex5: read SDRAM limits from firewall
      arm: socfpga: agilex5: add agilex5_barebox_entry
      arm: socfpga: agilex5: add explicit unreachable after TF-A load
      Documentation: rk35xx: add secure boot documentation

Sascha Hauer (50):
      ARM: socfpga: Drop unnecessary select USE_COMPRESSED_DTB
      ARM: radxa-rock5: Use compressed DTB
      ARM: Rockchip: Simplify retrieval of SoC specific addresses
      firmware: Move firmware assembly generation to scripts/gen-fw-s
      firmware: Use struct fwobj for get_builtin_firmware APIs
      ARM: radxa-rock5t: Disable pcie3x2
      optee: Explicitly ignore OPTEE_RPC_CMD_RPMB_*
      pmdomain: rockchip: inform about missing subdomain support when in use
      nvmem: rockchip-otp: implement SoC UID reading
      ARM: rockchip: atf: add missing newline in message
      firmware: Add compressed firmware symbols for PBL
      firmware: Add fwobj_uncompress() for decompressing firmware in PBL
      ARM: Rockchip: Use compressed OP-TEE binary
      ARM: Rockchip: Use compressed TF-A binary
      optee: skip registration of already known TEE bus devices
      Merge branch 'for-next/compressed-firmware' into for-next/rockchip
      ARM: rockchip: dmc: rework DRAM functions
      ARM: rockchip: atf: make all memory banks available
      ARM: rockchip: atf: add OP-TEE fdt creation function for all SoCs
      ARM: Rockchip: Drop rk3xxx_atf_load_bl31()
      ARM: rockchip: separate physical DRAM start from usable start
      ARM: rockchip: atf: enable MMU in PBL
      ARM: tqmls1046a: Add Arkona AT300 support
      v2026.04.0: Move migration guide to correct place
      Merge branch 'for-next/arm'
      Merge branch 'for-next/compressed-firmware'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/keys'
      Merge branch 'for-next/mci'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/optee'
      Merge branch 'for-next/rockchip'
      Merge branch 'for-next/socfpga'
      Merge branch 'for-next/usb'
      fs: set linux.bootargs.rootopts only when existing
      ARM: rockchip: atf: only set OP-TEE address when starting it
      ARM: rockchip: dmc: substract ROCKCHIP_DRAM_TFA_CARVE_OUT from memory=
 regions
      ARM: rockchip: atf: pass correct memsize to mmu_early_enable()
      ARM: fix wrong calculation of barebox base
      riscv: fix wrong calculation of barebox base
      ARM: k3: am62x: move stack to end of SRAM
      ARM: k3: am62x: make more space for r5 barebox binary
      ARM: k3: k3-r5_defconfig: limit image size to maximum available space
      PBL: add common define for early malloc size
      pbl: cleanup early malloc
      ARM: rockchip: initialize PBL malloc
      pbl: mips/riscv compile fixes
      fs: jffs2: zero initialize allocated inode
      fs: ubifs: zero initialize allocated inode
      Release v2026.05.0

Stefan Berger (1):
      crypto: ecc - Fix off-by-one missing to clear most significant digit

Steffen Trumtrar (8):
      ARM: i.MX: esdctl: fix spelling of ad(d)ress
      mci: add data segment to mci_cmd
      mci: sdhci: add sdhci_send_cmd
      mci: sdhci: add set_uhs_signaling callback
      mci: cadence: remove driver
      mci: cadence: add support for version 6
      ARM: socfpga-agilex5_defconfig: enable cadence-sdhci
      scripts: ls1046a-rcwtool: add functions to generate RCW

Thorsten Blum (1):
      crypto: ecc - Streamline alloc_point and remove {alloc,free}_digits_s=
pace

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


