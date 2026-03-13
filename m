Delivery-date: Fri, 13 Mar 2026 14:27:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12YR-000DBY-2E
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:27:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12YN-0005iD-BZ
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:27:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GNrG/nyTOSTvCty0KSTKFKHDYfWmGu9C1w/AtjNqOQE=; b=hKXXm0S3yztoc++nmNvIuqMIkW
	u0E0JpmH9p+NMEaoTucXfEwG/JXNJLtK57f1iXPx1BHZWVY7QnC3KOjwsRcd2Y+HIRaCM5H2D2A0X
	B0mLHnMPdoi2iB6tDFTQC72a8ybOmL3rsO7RlM//Kijdr57vBmaU9o9ZRboeoItON8LfEklzvuRsR
	/TUtyXa/n5jAejfPXpd0bYcy2JcU6M1eg3Tihrkr2PfEMQ7hQCkWp8sWx9/NlVzDWi/PaIRyWxbVt
	1LHrQBNxpqeKq9IdpMhuw9B5GXapmkXaxszz4jgmwu3qZFjxgQDv9phDGPW/sRP44BYZ7SBQ2fP7D
	g9REyo9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12XT-00000000EEe-3yGg;
	Fri, 13 Mar 2026 13:26:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12XP-00000000E8W-3Frt
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:26:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XK-000583-HN; Fri, 13 Mar 2026 14:26:42 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XK-0005RO-17;
	Fri, 13 Mar 2026 14:26:42 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XK-00000009ULB-11Cz;
	Fri, 13 Mar 2026 14:26:42 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 13 Mar 2026 14:24:44 +0100
Message-ID: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_062648_089595_CEAD5EE9 
X-CRM114-Status: GOOD (  12.05  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 00/58] Backports for v2025.09.1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Yocto Whinlatter still has a month to go until EOL.

Let's backport some fixes accrued in master in the meantime.

Ahmad Fatoum (35):
  drivers: don't propagate of_alias_get_id's -ENODEV out of probe
  bug: add support for CONFIG_DEBUG_BUGVERBOSE
  sandbox: fix make dependency for sandbox
  ARM: cpu: common: skip R_ARM_NONE relocations
  virtio: ring: fix stale data in queue after reset
  scripts: Makefile.lib: suppress graph_port warnings for overlays
  ARM: Rockchip: rk3576-prtpuk: suppress video graph warning
  kbuild: fold rmdirs into rmfiles
  FIT: fix double free issue with >1 reference count
  net: phy: mdio_bus: fix freeing of cdev name before devfs_remove
  bootm: fix bootm override saving/restoring
  common: tlv: fix link error when CONFIG_NET is disabled
  include: array_size.h: make header self-contained
  of: overlay: propagate error unflattening DTBO
  efi: fix potential NULL dereference
  FIT: fix potential underflow of stack array
  of: fdt: fix double free in fdt_ensure_space
  of: overlay: initialize ret to fix garbage return value
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
  virtio: fix variable shadowing in virtqueue_add_sgs input scatter loop
  video: mode-helpers: preserve sync polarity in fb_videomode conversion
  scripts: include: break dependency of list.h on kernel.h
  jwt: fix buffer overflow and double-free in jwt_part_parse
  of: fdt: fix heap-buffer-overflow in fdt_machine_is_compatible
  powerpc: fix initjmp storing function pointer at wrong offset
  of: fdt: refuse / in property and node names

Alexander Shiyan (1):
  mtd: nand: mxc_nand: use clk_get_optional for clock handling

Bruno Knittel (1):
  ARM: socfpga: arria10-reset-manager: release UART0

Chali Anis (1):
  clk: clkdev: fix format security.

Fabian Pflug (1):
  i.MX: HAB: fix field return unlock fuse uid

Hemanth Kumar M D (1):
  scripts: fix build failure with glibc 2.43

Ivaylo Ivanov (1):
  video: simplefb-client: switch to dev_get_resource

Jonas Rebmann (2):
  common: tlv: Correct eth address list fixup
  Makefile: include scripts/ in compile_commands.json

Matthias Zoechmann (2):
  scripts: imx: fix string in further auth block
  scripts: imx-image: support DCD_WRITE on closed dev

Maud Spierings (1):
  RISC-V: dts: fix generation of dtbs-list

Sascha Hauer (10):
  mci: am654-sdhci: Wait for transfer complete interrupt with
    MMC_RSP_BUSY cmd
  firmware: handle firmware files being links correctly
  driver: implement get_free_deviceid_from()
  gpio: Fix GPIOD_ASIS flag
  ARM: rockchip: dmc: use define instead of hardcoded value
  ARM: rockchip: atf: Fix memend
  regulator: fix handling of off_on_delay
  regulator: fixed: handle startup-delay-us property
  net: r8169: drain RX descriptor ring
  FIT: reconstruct hashed-nodes property during verification

Tobias Waldekranz (1):
  MIPS: qemu-malta_defconfig: Use largest possible relocation table

zhengxiaojun (1):
  mmc: resolve conflict between MMC_CAP_NONREMOVABLE and
    MMC_CAP_1_8V_DDR

 Makefile                                      |  15 +-
 arch/arm/cpu/common.c                         |  30 ++--
 arch/arm/dts/rk3576-prtpuk-linux.dts          |   4 +-
 arch/arm/mach-imx/Kconfig                     |  33 ++---
 arch/arm/mach-rockchip/atf.c                  |  12 +-
 arch/arm/mach-rockchip/dmc.c                  |   4 +-
 arch/arm/mach-socfpga/arria10-reset-manager.c |   1 +
 arch/mips/configs/qemu-malta_defconfig        |   1 +
 arch/powerpc/lib/setjmp.S                     |   4 +-
 arch/riscv/dts/Makefile                       |   8 +-
 commands/echo.c                               |   2 +-
 commands/edit.c                               |   2 +-
 commands/uimage.c                             |   2 +-
 commands/uncompress.c                         |   2 +-
 common/Kconfig                                |  11 ++
 common/bbu.c                                  |   2 +-
 common/boot.c                                 |   4 +-
 common/bootm.c                                |   6 +-
 common/console_common.c                       |   2 +-
 common/fastboot.c                             |   4 +-
 common/globalvar.c                            |   2 +-
 common/hush.c                                 |   3 +
 common/image-fit.c                            | 135 +++++++++++++++---
 common/tlv/barebox.c                          |  30 ++--
 common/tlv/parser.c                           |   5 +
 drivers/base/driver.c                         |  14 +-
 drivers/base/power.c                          |   4 +-
 drivers/clk/sifive/sifive-prci.c              |   2 +-
 drivers/firmware/xilinx-fpga.c                |   4 +-
 drivers/gpio/gpio-clps711x.c                  |   2 +-
 drivers/gpio/gpio-imx.c                       |   5 +-
 drivers/gpio/gpio-mxs.c                       |   2 +-
 drivers/gpio/gpio-omap.c                      |   5 +-
 drivers/gpio/gpio-orion.c                     |   5 +-
 drivers/gpio/gpio-vf610.c                     |  14 +-
 drivers/gpio/gpiolib.c                        |  15 +-
 drivers/i2c/busses/i2c-rk3x.c                 |   3 +-
 drivers/mci/am654-sdhci.c                     |   8 +-
 drivers/mci/imx-esdhc-common.c                |   2 +-
 drivers/mci/mci_spi.c                         |   2 +-
 drivers/mtd/nand/raw/mxc_nand.c               |   3 +-
 drivers/net/phy/mdio_bus.c                    |   2 +-
 drivers/net/phy/phy-core.c                    |   4 +-
 drivers/net/r8169_main.c                      |  39 ++---
 drivers/of/fdt.c                              |  26 +++-
 drivers/of/overlay.c                          |   5 +-
 drivers/regulator/core.c                      |  15 +-
 drivers/regulator/fixed.c                     |   3 +
 drivers/spi/imx_spi.c                         |   5 +-
 drivers/usb/gadget/function/dfu.c             |   6 +-
 drivers/usb/imx/imx-usb-phy.c                 |   2 +-
 drivers/usb/musb/phy-am335x.c                 |   3 +-
 drivers/video/mode-helpers.c                  |   4 +
 drivers/video/simplefb-client.c               |   4 +-
 drivers/virtio/virtio_ring.c                  |   3 +-
 efi/efivar-filename.c                         |   3 +
 firmware/Makefile                             |  23 +--
 images/Makefile                               |   2 +
 images/Makefile.sandbox                       |   2 +-
 include/asm-generic/bug.h                     |  26 +++-
 include/bootm-overrides.h                     |   6 +-
 include/driver.h                              |   7 +-
 include/fcntl.h                               |   2 +-
 include/gpio.h                                |   2 +
 include/linux/array_size.h                    |   3 +-
 include/linux/gpio/consumer.h                 |   2 +-
 include/mach/imx/habv4-imx8-gencsf.h          |   2 +-
 include/mach/imx/imx-header.h                 |   2 +
 include/mci.h                                 |   2 +-
 include/regulator.h                           |   3 +
 lib/libfile.c                                 |   4 +-
 lib/xymodem.c                                 |   2 +-
 net/eth.c                                     |   3 +-
 scripts/Makefile.lib                          |   4 +-
 scripts/imx/imx-image.c                       |  19 ++-
 scripts/imx/imx.c                             |  24 +++-
 scripts/include/linux/container_of.h          |  18 +++
 scripts/include/linux/kernel.h                |  14 +-
 scripts/include/linux/list.h                  |   2 +-
 scripts/include/linux/types.h                 |   3 +-
 security/jwt.c                                |   3 +-
 81 files changed, 480 insertions(+), 238 deletions(-)
 create mode 100644 scripts/include/linux/container_of.h

-- 
2.47.3



