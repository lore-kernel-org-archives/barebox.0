Delivery-date: Tue, 22 Apr 2025 07:27:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u76A8-003urr-2I
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 07:27:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u76A7-0004B6-0L
	for lore@pengutronix.de; Tue, 22 Apr 2025 07:27:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ny2jUOHR23sXgERzyMa9DG7kgs6DN5uWitYs2zo0+So=; b=Q/FVuof4v2kN3bD6p5Yab7BUbP
	7XF8HuCtLppSCMvjQVbJFB6u97NOpnBpVyxYPBCALmryVW1OywbjR5JhH+Jqmt3ngCTEaNdtHEv2y
	N+YtjOOo5txBnCB+/VCzJFLXxddHalyoL8V4VztgijLy10pWqsiBJX3h1ek4JWv+I36wTM8hTdAn6
	cEtouSt/1ARknGLUeY1D85yNDUaF0RfT97H7Yl0oCrFRB0XwWrL9MFJ0ospBHfR4EdbuVA64YrTUi
	n5P9hedFTp3b7z7Rl7jBeVD4GSQXDM6T5qCqzXzSqXo60scAEpc5kkjnQd+foTAq67efLDz/ZOhT6
	xTzX5Jew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u769a-00000005rCR-2tP1;
	Tue, 22 Apr 2025 05:26:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u769X-00000005r9S-0Du4
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 05:26:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u769V-0003iq-OQ; Tue, 22 Apr 2025 07:26:37 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u769V-001Uv1-1l;
	Tue, 22 Apr 2025 07:26:37 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u769V-00EN4R-1U;
	Tue, 22 Apr 2025 07:26:37 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 22 Apr 2025 07:26:28 +0200
Message-Id: <20250422052635.3423961-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250422052635.3423961-1-a.fatoum@pengutronix.de>
References: <20250422052635.3423961-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250421_222639_090779_AF1759BD 
X-CRM114-Status: GOOD (  14.41  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/9] clocksource: ti-dm: make available in PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that there's clocksource framework support in PBL, let's make
available the first clocksource driver for use by OMAP HSMMC.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-omap/Kconfig        |  1 +
 drivers/clocksource/Makefile      |  2 +-
 drivers/clocksource/timer-ti-dm.c | 19 +++++++++++++------
 include/mach/omap/am33xx-clock.h  |  3 +++
 4 files changed, 18 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 6c4e9d748d61..e7a9b331125d 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -40,6 +40,7 @@ config ARCH_AM33XX
 	select CPU_V7
 	select GENERIC_GPIO
 	select CLOCKSOURCE_TI_DM
+	select PBL_CLOCKSOURCE
 	help
 	  Say Y here if you are using Texas Instrument's AM33xx based platform
 
diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
index eceaa990d43d..dff825565072 100644
--- a/drivers/clocksource/Makefile
+++ b/drivers/clocksource/Makefile
@@ -20,7 +20,7 @@ endif
 obj-$(CONFIG_CLOCKSOURCE_ARM_GLOBAL_TIMER) += arm_global_timer.o
 obj-$(CONFIG_CLOCKSOURCE_IMX_GPT) += timer-imx-gpt.o
 obj-$(CONFIG_CLOCKSOURCE_DW_APB_TIMER) += dw_apb_timer.o
-obj-$(CONFIG_CLOCKSOURCE_TI_DM) += timer-ti-dm.o
+obj-pbl-$(CONFIG_CLOCKSOURCE_TI_DM) += timer-ti-dm.o
 obj-$(CONFIG_CLOCKSOURCE_TI_32K) += timer-ti-32k.o
 obj-$(CONFIG_CLINT_TIMER) += timer-clint.o
 obj-$(CONFIG_RISCV_TIMER) += timer-riscv.o
diff --git a/drivers/clocksource/timer-ti-dm.c b/drivers/clocksource/timer-ti-dm.c
index eb658402f58d..1090b96a0e94 100644
--- a/drivers/clocksource/timer-ti-dm.c
+++ b/drivers/clocksource/timer-ti-dm.c
@@ -69,6 +69,18 @@ struct omap_dmtimer_data {
 	int (*get_clock)(struct device *dev);
 };
 
+int omap_dmtimer_init(void __iomem *mmio_start, unsigned clk_speed)
+{
+	base = mmio_start;
+
+	dmtimer_cs.mult = clocksource_hz2mult(clk_speed, dmtimer_cs.shift);
+
+	/* Enable counter */
+	writel(0x3, base + TCLR);
+
+	return init_clock(&dmtimer_cs);
+}
+
 static int omap_dmtimer_probe(struct device *dev)
 {
 	struct resource *iores;
@@ -90,12 +102,7 @@ static int omap_dmtimer_probe(struct device *dev)
 	if (clk_speed < 0)
 		return clk_speed;
 
-	dmtimer_cs.mult = clocksource_hz2mult(clk_speed, dmtimer_cs.shift);
-
-	/* Enable counter */
-	writel(0x3, base + TCLR);
-
-	return init_clock(&dmtimer_cs);
+	return omap_dmtimer_init(IOMEM(iores->start), clk_speed);
 }
 
 static int am335x_get_clock(struct device *dev)
diff --git a/include/mach/omap/am33xx-clock.h b/include/mach/omap/am33xx-clock.h
index af47a0f3e77a..b064337ac4f8 100644
--- a/include/mach/omap/am33xx-clock.h
+++ b/include/mach/omap/am33xx-clock.h
@@ -191,4 +191,7 @@ void am33xx_pll_init(int mpupll_M, int ddrpll_M);
 void am33xx_enable_ddr_clocks(void);
 int am33xx_get_osc_clock(void);
 
+int omap_dmtimer_init(void __iomem *mmio_start,
+		      unsigned clk_speed);
+
 #endif  /* endif _AM33XX_CLOCKS_H_ */
-- 
2.39.5



