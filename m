Delivery-date: Mon, 06 Jan 2025 15:52:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUoSf-00HWus-2P
	for lore@lore.pengutronix.de;
	Mon, 06 Jan 2025 15:52:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUoSe-0002Qr-0m
	for lore@pengutronix.de; Mon, 06 Jan 2025 15:52:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0nTcqItfELU8W34d9FQCmJgCtDvvPsy13+JxXmFbsO4=; b=OZA5h/B/bn+uRg48ApkSozavac
	BO9I6OX8arN/aTo+S6NO2B+mki4q9biJfaTcWtsC/X3/AXkYmTDP59mMdCsflzBkmgqwg97+4QtmP
	nhodXkQMH6zaILzuM2YRyrmEskoBEqFCO/MHONEsPu+ojdR02JsqRDKzMVj2gLsC+71OwfPPD05TY
	b/doiHvwReCUsHgM352mYh4tKsDHzFEaZg9eteKxBlKRMLYIxEhF/mR9LTAd0pq4X5P9Z343SXbr0
	UT6O1JkKF43svPiyjrtcDsVFUzz8FTRE/ijFsfoOX/QIB1GIvYhqmRw5xqRLKxr8VEan2HBPvTSJ+
	B+0qBM7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUoSV-00000001ekJ-1pft;
	Mon, 06 Jan 2025 14:51:59 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUnRn-00000001S7U-21Yo
	for barebox@bombadil.infradead.org;
	Mon, 06 Jan 2025 13:47:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=0nTcqItfELU8W34d9FQCmJgCtDvvPsy13+JxXmFbsO4=; b=C0Y3KljhpRgcTkdkciNvBmL6K1
	Fv6vsg0GD/nsQu1mj7lHIaB5ZfJ8JhQCcaxbqbiHfY17G/zS7aJZKIFjC2PPj+H9M73NV5LwTVicu
	kT4siFENOcvhrFpd0FEZAB23XdWucccgmSUMObgp6wcBKcO6GeYzEj+faTFLV8mu1aJF7uBeWUUKm
	nLyxWVx7Pw1ueIikt4WCC0//gRiX50FeWzPjJD1IL52U1tRs4o3BNVz5JvXWgEa47nN6pSD9TE9bV
	2JVzX/6M6OGNjVdMEsKEgbNKl79XEO+SnfPWiGYvltjtKxXfjqkzzKmiwTGKSCxKO0DnHGwzX82vu
	tCkukF0w==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUnRi-00000008vvQ-3Tnu
	for barebox@lists.infradead.org;
	Mon, 06 Jan 2025 13:47:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUnRd-0005lA-SR; Mon, 06 Jan 2025 14:47:01 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUnRc-007B3h-2P;
	Mon, 06 Jan 2025 14:47:01 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUnRd-00CsVv-1T;
	Mon, 06 Jan 2025 14:47:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 06 Jan 2025 14:46:57 +0100
Message-Id: <20250106-k3-r5-v2-0-9de6270089ef@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANHee2cC/13MQQ6DIBCF4auYWZcGEEvoqvdoXCCMOmkCBqyxM
 dy91GWX/8vLd0DGRJjh3hyQcKNMMdSQlwbcbMOEjHxtkFwqIaRhr5aljnFvWzR6QDsaqN8l4Uj
 76Tz72jPlNabPyW7it/4Lm2Cc3bRTw6Ck7Zx+LBim95pioP3qEfpSyhewn0UKnwAAAA==
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736171218; l=7022;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=9S7JLp5yeMfr6d/hObuWpdVNE7jJap82Ulk4jDMVETw=;
 b=agg86JZ1FAoSkdemoD5DptS5IJIDaMeh9764+fVjbKcGRfb8omNl1Nw8EBUBiBMTwAG4i1tQz
 5GvnoVBfqWBDAV9fsgpZdqRHdTJjoCcWVE9n7il0bdiw6cgb2WsikHL
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_134707_202121_C058C45C 
X-CRM114-Status: GOOD (  14.74  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 00/22] ARM: K3: Add R5 boot support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

So far we only supported the TI K3 SoCs booting 2nd stage after U-Boot.
This series adds full boot support for K3 SoCs, or more specifically,
the AM625 SoC.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Changes in v2:
- remove unused enable_caches() function
- add patch to disable secondary watchdogs in barebox
- add patch to fix SCR read on Cortex-R5 cores
- handle inner cert in K3 image tool
- Link to v1: https://lore.kernel.org/r/20241129-k3-r5-v1-0-67c4bb42a5c7@pengutronix.de

---
Sascha Hauer (22):
      ARM: add ARMv7R MPU support
      lib/rationale: compile for pbl
      DDR: Add k3 DDR driver
      ARM: move ARM_CPU_PART_* defines to header
      nommu_v7_vectors_init: disable for r5
      clocksource: timer-ti-dm: add support for K3 SoCs
      ARM: K3: mount /boot even with env handling disabled
      clk: add K3 clk driver
      pmdomain: add K3 driver
      rproc: add K3 arm64 rproc driver
      ARM: k3: add k3_debug_ll_init()
      ARM: K3: use debug_ll code for regular PBL console
      elf: use iomem regions as fallback when loading to non-sdram memory
      rproc: add K3 system_controller
      firmware: ti_sci: add function to get global handle
      ARM: k3: Add initial r5 support
      ARM: k3: Add k3img tool
      ARM: beagleplay: add binary files
      ARM: beagleplay: add Cortex-R5 boot support
      Documentation: add build documentation for TI K3 SoCs
      ARM: am625: disable secondary watchdogs
      mci: am654-sdhci: Use PIO for small transfers

 Documentation/boards/ti-k3.rst                     |   79 +
 arch/arm/Kconfig                                   |    2 -
 arch/arm/boards/beagleplay/Makefile                |    4 +-
 arch/arm/boards/beagleplay/combined-dm-cfg.bin     |  Bin 0 -> 1346 bytes
 arch/arm/boards/beagleplay/combined-sysfw-cfg.bin  |  Bin 0 -> 1740 bytes
 arch/arm/boards/beagleplay/ddr.c                   |  586 ++
 arch/arm/boards/beagleplay/ddr.h                   |    6 +
 arch/arm/boards/beagleplay/entry-r5.S              |   18 +
 arch/arm/boards/beagleplay/lowlevel.c              |   39 +
 arch/arm/cpu/Kconfig                               |    7 +
 arch/arm/cpu/Makefile                              |    3 +-
 arch/arm/cpu/armv7r-mpu.c                          |  104 +
 arch/arm/cpu/cpu.c                                 |    3 +
 arch/arm/cpu/cpuinfo.c                             |   11 +-
 arch/arm/cpu/no-mmu.c                              |   20 +
 arch/arm/cpu/uncompress.c                          |    2 +
 arch/arm/dts/Makefile                              |    2 +-
 arch/arm/dts/k3-am625-r5-beagleplay.dts            |    4 +
 arch/arm/dts/k3-am625-r5.dtsi                      |  103 +
 arch/arm/dts/k3-am625.dtsi                         |   15 +
 arch/arm/include/asm/armv7r-mpu.h                  |  134 +
 arch/arm/include/asm/cputype.h                     |   11 +
 arch/arm/mach-k3/Kconfig                           |   21 +
 arch/arm/mach-k3/Makefile                          |    1 +
 arch/arm/mach-k3/common.c                          |   15 +-
 arch/arm/mach-k3/custMpk.pem                       |   51 +
 arch/arm/mach-k3/r5.c                              |  277 +
 arch/arm/mach-k3/ti-degenerate-key.pem             |   10 +
 common/elf.c                                       |   14 +-
 drivers/clk/Makefile                               |    1 +
 drivers/clk/k3/Makefile                            |    2 +
 drivers/clk/k3/am625.c                             |  475 ++
 drivers/clk/k3/pll.c                               |  375 ++
 drivers/clk/k3/ti-k3-clk.h                         |    8 +
 drivers/clocksource/timer-ti-dm.c                  |   53 +-
 drivers/ddr/Kconfig                                |    1 +
 drivers/ddr/Makefile                               |    1 +
 drivers/ddr/k3/Kconfig                             |    2 +
 drivers/ddr/k3/Makefile                            |    1 +
 .../ddr/k3/am64/lpddr4_address_slice_0_macros.h    |  624 ++
 .../ddr/k3/am64/lpddr4_address_slice_1_macros.h    |  624 ++
 .../ddr/k3/am64/lpddr4_address_slice_2_macros.h    |  624 ++
 .../ddr/k3/am64/lpddr4_am64_ctl_regs_rw_masks.h    |   21 +
 drivers/ddr/k3/am64/lpddr4_am64_if.h               |  103 +
 drivers/ddr/k3/am64/lpddr4_am64_obj_if.h           |   14 +
 drivers/ddr/k3/am64/lpddr4_am64_structs_if.h       |   15 +
 drivers/ddr/k3/am64/lpddr4_ctl_regs.h              | 1306 ++++
 drivers/ddr/k3/am64/lpddr4_data_slice_0_macros.h   | 2036 +++++++
 drivers/ddr/k3/am64/lpddr4_data_slice_1_macros.h   | 2036 +++++++
 drivers/ddr/k3/am64/lpddr4_ddr_controller_macros.h | 6436 ++++++++++++++++++++
 drivers/ddr/k3/am64/lpddr4_phy_core_macros.h       | 1838 ++++++
 drivers/ddr/k3/am64/lpddr4_pi_macros.h             | 5784 ++++++++++++++++++
 drivers/ddr/k3/cps_drv_lpddr4.h                    |  102 +
 drivers/ddr/k3/k3-ddrss.c                          |  488 ++
 drivers/ddr/k3/lpddr4.c                            | 1071 ++++
 drivers/ddr/k3/lpddr4.h                            |   69 +
 drivers/ddr/k3/lpddr4_am64_ctl_regs_rw_masks.c     | 1309 ++++
 drivers/ddr/k3/lpddr4_am6x.c                       |  398 ++
 drivers/ddr/k3/lpddr4_am6x.h                       |   41 +
 drivers/ddr/k3/lpddr4_am6x_sanity.h                |  253 +
 drivers/ddr/k3/lpddr4_if.h                         |  142 +
 drivers/ddr/k3/lpddr4_obj_if.c                     |   52 +
 drivers/ddr/k3/lpddr4_obj_if.h                     |   88 +
 drivers/ddr/k3/lpddr4_sanity.h                     |  439 ++
 drivers/ddr/k3/lpddr4_structs_if.h                 |   52 +
 drivers/firmware/ti_sci.c                          |   59 +-
 drivers/mci/am654-sdhci.c                          |   12 +-
 drivers/pmdomain/ti/Kconfig                        |    4 +
 drivers/pmdomain/ti/Makefile                       |    1 +
 drivers/pmdomain/ti/ti-k3.c                        |  479 ++
 drivers/remoteproc/Kconfig                         |    6 +
 drivers/remoteproc/Makefile                        |    2 +
 drivers/remoteproc/ti_k3_arm64_rproc.c             |  226 +
 drivers/remoteproc/ti_k3_system_controller.c       |  214 +
 drivers/remoteproc/ti_sci_proc.h                   |  149 +
 images/Makefile.k3                                 |   27 +
 include/mach/k3/debug_ll.h                         |   32 +-
 include/mach/k3/r5.h                               |    9 +
 include/soc/k3/clk.h                               |    7 +
 include/soc/k3/ddr.h                               |   26 +
 include/soc/ti/ti_sci_protocol.h                   |    7 -
 lib/math/Makefile                                  |    2 +-
 scripts/k3img                                      |  187 +
 83 files changed, 29784 insertions(+), 91 deletions(-)
---
base-commit: 7e18b6903e500c93efc3ac18dc3e8c6920659cd2
change-id: 20241129-k3-r5-0da3e97beaf9

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



