Delivery-date: Tue, 18 Feb 2025 10:39:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tkK4m-003qzH-0p
	for lore@lore.pengutronix.de;
	Tue, 18 Feb 2025 10:39:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tkK4i-00045c-2k
	for lore@pengutronix.de; Tue, 18 Feb 2025 10:39:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HZso0L7K9L1oTHoKYzvQ1pV2kNevTYTHT+FTbah6qG8=; b=KT28ariWm+NeOW
	N+/CzpfdOfoK90TFhzLTz9nhwWGoxN6EjYp20fjthjGk6GhveDz60aDqYnn5vESFpCE1hdCvd3Beo
	osWCFmVTxeVXI7EwqKxWUpuPN6HGOvmG1AqCEtguDcjzlCUgXXBaHsYWhje2QQHUA/9/qeaiIUSM7
	h1ucFjseo9KewjxUIbhqkiQnSeUCZE5SJ1L2iPF0fqt8OYNpD+LKqx+gMqzehrQ/yrkO9gFwK+ea5
	7/ff3vWhImXybdQE/8MU0rO3MCjCq/KOqycTjjUHmvOYH0i+6HZhj/GhWSyawybwemOzNdpC+KeHQ
	Fg8g8g5UHvbukrhrYUBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkK41-00000007YRi-1iVw;
	Tue, 18 Feb 2025 09:38:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkJnX-00000007UJA-1bD4
	for barebox@lists.infradead.org;
	Tue, 18 Feb 2025 09:21:48 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1tkJnU-0000aY-Ou; Tue, 18 Feb 2025 10:21:44 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 18 Feb 2025 10:21:25 +0100
Message-Id: <20250218-v2024-10-0-topic-socfpga-agilex5-v2-0-30b6f507810b@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABZRtGcC/5WNQQ7CIBREr2JY+w2QKtaV9zBdUPjQnxggUElN0
 7tLewN382aSNysrmAkLe5xWlrFSoRgayPOJmUkHj0C2MZNcdoLLHuqeQHDgMMdEBko0LnkN2tM
 blysYflfjaJRVqmNNkzI6Wo6L19B4ojLH/D0eq9jbP+RVtKm/WSetstq67pkw+M+cY6DlYpEN2
 7b9AHbBOdfVAAAA
X-Change-ID: 20241029-v2024-10-0-topic-socfpga-agilex5-c087bbc7d774
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250218_012147_433078_FE696F8A 
X-CRM114-Status: GOOD (  13.65  )
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
Subject: [PATCH v2 00/10] ARM: SoCFPGA: Add initial support for Agilex5
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series adds basic support for the Altera Agilex5 SoCFPGA series.
Currently only booting from QSPI is supported. Flashing the image to the
QSPI has to be done with quartus_pgm, therefore there are still some
essential things left to have proper support for this platform.

Nevertheless it boots from QSPI and starts linux on the included
Arrow AXE5 board.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
Changes in v2:
- reorder patches
- rebase to v2025.01.0
- rework xgmac to use correct DMA buffers
- fix variable/functions scopes by adding name prefixes
- add pr_fmt where necessary
- axe5: board: convert from postcore_initcall to device_platform_driver
- Link to v1: https://lore.barebox.org/20241029-v2024-10-0-topic-socfpga-agilex5-v1-0-96df2d7dadf4@pengutronix.de

---
Steffen Trumtrar (10):
      ARM: socfpga: kconfig: sort entries
      mach: socfpga: debug_ll: rework putc_ll
      reset: reset-socfpga: build only for 32-bit socfpga
      arm: socfgpa: add support for SoCFPGA Agilex5
      linux: clk: add clk_parent_data
      clk: support init->parent_data
      clk: socfpga: add agilex5 clock support
      net: phy: add Analog Devices ADIN1300
      net: add support for Designware XGMAC (10gb) ethernet
      ARM: socfpga: add Arrow AXE5 Agilex5 board

 arch/arm/Kconfig                              |   3 -
 arch/arm/boards/Makefile                      |   1 +
 arch/arm/boards/arrow-axe5-eagle/Makefile     |   3 +
 arch/arm/boards/arrow-axe5-eagle/board.c      |  24 +
 arch/arm/boards/arrow-axe5-eagle/lowlevel.c   |  74 +++
 arch/arm/configs/socfpga-agilex5_defconfig    |  88 +++
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/socfpga_agilex5.dtsi             |  71 +++
 arch/arm/dts/socfpga_agilex5_axe5_eagle.dts   |  91 +++
 arch/arm/mach-socfpga/Kconfig                 |  56 +-
 arch/arm/mach-socfpga/Makefile                |  13 +
 arch/arm/mach-socfpga/agilex5-clock-manager.c | 383 ++++++++++++
 arch/arm/mach-socfpga/agilex5-sdram.c         | 347 +++++++++++
 arch/arm/mach-socfpga/agilex5-secreg.c        | 289 +++++++++
 arch/arm/mach-socfpga/arria10-init.c          |   2 +-
 arch/arm/mach-socfpga/atf.c                   |  34 +
 arch/arm/mach-socfpga/cpu_init.c              |  43 ++
 arch/arm/mach-socfpga/cyclone5-init.c         |   2 +-
 arch/arm/mach-socfpga/iossm_mailbox.c         | 511 +++++++++++++++
 arch/arm/mach-socfpga/iossm_mailbox.h         | 157 +++++
 arch/arm/mach-socfpga/mailbox_s10.c           | 347 +++++++++++
 arch/arm/mach-socfpga/secure_reg_helper.c     |  75 +++
 arch/arm/mach-socfpga/smc_api.c               |  43 ++
 arch/arm/mach-socfpga/soc64-system-manager.c  | 102 +++
 arch/arm/mach-socfpga/soc64-wrap-handoff.c    | 124 ++++
 common/Kconfig.debug_ll                       |  17 +
 drivers/clk/clk.c                             |  48 +-
 drivers/clk/socfpga/Makefile                  |   4 +-
 drivers/clk/socfpga/clk-agilex5.c             | 833 +++++++++++++++++++++++++
 drivers/clk/socfpga/clk-gate-s10.c            | 184 ++++++
 drivers/clk/socfpga/clk-periph-s10.c          | 163 +++++
 drivers/clk/socfpga/clk-pll-s10.c             | 140 +++++
 drivers/clk/socfpga/clk.h                     |   9 +
 drivers/clk/socfpga/stratix10-clk.h           |  73 +++
 drivers/net/Kconfig                           |  18 +
 drivers/net/Makefile                          |   2 +
 drivers/net/designware_xgmac.c                | 856 ++++++++++++++++++++++++++
 drivers/net/designware_xgmac.h                | 298 +++++++++
 drivers/net/designware_xgmac_socfpga.c        | 156 +++++
 drivers/net/phy/Kconfig                       |   7 +
 drivers/net/phy/Makefile                      |   1 +
 drivers/net/phy/adin.c                        | 360 +++++++++++
 drivers/reset/Kconfig                         |   6 +
 drivers/reset/Makefile                        |   2 +-
 firmware/Kconfig                              |   3 +
 firmware/Makefile                             |   1 +
 images/Makefile.socfpga                       |  17 +
 include/linux/clk.h                           |  15 +
 include/mach/socfpga/agilex5-clk.h            | 266 ++++++++
 include/mach/socfpga/atf.h                    |  14 +
 include/mach/socfpga/debug_ll.h               |  44 +-
 include/mach/socfpga/generic.h                |   3 +
 include/mach/socfpga/init.h                   |   2 +
 include/mach/socfpga/intel-smc.h              | 545 ++++++++++++++++
 include/mach/socfpga/mailbox_s10.h            | 191 ++++++
 include/mach/socfpga/secure_reg_helper.h      |  19 +
 include/mach/socfpga/smc_api.h                |  12 +
 include/mach/socfpga/soc64-firewall.h         | 177 ++++++
 include/mach/socfpga/soc64-handoff.h          |  50 ++
 include/mach/socfpga/soc64-regs.h             | 195 ++++++
 include/mach/socfpga/soc64-reset-manager.h    |  40 ++
 include/mach/socfpga/soc64-sdram.h            | 203 ++++++
 include/mach/socfpga/soc64-system-manager.h   | 176 ++++++
 63 files changed, 7994 insertions(+), 40 deletions(-)
---
base-commit: fb590cfa8fea6906d3f78dd409856d350e24b582
change-id: 20241029-v2024-10-0-topic-socfpga-agilex5-c087bbc7d774

Best regards,
-- 
Steffen Trumtrar <s.trumtrar@pengutronix.de>



