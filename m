Delivery-date: Mon, 24 Aug 2026 15:52:33 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyV6G-006igG-32
	for lore@lore.pengutronix.de;
	Mon, 24 Aug 2026 15:52:33 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 48B11201B02
	for <lore@pengutronix.de>; Mon, 24 Aug 2026 15:52:29 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=pIicHPNk;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:To:Subject:From:Message-ID:Reply-To:Cc
	:MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LvVOEFvlLtA+ObLs8rPeQVjB47jwLrjt+DLdkCg2kbQ=; b=pIicHPNkResb7O
	hflPM8cNH+1y+zo08J5mEzcAF4AE9pQcdouRgXcvL9FuP3AWUPP9tRb79Z/WM+z7uWxzPgoD93CBp
	Inkhg+g7RlX2bLRH13nR+rcHArsEcDJw3Pe7g/QcQHssuu4Hy6/tKgxus2ADGr4q4/LEkz8XlLRmL
	a2ftgyZQy64/rVsdSI+WkH33lnCifU0+oPA6YNyK+gUbm98OWoWqyIxeJWPC3jpPQnomlWoB1i4a6
	vQy/H261ANVm2UO4BXqtNQEwHzQs9hVUR+lBKWTTbiHAEDQTuNJ/fxMLAyeX58E5cK7l0VOScMciu
	cCug/t1AU/wnRdPp6TGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyV5L-0000000GjRn-2M8r;
	Mon, 24 Aug 2026 13:51:35 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyV5G-0000000GjRD-3x58
	for barebox@lists.infradead.org;
	Mon, 24 Aug 2026 13:51:33 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id DA9DC200393
	for <barebox@lists.infradead.org>; Mon, 24 Aug 2026 15:51:24 +0200 (CEST)
Message-ID: <5731db6e-573a-42f5-b740-eeb3f65bad5f@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: v2026.08.0
To: barebox@lists.infradead.org
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 24 Aug 2026 13:51:24 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_065131_161670_3A6AF329 
X-CRM114-Status: GOOD (  17.38  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi All, I just released barebox-2026.08.0. This release brings
    us a Kconfig/Kbuild update to Linux-6.18/6.17. Also there we now have PCI
    based XHCI and SDHCI driver, primarily for use with Qemu. One new board is
    supported, the Gira NCP Panel. [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: 166wywtzobird786draqp5681bhjjcnh
X-Spamd-Result: default: False [-5.41 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MISSING_MIME_VERSION(2.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US]
X-Rspamd-Queue-Id: 48B11201B02

Hi All,

I just released barebox-2026.08.0.

This release brings us a Kconfig/Kbuild update to Linux-6.18/6.17. Also
there we now have PCI based XHCI and SDHCI driver, primarily for use
with Qemu. One new board is supported, the Gira NCP Panel. Last not
least barebox now extlinux.conf which is a plain text configuration file
also used by U-Boot and syslinux to load kernel. initrd and device tree
from disk.

Other than that several other changes went into this release, see below
for a full list of patches.

Have Fun!
  Sascha

Migration notes for v2026.08.0
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D

global.partitions.first_usable_lba removed
------------------------------------------

The ``global.partitions.first_usable_lba`` variable has been removed.
Use ``global.partitions.first_partition_offset`` instead.

The new variable is a byte offset used by free-space searches for new
partitions, for example ``parted mkpart_size``. The default is
``8388608`` bytes (8 MiB). To keep an old configuration, multiply the
old ``first_usable_lba`` value by 512.

ARCH=3Darm64
----------

Use of ``ARCH=3Darm`` for 64-bit ARM builds is deprecated and now emits
a warning. Users should change build scripts to use ``ARCH=3Darm64``
instead when targetting ARMv8.

----------------------------8<------------------------------

Ahmad Fatoum (89):
      kbuild: add dependency for .security_config
      kbuild: do not re-enter top-level Makefile with different config
      kbuild: centralize dead code elimination into CONFIG_LD_DEAD_CODE_DAT=
A_ELIMINATION
      genenv: resolve paths relative to the $srctree
      kbuild: sync with Linux v6.17
      kbuild: add musl-gcc support
      sandbox: drop duplicate inclusion of scripts/Kconfig.include
      scripts: import headers to prepare kconfig sync
      kconfig: sync with Linux v6.18
      kbuild: sconfig: turn unknown security policy symbols into errors
      kconfig: add config fragment support for common/boards
      kbuild: bbenv: fill out savedcmd
      kbuild: remove all dummy assignments to obj-
      scripts: config: sync with upstream
      kbuild: show compiler version in 'version' command
      sandbox: move -fvisibility=3Dhidden from sandbox to PBL
      ARM: deprecate use of ARCH=3Darm for arm64 builds
      Makefile: clang: fix triplet computation for ARM
      ARM64: suppress -mabi=3Dlp64 when built with clang
      efi: loader: fix format string for ARM32
      ARM: stm32mp: enable useful options for the LXA Fairy Tux2
      ARM: stm32mp: lxa: change stdout-path baud rate from 9600 to 115200
      pinctrl: generic: rename PIN_CONFIG_OUTPUT to LEVEL
      ARM: mmu: skip cacheable page flushes for empty ranges
      usb: hub: wait after port reset recovery
      usb: wait after initial device descriptor read
      usb: wait after setting device configuration
      usb: separate descriptor and config requests
      usb: hub: tolerate transient disconnects during reset
      ci: container: add FAT image tools to container
      ci: container: enable rustc and bindgen in container
      nvme: use barebox-appropriate 64-bit type for timeouts
      nvme: fix buffer advancement when chunking due to max_hw_sectors
      nvme: allow flush opcode
      nvme: honor namespace block size for I/O
      bootscan: fix detection of GPT
      block: clarify that writebuffer_io_len returns sector counts
      block: fix wrong type for discard_start/size byte ranges
      block: fix discard zeroing too little memory
      block: use logical block size for reparse checks
      block: require lower bound of sector size to be 512 bytes
      filetype: don't hardcode sector size in file_detect_partition_table
      block: define helpers for non-512-byte sector support
      bootscan: use block size for partition table probe
      ramdisk: validate exported sector size
      efi: block: fix sector size mismatch in block device registration and=
 ops
      efi: loader: disk: report block device size in Block I/O
      efi: loader: file: report cdev block size in file info
      partitions: use byte offset for first partition policy
      partitions: dos: allocate correctly sized buffer for dos_partition_de=
sc
      partition: support non-512 byte sectors
      fs: fat: fix garbage read when writing with bigger block size
      fs: fat: support larger block device sectors
      usb-storage: preserve READ CAPACITY sector size
      fuzz: add 4K-sector partition ramdisk target
      commands: parted: prepare use of non-512-byte sectors
      commands: parted: exit if block size if not 512
      bootm: include origin of device tree in verbose output
      scripts: duplicate conftest.py as qemu_interactive.py
      test: move interactive QEMU launcher out of pytest
      usb: xhci-hcd: add XHCI over PCI driver
      scripts: qemu_interactive.py: add new --usbblk option
      scripts: qemu_interactive.py: add new --nvmeblk option
      mci: do not look up OF partitions for DT-less host controllers
      mci: sdhci: define same SDHCI_INT_* constants as Linux
      mci: add PCI SDHCI controller support
      ARM: multi_v8_defconfig: enable more MMC support
      scripts: qemu_interactive.py: add new --sdblk and --emmcblk options
      common: fastboot: make CONFIG_FASTBOOT_SPARSE=3Dy the default
      dma: return NULL on dma_alloc_coherent failure
      nvme: fix PRP pool resize before first use
      nvme: pass device to dma dma_alloc/free_coherent
      partitions: efi: validate complete GPT entry array
      efi: fix GetNextDevicePathInstance trace argument
      efi: loader: coalesce overdue periodic timers
      video: fb: mirror cdev writes to shadow buffer
      test: kvx: add Labgrid env YAML for generic_defconfig
      kvx: select DEAD_CODE_DATA_ELIMINATION
      dma: fix dma_realloc_coherent compile-time error on kvx
      kbuild: drop duplicate CONFIG_LD_DEAD_CODE_DATA_ELIMINATION block
      commands: fix typos and punctuation in help texts
      commands: fix stale option strings in usage lines
      commands: fix wrong and incomplete help texts
      Documentation: gen_commands: deduplicate entries from multiple defini=
tions
      of: only replace a device tree that is actually tentative
      tlsf: unpoison whole block in malloc_usable_size()
      partitions: dos: bound extended partition chain
      of: fdt: bound node nesting depth in __of_unflatten_dtb
      scripts: make build compatible with OpenSSL v4.0

Alexander Shiyan (2):
      Add support for extlinux.conf
      Documentation: add extlinux.conf support description

Bastian Krause (3):
      ARM: nxp-imx93-frdm: use tabs instead of spaces
      ARM: nxp-imx93-frdm: add bbu handler for eMMC
      ARM: dts: i.MX8MP FRDM: remove memory node

Bruno Knittel (1):
      scripts: gdb: fix missing pbl_barebox_break error message

Ingo Reitz (1):
      video: backlight-pwm: parse num-interpolated-steps

Johannes Schneider (10):
      clk: imx8mp: add 1039.5 MHz and 519.75 MHz rate entries for VIDEO_PLL1
      video: lcdif: make functional on i.MX8MP
      video: lcdif: default to RGB888_1X24 on VPL_GET_BUS_FORMAT failure
      video: simple-panel: support panel-lvds DT bindings
      video: simple-panel: lazily resolve backlight without failing
      mci: imx-esdhc-pbl: clear stale INT_STATUS before first PBL transfer
      lib: gui: png_pico: fix use-after-free and double-free in png_open
      commands: mmc: add mmc-utils compatible enh_area set subcommand
      dma: make dma_mapping_error NULL-device safe
      video: lcdif: skip framebuffer registration when no display modes ava=
ilable

Lucas Stach (7):
      mfd: rn5t568: rename to rn5t618
      mfd: rn5t618: use defined compatibles
      mfd: rn5t618: demote probe message to debug level
      mfd: rn5t618: wait a bit after triggering restart
      watchdog: RN568: rename to rn5t618
      rn5t618: mfd/watchdog: switch to mfd device population
      ARM: boards: add Gira NCP

Michael Tretter (5):
      arm: socfpga: replace custom UART with ns16550
      arm: socfpga: get rid of UART address for low-level debug
      arm: socfpga: axe5-eagle: always use UART0
      clk: socfpga: sync arria10 clock initialization with kernel
      clk: socfpga: remove clk-phase setting

Sascha Hauer (28):
      usb: dwc2: Do not print error messages when URBs are nacked
      usb: dwc2: handle NAK when CHHLTD does not fire
      usb: dwc2: fix data toggle reset direction on ClearFeature(ENDPOINT_H=
ALT)
      dts: update to v7.2-rc1
      dts: update to v7.2-rc2
      fs: devfs: make cdev_find_free_index() return 0 instead of an error
      usb: storage: add usbdisk alias for USB storage devices
      ARM: dts: imx8mp-debix: use upstream dts files directly
      dts: update to v7.2-rc3
      dts: update to v7.2-rc4
      dts: update to v7.2-rc5
      net: phy: defer PHY reset settle time off the boot path
      watchdog: rti_wdt: remove trailing whitespaces
      Merge branch 'for-next/arm'
      Merge branch 'for-next/block-4k'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/kbuild-sync'
      Merge branch 'for-next/mci'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/socfpga'
      Merge branch 'for-next/usb'
      Merge branch 'for-next/video'
      dts: update to v7.2-rc6
      dts: update to v7.2-rc7
      dts: update to v7.2
      Merge branch 'for-next/dts'
      Release v2026.08.0

Steffen Trumtrar (2):
      clk: socfpga: sync clock structs with kernel
      clk: socfpga: agilex5: sync with kernel

Thomas Bonnefille (1):
      ci: container: build openssl against musl

Thomas Haemmerle (5):
      clk: imx8mp: add 700 MHz rate entry for VIDEO_PLL1
      pmdomain: imx8mp-blk-ctrl: add media blk-ctrl power domain support
      video: backlight-pwm: make power-supply and enable-gpio optional
      video: lcdif: use 128B AXI bursts to avoid right-edge gap
      video: lcdif: drain write-combine framebuffer in fb_damage


--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



