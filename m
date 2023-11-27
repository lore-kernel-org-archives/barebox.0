Delivery-date: Mon, 27 Nov 2023 13:49:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7b3e-00AwVC-2Q
	for lore@lore.pengutronix.de;
	Mon, 27 Nov 2023 13:49:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7b3e-00033V-BA
	for lore@pengutronix.de; Mon, 27 Nov 2023 13:49:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:Content-Type:
	MIME-Version:Message-ID:Subject:To:Date:Reply-To:Cc:Content-Transfer-Encoding
	:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=kE62fdRqpGCgxBIdxnvmz5Lp+TtJBGXasYmmN6MZquE=; b=bwEzYSYUu2niTkQmMuDUbgaUkE
	ye6xlssHr8ReqS/TrLKBpU1C7HNaXCFTfyJoLRwkYuB/6hZ2MsgvIOEcE+D45lZkoFA+beo0Em/Ym
	S8tvNlFZUd4LfAbPiI7wpkvgBZmiNSWlOOSZtb/cYjk0Y6wJ7++bTSFRa0jswjqjs98WSNH2eJup7
	z2NSS+FedsRaQfiFj3ze98Kz5F/SW5LrrtJqdfI9IsWalsQsrmqItFNMRdQQJUxZijYO3AMpnu6Fb
	LiCyTmgqaytofBYxRRJcNZw8dENjUUVLmx+YJzprrYL7mupRkgK7IyFa+I+YApmYnOjriovUvyHNJ
	vG0y7f3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7b1u-002U2H-2M;
	Mon, 27 Nov 2023 12:48:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7b1c-002U0M-0L
	for barebox@lists.infradead.org;
	Mon, 27 Nov 2023 12:48:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r7b1a-0002mC-53; Mon, 27 Nov 2023 13:47:42 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r7b1Z-00BwmN-Ov; Mon, 27 Nov 2023 13:47:41 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r7b1Z-0045wl-Md; Mon, 27 Nov 2023 13:47:41 +0100
Date: Mon, 27 Nov 2023 13:47:41 +0100
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <20231127124741.GX3359458@pengutronix.de>
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
X-CRM114-CacheID: sfid-20231127_044758_677290_BFCED43F 
X-CRM114-Status: GOOD (  19.15  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: v2023.11.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi All,

I am happy to announce barebox-2023.11.0!

There are not many user visible changes in this release. One of
the nice things is that the i.MX HAB enabled images can now also be used
for Booting from QSPI. Another one is that there's one more AT91 board
that has been converted to device tree which means one step forward to
make the AT91 boards dt-only one day. Other than that there are assorted
fixes and improvements all over the place, see below.

Have fun!
 Sascha

----------------------------------------------------------------
Ahmad Fatoum (57):
      tlsf: turn static const variables into compiletime constant expressions
      tlsf: ensure malloc pool is aligned
      tlsf: fix sizeof(size_t) == sizeof(void *) assumption
      tlsf: give malloc 8-byte alignment on 32-bit as well
      common: malloc: ensure alignment is always at least 8 byte
      test: self: refactor to allow alignment check
      test: self: malloc: fix memory leaks
      of: platform: don't fail of_find_device_by_node() if no driver bound
      ARM: i.MX8M: don't print TF-A version
      video: edid: print debug message on EDID read out error
      Revert "mtd: nand: drop DT support in legacy driver"
      ARM: at91: add SDRAMC driver for memory detection
      ARM: at91: at91sam9_rst: add DT support for at91sam9260
      ARM: at91: sam9260: don't build non-DT device support when unneeded
      ARM: at91: add first DT support for Calao usb/tny boards
      globalvar: add a globalvar_get helper
      common: version: remove trailing new line from version_string
      commands: keystore: work around missing initialization false positive
      uncompress: make use of error_fn in uncompress_buf_to_buf
      x86: lib: setjmp: fix stack alignment
      x86: setjmp: set base pointer to zero in initjmp
      sandbox: add empty <asm/linkage.h>
      sandbox: move sandbox-specific options into menu
      lib: ubsan: disable sanitization for UBSAN implementation
      lib: random: don't duplicate error/warning prefix in log message
      lib: stackprot: improve error message on missing HWRNG
      lib: stackprot: don't directly write stack protector from HWRNG driver
      lib: stackprot: hide symbols when not applicable
      test: self: mmu: use constants for the hardcoded buffer sizes
      test: self: mmu: reduce MMU test region size
      test: self: have SELFTEST_ENABLE_ALL select all tests
      test: self: warn and exit if device tree parsing fails
      regmap: add support for bulk 64-bit reads and writes
      nvmem: regmap: do not use regmap_bulk_read
      regmap: move regmap.h content to linux/regmap.h
      regmap: align regmap_bulk_read/write API with Linux
      mfd: syscon: do not include regmap.h from mfd/syscon.h
      mfd: axp20x: remove dependency on regmap.h
      mfd: pfuze: disable mfd/pfuze.h dependency on regmap.h
      decompress: xz: enable armthumb BCJ filter for Thumb-2 barebox
      include: linux/overflow.h: sync with upstream
      include: import Linux string_is_terminated helper
      of: fdt: fix possibles overflows during parsing of invalid DTs
      ARM: i.MX8M: limit PBL size to 0x3f000
      mfd: atmel-smc: include needed headers directly
      mfd: atmel-smc: remove dependency of mfd/syscon/atmel-smc.h on regmap.h
      mfd: stm32-timers: remove dependency of mfd/stm32-timers.h on regmap.h
      treewide: switch regmap.h include to linux/regmap.h
      ARM: stm32mp: disable stm32mp1_barebox_entry stack canary
      mfd: syscon: don't register clocked syscon if geting clock fails
      efi: acpi: fix printf format specifier mismatch
      phy: stm32-usbphyc: fix unbalanced phy exit
      scripts: setlocalversion: sync with Linux
      resource: align memory reservation to page boundaries
      console: define stub for console_get_first_active
      console: add for_each_console stub
      console: define barebox_set_loglevel

Alexander Shiyan (3):
      nvmem: Add Rockchip OTP controller driver
      dts: rk356x: Add devicetree node for OTP
      ARM: rockchip: Add missing call to arm_cpu_lowlevel_init() for rk3568

Antony Pavlov (1):
      MIPS: qemu-malta: use 320 MHz input clock for CP0 clocksource

Bruno Knittel (1):
      ARM: arria10: xload: retry FPGA configuration

Christian Melki (1):
      machine_id: Add getter of machine id hashables.

Denis OSTERLAND-HEIM (2):
      raspi: support to read vc values via dt-2nd boot
      raspi: fixup additional vc created nodes

Holger Assmann (1):
      mfd: regulator: initial support for pca9450

Marco Felsch (26):
      ARM64: configs: enable SPI drivers
      ARM64: configs: cleanup multi_v8_defconfig
      i.MX: HAB: remove unused init() hook
      ARM: i.MX8M: add flexspi-imx8m{m,p}-cfg.h header
      ARM: boards: i.MX8M: make use of new flexspi-imx8m{m,p}-cfg.h header
      ARM: lds: introduce HAB_CSF_LEN define for the hab_csf section
      ARM: lds: add support for a 2nd CSF area
      scripts: imx: force flexspi and hab option order
      scripts: imx: move flexspi_image() into header
      scripts: imx: fix i.MX8M CSF header placement
      scripts: common: fix read_file_2 for windows
      scripts: common: fix buffer freeing
      usb: gadget: fsl_udc: lower state_complete constraints
      imx-usb-loader: fix windows usage
      scripts: imx: add imx8m_get_offset_size helper
      scripts: imx-image: header_v2: add CSF slots
      scripts: imx-image: hab_sign: refactor function
      scripts: imx: replace static string allocation
      scripts: imx: add hab_qspi support
      scripts: imx: add helper to write CSF Blocks command
      scripts: imx: fix HAB for FlexSPI boot
      scripts: imx-image: add missing close()
      scripts: imx-image: add support for CST_EXTRA_CMDLINE_OPTIONS
      ARM: i.MX: add hab qspi support if enabled
      Documentation: boards: imx: replace i.MX8MQ with i.MX8M
      Documentation: boards: imx: add FlexSPI sub-section

Michael Olbrich (1):
      x86: efi: add IMD data to the EFI binary

Oleksij Rempel (9):
      arm: dts: imx8mp-skov: Add reserved-memory for ramoops pstore
      arm: dts: imx8mp-skov: Add pins for hardware variant detection
      arm: dts: imx8mp-skov: Switch to GPT for eMMC partitioning
      arm: dts: imx8mp-skov: Switch to GPT for SD partitioning
      arm: dts: imx8mp-skov: Add barebox state backend in DTS
      ARM: i.MX8MP: skov: refactor bootsource and BBU handlers
      ARM: i.MX8MP: skov: Add hardware variant support
      ARM: i.MX8MP: skov: fixup skov,imx8mp-board-version DT property for the kernel
      arm: dts: imx8mp-skov: fix reset reason detection

Roland Hieber (2):
      commands: i2c_read: default to reading one byte
      Documentation: dt-bindings: leds: document 'default-on' trigger

Rouven Czerwinski (9):
      kbuild: clean start*_*.{p,ps}imximg files
      i.MX: HABv4: fix event status comparison
      i.MX: HABv4: fix i.MX8MQ device lockdown
      i.MX: HABv4: extend support to i.MX8M SoCs
      i.MX: HABv4: retrieve HAB ROM version for i.MX8M
      ARM: i.MX: allow HAB for i.MX8M family
      ARM: i.MX: introduce build_imx8m_habv4img
      ARM: i.MX: convert i.MX8M to helper
      ARM: boards: i.MX8M: add HAB image support

Sascha Hauer (32):
      ARM: i.MX6 MMDC: Add register offset comments to struct
      ARM: skov-imx6: Remove unused board variants
      dts: update to v6.6-rc4
      mtd: initialize partitions_entry
      bootstrap: Fix partition creation
      devfs: check for valid flags before removing a partition
      dts: update to v6.6-rc5
      dts: update to v6.6-rc6
      fdt: Do not reserve device tree blob
      bootm: print memreserve map in verbose mode
      arm: layerscape: ppa: reserve SDRAM region for PPA
      arm: layerscape: ppa: Add PPA as /reserved-memory/ppa node
      ARM: remove remaining occurences of CONFIG_MMU_EARLY
      memory: remap immediately in reserve_sdram_region()
      dts: update to v6.6-rc7
      scripts: xz_wrap.sh: clear BCJ only when set
      spi: spi-nxp-fspi: Fix error checks
      ARM: mmu64: setup ttb for EL2 as well
      ARM: layerscape: ppa: Fix starting PPA
      ARM: layerscape: ppa: Enable MMU when in EL2
      Release v2023.11.0

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


