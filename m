Delivery-date: Tue, 12 Nov 2024 10:16:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tAn0s-000xLo-3C
	for lore@lore.pengutronix.de;
	Tue, 12 Nov 2024 10:16:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tAn0s-0006lO-5p
	for lore@pengutronix.de; Tue, 12 Nov 2024 10:16:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zcgsammojRnsuTp1+Y0d8nbF6myAWalxctz26YmvSo4=; b=LR8A49MWS5/9rRe2BNiNn2INfy
	WSyXGt1zmBup9EkZVeJoEQyW7pz/KYdlchF9x2gTBy++/P6UH/6CmHzw6jQmqxZjeKhtRK3i4dWPr
	ezkmYTxscebVTR8YLEJ9BJMPNO/TBgeqTg9XBMwxRb+8Yz4QHKKrxOf+taCeQqjuDMZOAIeqSTj9N
	5uQr+jFpgf2kt2NkFx0ZsBxoViETSuDY1CQpUnmJ7Zk7LvYebQaO2vJW46g7cQyfpNyLk4OTIyi/K
	lNZKZ3+eix+zgpyiWhMY/j6qlk4EJ/WIL62f15Igj4DdeINzTMWpJjwqUbFudFnKVwweoar2P+tet
	EvLRgHoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAn0T-00000002mg2-179A;
	Tue, 12 Nov 2024 09:16:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAn0O-00000002me4-06PO
	for barebox@lists.infradead.org;
	Tue, 12 Nov 2024 09:16:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tAn0M-0006P4-PH; Tue, 12 Nov 2024 10:16:10 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tAn0M-000O0U-1q;
	Tue, 12 Nov 2024 10:16:10 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tAn0M-00GNBa-1d;
	Tue, 12 Nov 2024 10:16:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 12 Nov 2024 10:16:06 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241112-k3-watchdog-v1-3-ceb254779735@pengutronix.de>
References: <20241112-k3-watchdog-v1-0-ceb254779735@pengutronix.de>
In-Reply-To: <20241112-k3-watchdog-v1-0-ceb254779735@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1731402970; l=6001;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=kYJBiBOm7oSkAtAxq3aDpio8/yMxTw6PWPVdV8wc0jI=;
 b=GUk6vxwis4T+/gFD18my0eGNSHtosf7LCeCs0l4aOo1rQzRtUqxGG+hD0EfJyKNqx7aSHNQpm
 W1RBqukYN5xBlqsUh1vSsWH+RSVkKbiqqqxKEiK26bWevQFKZocDMTM
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_011612_108380_74B83EF2 
X-CRM114-Status: GOOD (  21.10  )
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
Subject: [PATCH 3/3] watchdog: add rti_wdt support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/watchdog/Kconfig   |   7 ++
 drivers/watchdog/Makefile  |   1 +
 drivers/watchdog/rti_wdt.c | 183 +++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 191 insertions(+)

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index 762e37c9c2..62b44df7c1 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -177,4 +177,11 @@ config CADENCE_WATCHDOG
 	  Say Y here if you want to include support for the watchdog
 	  timer in the Xilinx Zynq.
 
+config K3_RTI_WDT
+	bool "Texas Instruments K3 RTI watchdog"
+	depends on ARCH_K3 || COMPILE_TEST
+	help
+	  Say Y here if you want to include support for the K3 watchdog
+	  timer (RTI module) available in the K3 generation of processors.
+
 endif
diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
index 2b0da7cea9..85d8dbfa3f 100644
--- a/drivers/watchdog/Makefile
+++ b/drivers/watchdog/Makefile
@@ -24,3 +24,4 @@ obj-$(CONFIG_ITCO_WDT) += itco_wdt.o
 obj-$(CONFIG_STARFIVE_WDT) += starfive_wdt.o
 obj-$(CONFIG_WDAT_WDT) += wdat_wdt.o
 obj-$(CONFIG_CADENCE_WATCHDOG) += cadence_wdt.o
+obj-$(CONFIG_K3_RTI_WDT) += rti_wdt.o
diff --git a/drivers/watchdog/rti_wdt.c b/drivers/watchdog/rti_wdt.c
new file mode 100644
index 0000000000..9764bc5462
--- /dev/null
+++ b/drivers/watchdog/rti_wdt.c
@@ -0,0 +1,183 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (c) Siemens AG, 2020
+ *
+ * Authors:
+ *   Jan Kiszka <jan.kiszka@siemens.com>
+ *
+ * Derived from linux/drivers/watchdog/rti_wdt.c
+ */
+#include <init.h>
+#include <io.h>
+#include <of.h>
+#include <clock.h>
+#include <malloc.h>
+#include <watchdog.h>
+#include <driver.h>
+#include <linux/clk.h>
+#include <linux/math64.h>
+
+/* Timer register set definition */
+#define RTIDWDCTRL		0x90
+#define RTIDWDPRLD		0x94
+#define RTIWDSTATUS		0x98
+#define RTIWDKEY		0x9c
+#define RTIDWDCNTR		0xa0
+#define RTIWWDRXCTRL		0xa4
+#define RTIWWDSIZECTRL		0xa8
+
+#define RTIWWDRX_NMI		0xa
+
+#define RTIWWDSIZE_100P		0x5
+#define RTIWWDSIZE_50P		0x50
+
+#define WDENABLE_KEY		0xa98559da
+
+#define WDKEY_SEQ0		0xe51a
+#define WDKEY_SEQ1		0xa35c
+
+#define WDT_PRELOAD_SHIFT	13
+
+#define WDT_PRELOAD_MAX		0xfff
+
+#define DWDST			BIT(1)
+
+struct rti_wdt_priv {
+	void __iomem *regs;
+	struct watchdog wdt;
+	unsigned int clk_hz;
+};
+
+static int rti_wdt_ping(struct watchdog *wdt)
+{
+	struct rti_wdt_priv *priv = container_of(wdt, struct rti_wdt_priv, wdt);
+	u64 halftime;
+
+	halftime = wdt->timeout_cur / 2 + 1;
+
+	if (!is_timeout(wdt->last_ping, halftime * SECOND))
+		return -EBUSY;
+
+	writel(WDKEY_SEQ0, priv->regs + RTIWDKEY);
+	writel(WDKEY_SEQ1, priv->regs + RTIWDKEY);
+
+	return 0;
+}
+
+static int rti_wdt_settimeout(struct watchdog *wdt, unsigned int timeout)
+{
+	struct rti_wdt_priv *priv = container_of(wdt, struct rti_wdt_priv, wdt);
+	u32 timer_margin;
+
+	if (!timeout)
+		return -ENOSYS;
+
+	if (wdt->running == WDOG_HW_RUNNING && timeout == wdt->timeout_cur)
+		return rti_wdt_ping(wdt);
+
+	if (readl(priv->regs + RTIDWDCTRL) == WDENABLE_KEY)
+		return -ENOSYS;
+
+	timer_margin = timeout * priv->clk_hz;
+	timer_margin >>= WDT_PRELOAD_SHIFT;
+	if (timer_margin > WDT_PRELOAD_MAX)
+		timer_margin = WDT_PRELOAD_MAX;
+
+	writel(timer_margin, priv->regs + RTIDWDPRLD);
+	writel(RTIWWDRX_NMI, priv->regs + RTIWWDRXCTRL);
+	writel(RTIWWDSIZE_50P, priv->regs + RTIWWDSIZECTRL);
+
+	readl(priv->regs + RTIWWDSIZECTRL);
+
+	writel(WDENABLE_KEY, priv->regs + RTIDWDCTRL);
+
+	return 0;
+}
+
+static unsigned int rti_wdt_get_timeleft_s(struct watchdog *wdt)
+{                       
+	struct rti_wdt_priv *priv = container_of(wdt, struct rti_wdt_priv, wdt);
+	u32 timer_counter;
+	u32 val;
+                
+	/* if timeout has occurred then return 0 */
+	val = readl(priv->regs + RTIWDSTATUS);
+	if (val & DWDST)
+		return 0;
+
+	timer_counter = readl(priv->regs + RTIDWDCNTR);
+                        
+	return timer_counter / priv->clk_hz;
+}
+
+static int rti_wdt_probe(struct device *dev)
+{
+	struct rti_wdt_priv *priv;
+	struct clk *clk;
+	struct watchdog *wdt;
+	static bool one = false;
+
+	if (one)
+		return 0;
+	one = true;
+
+	priv = xzalloc(sizeof(*priv));
+
+	wdt = &priv->wdt;
+
+	priv->regs = dev_request_mem_region(dev, 0);
+	if (IS_ERR(priv->regs))
+		return -EINVAL;
+
+	clk = clk_get(dev, NULL);
+	if (IS_ERR(clk))
+		return dev_err_probe(dev, PTR_ERR(clk), "No clock");
+
+	priv->clk_hz = clk_get_rate(clk);
+
+	/*
+	 * If watchdog is running at 32k clock, it is not accurate.
+	 * Adjust frequency down in this case so that it does not expire
+	 * earlier than expected.
+	 */
+	if (priv->clk_hz < 32768)
+		priv->clk_hz = priv->clk_hz * 9 / 10;
+
+	wdt = &priv->wdt;
+        wdt->name = "rti_wdt";
+        wdt->hwdev = dev;
+        wdt->set_timeout = rti_wdt_settimeout;
+	wdt->ping = rti_wdt_ping;
+        wdt->timeout_max = WDT_PRELOAD_MAX / (priv->clk_hz >> WDT_PRELOAD_SHIFT);
+
+	if (readl(priv->regs + RTIDWDCTRL) == WDENABLE_KEY) {
+		u64 heartbeat_s;
+		u32 last_ping_s;
+
+		wdt->running = WDOG_HW_RUNNING;
+
+		heartbeat_s = readl(priv->regs + RTIDWDPRLD);
+		heartbeat_s <<= WDT_PRELOAD_SHIFT;
+		do_div(heartbeat_s, priv->clk_hz);
+		wdt->timeout_cur = heartbeat_s;
+		last_ping_s = heartbeat_s - rti_wdt_get_timeleft_s(wdt) + 1;
+
+		wdt->last_ping = get_time_ns() - last_ping_s * SECOND;
+	} else {
+		wdt->running = WDOG_HW_NOT_RUNNING;
+	}
+
+	return watchdog_register(wdt);
+}
+
+static const struct of_device_id rti_wdt_of_match[] = {
+	{ .compatible = "ti,j7-rti-wdt", },
+	{ /* sentinel */ }
+};
+
+static struct driver rti_wdt_driver = {
+	.name = "rti-wdt",
+	.probe = rti_wdt_probe,
+	.of_match_table = rti_wdt_of_match,
+};
+device_platform_driver(rti_wdt_driver);

-- 
2.39.5



