Delivery-date: Mon, 31 Jan 2022 09:14:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nERpB-001UNM-Cc
	for lore@lore.pengutronix.de; Mon, 31 Jan 2022 09:14:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nERp9-0000uh-GK
	for lore@pengutronix.de; Mon, 31 Jan 2022 09:14:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PfuHJDRQC4gPGketId5UtmBuJXH/tSGZ31q5EGDtUWA=; b=tCaEl0qRfhcQQ2
	h7y0AD0WkExbNuIkluPUGOI8H9eVhoWlC096PAK9VB//xCH0YhcmrfDli4DyTqGzn5JZVQIxTVAoN
	Mtgae/XKYSgkv2s589bqrpVasy86mBsX4Fwyu+XfIZN65veZ3g/xi4bWECu4T2dQgk2wnMFXUHhka
	WpMdDrLoDC76iVacNzCPBpf1RB/y4FG8NhCXsiEQwSCZiVyJNH3Vnssz/M7iMLQh6++mpY1tr+B2E
	DBCiCDfPcYEmAEltsWvdwq9hE8ReXyLehIMVkrh193abi1bnfM/cQZpUHhAwT2eDBMz+/wgxYItQ+
	UciPbBrJWQUcZtYjWirQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nERnm-008SIZ-UK; Mon, 31 Jan 2022 08:12:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nERn4-008S14-8D
 for barebox@lists.infradead.org; Mon, 31 Jan 2022 08:11:59 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nERmv-0000Mx-0s; Mon, 31 Jan 2022 09:11:49 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nERmu-007u7p-Hc; Mon, 31 Jan 2022 09:11:48 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 31 Jan 2022 09:11:46 +0100
Message-Id: <20220131081146.1883859-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220131081146.1883859-1-a.fatoum@pengutronix.de>
References: <20220131081146.1883859-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220131_001158_336489_E2B7CE52 
X-CRM114-Status: GOOD (  19.14  )
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
Subject: [PATCH 2/2] clocksource: add STM32 Timer driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The STM32 timer is 32-bit and thus takes longer to wrap around than the
24-bit SysTick timer. Add a driver for it at a higher priority.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clocksource/Kconfig       |   4 +
 drivers/clocksource/Makefile      |   1 +
 drivers/clocksource/timer-stm32.c | 122 ++++++++++++++++++++++++++++++
 3 files changed, 127 insertions(+)
 create mode 100644 drivers/clocksource/timer-stm32.c

diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index 9fae1f2d352e..e1bff23320de 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -120,4 +120,8 @@ config ARMV7M_SYSTICK
 	help
 	  This option enables support for the ARMv7M system timer unit.
 
+config CLKSRC_STM32
+	bool "Clocksource for STM32 SoCs"
+	depends on OFDEVICE && (ARCH_STM32 || COMPILE_TEST)
+
 endmenu
diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
index a4a7b84fae0c..eceaa990d43d 100644
--- a/drivers/clocksource/Makefile
+++ b/drivers/clocksource/Makefile
@@ -25,3 +25,4 @@ obj-$(CONFIG_CLOCKSOURCE_TI_32K) += timer-ti-32k.o
 obj-$(CONFIG_CLINT_TIMER) += timer-clint.o
 obj-$(CONFIG_RISCV_TIMER) += timer-riscv.o
 obj-$(CONFIG_ARMV7M_SYSTICK) += armv7m_systick.o
+obj-$(CONFIG_CLKSRC_STM32) += timer-stm32.o
diff --git a/drivers/clocksource/timer-stm32.c b/drivers/clocksource/timer-stm32.c
new file mode 100644
index 000000000000..dec48fccf5a2
--- /dev/null
+++ b/drivers/clocksource/timer-stm32.c
@@ -0,0 +1,122 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2018, STMicroelectronics - All Rights Reserved
+ * Author(s): Patrice Chotard, <patrice.chotard@foss.st.com> for STMicroelectronics.
+ */
+
+#include <common.h>
+#include <linux/clk.h>
+#include <clock.h>
+#include <init.h>
+#include <io.h>
+
+/* Timer control1 register  */
+#define CR1_CEN			BIT(0)
+#define CR1_ARPE		BIT(7)
+
+/* Event Generation Register register  */
+#define EGR_UG			BIT(0)
+
+/* Auto reload register for free running config */
+#define GPT_FREE_RUNNING	0xFFFFFFFF
+
+#define MHZ_1			1000000
+
+struct stm32_timer_regs {
+	u32 cr1;
+	u32 cr2;
+	u32 smcr;
+	u32 dier;
+	u32 sr;
+	u32 egr;
+	u32 ccmr1;
+	u32 ccmr2;
+	u32 ccer;
+	u32 cnt;
+	u32 psc;
+	u32 arr;
+	u32 reserved;
+	u32 ccr1;
+	u32 ccr2;
+	u32 ccr3;
+	u32 ccr4;
+	u32 reserved1;
+	u32 dcr;
+	u32 dmar;
+	u32 tim2_5_or;
+};
+
+static struct stm32_timer_regs *timer_base;
+
+static u64 stm32_timer_read(void)
+{
+	return readl(&timer_base->cnt);
+}
+
+/* A bit obvious isn't it? */
+static struct clocksource cs = {
+	.read = stm32_timer_read,
+	.mask	= CLOCKSOURCE_MASK(32),
+	.shift = 0,
+	.priority = 100,
+};
+
+static int stm32_timer_probe(struct device_d *dev)
+{
+	struct resource *iores;
+	struct clk *clk;
+	u32 rate, psc;
+	int ret;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+
+	timer_base = IOMEM(iores->start);
+
+	clk = clk_get(dev, NULL);
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	ret = clk_enable(clk);
+	if (ret)
+		return ret;
+
+	/* Stop the timer */
+	clrbits_le32(&timer_base->cr1, CR1_CEN);
+
+	/* get timer clock */
+	rate = clk_get_rate(clk);
+
+	/* we set timer prescaler to obtain a 1MHz timer counter frequency */
+	psc = (rate / MHZ_1) - 1;
+	writel(psc, &timer_base->psc);
+
+	/* Configure timer for auto-reload */
+	setbits_le32(&timer_base->cr1, CR1_ARPE);
+
+	/* load value for auto reload */
+	writel(GPT_FREE_RUNNING, &timer_base->arr);
+
+	/* start timer */
+	setbits_le32(&timer_base->cr1, CR1_CEN);
+
+	/* Update generation */
+	setbits_le32(&timer_base->egr, EGR_UG);
+
+	cs.mult = clocksource_hz2mult(MHZ_1, cs.shift);
+
+	return init_clock(&cs);
+}
+
+static struct of_device_id stm32_timer_dt_ids[] = {
+	{ .compatible = "st,stm32-timer" },
+	{ /* sentinel */ }
+};
+
+static struct driver_d stm32_timer_driver = {
+	.name = "stm32-timer",
+	.probe = stm32_timer_probe,
+	.of_compatible = stm32_timer_dt_ids,
+};
+postcore_platform_driver(stm32_timer_driver);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

