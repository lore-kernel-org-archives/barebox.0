Delivery-date: Tue, 22 Apr 2025 10:39:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u799u-003yaP-2v
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 10:39:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u799i-00027e-T1
	for lore@pengutronix.de; Tue, 22 Apr 2025 10:39:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6+LuVlJt9gWX1hBf7CHGEDn7sR6zhLBXTpEQpL5VL8c=; b=zcS9U86KVMPvAxL3EJg1uaEWKm
	voeEXAbbIsA8ByrUSYgHZbQEBhaGcdL3kbXhlJpoIAa6vAWSDaH8XNqh2xh3aivP/DzNA4DsIzyBz
	cBSVhrPMjxuPjpmMrnjnqhbpmxcAJzclMR+65623TAwi9qgAdjZjr7iNCqCfO17S4dGuWSUZ/rF5/
	DAUNe/uwgCj9didDw/wYeKHleRnaojLaiy6fmWSfLmYMxu0zA5wAuY2j6TGxMp+TrGoxSRHZzPvET
	14NdxgvE2YCdoQ9Qtt3dZzI3uE8j+cAUpxW1yIq99BRa4e1H5w5mYo+APvSGCJ2kjPKQRH/RKACZo
	MCe60FJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u798o-00000006MIb-1FBA;
	Tue, 22 Apr 2025 08:38:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u78UL-00000006CKY-0HjH
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 07:56:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78UK-0000eW-05
	for barebox@lists.infradead.org; Tue, 22 Apr 2025 09:56:16 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78UJ-001Vvl-2Z
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:56:15 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78UJ-000vGy-2I
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:56:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 22 Apr 2025 09:56:13 +0200
Message-Id: <20250422075615.220139-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250422075615.220139-1-a.fatoum@pengutronix.de>
References: <20250422075615.220139-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_005617_582964_B415CC2B 
X-CRM114-Status: GOOD (  13.36  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] restart: give all restart_handler::restart callbacks a flags parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

Warm reset will become an argument to the reset function that drivers
can check and act accordingly. This will also make synchronization with
Linux drivers easier.

Prepare for that by adapting the callback of all our restart drivers.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/cpu/psci-client.c                     | 3 ++-
 arch/arm/mach-at91/at91rm9200_time.c           | 3 ++-
 arch/arm/mach-at91/at91sam9260.c               | 3 ++-
 arch/arm/mach-at91/at91sam9261.c               | 3 ++-
 arch/arm/mach-at91/at91sam9263.c               | 3 ++-
 arch/arm/mach-at91/at91sam9_rst.c              | 6 ++++--
 arch/arm/mach-at91/at91sam9g45.c               | 3 ++-
 arch/arm/mach-at91/at91sam9n12.c               | 3 ++-
 arch/arm/mach-at91/at91sam9x5.c                | 3 ++-
 arch/arm/mach-at91/sama5d4.c                   | 3 ++-
 arch/arm/mach-clps711x/common.c                | 3 ++-
 arch/arm/mach-layerscape/restart.c             | 3 ++-
 arch/arm/mach-mvebu/armada-370-xp.c            | 3 ++-
 arch/arm/mach-mvebu/dove.c                     | 3 ++-
 arch/arm/mach-mvebu/kirkwood.c                 | 3 ++-
 arch/arm/mach-mxs/soc-imx23.c                  | 3 ++-
 arch/arm/mach-mxs/soc-imx28.c                  | 3 ++-
 arch/arm/mach-omap/am33xx_generic.c            | 3 ++-
 arch/arm/mach-omap/omap3_generic.c             | 3 ++-
 arch/arm/mach-omap/omap4_generic.c             | 3 ++-
 arch/arm/mach-pxa/common.c                     | 3 ++-
 arch/arm/mach-rockchip/rk3188.c                | 3 ++-
 arch/arm/mach-rockchip/rk3288.c                | 3 ++-
 arch/arm/mach-socfpga/arria10-generic.c        | 3 ++-
 arch/arm/mach-socfpga/cyclone5-reset-manager.c | 3 ++-
 arch/arm/mach-tegra/tegra20-pmc.c              | 3 ++-
 arch/arm/mach-versatile/core.c                 | 3 ++-
 arch/arm/mach-vexpress/reset.c                 | 3 ++-
 arch/arm/mach-zynq/zynq.c                      | 3 ++-
 arch/kvx/cpu/reset.c                           | 3 ++-
 arch/mips/mach-ar231x/ar231x_reset.c           | 3 ++-
 arch/mips/mach-ath79/reset.c                   | 3 ++-
 arch/mips/mach-bcm47xx/reset.c                 | 3 ++-
 arch/mips/mach-loongson/loongson1_reset.c      | 3 ++-
 arch/openrisc/cpu/cpu.c                        | 3 ++-
 arch/powerpc/mach-mpc5xxx/cpu.c                | 3 ++-
 arch/powerpc/mach-mpc85xx/cpu.c                | 3 ++-
 arch/riscv/boards/riscvemu/board.c             | 3 ++-
 arch/sandbox/board/power.c                     | 6 ++++--
 commands/reset.c                               | 2 +-
 common/restart.c                               | 5 +++--
 drivers/clk/rockchip/clk.c                     | 3 ++-
 drivers/mfd/da9053.c                           | 3 ++-
 drivers/mfd/da9063.c                           | 3 ++-
 drivers/mfd/rn5t568.c                          | 3 ++-
 drivers/power/reset/gpio-restart.c             | 3 ++-
 drivers/power/reset/stm32-reboot.c             | 3 ++-
 drivers/power/reset/syscon-reboot.c            | 3 ++-
 drivers/watchdog/bcm2835_wdt.c                 | 3 ++-
 drivers/watchdog/imxwd.c                       | 8 +++++---
 drivers/watchdog/jz4740.c                      | 3 ++-
 drivers/watchdog/rave-sp-wdt.c                 | 3 ++-
 drivers/watchdog/stpmic1_wdt.c                 | 3 ++-
 drivers/watchdog/wd_core.c                     | 3 ++-
 efi/payload/init.c                             | 3 ++-
 include/restart.h                              | 5 +++--
 56 files changed, 120 insertions(+), 62 deletions(-)

diff --git a/arch/arm/cpu/psci-client.c b/arch/arm/cpu/psci-client.c
index c865e754fd27..70436bde0a3a 100644
--- a/arch/arm/cpu/psci-client.c
+++ b/arch/arm/cpu/psci-client.c
@@ -30,7 +30,8 @@ static void __noreturn psci_poweroff(struct poweroff_handler *handler)
 	psci_invoke_noreturn(ARM_PSCI_0_2_FN_SYSTEM_OFF);
 }
 
-static void __noreturn psci_restart(struct restart_handler *rst)
+static void __noreturn psci_restart(struct restart_handler *rst,
+				    unsigned long flags)
 {
 	psci_invoke_noreturn(ARM_PSCI_0_2_FN_SYSTEM_RESET);
 }
diff --git a/arch/arm/mach-at91/at91rm9200_time.c b/arch/arm/mach-at91/at91rm9200_time.c
index c8394d3d74b2..61d78ba24b32 100644
--- a/arch/arm/mach-at91/at91rm9200_time.c
+++ b/arch/arm/mach-at91/at91rm9200_time.c
@@ -55,7 +55,8 @@ core_initcall(clocksource_init);
 /*
  * Reset the cpu through the reset controller
  */
-static void __noreturn at91rm9200_restart_soc(struct restart_handler *rst)
+static void __noreturn at91rm9200_restart_soc(struct restart_handler *rst,
+					      unsigned long flags)
 {
 	/*
 	 * Perform a hardware reset with the use of the Watchdog timer.
diff --git a/arch/arm/mach-at91/at91sam9260.c b/arch/arm/mach-at91/at91sam9260.c
index 623c01605f3d..411516c3c657 100644
--- a/arch/arm/mach-at91/at91sam9260.c
+++ b/arch/arm/mach-at91/at91sam9260.c
@@ -226,7 +226,8 @@ static void __init at91sam9260_register_clocks(void)
 	clk_register(&pck1);
 }
 
-static void at91sam9260_restart(struct restart_handler *rst)
+static void at91sam9260_restart(struct restart_handler *rst,
+				unsigned long flags)
 {
 	at91sam9_reset(IOMEM(AT91SAM9260_BASE_SDRAMC),
 		       IOMEM(AT91SAM9260_BASE_RSTC + AT91_RSTC_CR));
diff --git a/arch/arm/mach-at91/at91sam9261.c b/arch/arm/mach-at91/at91sam9261.c
index df35b7239c16..188efc3f56f0 100644
--- a/arch/arm/mach-at91/at91sam9261.c
+++ b/arch/arm/mach-at91/at91sam9261.c
@@ -218,7 +218,8 @@ static void at91sam9261_register_clocks(void)
 	clk_register(&hck1);
 }
 
-static void at91sam9261_restart(struct restart_handler *rst)
+static void at91sam9261_restart(struct restart_handler *rst,
+				unsigned long flags)
 {
 	at91sam9_reset(IOMEM(AT91SAM9261_BASE_SDRAMC),
 		       IOMEM(AT91SAM9261_BASE_RSTC + AT91_RSTC_CR));
diff --git a/arch/arm/mach-at91/at91sam9263.c b/arch/arm/mach-at91/at91sam9263.c
index 2241e568d4f6..f1cf16bbc1a9 100644
--- a/arch/arm/mach-at91/at91sam9263.c
+++ b/arch/arm/mach-at91/at91sam9263.c
@@ -236,7 +236,8 @@ static void __init at91sam9263_register_clocks(void)
 	clk_register(&pck3);
 }
 
-static void at91sam9263_restart(struct restart_handler *rst)
+static void at91sam9263_restart(struct restart_handler *rst,
+				unsigned long flags)
 {
 	at91sam9_reset(IOMEM(AT91SAM9263_BASE_SDRAMC0),
 		       IOMEM(AT91SAM9263_BASE_RSTC + AT91_RSTC_CR));
diff --git a/arch/arm/mach-at91/at91sam9_rst.c b/arch/arm/mach-at91/at91sam9_rst.c
index d2c008e3439a..7bbe3f9fa952 100644
--- a/arch/arm/mach-at91/at91sam9_rst.c
+++ b/arch/arm/mach-at91/at91sam9_rst.c
@@ -44,7 +44,8 @@ static void at91sam9x_set_reset_reason(struct device *dev,
 	reset_source_set(type);
 }
 
-static void __noreturn at91sam9x_restart_soc(struct restart_handler *rst)
+static void __noreturn at91sam9x_restart_soc(struct restart_handler *rst,
+					     unsigned long flags)
 {
 	struct at91sam9x_rst *priv = container_of(rst, struct at91sam9x_rst, restart);
 
@@ -59,7 +60,8 @@ static void __noreturn at91sam9x_restart_soc(struct restart_handler *rst)
 
 void __noreturn at91sam9_reset(void __iomem *sdram, void __iomem *rstc_cr);
 
-static void __noreturn at91sam9260_restart_soc(struct restart_handler *rst)
+static void __noreturn at91sam9260_restart_soc(struct restart_handler *rst,
+					       unsigned long flags)
 {
 	struct at91sam9x_rst *priv = container_of(rst, struct at91sam9x_rst, restart);
 
diff --git a/arch/arm/mach-at91/at91sam9g45.c b/arch/arm/mach-at91/at91sam9g45.c
index 0d8d399fc590..12d3d0521e19 100644
--- a/arch/arm/mach-at91/at91sam9g45.c
+++ b/arch/arm/mach-at91/at91sam9g45.c
@@ -251,7 +251,8 @@ static void __init at91sam9g45_register_clocks(void)
 	clk_register(&pck1);
 }
 
-static void at91sam9g45_restart(struct restart_handler *rst)
+static void at91sam9g45_restart(struct restart_handler *rst,
+				unsigned long flags)
 {
 	at91sam9g45_reset(IOMEM(AT91SAM9G45_BASE_DDRSDRC0),
 			  IOMEM(AT91SAM9G45_BASE_RSTC + AT91_RSTC_CR));
diff --git a/arch/arm/mach-at91/at91sam9n12.c b/arch/arm/mach-at91/at91sam9n12.c
index e6f4495fc12d..af3a05142c79 100644
--- a/arch/arm/mach-at91/at91sam9n12.c
+++ b/arch/arm/mach-at91/at91sam9n12.c
@@ -204,7 +204,8 @@ static void __init at91sam9n12_register_clocks(void)
 
 }
 
-static void at91sam9n12_restart(struct restart_handler *rst)
+static void at91sam9n12_restart(struct restart_handler *rst,
+				unsigned long flags)
 {
 	at91sam9g45_reset(IOMEM(AT91SAM9N12_BASE_DDRSDRC0),
 			  IOMEM(AT91SAM9N12_BASE_RSTC + AT91_RSTC_CR));
diff --git a/arch/arm/mach-at91/at91sam9x5.c b/arch/arm/mach-at91/at91sam9x5.c
index 0b0fbc6ff369..a11631169123 100644
--- a/arch/arm/mach-at91/at91sam9x5.c
+++ b/arch/arm/mach-at91/at91sam9x5.c
@@ -7,7 +7,8 @@
 #include <mach/at91/board.h>
 #include <mach/at91/at91_rstc.h>
 
-static void at91sam9x5_restart(struct restart_handler *rst)
+static void at91sam9x5_restart(struct restart_handler *rst,
+			       unsigned long flags)
 {
 	at91sam9g45_reset(IOMEM(AT91SAM9X5_BASE_DDRSDRC0),
 			  IOMEM(AT91SAM9X5_BASE_RSTC + AT91_RSTC_CR));
diff --git a/arch/arm/mach-at91/sama5d4.c b/arch/arm/mach-at91/sama5d4.c
index 8417dedbd1cf..c9b0605070c5 100644
--- a/arch/arm/mach-at91/sama5d4.c
+++ b/arch/arm/mach-at91/sama5d4.c
@@ -281,7 +281,8 @@ static void __init sama5d4_register_clocks(void)
 	clk_register(&pck2);
 }
 
-static void sama5d4_restart(struct restart_handler *rst)
+static void sama5d4_restart(struct restart_handler *rst,
+			    unsigned long flags)
 {
 	at91sam9g45_reset(IOMEM(SAMA5D4_BASE_MPDDRC),
 			  IOMEM(SAMA5D4_BASE_RSTC + AT91_RSTC_CR));
diff --git a/arch/arm/mach-clps711x/common.c b/arch/arm/mach-clps711x/common.c
index 60db39ad1153..06912b26196c 100644
--- a/arch/arm/mach-clps711x/common.c
+++ b/arch/arm/mach-clps711x/common.c
@@ -12,7 +12,8 @@
 
 static u32 remap_size = 0;
 
-static void __noreturn clps711x_restart(struct restart_handler *rst)
+static void __noreturn clps711x_restart(struct restart_handler *rst,
+					unsigned long flags)
 {
 	shutdown_barebox();
 
diff --git a/arch/arm/mach-layerscape/restart.c b/arch/arm/mach-layerscape/restart.c
index 138a82bdb530..30def98685ed 100644
--- a/arch/arm/mach-layerscape/restart.c
+++ b/arch/arm/mach-layerscape/restart.c
@@ -7,7 +7,8 @@
 #include <soc/fsl/fsl_immap.h>
 #include <mach/layerscape/layerscape.h>
 
-static void ls102xa_restart(struct restart_handler *rst)
+static void ls102xa_restart(struct restart_handler *rst,
+			    unsigned long flags)
 {
 	void __iomem *rcr = IOMEM(LSCH2_RST_ADDR);
 
diff --git a/arch/arm/mach-mvebu/armada-370-xp.c b/arch/arm/mach-mvebu/armada-370-xp.c
index 1bbc6bd22645..481e956352fa 100644
--- a/arch/arm/mach-mvebu/armada-370-xp.c
+++ b/arch/arm/mach-mvebu/armada-370-xp.c
@@ -63,7 +63,8 @@ static int armada_xp_soc_id_fixup(void)
 	return 0;
 }
 
-static void __noreturn armada_370_xp_restart_soc(struct restart_handler *rst)
+static void __noreturn armada_370_xp_restart_soc(struct restart_handler *rst,
+						 unsigned long flags)
 {
 	writel(0x1, ARMADA_370_XP_SYSCTL_BASE + 0x60);
 	writel(0x1, ARMADA_370_XP_SYSCTL_BASE + 0x64);
diff --git a/arch/arm/mach-mvebu/dove.c b/arch/arm/mach-mvebu/dove.c
index 2dd461c5c344..ab0dee405f63 100644
--- a/arch/arm/mach-mvebu/dove.c
+++ b/arch/arm/mach-mvebu/dove.c
@@ -9,7 +9,8 @@
 #include <linux/mbus.h>
 #include <mach/mvebu/dove-regs.h>
 
-static void __noreturn dove_restart_soc(struct restart_handler *rst)
+static void __noreturn dove_restart_soc(struct restart_handler *rst,
+					unsigned long flags)
 {
 	/* enable and assert RSTOUTn */
 	writel(SOFT_RESET_OUT_EN, DOVE_BRIDGE_BASE + BRIDGE_RSTOUT_MASK);
diff --git a/arch/arm/mach-mvebu/kirkwood.c b/arch/arm/mach-mvebu/kirkwood.c
index 4b5d1b716b72..19b05caa7391 100644
--- a/arch/arm/mach-mvebu/kirkwood.c
+++ b/arch/arm/mach-mvebu/kirkwood.c
@@ -9,7 +9,8 @@
 #include <linux/mbus.h>
 #include <mach/mvebu/kirkwood-regs.h>
 
-static void __noreturn kirkwood_restart_soc(struct restart_handler *rst)
+static void __noreturn kirkwood_restart_soc(struct restart_handler *rst,
+					    unsigned long flags)
 {
 	writel(SOFT_RESET_OUT_EN, KIRKWOOD_BRIDGE_BASE + BRIDGE_RSTOUT_MASK);
 	writel(SOFT_RESET_EN, KIRKWOOD_BRIDGE_BASE + BRIDGE_SYS_SOFT_RESET);
diff --git a/arch/arm/mach-mxs/soc-imx23.c b/arch/arm/mach-mxs/soc-imx23.c
index b799812c5296..c2d40fe7e469 100644
--- a/arch/arm/mach-mxs/soc-imx23.c
+++ b/arch/arm/mach-mxs/soc-imx23.c
@@ -15,7 +15,8 @@
 # define HW_CLKCTRL_RESET_CHIP (1 << 1)
 
 /* Reset the full i.MX23 SoC via a chipset feature */
-static void __noreturn imx23_restart_soc(struct restart_handler *rst)
+static void __noreturn imx23_restart_soc(struct restart_handler *rst,
+					 unsigned long flags)
 {
 	u32 reg;
 
diff --git a/arch/arm/mach-mxs/soc-imx28.c b/arch/arm/mach-mxs/soc-imx28.c
index 4a9697b8e40b..54fe1eea1839 100644
--- a/arch/arm/mach-mxs/soc-imx28.c
+++ b/arch/arm/mach-mxs/soc-imx28.c
@@ -16,7 +16,8 @@
 #define HW_CLKCTRL_WDOG_POR_DISABLE (1 << 5)
 
 /* Reset the full i.MX28 SoC via a chipset feature */
-static void __noreturn imx28_restart_soc(struct restart_handler *rst)
+static void __noreturn imx28_restart_soc(struct restart_handler *rst,
+					 unsigned long flags)
 {
 	u32 reg;
 
diff --git a/arch/arm/mach-omap/am33xx_generic.c b/arch/arm/mach-omap/am33xx_generic.c
index bcafc0677e38..4ab79aad50e4 100644
--- a/arch/arm/mach-omap/am33xx_generic.c
+++ b/arch/arm/mach-omap/am33xx_generic.c
@@ -30,7 +30,8 @@
 #include <mach/omap/gpmc.h>
 #include <reset_source.h>
 
-static void __noreturn am33xx_restart_soc(struct restart_handler *rst)
+static void __noreturn am33xx_restart_soc(struct restart_handler *rst,
+					  unsigned long flags)
 {
 	writel(AM33XX_PRM_RSTCTRL_RESET, AM33XX_PRM_RSTCTRL);
 
diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap3_generic.c
index 33f78dd2d569..25bf1d611f23 100644
--- a/arch/arm/mach-omap/omap3_generic.c
+++ b/arch/arm/mach-omap/omap3_generic.c
@@ -54,7 +54,8 @@
  *
  * @return void
  */
-static void __noreturn omap3_restart_soc(struct restart_handler *rst)
+static void __noreturn omap3_restart_soc(struct restart_handler *rst,
+					 unsigned long flags)
 {
 	writel(OMAP3_PRM_RSTCTRL_RESET, OMAP3_PRM_REG(RSTCTRL));
 
diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
index bf77014b40a8..acc8473e4401 100644
--- a/arch/arm/mach-omap/omap4_generic.c
+++ b/arch/arm/mach-omap/omap4_generic.c
@@ -38,7 +38,8 @@
 #define EMIF_L3_CONFIG_VAL_SYS_10_LL_0		0x0A0000FF
 #define EMIF_L3_CONFIG_VAL_SYS_10_MPU_3_LL_0	0x0A300000
 
-static void __noreturn omap4_restart_soc(struct restart_handler *rst)
+static void __noreturn omap4_restart_soc(struct restart_handler *rst,
+					 unsigned long flags)
 {
 	writel(OMAP44XX_PRM_RSTCTRL_RESET, OMAP44XX_PRM_RSTCTRL);
 
diff --git a/arch/arm/mach-pxa/common.c b/arch/arm/mach-pxa/common.c
index e0bf1de4611c..1da1b580549a 100644
--- a/arch/arm/mach-pxa/common.c
+++ b/arch/arm/mach-pxa/common.c
@@ -26,7 +26,8 @@
 #define OWER_WME	(1 << 0)	/* Watch-dog Match Enable */
 #define OSSR_M3		(1 << 3)	/* Match status channel 3 */
 
-static void __noreturn pxa_restart_soc(struct restart_handler *rst)
+static void __noreturn pxa_restart_soc(struct restart_handler *rst,
+				       unsigned long flags)
 {
 	/* Clear last reset source */
 	pxa_clear_reset_source();
diff --git a/arch/arm/mach-rockchip/rk3188.c b/arch/arm/mach-rockchip/rk3188.c
index f1c20f6e528a..cfa364f9707d 100644
--- a/arch/arm/mach-rockchip/rk3188.c
+++ b/arch/arm/mach-rockchip/rk3188.c
@@ -18,7 +18,8 @@
 #include <mach/rockchip/rk3188-regs.h>
 #include <mach/rockchip/rockchip.h>
 
-static void __noreturn rockchip_restart_soc(struct restart_handler *rst)
+static void __noreturn rockchip_restart_soc(struct restart_handler *rst,
+					    unsigned long flags)
 {
 	/* Map bootrom from address 0 */
 	writel(RK_SOC_CON0_REMAP << 16, RK_GRF_BASE + RK_GRF_SOC_CON0);
diff --git a/arch/arm/mach-rockchip/rk3288.c b/arch/arm/mach-rockchip/rk3288.c
index 3a43e911db99..c3cf55ddb7bf 100644
--- a/arch/arm/mach-rockchip/rk3288.c
+++ b/arch/arm/mach-rockchip/rk3288.c
@@ -23,7 +23,8 @@
 #include <mach/rockchip/hardware.h>
 #include <mach/rockchip/rockchip.h>
 
-static void __noreturn rockchip_restart_soc(struct restart_handler *rst)
+static void __noreturn rockchip_restart_soc(struct restart_handler *rst,
+					    unsigned long flags)
 {
 	struct rk3288_cru *cru = (struct rk3288_cru *)RK3288_CRU_BASE;
 
diff --git a/arch/arm/mach-socfpga/arria10-generic.c b/arch/arm/mach-socfpga/arria10-generic.c
index d7ce6d84ab74..f74f069b4e4b 100644
--- a/arch/arm/mach-socfpga/arria10-generic.c
+++ b/arch/arm/mach-socfpga/arria10-generic.c
@@ -47,7 +47,8 @@ static void arria10_init_emac(void)
 }
 
 /* Write the reset manager register to cause reset */
-static void __noreturn arria10_restart_soc(struct restart_handler *rst)
+static void __noreturn arria10_restart_soc(struct restart_handler *rst,
+					   unsigned long flags)
 {
 	/* request a warm reset */
 	writel(ARRIA10_RSTMGR_CTL_SWWARMRSTREQ,
diff --git a/arch/arm/mach-socfpga/cyclone5-reset-manager.c b/arch/arm/mach-socfpga/cyclone5-reset-manager.c
index 5ddf379e3d42..aadb43d02ef2 100644
--- a/arch/arm/mach-socfpga/cyclone5-reset-manager.c
+++ b/arch/arm/mach-socfpga/cyclone5-reset-manager.c
@@ -23,7 +23,8 @@
 #include <mach/socfpga/cyclone5-reset-manager.h>
 
 /* Write the reset manager register to cause reset */
-static void __noreturn socfpga_restart_soc(struct restart_handler *rst)
+static void __noreturn socfpga_restart_soc(struct restart_handler *rst,
+					   unsigned long flags)
 {
 	/* request a warm reset */
 	writel((1 << RSTMGR_CTRL_SWWARMRSTREQ_LSB),
diff --git a/arch/arm/mach-tegra/tegra20-pmc.c b/arch/arm/mach-tegra/tegra20-pmc.c
index d4c28ac54142..796083126513 100644
--- a/arch/arm/mach-tegra/tegra20-pmc.c
+++ b/arch/arm/mach-tegra/tegra20-pmc.c
@@ -37,7 +37,8 @@ static void __iomem *pmc_base;
 static int tegra_num_powerdomains;
 
 /* main SoC reset trigger */
-static void __noreturn tegra20_restart_soc(struct restart_handler *rst)
+static void __noreturn tegra20_restart_soc(struct restart_handler *rst,
+					   unsigned long flags)
 {
 	writel(PMC_CNTRL_MAIN_RST, pmc_base + PMC_CNTRL);
 
diff --git a/arch/arm/mach-versatile/core.c b/arch/arm/mach-versatile/core.c
index b0124b700cb3..805ea0a024b5 100644
--- a/arch/arm/mach-versatile/core.c
+++ b/arch/arm/mach-versatile/core.c
@@ -39,7 +39,8 @@
 
 #include <mach/versatile/platform.h>
 
-static void __noreturn versatile_reset_soc(struct restart_handler *rst)
+static void __noreturn versatile_reset_soc(struct restart_handler *rst,
+					   unsigned long flags)
 {
 	u32 val;
 
diff --git a/arch/arm/mach-vexpress/reset.c b/arch/arm/mach-vexpress/reset.c
index 0d626db7d7f9..93355c69f091 100644
--- a/arch/arm/mach-vexpress/reset.c
+++ b/arch/arm/mach-vexpress/reset.c
@@ -14,7 +14,8 @@
 
 void __iomem *v2m_wdt_base;
 
-static void __noreturn vexpress_reset_soc(struct restart_handler *rst)
+static void __noreturn vexpress_reset_soc(struct restart_handler *rst,
+					  unsigned long flags)
 {
 	writel(LOAD_MIN, v2m_wdt_base + WDTLOAD);
 	writeb(RESET_ENABLE, v2m_wdt_base + WDTCONTROL);
diff --git a/arch/arm/mach-zynq/zynq.c b/arch/arm/mach-zynq/zynq.c
index 2d76a68a5eb9..87de0e5c87ed 100644
--- a/arch/arm/mach-zynq/zynq.c
+++ b/arch/arm/mach-zynq/zynq.c
@@ -21,7 +21,8 @@
 #include <mach/zynq/zynq7000-regs.h>
 #include <restart.h>
 
-static void __noreturn zynq_restart_soc(struct restart_handler *rst)
+static void __noreturn zynq_restart_soc(struct restart_handler *rst,
+					unsigned long flags)
 {
 	/* write unlock key to slcr */
 	writel(0xDF0D, ZYNQ_SLCR_UNLOCK);
diff --git a/arch/kvx/cpu/reset.c b/arch/kvx/cpu/reset.c
index a19399220ac1..9cff1c084597 100644
--- a/arch/kvx/cpu/reset.c
+++ b/arch/kvx/cpu/reset.c
@@ -14,7 +14,8 @@
 
 static struct regmap *ftu_regmap;
 
-static void __noreturn kvx_restart_soc(struct restart_handler *rst)
+static void __noreturn kvx_restart_soc(struct restart_handler *rst,
+				       unsigned long flags)
 {
 	regmap_write(ftu_regmap, KVX_FTU_SW_RESET_OFFSET, 0x1);
 
diff --git a/arch/mips/mach-ar231x/ar231x_reset.c b/arch/mips/mach-ar231x/ar231x_reset.c
index 7479f3ce4ac2..adda3ca4a3fd 100644
--- a/arch/mips/mach-ar231x/ar231x_reset.c
+++ b/arch/mips/mach-ar231x/ar231x_reset.c
@@ -14,7 +14,8 @@
 
 static void __iomem *reset_base;
 
-static void __noreturn ar2312x_restart_soc(struct restart_handler *rst)
+static void __noreturn ar2312x_restart_soc(struct restart_handler *rst,
+					   unsigned long flags)
 {
 	printf("reseting cpu\n");
 	__raw_writel(0x10000,
diff --git a/arch/mips/mach-ath79/reset.c b/arch/mips/mach-ath79/reset.c
index 393ca00b0829..20c5d80676a8 100644
--- a/arch/mips/mach-ath79/reset.c
+++ b/arch/mips/mach-ath79/reset.c
@@ -8,7 +8,8 @@
 #include <restart.h>
 #include <mach/ath79.h>
 
-static void __noreturn ath79_restart_soc(struct restart_handler *rst)
+static void __noreturn ath79_restart_soc(struct restart_handler *rst,
+					 unsigned long flags)
 {
 	ath79_reset_wr(AR933X_RESET_REG_RESET_MODULE, AR71XX_RESET_FULL_CHIP);
 	/*
diff --git a/arch/mips/mach-bcm47xx/reset.c b/arch/mips/mach-bcm47xx/reset.c
index 3ab9b0ce4b53..1000aed475b3 100644
--- a/arch/mips/mach-bcm47xx/reset.c
+++ b/arch/mips/mach-bcm47xx/reset.c
@@ -9,7 +9,8 @@
 #include <restart.h>
 #include <mach/hardware.h>
 
-static void __noreturn bcm47xx_restart_soc(struct restart_handler *rst)
+static void __noreturn bcm47xx_restart_soc(struct restart_handler *rst,
+					   unsigned long flags)
 {
 	__raw_writel(GORESET, (char *)SOFTRES_REG);
 
diff --git a/arch/mips/mach-loongson/loongson1_reset.c b/arch/mips/mach-loongson/loongson1_reset.c
index 9b4da217f80d..5168f0209255 100644
--- a/arch/mips/mach-loongson/loongson1_reset.c
+++ b/arch/mips/mach-loongson/loongson1_reset.c
@@ -9,7 +9,8 @@
 #include <restart.h>
 #include <mach/loongson1.h>
 
-static void __noreturn longhorn_restart_soc(struct restart_handler *rst)
+static void __noreturn longhorn_restart_soc(struct restart_handler *rst,
+					    unsigned long flags)
 {
 	void __iomem *wdt = IOMEM(0);
 
diff --git a/arch/openrisc/cpu/cpu.c b/arch/openrisc/cpu/cpu.c
index 47d8ab428845..06975dceea67 100644
--- a/arch/openrisc/cpu/cpu.c
+++ b/arch/openrisc/cpu/cpu.c
@@ -22,7 +22,8 @@
 
 extern void __reset(void);
 
-static void __noreturn openrisc_restart_cpu(struct restart_handler *rst)
+static void __noreturn openrisc_restart_cpu(struct restart_handler *rst,
+					    unsigned long flags)
 {
 	__reset();
 	/* not reached, __reset does not return */
diff --git a/arch/powerpc/mach-mpc5xxx/cpu.c b/arch/powerpc/mach-mpc5xxx/cpu.c
index 647109b7fb63..80bf3ccacd03 100644
--- a/arch/powerpc/mach-mpc5xxx/cpu.c
+++ b/arch/powerpc/mach-mpc5xxx/cpu.c
@@ -51,7 +51,8 @@ static int mpc5xxx_reserve_region(void)
 }
 coredevice_initcall(mpc5xxx_reserve_region);
 
-static void __noreturn mpc5xxx_restart_soc(struct restart_handler *rst)
+static void __noreturn mpc5xxx_restart_soc(struct restart_handler *rst,
+					   unsigned long flags)
 {
 	ulong msr;
 	/* Interrupts and MMU off */
diff --git a/arch/powerpc/mach-mpc85xx/cpu.c b/arch/powerpc/mach-mpc85xx/cpu.c
index acfd4699a2ff..b0580f774be4 100644
--- a/arch/powerpc/mach-mpc85xx/cpu.c
+++ b/arch/powerpc/mach-mpc85xx/cpu.c
@@ -30,7 +30,8 @@
 #include <mach/immap_85xx.h>
 #include <mach/mpc85xx.h>
 
-static void __noreturn mpc85xx_restart_soc(struct restart_handler *rst)
+static void __noreturn mpc85xx_restart_soc(struct restart_handler *rst,
+					   unsigned long flags)
 {
 	void __iomem *regs = (void __iomem *)MPC85xx_GUTS_ADDR;
 
diff --git a/arch/riscv/boards/riscvemu/board.c b/arch/riscv/boards/riscvemu/board.c
index a81e0baaaf0a..bf5a05dd6a4d 100644
--- a/arch/riscv/boards/riscvemu/board.c
+++ b/arch/riscv/boards/riscvemu/board.c
@@ -18,7 +18,8 @@ struct riscvemu_priv {
 
 };
 
-static void __noreturn riscvemu_restart(struct restart_handler *rst)
+static void __noreturn riscvemu_restart(struct restart_handler *rst,
+					unsigned long flags)
 {
 	struct riscvemu_priv *priv = container_of(rst, struct riscvemu_priv, rst);
 
diff --git a/arch/sandbox/board/power.c b/arch/sandbox/board/power.c
index 8300c589c730..546e1a518fd3 100644
--- a/arch/sandbox/board/power.c
+++ b/arch/sandbox/board/power.c
@@ -23,12 +23,14 @@ static void sandbox_poweroff(struct poweroff_handler *poweroff)
 	linux_exit();
 }
 
-static void sandbox_rst_hang(struct restart_handler *rst)
+static void sandbox_rst_hang(struct restart_handler *rst,
+			     unsigned long flags)
 {
 	linux_hang();
 }
 
-static void sandbox_rst_reexec(struct restart_handler *rst)
+static void sandbox_rst_reexec(struct restart_handler *rst,
+			       unsigned long flags)
 {
 	struct sandbox_power *power = container_of(rst, struct sandbox_power, rst_reexec);
 
diff --git a/commands/reset.c b/commands/reset.c
index 88e677afab34..e97b5668bacb 100644
--- a/commands/reset.c
+++ b/commands/reset.c
@@ -47,7 +47,7 @@ static int cmd_reset(int argc, char *argv[])
 
 	if (rst) {
 		console_flush();
-		rst->restart(rst);
+		rst->restart(rst, 0);
 	}
 
 	hang();
diff --git a/common/restart.c b/common/restart.c
index 2ab0196542d8..dce7e974f64a 100644
--- a/common/restart.c
+++ b/common/restart.c
@@ -55,7 +55,8 @@ int restart_handler_register(struct restart_handler *rst)
  * return: 0 for success or negative error code
  */
 int restart_handler_register_fn(const char *name,
-				void (*restart_fn)(struct restart_handler *))
+				void (*restart_fn)(struct restart_handler *,
+						   unsigned long flags))
 {
 	struct restart_handler *rst;
 	int ret;
@@ -110,7 +111,7 @@ void __noreturn restart_machine(unsigned long flags)
 	if (rst) {
 		pr_debug("%s: using restart handler %s\n", __func__, rst->name);
 		console_flush();
-		rst->restart(rst);
+		rst->restart(rst, flags);
 	}
 
 	hang();
diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index 235d2ce0ade0..180f38e532ba 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -598,7 +598,8 @@ void rockchip_clk_protect_critical(const char *const clocks[],
 }
 EXPORT_SYMBOL_GPL(rockchip_clk_protect_critical);
 
-static void rockchip_restart(struct restart_handler *this)
+static void rockchip_restart(struct restart_handler *this,
+			     unsigned long flags)
 {
 	struct rockchip_clk_provider *ctx =
 		container_of(this, struct rockchip_clk_provider, restart_handler);
diff --git a/drivers/mfd/da9053.c b/drivers/mfd/da9053.c
index c8ad8aa0eeed..0bbfe3218b70 100644
--- a/drivers/mfd/da9053.c
+++ b/drivers/mfd/da9053.c
@@ -231,7 +231,8 @@ static void da9053_detect_reset_source(struct da9053_priv *da9053)
 		return;
 }
 
-static void __noreturn da9053_force_system_reset(struct restart_handler *rst)
+static void __noreturn da9053_force_system_reset(struct restart_handler *rst,
+						 unsigned long flags)
 {
 	struct da9053_priv *da9053 = container_of(rst, struct da9053_priv, restart);
 	u8 val;
diff --git a/drivers/mfd/da9063.c b/drivers/mfd/da9063.c
index 4842ead6f8b9..169ddc2b18bf 100644
--- a/drivers/mfd/da9063.c
+++ b/drivers/mfd/da9063.c
@@ -312,7 +312,8 @@ static void da9063_detect_reset_source(struct da9063 *priv)
 	reset_source_set_device(priv->dev, type, 200);
 }
 
-static void da9063_restart(struct restart_handler *rst)
+static void da9063_restart(struct restart_handler *rst,
+			   unsigned long flags)
 {
 	struct da9063 *priv = container_of(rst, struct da9063, restart);
 
diff --git a/drivers/mfd/rn5t568.c b/drivers/mfd/rn5t568.c
index e140cea03b0b..5a0cec464a07 100644
--- a/drivers/mfd/rn5t568.c
+++ b/drivers/mfd/rn5t568.c
@@ -23,7 +23,8 @@ struct rn5t568 {
 	struct regmap *regmap;
 };
 
-static void rn5t568_restart(struct restart_handler *rst)
+static void rn5t568_restart(struct restart_handler *rst,
+			    unsigned long flags)
 {
 	struct rn5t568 *rn5t568 = container_of(rst, struct rn5t568, restart);
 
diff --git a/drivers/power/reset/gpio-restart.c b/drivers/power/reset/gpio-restart.c
index ed2748f91092..8cc50194d240 100644
--- a/drivers/power/reset/gpio-restart.c
+++ b/drivers/power/reset/gpio-restart.c
@@ -19,7 +19,8 @@ struct gpio_restart {
 	u32 wait_delay_ms;
 };
 
-static void __noreturn gpio_restart_handle(struct restart_handler *this)
+static void __noreturn gpio_restart_handle(struct restart_handler *this,
+					   unsigned long flags)
 {
 	struct gpio_restart *gpio_restart =
 		container_of(this, struct gpio_restart, restart_handler);
diff --git a/drivers/power/reset/stm32-reboot.c b/drivers/power/reset/stm32-reboot.c
index ffe8dd96ac33..07a957ebff09 100644
--- a/drivers/power/reset/stm32-reboot.c
+++ b/drivers/power/reset/stm32-reboot.c
@@ -62,7 +62,8 @@ static void stm32_reset(struct stm32_reset *priv, unsigned long id, bool assert)
 	writel(BIT(offset), reg);
 }
 
-static void __noreturn stm32mp_rcc_restart_handler(struct restart_handler *rst)
+static void __noreturn stm32mp_rcc_restart_handler(struct restart_handler *rst,
+						   unsigned long flags)
 {
 	struct stm32_reset *priv = container_of(rst, struct stm32_reset, restart);
 
diff --git a/drivers/power/reset/syscon-reboot.c b/drivers/power/reset/syscon-reboot.c
index 61bea6169cb6..1c14220311b8 100644
--- a/drivers/power/reset/syscon-reboot.c
+++ b/drivers/power/reset/syscon-reboot.c
@@ -19,7 +19,8 @@ struct syscon_reboot_context {
 	struct restart_handler restart_handler;
 };
 
-static void __noreturn syscon_restart_handle(struct restart_handler *this)
+static void __noreturn syscon_restart_handle(struct restart_handler *this,
+					     unsigned long flags)
 {
 	struct syscon_reboot_context *ctx =
 			container_of(this, struct syscon_reboot_context,
diff --git a/drivers/watchdog/bcm2835_wdt.c b/drivers/watchdog/bcm2835_wdt.c
index 5b854c49b311..48654780b121 100644
--- a/drivers/watchdog/bcm2835_wdt.c
+++ b/drivers/watchdog/bcm2835_wdt.c
@@ -29,7 +29,8 @@ struct bcm2835_wd {
 
 #define RESET_TIMEOUT 10
 
-static void __noreturn bcm2835_restart_soc(struct restart_handler *rst)
+static void __noreturn bcm2835_restart_soc(struct restart_handler *rst,
+					   unsigned long flags)
 {
 	struct bcm2835_wd *priv = container_of(rst, struct bcm2835_wd, restart);
 	uint32_t rstc;
diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index bfc47bb8dd75..10d94645fae6 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -171,7 +171,8 @@ static int imx_watchdog_set_timeout(struct watchdog *wd, unsigned timeout)
 	return priv->ops->set_timeout(priv, timeout);
 }
 
-static void __noreturn imxwd_force_soc_reset(struct restart_handler *rst)
+static void __noreturn imxwd_force_soc_reset(struct restart_handler *rst,
+					     unsigned long flags)
 {
 	struct imx_wd *priv = container_of(rst, struct imx_wd, restart);
 
@@ -182,12 +183,13 @@ static void __noreturn imxwd_force_soc_reset(struct restart_handler *rst)
 	hang();
 }
 
-static void __noreturn imxwd_force_soc_reset_internal(struct restart_handler *rst)
+static void __noreturn imxwd_force_soc_reset_internal(struct restart_handler *rst,
+						      unsigned long flags)
 {
 	struct imx_wd *priv = container_of(rst, struct imx_wd, restart_warm);
 
 	priv->ext_reset = false;
-	imxwd_force_soc_reset(&priv->restart);
+	imxwd_force_soc_reset(&priv->restart, flags);
 }
 
 static void imx_watchdog_detect_reset_source(struct imx_wd *priv)
diff --git a/drivers/watchdog/jz4740.c b/drivers/watchdog/jz4740.c
index 8b4b985cd409..8197477a1f99 100644
--- a/drivers/watchdog/jz4740.c
+++ b/drivers/watchdog/jz4740.c
@@ -39,7 +39,8 @@ struct jz4740_wdt_drvdata {
 	void __iomem *base;
 };
 
-static void __noreturn jz4740_reset_soc(struct restart_handler *rst)
+static void __noreturn jz4740_reset_soc(struct restart_handler *rst,
+					unsigned long flags)
 {
 	struct jz4740_wdt_drvdata *priv =
 		container_of(rst, struct jz4740_wdt_drvdata, restart);
diff --git a/drivers/watchdog/rave-sp-wdt.c b/drivers/watchdog/rave-sp-wdt.c
index b4fc18cb8b99..5a694ac82f60 100644
--- a/drivers/watchdog/rave-sp-wdt.c
+++ b/drivers/watchdog/rave-sp-wdt.c
@@ -179,7 +179,8 @@ static int rave_sp_wdt_rdu_restart(struct watchdog *wdd)
 	return rave_sp_wdt_exec(wdd, cmd, sizeof(cmd));
 }
 
-static void __noreturn rave_sp_wdt_restart_handler(struct restart_handler *rst)
+static void __noreturn rave_sp_wdt_restart_handler(struct restart_handler *rst,
+						   unsigned long flags)
 {
 	struct rave_sp_wdt *sp_wd =
 			container_of(rst, struct rave_sp_wdt, restart);
diff --git a/drivers/watchdog/stpmic1_wdt.c b/drivers/watchdog/stpmic1_wdt.c
index 4a0519690aed..ba58474799fa 100644
--- a/drivers/watchdog/stpmic1_wdt.c
+++ b/drivers/watchdog/stpmic1_wdt.c
@@ -96,7 +96,8 @@ static int stpmic1_wdt_set_timeout(struct watchdog *wdd, unsigned int timeout)
 	return 0;
 }
 
-static void __noreturn stpmic1_restart_handler(struct restart_handler *rst)
+static void __noreturn stpmic1_restart_handler(struct restart_handler *rst,
+					       unsigned long flags)
 {
 	struct stpmic1_wdt *wdt = container_of(rst, struct stpmic1_wdt, restart);
 
diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
index ee0e4ccb109b..d8aafb68c0e6 100644
--- a/drivers/watchdog/wd_core.c
+++ b/drivers/watchdog/wd_core.c
@@ -177,7 +177,8 @@ static int seconds_to_expire_get(struct param_d *p, void *priv)
 	return 0;
 }
 
-static void __noreturn watchdog_restart_handle(struct restart_handler *this)
+static void __noreturn watchdog_restart_handle(struct restart_handler *this,
+					       unsigned long flags)
 {
 	struct watchdog *wd = watchdog_get_default();
 	int ret = -ENODEV;
diff --git a/efi/payload/init.c b/efi/payload/init.c
index 3d9717b82540..12896c065115 100644
--- a/efi/payload/init.c
+++ b/efi/payload/init.c
@@ -225,7 +225,8 @@ static int efi_console_init(void)
 }
 console_efi_initcall(efi_console_init);
 
-static void __noreturn efi_restart_system(struct restart_handler *rst)
+static void __noreturn efi_restart_system(struct restart_handler *rst,
+					  unsigned long flags)
 {
 	RT->reset_system(EFI_RESET_WARM, EFI_SUCCESS, 0, NULL);
 
diff --git a/include/restart.h b/include/restart.h
index 75d96111ea1b..9707a2f40f14 100644
--- a/include/restart.h
+++ b/include/restart.h
@@ -15,7 +15,7 @@ struct restart_handler *restart_handler_get_by_name(const char *name, int flags)
 struct device_node;
 
 struct restart_handler {
-	void (*restart)(struct restart_handler *);
+	void (*restart)(struct restart_handler *, unsigned long);
 	int priority;
 #define RESTART_FLAG_WARM_BOOTROM	BIT(0)
 	int flags;
@@ -27,7 +27,8 @@ struct restart_handler {
 
 int restart_handler_register(struct restart_handler *);
 int restart_handler_register_fn(const char *name,
-				void (*restart_fn)(struct restart_handler *));
+				void (*restart_fn)(struct restart_handler *,
+						   unsigned long));
 
 #define RESTART_DEFAULT_PRIORITY 100
 
-- 
2.39.5



