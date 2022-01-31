Delivery-date: Mon, 31 Jan 2022 09:14:00 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nERp2-001UMo-TX
	for lore@lore.pengutronix.de; Mon, 31 Jan 2022 09:14:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nERp0-0000tX-Su
	for lore@pengutronix.de; Mon, 31 Jan 2022 09:14:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5/8zyQELCycRUVKnfoZkj8UH6h2YTNkr491CK4Fpbsg=; b=xABvtikuDpdpCm
	l3P/bSezwBgP+0TduFqyM4a+6KnM+tDx10meCGxlqQsWqq946zqlDFRA2PL1iJo47KaBj2478W3Tu
	RqxmE6UDJkd+2cZVI1XZD+WvvgV/3V8lVPkjamSRTrjzFF9KK1ro7RxqMCDpohI+ULvM3gTbJU/Ur
	5pBssRXfTVZ5IyGEbHTjmGui/Za0qgYRhJrxbvQamnqN0hMCHapdJTfkKFO/8GQiFgGNFv6L6dsgn
	iEAJQQK1bWEj2DxdlyRZd5TlBgIflT3xjvyVMe+nlk63ivO/tj65oNzKYaUagT169JtHuAkW83uaS
	Gfey12/XwWD8STDmJowA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nERnc-008SCZ-HU; Mon, 31 Jan 2022 08:12:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nERmw-008Rx8-9A
 for barebox@lists.infradead.org; Mon, 31 Jan 2022 08:11:51 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nERmv-0000Mw-0e; Mon, 31 Jan 2022 09:11:49 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nERmu-007u7n-H3; Mon, 31 Jan 2022 09:11:48 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 31 Jan 2022 09:11:45 +0100
Message-Id: <20220131081146.1883859-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220131_001150_376409_6D4423BA 
X-CRM114-Status: GOOD (  18.82  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] clocksource: add ARMv7-M SysTick driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The SysTick is a simple 24-bit system timer that's required for ARMv7-M
implementations. Add a clocksource driver for it for Cortex-M system
support.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clocksource/Kconfig          |  5 ++
 drivers/clocksource/Makefile         |  1 +
 drivers/clocksource/armv7m_systick.c | 87 ++++++++++++++++++++++++++++
 3 files changed, 93 insertions(+)
 create mode 100644 drivers/clocksource/armv7m_systick.c

diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index c6ca72d4e927..9fae1f2d352e 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -115,4 +115,9 @@ config CLINT_TIMER
 	  This option enables the CLINT timer for RISC-V systems.  The CLINT
 	  driver is usually used for NoMMU RISC-V systems.
 
+config ARMV7M_SYSTICK
+	bool "Support for the ARMv7M system timer" if COMPILE_TEST
+	help
+	  This option enables support for the ARMv7M system timer unit.
+
 endmenu
diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
index 21fd83a0930b..a4a7b84fae0c 100644
--- a/drivers/clocksource/Makefile
+++ b/drivers/clocksource/Makefile
@@ -24,3 +24,4 @@ obj-$(CONFIG_CLOCKSOURCE_TI_DM) += timer-ti-dm.o
 obj-$(CONFIG_CLOCKSOURCE_TI_32K) += timer-ti-32k.o
 obj-$(CONFIG_CLINT_TIMER) += timer-clint.o
 obj-$(CONFIG_RISCV_TIMER) += timer-riscv.o
+obj-$(CONFIG_ARMV7M_SYSTICK) += armv7m_systick.o
diff --git a/drivers/clocksource/armv7m_systick.c b/drivers/clocksource/armv7m_systick.c
new file mode 100644
index 000000000000..5f9222c50b8a
--- /dev/null
+++ b/drivers/clocksource/armv7m_systick.c
@@ -0,0 +1,87 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) Maxime Coquelin 2015
+ * Author:  Maxime Coquelin <mcoquelin.stm32@gmail.com>
+ */
+
+#include <common.h>
+#include <init.h>
+#include <clock.h>
+#include <io.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+
+#define SYST_CSR	0x00
+#define SYST_RVR	0x04
+#define SYST_CVR	0x08
+#define SYST_CALIB	0x0c
+
+#define SYSTICK_CTRL_EN		BIT(0)
+/* Clock source: 0 = Ref clock, 1 = CPU clock */
+#define SYSTICK_CTRL_CPU_CLK	BIT(2)
+#define SYSTICK_CAL_NOREF	BIT(31)
+
+#define SYSTICK_LOAD_RELOAD_MASK 0x00FFFFFF
+
+static __iomem void *systick_base;
+
+static u64 armv7m_systick_clocksource_read(void)
+{
+        return SYSTICK_LOAD_RELOAD_MASK - readl(systick_base + SYST_CVR);
+}
+
+static struct clocksource cs = {
+	.read	= armv7m_systick_clocksource_read,
+	.mask	= CLOCKSOURCE_MASK(24),
+	.shift	= 0,
+};
+
+static int armv7m_systick_probe(struct device_d *dev)
+{
+	struct clk *clk = NULL;
+	u32 rate, cal;
+	int ret;
+
+	systick_base = dev_request_mem_region_err_null(dev, 0);
+	if (!systick_base)
+		return -ENOENT;
+
+	ret = of_property_read_u32(dev->device_node, "clock-frequency", &rate);
+	if (ret) {
+		clk = clk_get(dev, NULL);
+		if (IS_ERR(clk))
+			return PTR_ERR(clk);
+
+		ret = clk_enable(clk);
+		if (ret)
+			return ret;
+
+		rate = clk_get_rate(clk);
+		if (!rate)
+			return -EINVAL;
+	}
+
+	writel_relaxed(SYSTICK_LOAD_RELOAD_MASK, systick_base + SYST_RVR);
+
+	cal = readl(&systick_base + SYST_CALIB);
+	if (cal & SYSTICK_CAL_NOREF)
+		writel(SYSTICK_CTRL_EN | SYSTICK_CTRL_CPU_CLK, systick_base + SYST_CSR);
+	else
+		writel(SYSTICK_CTRL_EN, systick_base + SYST_CSR);
+
+	cs.mult = clocksource_hz2mult(rate, cs.shift);
+
+	return init_clock(&cs);
+}
+
+static struct of_device_id armv7m_systick_dt_ids[] = {
+	{ .compatible = "arm,armv7m-systick", },
+	{ }
+};
+
+static struct driver_d armv7m_systick_driver = {
+	.name = "armv7m-systick-timer",
+	.probe = armv7m_systick_probe,
+	.of_compatible = DRV_OF_COMPAT(armv7m_systick_dt_ids),
+};
+postcore_platform_driver(armv7m_systick_driver);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

