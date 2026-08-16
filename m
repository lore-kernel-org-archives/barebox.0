Delivery-date: Sun, 16 Aug 2026 20:02:35 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wvfBq-003pkm-1L
	for lore@lore.pengutronix.de;
	Sun, 16 Aug 2026 20:02:35 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A247B200444
	for <lore@pengutronix.de>; Sun, 16 Aug 2026 20:02:34 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=pxt5F95E;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Wm2Tp6GgVzIlqFOoiZGRMcFgerb9PV7BPi1f6I1oHLY=; b=pxt5F95EuarZUU4gyC0K8gtmKe
	4jFBui7W66a/njSZM/uXZ2l+8FE1wWVDtkVQvi556JH8rPiatUK/jjRsy5k0FD76mBhHvNkFGbTIw
	4g/tpzCO0uBo0lX952FR1j14n/G6gIPaLKAePv7RjFJz3aBLlSlT3n+hZG7WLB2OGSuMA3GIzulLp
	/QuEhCHl9vTNvIpVZC4xPN3DKV1x6OLcO66+syTN2IVrr2SpRNQpiSJkv3eo5kx+V8Q4W3NtPMfSQ
	e6wp8V0UO9HgYLul+QmPkgbsTbThFuMnlPFyEYQK5Ps+OBbegwPPnhBT84+8I3IV8mhjHI4clQ7M6
	xPLrqhPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvfBT-00000004xaa-2YIe;
	Sun, 16 Aug 2026 18:02:11 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvfBO-00000004xPn-27gN
	for barebox@lists.infradead.org;
	Sun, 16 Aug 2026 18:02:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 07E062021F8;
	Sun, 16 Aug 2026 20:02:00 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvfBH-001osM-31;
	Sun, 16 Aug 2026 20:01:59 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvf5u-00000003pGc-1BB6;
	Sun, 16 Aug 2026 19:56:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 16 Aug 2026 19:56:43 +0200
Subject: [PATCH 23/27] clocksource: add a driver for the PXA OS timer and
 its watchdog
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260816-pxa3xx-v1-23-f3c3d7a6c43f@pengutronix.de>
References: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
In-Reply-To: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786902986; l=8469;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=t7Jd7evvNvtPku2ghUpwSAaK7Jls05JCr1ut0WzwHcA=;
 b=Lp0cKclsQrKMM7gfM8syehPjSwsSZLQ+YSdZC+hu99QHeIXhRSdFlnnT5zmwbZUxybJgITu+j
 pEAm7GJN3Q6AtPW+VEvB6LpOy5taGQmcDqu2bfhbp7lrTTN4pHkjV2R
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260816_110206_953210_137D24DF 
X-CRM114-Status: GOOD (  34.07  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The PXA clocksource was registered from a core_initcall in
    mach-pxa which is not suitable for multiarch. Move it over to a platform
   driver which probes from device tree. Match register 3 of the same timer doubles
    as a watchdog: arm it by writing a match value ahead of the counter and setting
    OWER_WME, and the match resets the machine. That is the same block the clocks
    [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: 79rt4tu38ed8xmfgi9nh1fzxskciodaz
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: A247B200444

The PXA clocksource was registered from a core_initcall in mach-pxa which
is not suitable for multiarch. Move it over to a platform driver which probes
from device tree.

Match register 3 of the same timer doubles as a watchdog: arm it by writing
a match value ahead of the counter and setting OWER_WME, and the match
resets the machine. That is the same block the clocksource uses and there
is one device tree node for it, so register the watchdog from the same
driver rather than inventing a second node for the same registers.

OWER_WME cannot be cleared again - the watchdog runs until it resets the
machine - so refuse a timeout of zero once it is armed instead of
pretending to stop it. Verified on a PXA303: the board resets on schedule
whether or not something asked for it to be disabled in between.

The counter is 32 bit and the match has to fit in it, which puts the
maximum timeout at 1321s at this part's 3.25MHz.

Assisted-by: Claude Opus 5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-pxa/Makefile      |   1 -
 arch/arm/mach-pxa/clocksource.c |  41 -----------
 drivers/clocksource/Kconfig     |   7 ++
 drivers/clocksource/Makefile    |   1 +
 drivers/clocksource/timer-pxa.c | 151 ++++++++++++++++++++++++++++++++++++++++
 5 files changed, 159 insertions(+), 42 deletions(-)

diff --git a/arch/arm/mach-pxa/Makefile b/arch/arm/mach-pxa/Makefile
index 86d9c4ca95..7a9ca83199 100644
--- a/arch/arm/mach-pxa/Makefile
+++ b/arch/arm/mach-pxa/Makefile
@@ -1,6 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
-obj-y += clocksource.o
 obj-y += sleep.o
 obj-y += common.o
 obj-y += devices.o
diff --git a/arch/arm/mach-pxa/clocksource.c b/arch/arm/mach-pxa/clocksource.c
deleted file mode 100644
index 3bc95827d8..0000000000
--- a/arch/arm/mach-pxa/clocksource.c
+++ /dev/null
@@ -1,41 +0,0 @@
-/*
- * (C) Copyright 2009 Sascha Hauer <s.hauer@pengutronix.de>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
-
-#include <common.h>
-#include <init.h>
-#include <clock.h>
-#include <asm/io.h>
-
-#define OSCR	0x40A00010
-
-static uint64_t pxa_clocksource_read(void)
-{
-	return readl(OSCR);
-}
-
-static struct clocksource cs = {
-	.read	= pxa_clocksource_read,
-	.mask	= 0xffffffff,
-	.shift	= 20,
-	.priority = 80,
-};
-
-static int clocksource_init(void)
-{
-	cs.mult = clocksource_hz2mult(3250000, cs.shift);
-
-	return init_clock(&cs);
-}
-
-core_initcall(clocksource_init);
diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index 5ee83d2b38..89e0be7894 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -120,6 +120,13 @@ config ARMV7M_SYSTICK
 	help
 	  This option enables support for the ARMv7M system timer unit.
 
+config CLOCKSOURCE_PXA
+	bool "Clocksource for PXA SoCs"
+	depends on OFDEVICE && (ARCH_PXA || COMPILE_TEST)
+	default ARCH_PXA
+	help
+	  This option enables support for the OS timer found on PXA SoCs.
+
 config CLKSRC_STM32
 	bool "Clocksource for STM32 SoCs"
 	depends on OFDEVICE && (ARCH_STM32 || COMPILE_TEST)
diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
index dff8255650..0f8a54d819 100644
--- a/drivers/clocksource/Makefile
+++ b/drivers/clocksource/Makefile
@@ -26,3 +26,4 @@ obj-$(CONFIG_CLINT_TIMER) += timer-clint.o
 obj-$(CONFIG_RISCV_TIMER) += timer-riscv.o
 obj-$(CONFIG_ARMV7M_SYSTICK) += armv7m_systick.o
 obj-$(CONFIG_CLKSRC_STM32) += timer-stm32.o
+obj-$(CONFIG_CLOCKSOURCE_PXA) += timer-pxa.o
diff --git a/drivers/clocksource/timer-pxa.c b/drivers/clocksource/timer-pxa.c
new file mode 100644
index 0000000000..8834bbec0c
--- /dev/null
+++ b/drivers/clocksource/timer-pxa.c
@@ -0,0 +1,151 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Clocksource and watchdog for the PXA OS timer.
+ *
+ * The two are one block: match register 3 doubles as the watchdog, so both
+ * live in the same driver rather than fighting over the device tree node.
+ *
+ * (C) Copyright 2009 Sascha Hauer <s.hauer@pengutronix.de>
+ */
+
+#include <common.h>
+#include <clock.h>
+#include <driver.h>
+#include <init.h>
+#include <io.h>
+#include <watchdog.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+
+#define OSMR3		0x0c	/* match register 3, the watchdog match */
+#define OSCR		0x10	/* counter, free running and running out of reset */
+#define OSSR		0x14	/* status */
+#define OWER		0x18	/* watchdog enable */
+
+#define OSSR_M3		(1 << 3)	/* match status channel 3 */
+#define OWER_WME	(1 << 0)	/* watchdog match enable */
+
+struct pxa_timer {
+	void __iomem *base;
+	unsigned long rate;
+	struct watchdog wd;
+};
+
+static inline struct pxa_timer *to_pxa_timer(struct watchdog *wd)
+{
+	return container_of(wd, struct pxa_timer, wd);
+}
+
+static void __iomem *pxa_timer_base;
+
+static uint64_t pxa_clocksource_read(void)
+{
+	return readl(pxa_timer_base + OSCR);
+}
+
+static struct clocksource pxa_cs = {
+	.read     = pxa_clocksource_read,
+	.mask     = CLOCKSOURCE_MASK(32),
+	.shift    = 20,
+	.priority = 80,
+};
+
+static int pxa_wdt_set_timeout(struct watchdog *wd, unsigned timeout)
+{
+	struct pxa_timer *timer = to_pxa_timer(wd);
+
+	if (!timeout) {
+		/*
+		 * OWER_WME only ever reads back the way it was written once:
+		 * the watchdog cannot be stopped again short of the reset it
+		 * is about to cause. Refuse rather than pretend.
+		 */
+		if (wd->running == WDOG_HW_RUNNING)
+			return -ENOSYS;
+
+		return 0;
+	}
+
+	writel(readl(timer->base + OSCR) + (u64)timeout * timer->rate,
+	       timer->base + OSMR3);
+	writel(OSSR_M3, timer->base + OSSR);
+	writel(OWER_WME, timer->base + OWER);
+
+	wd->running = WDOG_HW_RUNNING;
+
+	return 0;
+}
+
+static int pxa_timer_probe(struct device *dev)
+{
+	struct resource *iores;
+	struct pxa_timer *timer;
+	struct clk *clk;
+	int ret;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+
+	clk = clk_get(dev, NULL);
+	if (IS_ERR(clk))
+		return dev_err_probe(dev, PTR_ERR(clk), "cannot get clock\n");
+
+	ret = clk_enable(clk);
+	if (ret)
+		return dev_err_probe(dev, ret, "cannot enable clock\n");
+
+	timer = xzalloc(sizeof(*timer));
+	timer->base = IOMEM(iores->start);
+	timer->rate = clk_get_rate(clk);
+	if (!timer->rate)
+		return dev_err_probe(dev, -EINVAL, "clock has no rate\n");
+
+	pxa_timer_base = timer->base;
+	pxa_cs.mult = clocksource_hz2mult(timer->rate, pxa_cs.shift);
+
+	ret = init_clock(&pxa_cs);
+	if (ret)
+		return ret;
+
+	timer->wd.set_timeout = pxa_wdt_set_timeout;
+	timer->wd.hwdev = dev;
+	timer->wd.name = "pxa-wdt";
+	/* the counter is 32 bit, so that is as far ahead as a match reaches */
+	timer->wd.timeout_max = U32_MAX / timer->rate;
+	timer->wd.running = readl(timer->base + OWER) & OWER_WME ?
+			WDOG_HW_RUNNING : WDOG_HW_NOT_RUNNING;
+
+	ret = watchdog_register(&timer->wd);
+	if (ret)
+		dev_warn(dev, "failed to register watchdog: %pe\n",
+			 ERR_PTR(ret));
+
+	return 0;
+}
+
+static const struct of_device_id pxa_timer_dt_ids[] = {
+	{ .compatible = "marvell,pxa-timer" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, pxa_timer_dt_ids);
+
+static struct driver pxa_timer_driver = {
+	.name = "pxa-timer",
+	.probe = pxa_timer_probe,
+	.of_compatible = pxa_timer_dt_ids,
+};
+postcore_platform_driver(pxa_timer_driver);
+
+/*
+ * Under deep probe nothing refers to the timer by phandle, so it is not probed
+ * until the device tree walk reaches it - and that walk is in device tree
+ * order, which on PXA3xx puts the NAND controller a long way ahead of the
+ * timer. Everything in between would run its timeouts against the dummy
+ * clocksource.
+ */
+static int pxa_timer_of_init(void)
+{
+	return of_devices_ensure_probed_by_dev_id(pxa_timer_dt_ids);
+}
+coredevice_initcall(pxa_timer_of_init);

-- 
2.47.3



