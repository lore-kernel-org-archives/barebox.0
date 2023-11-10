Delivery-date: Fri, 10 Nov 2023 13:59:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R6z-005rWm-1L
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 13:59:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R6v-0003OI-JZ
	for lore@pengutronix.de; Fri, 10 Nov 2023 13:59:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Q7qAxr7YzGY95xGnhJec1+z7QqU8XgbbOBZATU2vOpY=; b=n2Ewqtxv5BxGZgORgPETLfKpm3
	muYY/7T7Rke/MaAeQVWYg0Bwv9DkU0tKPOWjcYp1NFEIcFwm45pQ3khtK7WlPZ/rp6vG6yhs4pERj
	25cFdima42SfHMe1nhvzo/WkFUXOVPonR2STgBOOe/iqo+DKD/ArrcyUTtNdK1t1kVEZFLWBut/Mu
	RG7CfFWLRQ109Dt62vyQo7gbJuBvaTBMJE2wIma2k5cWVShXTb+Ms/uULs5o8V2QgjdQcNQKjdk1u
	akH5Q1KxY7cp1TCH4vB288OJBtDOnEVrKdwXvXN1ftxtXHdqU1M13FG34Br9M7pyXZyGW5KCheZl5
	7eDhsClQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R5n-008kHV-1d;
	Fri, 10 Nov 2023 12:58:35 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R5a-008k0m-2W
	for barebox@bombadil.infradead.org;
	Fri, 10 Nov 2023 12:58:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Q7qAxr7YzGY95xGnhJec1+z7QqU8XgbbOBZATU2vOpY=; b=F8s03Ec0+CqBEE38BpHc8KTGub
	7DO4tRhF0+/WLTEDsMNJH0s6vNBg+Uovh8P7bef7LTU5CuZB5V+JLw7RVihLshgwXAiPM+0g85Vpd
	yDQxAHyWvbQCB7lPQUYE8JIDHEvfxHnn3KBJq8XJYMQhbraa3QoKgpwIArfh6JRm64nyH92FQ+viZ
	VtQTvA+rTRUWoTmYMXWHVbrB0p7VDClf80GldD1aHdudE0uXC0uzhdl1JH48dmzsDhsj1ure3WNVP
	L8qyVoazzWVWGOOX3GVqdYOgl8PK5qg1BNwU7yn9sR0cKHAx+/eKfg+3mv7+8C6TWfAICS9/Q/1OD
	GY3oJopQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R5R-00Fbuk-2y
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 12:58:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5H-00026r-OX; Fri, 10 Nov 2023 13:58:03 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5G-0081XI-Uu; Fri, 10 Nov 2023 13:58:02 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5G-008s08-2a;
	Fri, 10 Nov 2023 13:58:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 10 Nov 2023 13:57:45 +0100
Message-Id: <20231110125800.1901232-11-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110125800.1901232-1-s.hauer@pengutronix.de>
References: <20231110125800.1901232-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_125814_724200_361BB081 
X-CRM114-Status: GOOD (  21.42  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 10/25] watchdog: Add ULP wdog support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/watchdog/Kconfig      |   6 ++
 drivers/watchdog/Makefile     |   1 +
 drivers/watchdog/imxulp-wdt.c | 161 ++++++++++++++++++++++++++++++++++
 3 files changed, 168 insertions(+)
 create mode 100644 drivers/watchdog/imxulp-wdt.c

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index e5c2036e6d..159b495acb 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -59,6 +59,12 @@ config WATCHDOG_IMX
 	help
 	  Add support for watchdog found on Freescale i.MX SoCs.
 
+config WATCHDOG_IMXULP
+	bool "i.MX ULP watchdog"
+	depends on ARCH_IMX || COMPILE_TEST
+	help
+	  Add support for watchdog found on Freescale i.MX SoCs.
+
 config WATCHDOG_JZ4740
 	bool "Ingenic jz4740 SoC hardware watchdog"
 	depends on MACH_MIPS_XBURST || COMPILE_TEST
diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
index cdd9460e34..2b0da7cea9 100644
--- a/drivers/watchdog/Makefile
+++ b/drivers/watchdog/Makefile
@@ -10,6 +10,7 @@ obj-$(CONFIG_WATCHDOG_DW) += dw_wdt.o
 obj-$(CONFIG_WATCHDOG_JZ4740) += jz4740.o
 obj-$(CONFIG_WATCHDOG_IMX_RESET_SOURCE) += imxwd.o
 obj-$(CONFIG_WATCHDOG_IMX) += imxwd.o
+obj-$(CONFIG_WATCHDOG_IMXULP) += imxulp-wdt.o
 obj-$(CONFIG_WATCHDOG_KVX) += kvx_wdt.o
 obj-$(CONFIG_WATCHDOG_ORION) += orion_wdt.o
 obj-$(CONFIG_ARCH_BCM283X) += bcm2835_wdt.o
diff --git a/drivers/watchdog/imxulp-wdt.c b/drivers/watchdog/imxulp-wdt.c
new file mode 100644
index 0000000000..78d1527782
--- /dev/null
+++ b/drivers/watchdog/imxulp-wdt.c
@@ -0,0 +1,161 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2016 Freescale Semiconductor, Inc.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <of.h>
+#include <errno.h>
+#include <malloc.h>
+#include <restart.h>
+#include <watchdog.h>
+#include <reset_source.h>
+#include <linux/clk.h>
+#include <asm/system.h>
+
+struct imxulp_socdata {
+	unsigned int rate;
+};
+
+struct imxulp_wd {
+	struct watchdog wd;
+	void __iomem *base;
+	unsigned int rate;
+	struct device *dev;
+};
+
+#define REFRESH_WORD0 0xA602 /* 1st refresh word */
+#define REFRESH_WORD1 0xB480 /* 2nd refresh word */
+
+#define UNLOCK_WORD0 0xC520 /* 1st unlock word */
+#define UNLOCK_WORD1 0xD928 /* 2nd unlock word */
+
+#define UNLOCK_WORD 0xD928C520 /* unlock word */
+#define REFRESH_WORD 0xB480A602 /* refresh word */
+
+#define WDOG_CS                 0x0
+#define WDOG_CS_UPDATE		BIT(5)
+#define WDOG_CS_EN		BIT(7)
+#define WDOG_CS_RCS		BIT(10)
+#define WDOG_CS_ULK		BIT(11)
+#define WDOG_CS_PRES		BIT(12)
+#define WDOG_CS_CMD32EN		BIT(13)
+#define WDOG_CS_FLG		BIT(14)
+#define WDOG_CS_INT		BIT(6)
+#define WDOG_CS_LPO_CLK		(0x1 << 8)
+
+#define WDOG_CNT		0x4
+#define WDOG_TOVAL		0x8
+
+#define CLK_RATE_1KHZ		1000
+#define CLK_RATE_32KHZ		125
+
+static int imxulp_watchdog_set_timeout(struct watchdog *wd, unsigned int timeout)
+{
+	struct imxulp_wd *imxwd = container_of(wd, struct imxulp_wd, wd);
+	u32 cmd32 = 0;
+
+	if (timeout == 0)
+		return -ENOSYS;
+
+	if (readl(imxwd->base + WDOG_CS) & WDOG_CS_CMD32EN) {
+		writel(UNLOCK_WORD, imxwd->base + WDOG_CNT);
+		cmd32 = WDOG_CS_CMD32EN;
+	} else {
+		writel(UNLOCK_WORD0, imxwd->base + WDOG_CNT);
+		writel(UNLOCK_WORD1, imxwd->base + WDOG_CNT);
+	}
+
+	/* Wait WDOG Unlock */
+	while (!(readl(imxwd->base + WDOG_CS) & WDOG_CS_ULK))
+		;
+
+	writel(timeout * imxwd->rate, imxwd->base + WDOG_TOVAL);
+
+	writel(cmd32 | WDOG_CS_EN | WDOG_CS_UPDATE | WDOG_CS_LPO_CLK |
+	       WDOG_CS_FLG | WDOG_CS_PRES | WDOG_CS_INT, imxwd->base + WDOG_CS);
+
+	/* Wait WDOG reconfiguration */
+	while (!(readl(imxwd->base + WDOG_CS) & WDOG_CS_RCS))
+		;
+
+	if (readl(imxwd->base + WDOG_CS) & WDOG_CS_CMD32EN) {
+		writel(REFRESH_WORD, imxwd->base + WDOG_CNT);
+	} else {
+		writel(REFRESH_WORD0, imxwd->base + WDOG_CNT);
+		writel(REFRESH_WORD1, imxwd->base + WDOG_CNT);
+	}
+
+	return 0;
+}
+
+static enum wdog_hw_runnning imxulp_wd_running(struct imxulp_wd *imxwd)
+{
+	if (readl(imxwd->base + WDOG_CS) & WDOG_CS_EN)
+		return WDOG_HW_RUNNING;
+	else
+		return WDOG_HW_NOT_RUNNING;
+}
+
+static int imxulp_wd_probe(struct device *dev)
+{
+	struct imxulp_wd *imxwd;
+	struct resource *iores;
+	struct imxulp_socdata *socdata;
+	int ret;
+
+	ret = dev_get_drvdata(dev, (const void **)&socdata);
+	if (ret)
+		return ret;
+
+	imxwd = xzalloc(sizeof(*imxwd));
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return dev_err_probe(dev, PTR_ERR(iores), "could not get memory region\n");
+
+	imxwd->rate = socdata->rate;
+	imxwd->base = IOMEM(iores->start);
+	imxwd->wd.set_timeout = imxulp_watchdog_set_timeout;
+	imxwd->wd.timeout_max = 0xffff / imxwd->rate;
+	imxwd->wd.hwdev = dev;
+	imxwd->wd.running = imxulp_wd_running(imxwd);
+
+	ret = watchdog_register(&imxwd->wd);
+	if (ret)
+		return dev_err_probe(dev, ret, "Failed to register watchdog device\n");
+
+	return 0;
+}
+
+static struct imxulp_socdata imx7ulp_wd_socdata = {
+	.rate = CLK_RATE_1KHZ,
+};
+
+static struct imxulp_socdata imx93_wd_socdata = {
+	.rate = CLK_RATE_32KHZ,
+};
+
+static __maybe_unused struct of_device_id imxulp_wdt_dt_ids[] = {
+	{
+		.compatible = "fsl,imx7ulp-wdt",
+		.data = &imx7ulp_wd_socdata,
+	}, {
+		.compatible = "fsl,imx8ulp-wdt",
+		.data = &imx7ulp_wd_socdata,
+	}, {
+		.compatible = "fsl,imx93-wdt",
+		.data = &imx93_wd_socdata,
+	}, {
+		/* sentinel */
+	}
+};
+MODULE_DEVICE_TABLE(of, imx_wdt_dt_ids);
+
+static struct driver imxulp_wd_driver = {
+	.name = "imxulp-watchdog",
+	.probe = imxulp_wd_probe,
+	.of_compatible = DRV_OF_COMPAT(imxulp_wdt_dt_ids),
+};
+device_platform_driver(imxulp_wd_driver);
-- 
2.39.2



