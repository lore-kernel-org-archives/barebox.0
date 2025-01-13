Delivery-date: Mon, 13 Jan 2025 12:29:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXIdK-000Ztc-2n
	for lore@lore.pengutronix.de;
	Mon, 13 Jan 2025 12:29:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXIdI-0006Hv-3c
	for lore@pengutronix.de; Mon, 13 Jan 2025 12:29:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/l5srBw4H0kZI90mEjp48YOTlDzPpNGAcXpj1rMNqc4=; b=eYkJ4HrCyIM3mwK2dM3sTHbQcN
	MIivRtI1z6h0iFMLCfycAt2EJNR5Om6Jk7n4oyNWqSjcUqv3r8yvVQ19YJrd1z2OSlMy8/0j6NeDe
	pB7D/oS+62AOID4WfZfXkMNposwwydalSjpJQR8GJaUrbff7rMS1zvdYfvN7OZ17Gr+dji7+KqVOu
	i9n8UgYHc47tll6MheUKqLbo07GJa7wlXZZtX0osS9/ypaQCUXWi1isT1p2SNwfsOfaKUYsHG3y3s
	kKtTSRJqdKp2g1vlyLJ+jVHEua5c9w62Y1d1JlAdwb3E/h8XyAA3JbgEp1v8b92w+hxjTcjne9yWL
	eBhDqVBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXIch-00000004uRU-2aHj;
	Mon, 13 Jan 2025 11:28:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXIau-00000004tr1-25h7
	for barebox@lists.infradead.org;
	Mon, 13 Jan 2025 11:26:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXIar-0005ee-Tt; Mon, 13 Jan 2025 12:26:53 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXIar-000FRD-00;
	Mon, 13 Jan 2025 12:26:53 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXIar-001FK2-1O;
	Mon, 13 Jan 2025 12:26:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 13 Jan 2025 12:26:47 +0100
Message-Id: <20250113-k3-r5-v3-0-065fcdcc28d3@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHf4hGcC/2WMyw6DIBBFf8XMujSAD4qr/kfTBcqokyZowBIb4
 78XTdy0y3Nzz1khoCcMUGcreIwUaHQJ8ksG7WBcj4xsYpBcFkJIzV458yXj1uSoVYOm05C+k8e
 OlqPzeCYeKMyj/xzZKPb1txAF46xSbdE0hTRlq+4Tuv49+9HRcrUIeybKUy254NWpyqRqi5VUn
 N80dn/qtm1fDlVeTtoAAAA=
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736767610; l=8868;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=0LHzS4t+ItOuDX9O8tb94gzIjIDNdQ0EfL7K8nbCfBw=;
 b=RiZlgv8MQu+aNAlVWKGt2haB0ADrKU+B6rinihPk7i8SMsOvpllSeWvuP/lxmD/gF7EIGilEW
 UFgyr1VMEe5C0f81KTvlSuhQiWw/JKb2ov57S6KEZltMloFiOrE74yR
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250113_032656_723161_FA7743BD 
X-CRM114-Status: GOOD (  16.06  )
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
Subject: [PATCH v3 00/23] ARM: K3: Add R5 boot support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

So far we only supported the TI K3 SoCs booting 2nd stage after U-Boot.
This series adds full boot support for K3 SoCs, or more specifically,
the AM625 SoC.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Changes in v3:
- add patch to add AM625(sip)-SK board support
- add patch to detect DRAM size on AM625
- add tool to generate config files from yaml files instead of adding
  binary files from U-Boot
- pass only used regions to MPU init instead of all
- implement cache maintenance functions and coherent mem in MPU support
- drop patch to use PIO for small MMC transfers (no longer needed due to
  proper cache maintenance with MPU support)
- Document origin of keys
- Link to v2: https://lore.kernel.org/r/20250106-k3-r5-v2-0-9de6270089ef@pengutronix.de

Changes in v2:
- remove unused enable_caches() function
- add patch to disable secondary watchdogs in barebox
- add patch to fix SCR read on Cortex-R5 cores
- handle inner cert in K3 image tool
- Link to v1: https://lore.kernel.org/r/20241129-k3-r5-v1-0-67c4bb42a5c7@pengutronix.de

---
Sascha Hauer (23):
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
      scripts: k3: add script to generate cfg files from yaml
      ARM: k3: Add k3img tool
      ARM: beagleplay: add Cortex-R5 boot support
      Documentation: add build documentation for TI K3 SoCs
      ARM: am625: disable secondary watchdogs
      ARM: k3: Add DRAM size detection
      ARM: k3: am625-sk board support

 Documentation/boards/ti-k3.rst                     |   79 +
 arch/arm/Kconfig                                   |    2 -
 arch/arm/boards/Makefile                           |    1 +
 arch/arm/boards/am625-sk/Makefile                  |    3 +
 arch/arm/boards/am625-sk/am625-sk-ddr.c            | 2223 +++++++
 arch/arm/boards/am625-sk/am625sip-sk-ddr.c         | 2229 +++++++
 arch/arm/boards/am625-sk/ddr.h                     |    7 +
 arch/arm/boards/am625-sk/entry-r5.S                |   29 +
 arch/arm/boards/am625-sk/entry.S                   |   29 +
 arch/arm/boards/am625-sk/lowlevel.c                |  119 +
 arch/arm/boards/beagleplay/Makefile                |    4 +-
 arch/arm/boards/beagleplay/ddr.c                   |  586 ++
 arch/arm/boards/beagleplay/ddr.h                   |    6 +
 arch/arm/boards/beagleplay/entry-r5.S              |   18 +
 arch/arm/boards/beagleplay/lowlevel.c              |   38 +
 arch/arm/cpu/Kconfig                               |    8 +
 arch/arm/cpu/Makefile                              |    3 +-
 arch/arm/cpu/armv7r-mpu.c                          |  254 +
 arch/arm/cpu/cpu.c                                 |    3 +
 arch/arm/cpu/cpuinfo.c                             |   11 +-
 arch/arm/cpu/no-mmu.c                              |   20 +
 arch/arm/cpu/start.c                               |    7 +
 arch/arm/cpu/uncompress.c                          |    2 +
 arch/arm/dts/Makefile                              |    3 +-
 arch/arm/dts/k3-am625-r5-beagleplay.dts            |    4 +
 arch/arm/dts/k3-am625-r5-sk.dts                    |    4 +
 arch/arm/dts/k3-am625-r5.dtsi                      |  103 +
 arch/arm/dts/k3-am625-sk.dts                       |    9 +
 arch/arm/dts/k3-am625.dtsi                         |   15 +
 arch/arm/dts/k3-am625sip-r5-sk.dts                 |    4 +
 arch/arm/include/asm/armv7r-mpu.h                  |  135 +
 arch/arm/include/asm/cputype.h                     |   11 +
 arch/arm/include/asm/dma.h                         |    3 +-
 arch/arm/mach-k3/Kconfig                           |   27 +
 arch/arm/mach-k3/Makefile                          |   18 +
 arch/arm/mach-k3/board-cfg-am625.yaml              |   36 +
 arch/arm/mach-k3/common.c                          |   16 +-
 arch/arm/mach-k3/custMpk.pem                       |   51 +
 arch/arm/mach-k3/ddrss.c                           |   76 +
 arch/arm/mach-k3/pm-cfg-am625.yaml                 |   12 +
 arch/arm/mach-k3/r5.c                              |  280 +
 arch/arm/mach-k3/rm-cfg-am625.yaml                 |  981 +++
 arch/arm/mach-k3/schema.yaml                       |  436 ++
 arch/arm/mach-k3/sec-cfg-am625.yaml                |  379 ++
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
 drivers/pmdomain/ti/Kconfig                        |    4 +
 drivers/pmdomain/ti/Makefile                       |    1 +
 drivers/pmdomain/ti/ti-k3.c                        |  479 ++
 drivers/remoteproc/Kconfig                         |    6 +
 drivers/remoteproc/Makefile                        |    2 +
 drivers/remoteproc/ti_k3_arm64_rproc.c             |  226 +
 drivers/remoteproc/ti_k3_system_controller.c       |  214 +
 drivers/remoteproc/ti_sci_proc.h                   |  149 +
 images/.gitignore                                  |    1 +
 images/Makefile.k3                                 |   65 +
 include/mach/k3/common.h                           |    4 +
 include/mach/k3/debug_ll.h                         |   32 +-
 include/mach/k3/r5.h                               |    9 +
 include/soc/k3/clk.h                               |    7 +
 include/soc/k3/ddr.h                               |   26 +
 include/soc/ti/ti_sci_protocol.h                   |    7 -
 lib/math/Makefile                                  |    2 +-
 scripts/Makefile.lib                               |    3 +
 scripts/k3img                                      |  187 +
 scripts/ti-board-config.py                         |  170 +
 103 files changed, 36756 insertions(+), 89 deletions(-)
---
base-commit: 67606e84177c322b92e28d5b5ba3b06c2b1723c3
change-id: 20241129-k3-r5-0da3e97beaf9

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



