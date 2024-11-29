Delivery-date: Fri, 29 Nov 2024 12:45:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGzQy-001q8p-1d
	for lore@lore.pengutronix.de;
	Fri, 29 Nov 2024 12:45:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGzQx-0005gl-CV
	for lore@pengutronix.de; Fri, 29 Nov 2024 12:45:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=w7hwCydc9W5oqFFoU56PXybsTVfPHWbfYpel5IIzGmo=; b=oPL+8jclnXONtcBmT7Oq1mnFHQ
	yB3z2RettD8hzplcJq2DDAaYvECiLmtuFLY4jHr4kL4oxeQmYavI7fXEJJG3GMHj4c945b1e4kOzp
	M6iyKN8ksvSoD97Fnlzb8IC4vTyL5SV6fDmqI2Cwci4TKk8d+rpTbLgnaW125O56p5O7S6wBv0XnG
	839MmZWJqtSCnwWYRvVvCxzhSF4aeZjSJ6y1fa7Th35tuDZlTc9XcjtqLiLvTR9e4OJwOUJcaI02r
	gvKlGilWpZg53gvmU0RjA8YsW43jGxdahs6veu2BnWcPbifht0MVQ0AwrL1bu+uKH3sLqENx9JhPY
	CQYacqew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGzQJ-0000000HaB0-1GRW;
	Fri, 29 Nov 2024 11:44:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGzQD-0000000Ha7E-390E
	for barebox@lists.infradead.org;
	Fri, 29 Nov 2024 11:44:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGzQ9-0005C5-Vr; Fri, 29 Nov 2024 12:44:25 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGzQ8-000mJF-2v;
	Fri, 29 Nov 2024 12:44:25 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGzQ9-000vyS-1z;
	Fri, 29 Nov 2024 12:44:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 29 Nov 2024 12:44:15 +0100
Message-Id: <20241129-k3-r5-v1-0-67c4bb42a5c7@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAA+pSWcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxNDQyNL3Wxj3SJTXYOURONUS/Ok1MQ0SyWg2oKi1LTMCrA50bG1tQDnA+F
 cVwAAAA==
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1732880662; l=6440;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=fPTimhgJRniaZ0uU43drfzKFl9l/0kKctpGlZyarslM=;
 b=sVCYR4cPAj9aFhMv3kYQKloef6C8wTSDs7U6FBCJ6/BwCrfBm5sU3Pau7wTCdSIMmIe6CgCpC
 xiN1uFtKwERCaewqhYclFg4Xs8N35TlN/ABjcCkuS6PWB+j74PHlI+f
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241129_034429_942938_7AB5F822 
X-CRM114-Status: GOOD (  12.07  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 00/20] ARM: K3: Add R5 boot support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

So far we only supported the TI K3 SoCs booting 2nd stage after U-Boot.
This series adds full boot support for K3 SoCs, or more specifically,
the AM625 SoC.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (20):
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

 Documentation/boards/ti-k3.rst                     |   79 +
 arch/arm/Kconfig                                   |    2 -
 arch/arm/boards/beagleplay/Makefile                |    4 +-
 arch/arm/boards/beagleplay/combined-dm-cfg.bin     |  Bin 0 -> 1346 bytes
 arch/arm/boards/beagleplay/combined-sysfw-cfg.bin  |  Bin 0 -> 1740 bytes
 arch/arm/boards/beagleplay/ddr.c                   |  567 ++
 arch/arm/boards/beagleplay/ddr.h                   |    6 +
 arch/arm/boards/beagleplay/entry-r5.S              |   18 +
 arch/arm/boards/beagleplay/lowlevel.c              |   39 +
 arch/arm/cpu/Kconfig                               |    7 +
 arch/arm/cpu/Makefile                              |    3 +-
 arch/arm/cpu/armv7r-mpu.c                          |  117 +
 arch/arm/cpu/cpu.c                                 |    3 +
 arch/arm/cpu/cpuinfo.c                             |   11 +-
 arch/arm/cpu/no-mmu.c                              |   20 +
 arch/arm/cpu/uncompress.c                          |    2 +
 arch/arm/dts/Makefile                              |    2 +-
 arch/arm/dts/k3-am625-r5-beagleplay.dts            |    4 +
 arch/arm/dts/k3-am625-r5.dtsi                      |  103 +
 arch/arm/include/asm/armv7r-mpu.h                  |  134 +
 arch/arm/include/asm/cputype.h                     |   11 +
 arch/arm/mach-k3/Kconfig                           |   21 +
 arch/arm/mach-k3/Makefile                          |    1 +
 arch/arm/mach-k3/common.c                          |   15 +-
 arch/arm/mach-k3/r5.c                              |  270 +
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
 drivers/ddr/k3/k3-ddrss.c                          |  437 ++
 drivers/ddr/k3/lpddr4.c                            | 1069 ++++
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
 drivers/pmdomain/ti/Kconfig                        |    4 +
 drivers/pmdomain/ti/Makefile                       |    1 +
 drivers/pmdomain/ti/ti-k3.c                        |  479 ++
 drivers/remoteproc/Kconfig                         |    6 +
 drivers/remoteproc/Makefile                        |    2 +
 drivers/remoteproc/ti_k3_arm64_rproc.c             |  226 +
 drivers/remoteproc/ti_k3_system_controller.c       |  214 +
 drivers/remoteproc/ti_sci_proc.h                   |  149 +
 images/Makefile.k3                                 |   24 +
 include/mach/k3/debug_ll.h                         |   32 +-
 include/mach/k3/r5.h                               |    9 +
 include/soc/k3/clk.h                               |    7 +
 include/soc/k3/ddr.h                               |   22 +
 include/soc/ti/ti_sci_protocol.h                   |    7 -
 lib/math/Makefile                                  |    2 +-
 scripts/k3img                                      |  160 +
 80 files changed, 29609 insertions(+), 88 deletions(-)
---
base-commit: 281c4cbf1235cfa2524325ac004e5ae951992a02
change-id: 20241129-k3-r5-0da3e97beaf9

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



