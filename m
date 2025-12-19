Delivery-date: Fri, 19 Dec 2025 11:15:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXWX-00DAGp-0H
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 11:15:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXWV-0002VL-ON
	for lore@pengutronix.de; Fri, 19 Dec 2025 11:15:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=vjqTCZBiqaz4FzKKHu1rlw8PE7cNXdbbjcgDe444y2w=; b=v085lA88ZslhmJz8MQ2Kxj4amI
	RHYZ6TVKyOg3lq9n11pIcQaEhpRg+yC5W2SUP2sU9H99MWmb/oI3PMtfbAIE6zwC1XYvzN2T0Rr6d
	bKQgLwJDVGwe2eGlP+P1ixLSLj5jU019B3h8Z6MHeQIpg3ajSDI3Pqa0ir9YooP2s8L9DonxBpo5A
	J/Yp8v8mgqSRS0gtAVhS//HBZP81EJFPWXc/0ydwxmhtiyb3wLBWhep9FauaCrUH3yx8XrvgmGzlt
	wi6coDO2yTftOONIWVlr+MttOBi6v1RXz4vbigvYX6n5B4P5ZSwv8AVVMHlmB1oHHhUzGFXprE2gy
	HqI8k9zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXVl-0000000A30f-2hZ4;
	Fri, 19 Dec 2025 10:15:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXVi-0000000A2z2-2pta
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 10:15:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVg-00021c-PS; Fri, 19 Dec 2025 11:14:56 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVg-006RN5-1v;
	Fri, 19 Dec 2025 11:14:56 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVg-0000000320L-25mg;
	Fri, 19 Dec 2025 11:14:56 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Dec 2025 10:20:36 +0100
Message-ID: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_021458_713187_AB6E11DA 
X-CRM114-Status: GOOD (  15.34  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 00/49] Backports for v2025.09.1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We intend to maintain v2025.09.y upstream until Yocto Whinlatter becomes
EOL in April 2026.

All fixes included in this series are backports from master and have
mostly been part of newer releases.

Ahmad Fatoum (20):
  scripts: rockchip: rkimage: reinstate OpenSSL 1.1 compatibility
  range: fix corner cases when exclusive end is zero
  state: guard against empty variable set in DT
  ARM: i.MX8M: romapi: skip zero_page_access() if MMU is disabled
  ARM: mmu: have zero_page_remappable() check MMU status
  ARM: mmu: fix hang when reserved memory at start of RAM
  poller: activate POLLER_WARN_OVERTIME only on third strike
  bootm: fix boot override inheritance
  fs: qemu_fw_cfg: make use of the automount
  fs: qemu_fw_cfg: handle non-existent opt/org.barebox.env key
    gracefully
  boards: qemu-virt: drop fitimage-pubkey.dts
  sandbox: fix race with .old_version removal
  mci: am654-sdhci: correctly configure SLOTTYPE_EMBEDDED
  net: arp: collect context into new struct pending_arp
  net: reset pending ARP state when request is done
  test: populate qemu_bin, even if missing features
  test: exit directly when invoking QEMU states on non-QEMU targets
  param: make setting a parameter to the same string value a no-op
  i2c: omap: fix probe on am335x
  net: 9p: fix variable name in BAREBOX_MAGICVAR

Alexander Shiyan (4):
  clk: rockchip: rk3588: Add PLL rate for 1500 MHz
  ARM: dts: rockchip: Set initial CPU frequencies for RK3588
  ARM: dts: rockchip: Set CPLL frequency for RK3588
  commands: truncate: fix multiple file handling with relative sizes

Chali Anis (1):
  pci: pci-tegra: fix null pointer assignation.

Jonas Rebmann (3):
  virtio: Stop spamming debug buffer
  tlv: register_device() error handling
  lib: base64: Fix out-of-bounds potential by respecting dst_len

Maud Spierings (6):
  ARM: i.MX: Fix the iomux DSE defines for imx8mp
  net: designware-imx: don't set txclk when mode is (r)mii
  scripts: imx: Makefile.mingw64: add _GNU_SOURCE
  scripts: imx: add pread implementation for mingw target
  ARM: i.MX8M: Fix the RAM size calculation for DDR3
  pmdomain: fix collision in names when registering

Michael Grzeschik (1):
  clk: clk_set_parent: skip any operation if current and new parents are
    equal

Philipp Zabel (1):
  ARM: i.MX6: configure AIPS registers only if trusted

Sascha Hauer (13):
  mci: sdhci: am654: Use sdhci_wait_idle()
  ARM: dts: am62lx: fix secondary core startup
  mtd: peb: mtd_peb_read(): move error message to caller
  fs: nfs: drop PROG_NFS special casing
  fs: nfs: do not read past packets
  clk: rockchip rk3588: configure CPLL in driver
  fs: fix automount when last filename component is a automountpoint
  ARM: K3: am62l: don't put sysfwdata into 1st stage image
  ARM: k3: make some firmware files SoC specific
  ARM: k3: am62l: Add dedicated config option for OP-TEE
  ARM: k3: am62l: fix dependencies on k3img input files
  i2c: implement i2c_unregister_device()
  eeprom: at24: unregister devices in error path

 Makefile                                    |   2 +
 arch/arm/cpu/mmu-common.c                   |   8 +-
 arch/arm/dts/k3-am62l-barebox.dtsi          |   4 +
 arch/arm/dts/rk3588.dtsi                    |  11 +-
 arch/arm/mach-imx/esdctl.c                  |   5 +-
 arch/arm/mach-imx/imx6.c                    |   8 +
 arch/arm/mach-imx/romapi.c                  |   9 +-
 commands/truncate.c                         |  11 +-
 common/Kconfig                              |   2 +-
 common/boards/qemu-virt/Makefile            |   3 +-
 common/boards/qemu-virt/board.c             |   5 +-
 common/boards/qemu-virt/fitimage-pubkey.dts |   3 -
 common/boot.c                               |   5 +-
 common/bootm.c                              |   7 +-
 common/poller.c                             |   4 +-
 common/state/backend_format_raw.c           |  16 +-
 common/state/state.c                        |   8 +-
 common/tlv/bus.c                            |   7 +-
 conftest.py                                 |   6 +-
 drivers/base/power.c                        |   4 +-
 drivers/clk/clk.c                           |   3 +
 drivers/clk/rockchip/clk-rk3588.c           |   8 +
 drivers/eeprom/at24.c                       |   5 +-
 drivers/i2c/busses/i2c-omap.c               |   5 +-
 drivers/i2c/i2c.c                           |   6 +
 drivers/mci/am654-sdhci.c                   |   5 +-
 drivers/mtd/peb.c                           |   2 +-
 drivers/mtd/ubi/io.c                        |   8 +
 drivers/net/designware_imx.c                |   5 +
 drivers/pci/pci-tegra.c                     |   2 +-
 drivers/virtio/virtio_ring.c                |   4 +-
 firmware/Kconfig                            |   4 +
 fs/devfs-core.c                             |   6 +
 fs/fs.c                                     |  10 +-
 fs/nfs.c                                    | 330 ++++++++++++++------
 fs/qemu_fw_cfg.c                            |  36 +--
 images/Makefile.k3                          |  62 ++--
 include/bootm-overrides.h                   |   7 +-
 include/driver.h                            |   2 +
 include/i2c/i2c.h                           |   2 +
 include/linux/list.h                        |  14 +
 include/mach/imx/iomux-mx8mp.h              |   4 +-
 include/range.h                             |  31 +-
 include/zero_page.h                         |  12 +-
 lib/base64.c                                |  10 +-
 lib/parameter.c                             |   2 +
 net/9p/mod.c                                |   2 +-
 net/net.c                                   |  47 ++-
 scripts/imx/Makefile.mingw64                |   4 +-
 scripts/imx/pread.c                         |  25 ++
 scripts/rkimage.c                           |  15 +-
 test/strategy.py                            |   3 +
 52 files changed, 557 insertions(+), 252 deletions(-)
 delete mode 100644 common/boards/qemu-virt/fitimage-pubkey.dts
 create mode 100644 scripts/imx/pread.c

-- 
2.47.3



