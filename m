Delivery-date: Mon, 22 Jan 2024 13:49:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rRtjx-00BTHm-15
	for lore@lore.pengutronix.de;
	Mon, 22 Jan 2024 13:49:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rRtjx-0003Y2-P7
	for lore@pengutronix.de; Mon, 22 Jan 2024 13:49:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:Content-Type:
	MIME-Version:Message-ID:Subject:To:Date:Reply-To:Cc:Content-Transfer-Encoding
	:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Ge/SeWLUEn4i0DT2YtrBHeoju2gHkJ1XNni5vj9/Pyk=; b=RjJSCwoSHpgk6CMJiIv/mChmZo
	OJhrAOZBmTxryIXV8D5z+f5LdXs4BpsqzVqUKcVzH0f5j2RNzvcoXofPJdocV+sPXcQolVq6ui+78
	oodmPaS6D2JNwOUtktqXeBjRGB4jh+4SexE0+jjvdfzrqf2DAD4NzSIe424I3doQpaC4IPHyBkuIT
	s7Vu4w/2s75rsaEP0NfqLCSIT3Exm3qilsaYg64BHCprxaAmBfUGiyD3RHfOnQAeJJjbJljBwzBxQ
	4CdkLVsuTZ9qvSIWNgVB8SvLBoLZyxUWPo45B/wcIQ3avjXgWkHcIUSzrnffNV2uqi4o31+yb2zrX
	hqdQdboA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRtie-00CAE9-1O;
	Mon, 22 Jan 2024 12:48:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRtiZ-00CACw-1i
	for barebox@lists.infradead.org;
	Mon, 22 Jan 2024 12:48:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rRtiY-0003Oz-6P; Mon, 22 Jan 2024 13:47:58 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rRtiX-001bEm-Py; Mon, 22 Jan 2024 13:47:57 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rRtiX-001C9I-NN; Mon, 22 Jan 2024 13:47:57 +0100
Date: Mon, 22 Jan 2024 13:47:57 +0100
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <20240122124757.GX4700@pengutronix.de>
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
X-CRM114-CacheID: sfid-20240122_044759_724071_2489F59A 
X-CRM114-Status: GOOD (  18.31  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: v2024.01.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi All,

It's time for the first release for 2024.

This release brings us OP-TEE communication support. The first driver
which makes use of this is an OP-TEE based hardware number generator
and another one is SCMI over OP-TEE needed for STM32MP.
Another nice change is the addition of O_TMPFILE support. Just like its
Linux pendant this allows us to create temporary unnamed files which are
removed when closed.
The dependency tracking for external firmware files has finally been
fixed. With this change a PBL is rebuilt properly when the firmware file
used with get_builtin_firmware_ext() is updated.
Michael brought in a change which makes the systemd bootctl command
print more useful output.
As usual there are more changes all over the place, see below for a
detailed list of changes.

Have fun!
 Sascha

Ahmad Fatoum (61):
      driver: don't clear unrelated struct device_node::device on unregister
      deep-probe: don't panic when device can't be created
      deep-probe: skip on-demand platform dev creation for nodes without compatible
      devinfo: indicate if device tree nodes are differently populated
      hw_random: add implementation for OP-TEE RNG pseudo TA
      firmware: arm_scmi: sync with Linux v6.6
      ARM: dts: stm32mp: dk1/2: build SCMI-enabled device tree
      nvmem: bsec: add support for STM32 bsec pseudo TA
      ARM: dts: stm32mp: ev1: build extra device tree with SCMI
      ARM: dts: stm32mp: add dtsi for SMC SiP-based SCMI
      ARM: dts: stm32mp: lxa-mc1: build SCMI-enabled DT
      clk: stm32mp1: build only when STM32MP15 support is enabled
      clk: factor out clk_hw_get_parent_index
      include: add initial <linux/clk-provider.h>
      clk: divider: implement CLK_DIVIDER_ALLOW_ZERO
      clk: divider: implement divider_[ro_]round_rate_parent
      clk: implement clk clk_hw_get_parent_by_index
      clk: add struct clk_init_data::parent_hws
      clk: implement clk_hw_reparent
      clk: add STM32MP13 clock and reset drivers
      pinctrl: stm32: match st,stm32mp135-pinctrl DT compatible
      aiodev: stm32: add STM32MP13x support
      ARM: stm32mp: 135-DK: enable environment, bbu handler and deep probe
      ARM: stm32mp: remove STM32MP13 .stm32 image
      commands: regulator: add option to list provider devices
      ARM: dma: define DMA_ALIGNMENT instead of defining dma_alloc
      FIT: support kernel images with type = "kernel_noload"
      dma: factor out dma map generic implementations into file
      dma: add DMA API debugging support
      mci: core: remove broken, unneeded write bounce buffer
      of: define macro for maximum of_device_is_compatible return value
      of: early exit of_match_node if no better matches are possible
      FIT: match best configuration when multiple are compatible
      fastboot: sparse: print descriptive error on overflowing destination
      fs: add open O_TMPFILE support
      libfile: implement read_fd counterpart to read_file
      uncompress: skip dentry cache in uncompress_buf_to_buf
      mci: stm32_sdmmc2: correct usage of DMA API
      ARM: dts: rpi4: drop disabling of SDHCI node used for WiFi
      ARM: dts: rpi4: add DTs for CM4 and Rpi 400
      ARM: rpi: look for env in mmc0 as well
      crypto: caam - remove overly verbose debug print
      lib: stackprotector: adjust Kconfig text for barebox
      test: self: ramfs: fix null pointer dereference on error
      test: self: regulator: depend on REGULATOR_FIXED for test
      test: self: mmu: fix message on skipping tests
      virtio: pci: don't re-enable with 0 as argument
      ARM: kasan: reserve shadow memory region
      regmap: fix calculation of regmap size when reg_stride != 1
      nvmem: bsec: correct regmap's max_register
      nvmem: startfive-otp: correct regmap's max_register
      nvmem: imx-ocotp-ele: correct regmap's max_register
      nvmem: ocotp: correct regmap's max_register
      nvmem: ocotp: align OCOTP bank count with Linux
      net: fsl-fman: fix alignment of RX buffer
      net: fsl-fman: fix CONFIG_DMA_API_DEBUG warnings
      regmap: clarify struct regmap::max_register value some more
      hab: habv4: use explicitly unsigned types for pointers into SRAM
      hab: habv4: warn if more than 10 HAB events are found
      clk: fix of_clk_hw_simple_get stub definition
      ARM: dts: i.MX8MP: fix Debix environment partition unit address mismatch

Christian Melki (1):
      habv4: Fix parsing of unresonable events.

LI Qingwu (1):
      ARM: i.MX8MM bootsource: fix serial detection for QSPI boot source

Lior Weintraub (1):
      ARM64: mmu: fix mmu_early_enable VA->PA mapping

Marc Kleine-Budde (3):
      include: uaccess.h: import from linux
      optee: add bidirectional communication support
      optee: add experimental support for /dev/tee0

Marco Felsch (2):
      scripts: imx-image: don't pad the final binary for i.MX8M devices
      firmware: fix missing firmware handling for external firmware

Michael Olbrich (2):
      efi: add more helper functions to write EFI variables
      efi: fill more EFI runtime variables defined by systemd

Oleksij Rempel (1):
      net: phy: add TI DP83TG720 1000BaseT1 PHY support

Robin van der Gracht (1):
      nvmem: regmap: Fix nvmem size

Roland Hieber (3):
      drivers: regulator: make pfuze available on i.MX7 too
      ARM: i.MX7: Import GoMe device trees from kernel
      ARM: dts: add support for and Gossen Metrawatt e143_01

Sascha Hauer (18):
      dts: update to v6.7-rc3
      dts: update to v6.7-rc4
      crypto: crc32: create crc table only once
      scripts: pblimage: re-use crc32 implementation from crypto/crc32.c
      scripts: mxsimage: re-use crc32 implementation from crypto/crc32.c
      scripts: socfpga_mkimage: re-use crc32 implementation from crypto/crc32.c
      dts: update to v6.7-rc5
      crypto: crc32: implement crc32() with crc32_no_comp()
      Merge branch 'for-next/dma'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/op-tee'
      scripts/get_maintainer.pl: Drop wrong line from output
      omap3-usb-loader: Fix compilation
      omap3-usb-loader: Fix for big endian hosts
      firmware: fix external firmware dependencies
      Release v2024.01.0

Sebastien Bourdelin (1):
      ARM: rpi: add CM4S device id

Stefan Kerkmann (2):
      arm: mach-socfpga: detect workaround for dram controller erratum
      doc: user: barebox: add missing empty lines

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


