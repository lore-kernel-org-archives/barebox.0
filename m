Delivery-date: Fri, 06 Dec 2024 11:52:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tJVwW-004i5D-2d
	for lore@lore.pengutronix.de;
	Fri, 06 Dec 2024 11:52:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tJVwW-00062a-4k
	for lore@pengutronix.de; Fri, 06 Dec 2024 11:52:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=m1Je5DZDr5kf+HXgb7zd5KMKNLmv5cPB2jTIw/qqQEY=; b=K8ZzX71jgmP7RIkNW/MNvfmJe/
	CMYG8NqhcMdX4bdfO5IuU8Nw6h0WqUujvbIAoTEpyoSi7drizgbrl95+aNrg9656YulNvhO2hFhBy
	ZXr5uK+oN2v1nOl8eWOYjKH3rIS4yJaWIgCtTzfcMT47azOS+c9k1CwJQqQa+QAnZIfdbsBFYSFeZ
	oPA+/eh0NUsiNBhkOwSoLFPwb2RmyL1/4bUrfX/s3JLern1sfXZjkDi7/XGrFGsQzAC3M1u+/X0Wx
	t2nqXYtC6TMZqwFEMJDNWB2CJfyLEtmFmXrAslqdon6A7BaS63EC35bDmu1dFPAL0TBDr2Pw2QPrA
	lJneti1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJVvy-00000001Mpp-34Vi;
	Fri, 06 Dec 2024 10:51:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJVuC-00000001MS2-3sQO
	for barebox@lists.infradead.org;
	Fri, 06 Dec 2024 10:49:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tJVuB-0005bc-JN; Fri, 06 Dec 2024 11:49:51 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tJVuA-001z6w-1z;
	Fri, 06 Dec 2024 11:49:51 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tJVuB-000mjO-0u;
	Fri, 06 Dec 2024 11:49:51 +0100
Date: Fri, 6 Dec 2024 11:49:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <Z1LWzzW3pa2ZM8XZ@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241206_024953_119434_A00EE280 
X-CRM114-Status: GOOD (  17.99  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: v2024.12.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi All,

I am happy to announce barebox-2024.12.0!

This release brings us some Rockchip updates. We have a new board
supported, the OrangePI 5 plus. Also we have VOP2 graphics output on
RK356x SoCs. This comes with a few updates to the fbconsole which now
supports changing the orientation and fonts with transparent background
so that we can nicely put a console on a background image.

Also new in this release is ECDSA support for verifying FIT images.

Ahmad has continued to cleanup include/common.h. It's now nearly empty
so everything is moved to more dedicated headers.

As usual, see below for all patches that went into this release.

Have Fun!
  Sascha

----------------------------------------------------------------
Abdelrahman Youssef (7):
      include: Include <linux/math.h> to resolve implicit declaration of do_div()
      common: buffer access out-of-bounds
      partitions: efi: fix GPT header size exceeding allocation size
      partitions: efi: fix overflow issues while allocating gpt entries
      of: fdt: fix overflow caused by fdt_prop extending beyond fdt
      of: fdt: fix possible overflow during parsing of fdt
      partitions: efi: Check GPT header size against minimum limit

Ahmad Fatoum (65):
      Revert "dma: debug: detect repeated DMA sync"
      KASan: implement non-warning kasan_is_poisoned_shadow
      dma: debug: poison DMA buffers with KASAN while owned by device
      dma: debug: detect repeated DMA sync using KASAN
      efi: payload: image use new CONFIG_ARM64 symbol
      video: mipi-dbi: reword Kconfig prompt
      mdio_bus: add NULL check to mdiobus_read/mdiobus_write
      crypto: reorder ECDSA Kconfig entries
      keytoc: return error on failure to set PKCS#11 pin
      test: self: jwt: regenerate jwt_test.pem.c_shipped
      test: self: rename REGENERATE_RSATOC to REGNERATE_KEYTOC
      FIT: improve error message when uncompressing non-compressed files
      ARM64: mmuinfo: comment the if clauses decoding PAR_ELx
      ARM64: asm: mark assembly entry points as functions
      ARM64: io: implement I/O accessors in assembly
      ARM64: board-dt-2nd: grow stack down from start of binary
      mtd: cfi-flash: use I/O accessors for reads/writes of MMIO regions
      ARM64: mmu: flush cacheable regions prior to remapping
      virtio: don't use DMA API unless required
      clk: add stub definition for of_clk_get_from_provider
      tee: add missing header for BIT macro definition
      tee: shm: include missing header for basprintf
      net: dsa: realtek: fix CONFIG_SANDBOX build
      pmdomain: imx8mp-blk-ctrl: add missing definition of ARRAY_SIZE
      PWM: rockchip: fix compile testing with CONFIG_SANDBOX
      watchdog: imxulp: drop unused include of asm/system.h
      include: import uapi/linux/kernel.h header from Linux
      usb: typec: fix compile test with CONFIG_SANDBOX
      bitops: fix missing defintion for DIV_ROUND_UP definitions
      mci: am654-sdhci: drop dummy redefinition of MMC_CAP2_HS200/400
      hw_random: fix compilation with 64-bit size_t
      optee: make OP-TEE OF fixup ARM-specific
      include: common.h: move barebox startup functions into separate header
      include: common.h: move ctrlc() functions into stdio.h
      include: common.h: move out integer string parsing functions
      include: common.h: move out endianness macro sanity check
      include: common.h: move out user interface functions into stdio.h
      include: common.h: move out memory option parsing prototypes
      include: common.h: move out RW_BUF_SIZE definition
      usb: gadget: fix static analysis false positive
      ARM: SMCCC: make header usable for compile test
      net: r8169: use lower/upper_32_bits for clarity
      keytoc: check for memory allocation failures
      crypto: fix compile with empty CONFIG_CRYPTO_PUBLIC_KEYS
      FIT: add dependency on CRYPTO_BUILTIN_KEYS for signature verification
      dma: make DMA_ADDRESS_BROKEN type-safe
      video: stm: use DMA_ADDRESS_BROKEN instead of NULL
      crypto: caam - pbl-init: use DMA_ADDRESS_BROKEN instead of NULL
      net: designware: don't use dma_mapping_error for non-streaming DMA
      net: macb: fix DMA_ADDRESS_BROKEN in the coherent ring allocations
      i2c: lpi2c: fix potential read of uninitialized variable
      dma: give dma_alloc_coherent a device parameter
      video: Rockchip: add missing dma_alloc_coherent a device parameter
      ARM: i.MX9: tqma93xx: workaround warning in variant detection
      clk: rockchip: make it compile again
      sandbox: noshell_defconfig: set CONFIG_CONSOLE_DISABLE_INPUT=y
      startup: do not bring up networking if console input disabled
      usb: typec: fix freeing uninitialized memory
      remoteproc: imx: add support for loading ELF data sections into DRAM
      remoteproc: use I/O memory variants of memcpy/memset
      crc: crc-itu-t: generate lookup table on first use
      ARM: omap: add two smaller MLO defconfigs for AM335x
      checkpatch: fix detection of barebox root directory
      Documentation: imd: update information on barebox_update
      ARM: omap: fix NS16550 UART setup in omap_debug_ll_init

Holger Assmann (1):
      ARM: dts: i.MX8MP: disable NPU node if hardware is missing

Jonas Rebmann (1):
      test: pytest: introduce pytest for network, test tftp notfound

Jules Maselbas (1):
      clk: clk-composite: fix callback guard in clk_composite_round_rate

Justin Bronder (1):
      lib: lz4: use lz4 instead of lz4c

Michael Grzeschik (1):
      commands: mmc: write_reliability: bail out early if already set

Michael Riesch (1):
      arm: rockchip: add support for the xulong orangepi 5 plus

Peng Fan (1):
      remoteproc: elf_loader: skip segment with memsz as zero

Richard Weinberger (1):
      dlmalloc: Fix integer overflow in request2size()

Sascha Hauer (77):
      dts: update to v6.11
      graphic_utils: Clip to screen boundaries
      commands: splash: honour line_length
      gui: fix alpha blend
      fbconsole: make background pixels transparent
      fbconsole: actually store rows/cols
      ARM: Use optimized reads[bwl] and writes[bwl] functions
      ARM: rename logical shift macros push pull into lspush lspull
      ARM: convert all "mov.* pc, reg" to "bx reg" for ARMv6+
      ARM: update lib1funcs.S from Linux
      ARM: update findbit.S from Linux
      ARM: update io-* from Linux
      ARM: always assume the unified syntax for assembly code
      ARM: update memcpy.S and memset.S from Linux
      lib/string.c: export non optimized memmove as __default_memmove
      ARM: add optimized memmove
      of: fix of_get_next_child() for prev->parent != node
      of: fix of_graph_get_next_endpoint()
      of: of_graph: honour ports subnode
      of: of_graph: fix of_graph_get_next_endpoint()
      of: of_graph: add missing functions
      spi: spi-gpio: actually delay in spidelay()
      spi: spi-gpio: support different word widths
      spi: spi-gpio: switch to new gpio binding
      spi: spi-gpio: deassert CS during setup
      spi: spi-gpio: switch to gpiod api
      clk: imx: improve precision of AV PLL to 1 Hz
      keytoc: remove ECDSA dts support
      keytoc: fail in case gen_key() fails
      keytoc: fix ECDSA endianess problems
      keytoc: remove duplicate __ENV__ check
      crypto: Makefile: make simpler
      crypto/Makefile: Drop unnecessary dependencies
      keytoc: make key name hint optional
      crypto: rsa: include key name hint into CONFIG_CRYPTO_RSA_KEY
      crypto: rsa: encapsulate rsa keys in public keys struct
      clk: rockchip: rk3288: Drop CLK_NR_CLKS usage
      dts: update to v6.12-rc1
      clk: rockchip: rk3568: Fix HDMI clocks
      video: add videomode helpers
      media-bus-format: update from kernel
      regmap: add regfield support
      video: add include/video/drm/drm_connector.h
      fb: add fb_rect functions
      video: Add Sitronix st7789v panel driver
      ARM: wolfvision PF5: Use upstream IO expander dtso
      ARM: Wolfvision PF5: of_probe only once
      ARM: Wolfvision PF5: add display overlay
      video: add dw-hdmi driver
      video: i.MX ipuv3: switch to upstream hdmi driver
      fb: Accept overlay framebuffers without modes
      fb: print more information on devinfo
      fbconsole: Adjust fbconsole names for overlays
      ARM: ARM64: implement dma_alloc_writecombine()
      vpl: make vpl deep probe aware
      video: Rockchip: Add VOP2 driver
      fbconsole: implement panel orientation support
      crypto: add public_key functions
      crypto: builtin_keys: Allow to specify multiple keys in CONFIG_CRYPTO_PUBLIC_KEYS
      crypto: public-keys: use array of public_keys
      crypto: rsa: create static inline wrapper for rsa_verify()
      Add elliptic curve cryptography (ECC) helper functions
      rsa: move header to include/crypto/rsa.h
      crypto: add ECDSA support
      crypto: make RSA a visible option
      dts: update to v6.12-rc2
      Merge branch 'for-next/arm-memcpy'
      Merge branch 'for-next/dma'
      Merge branch 'for-next/dma-debug'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/ecdsa'
      Merge branch 'for-next/master-compile-fixes'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/vop2'
      Merge tag 'v2024.10.0'
      ARM: i.MX: ele: fix forward_lifecycle
      Release v2024.12.0

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


