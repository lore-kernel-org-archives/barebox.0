Delivery-date: Wed, 15 Dec 2021 09:48:42 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mxPxq-0077pF-NX
	for lore@lore.pengutronix.de; Wed, 15 Dec 2021 09:48:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mxPxp-0006Qq-C6
	for lore@pengutronix.de; Wed, 15 Dec 2021 09:48:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:MIME-Version:Message-ID:Subject:To
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=F71uQHDCMjL8moToV+DJS8/yfPfurd9IctvOpBwOef8=; b=zZNECP1kR+CZfh
	qnJFdNuvCGyA78XeQtJs03y2eZ7cU51gkfYweCsG5PvhRlo/hMQ1MdHW6g+YTkAGO6IBlRUaqxjRd
	q0tztXcTU8tjB49FgdqjvwPNzcMPR13QGmG52LM/XxTkhkzaBtJcZWSLzZ89MLGUxkGHws4w9F0LQ
	jhNM2Jvdk4Oyb+W4sMnIbgty7Borz9vCWWUVImoPry9hTNoZkJjNWb/0U8974xA6g2xwOjSVMeEKu
	yEv0ruZhGLCN1vL45UDzh11AzDEtQVNyL26JZ6SM/WFOiITJf1tdPeRBl2syimgJ4Wi/Abifkj2z+
	ah7mvU2tnoHLvzyxHP0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxPva-00HNgr-9w; Wed, 15 Dec 2021 08:46:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxPvU-00HNfp-Nk
 for barebox@lists.infradead.org; Wed, 15 Dec 2021 08:46:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mxPvR-0006Iq-0I; Wed, 15 Dec 2021 09:46:13 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mxPvQ-0007QG-Na; Wed, 15 Dec 2021 09:46:12 +0100
Date: Wed, 15 Dec 2021 09:46:12 +0100
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <20211215084612.GO6003@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:39:16 up 4 days, 16:24, 46 users, load average: 0.07, 0.10, 0.09
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_004616_801549_62084EB3 
X-CRM114-Status: GOOD (  18.27  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: v2021.12.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


Hi All,

barebox-2021.12.0 is out. This time we have a new RTL8152B/RTL8153
driver which increases the range of working USB ethernet adapters for
barebox.
Beginning with this release it is no longer possible to create
overlapping partitions on devices. This has once been offered for
flexibility, but turned out to be unnecessary and seems more a
possibility to shoot in the foot and is therefore removed now.
Also new this time is a tool to bootstrap newer Rockchip SoCs like the
rk3568 from USB. The tool directly takes barebox images and is much
easier to handle than the original Rockchip tools.
As usual there are several small fixes and improvements, see below for a
full list.

Have Fun!
 Sascha

----------------------------------------------------------------
Ahmad Fatoum (37):
      fs: ramfs: drop free of unused dev->priv
      include: <linux/bitops.h>: discard left-over hweight code
      scripts: <linux/bitops.h>: fix references to undefined __BITS_PER_LONG
      include: add dedicated header for printf/printk
      include: <asm-generic/bug.h>: make self-contained
      include: move ARRAY_AND_SIZE to <linux/kernel.h>
      I2C: i.MX: early: replace zero-valued variable use with zero directly
      misc: acpi-test: bump down debug message on remove
      usb: dwc3: remove unneeded EPROBE_DEFER check
      serial: atmel: abort probe on atmel_serial_init_port failure
      spi: zynq_qspi: don't check clk_get return value for NULLness
      drivers: caam: remove license text covered by SPDX-License-Identifier
      hw_random: mxc-rngc: switch to SPDX-License-Identifier
      i2c: algo-bit: switch to SPDX-License-Identifier
      drivers: add missing SPDX-License-Identifier
      ARM: Rockchip: move ARCH_RK3568_OPTEE into ARCH_ROCKCHIP menu
      ARM: i.MX: guf-santaro: fix passing around of uninitialized variable
      regulator: fix bitrotted EXPORT_SYMBOL_GPL
      aiodev: fix bitrotted EXPORT_SYMBOL
      mtd: remove NULLness check for IOMEM()
      clocksource: clint: restrict to RISC-V
      ddr: fsl: make ARCH_LAYERSCAPE only
      reset: socfpga: error out on failure to request memory
      i2c-mux-pca954x: drop duplicate warning message on probe
      spi: add STM32 SPI controller driver
      ARM: Rockchip: init: propagate error in init function
      ARM: Rockchip: rk3568: make rk3568_lowlevel_init void
      ARM64: <asm/barebox-arm-head.h>: mark prologue location
      pinctrl: Rockchip: abort probe on lack of aliases
      clk: handle CLK_OF_DECLARE in deep probe
      ARM: Rockchip: make rk3568's atf_load_bl31 reusable
      ARM: Rockchip: add delimiter between boards and board features
      scripts: add target tool for rk-usb-loader
      RISC-V: nmon: fix SiFive DEBUG_LL build
      fs: /dev/mem: handle copy at offset 0 correctly
      RISC-V: interrupts: fix Zifencei emulation on rv64
      include: linux/printk.h: include <stdarg.h> to make header self-contained

Antony Pavlov (4):
      imd: fix imd_is_crc32()
      imd: reuse imd_is_crc32()
      include/image-metadata.h: fix whitespaces in the BAREBOX_IMD_CRC macro
      Documentation/boards/riscv.rst: fix code blocks

David Jander (1):
      nvmem: bsec.c: Use SMC_READ_OTP in stm32_bsec_read_mac()

Holger Assmann (2):
      fs: jffs2: introduce reference counting at probe
      fs: jffs2: remove unnecessary slab cache structure

Jules Maselbas (3):
      logo: Makefile: Replace inkscape with convert
      memory commands: Improve command documentation
      usb: dwc2: host: Do not map buffer on zero len packet

Oleksij Rempel (11):
      ARM: dts: skov-imx6: add USB nodes
      ARM: boards: skov-imx6: fixup_machine_compatible() add optional root node
      ARM: boards: skov-imx6: add switch detection
      ARM: boards: skov-imx6: disable eth0 for barebox if no switch is detected
      ARM: boards: skov-imx6: fixup different DTS variants
      ARM: boards: skov-imx6: start using deep-probe
      ARM: boards: skov-imx6: add defaultenv with eth1-discover script
      ARM: boards: skov-imx6: use separate DTS for the iMX6 Solo variant
      usb: net: Add support for the Realtek RTL8152B/RTL8153
      include/phy: add driver_data to resume more of kernel code
      net: phy: micrel: sync init code for ksz80xx variants with the kernel driver

Sascha Hauer (26):
      scripts: Add Kconfig option for most host tools
      phy: rockchip: Add dummy driver for child node
      ARM: Rockchip rk3568 EVB: Enable deep probe
      ARM: Rockchip: rk3568 EVB: use 64bit partition sizes
      phy: rockchip-inno-usb2: handle disabled child nodes gracefully
      usb: dwc3: reset controller before using it
      ARM: rk3568: Detect USB boot
      cdev: Add function to get unallocated space at start of device
      ARM: Rockchip: RK3568: implement failsafe barebox update
      devfs: Do not create overlapping partitions
      dts: update to v5.15-rc5
      dts: update to v5.15-rc6
      dts: update to v5.15-rc7
      scripts: Add common library functions
      scripts/common: Add write_file()
      scripts/common: Add write_full() and read_full()
      scripts: Add rk-usb-loader tool
      dts: update to v5.15
      Merge branch 'for-next/dts'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/rockchip'
      Merge branch 'for-next/scripts-common-library'
      Merge branch 'for-next/skov-imx6'
      Merge branch 'for-next/spdx'
      Release v2021.12.0

Thomas Haemmerle (1):
      gpio: add driver for xilinx zynq and zynqmp

Trent Piepho (3):
      net: ksz8864: Add support for KSZ87xx switches
      nandtest: Add more fields when bad byte found
      of: partitions: Skip fixup for devices with no partitions
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

