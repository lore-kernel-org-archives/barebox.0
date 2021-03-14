Delivery-date: Sun, 14 Mar 2021 13:30:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLPsu-0007pW-Vf
	for lore@lore.pengutronix.de; Sun, 14 Mar 2021 13:30:17 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLPsn-0007QN-Qz
	for lore@pengutronix.de; Sun, 14 Mar 2021 13:30:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pRx/uvG+kcuum94W8vU3kaVWwpoKTjbEFJoE5C1riVw=; b=Z/FnhGM5/buSK5k+GzOjC2on+
	dAeh9KcpK76t07egp9v7G7o9d98YDKJs8EgPfx3CIe71cD28b2kuN11upDbFX5u8qs1A4vS0e5Q/5
	Mvire8/8XPbDaQmW0aDqhR9DRn+YBZQ6nSmAuP1BZD+7RXZof0AToY9tIXGbf1+/XhmhwBY4bw+VE
	7l6KazBjrQzb3f5tE8s/Q/y8WkmUqwvt1CS8U7ivS4BIcx4j3wDxJk/gYXvePxbAgZt79GazpqP45
	yjkk0vbBE83JIF7dfF0GOVAnACtqaxmLwXcWBnuI59AmcDM4OoHSN+okAyqOwYBGAVnwqspGJchCj
	a+qUdd3/g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLPre-00ECGO-N0; Sun, 14 Mar 2021 12:28:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLPqx-00EBui-LC
 for barebox@lists.infradead.org; Sun, 14 Mar 2021 12:28:18 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lLPqp-0006Lj-5u; Sun, 14 Mar 2021 13:28:07 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lLPqn-00016j-OH; Sun, 14 Mar 2021 13:28:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sun, 14 Mar 2021 13:28:02 +0100
Message-Id: <20210314122804.4128-19-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210314122804.4128-1-a.fatoum@pengutronix.de>
References: <20210314122804.4128-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210314_122815_907359_CA383458 
X-CRM114-Status: GOOD (  19.10  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, rcz@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 18/20] clocksource: add driver for RISC-V CLINT timer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Linux selects this on nommu RISC-V machines. It's also used on the Virt
machine added in a follow-up commit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clocksource/Kconfig       |  7 +++
 drivers/clocksource/Makefile      |  1 +
 drivers/clocksource/timer-clint.c | 98 +++++++++++++++++++++++++++++++
 3 files changed, 106 insertions(+)
 create mode 100644 drivers/clocksource/timer-clint.c

diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index 6dfe6151ac98..7f829490e108 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -99,4 +99,11 @@ config CLOCKSOURCE_TI_DM
 config CLOCKSOURCE_TI_32K
 	bool
 
+config CLINT_TIMER
+	bool "CLINT Timer for the RISC-V platform" if COMPILE_TEST
+	depends on OFDEVICE
+	help
+	  This option enables the CLINT timer for RISC-V systems.  The CLINT
+	  driver is usually used for NoMMU RISC-V systems.
+
 endmenu
diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
index b4607f787fcf..268ce16800a7 100644
--- a/drivers/clocksource/Makefile
+++ b/drivers/clocksource/Makefile
@@ -21,3 +21,4 @@ obj-$(CONFIG_CLOCKSOURCE_IMX_GPT) += timer-imx-gpt.o
 obj-$(CONFIG_CLOCKSOURCE_DW_APB_TIMER) += dw_apb_timer.o
 obj-$(CONFIG_CLOCKSOURCE_TI_DM) += timer-ti-dm.o
 obj-$(CONFIG_CLOCKSOURCE_TI_32K) += timer-ti-32k.o
+obj-$(CONFIG_CLINT_TIMER) += timer-clint.o
diff --git a/drivers/clocksource/timer-clint.c b/drivers/clocksource/timer-clint.c
new file mode 100644
index 000000000000..620222b51226
--- /dev/null
+++ b/drivers/clocksource/timer-clint.c
@@ -0,0 +1,98 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2020 Western Digital Corporation or its affiliates.
+ *
+ * Most of the M-mode (i.e. NoMMU) RISC-V systems usually have a
+ * CLINT MMIO timer device.
+ */
+
+#define pr_fmt(fmt) "clint: " fmt
+
+#include <common.h>
+#include <init.h>
+#include <clock.h>
+#include <errno.h>
+#include <of.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+#include <notifier.h>
+#include <io.h>
+
+#define CLINT_TIMER_VAL_OFF	0xbff8
+
+#ifdef CONFIG_64BIT
+#define clint_get_cycles()	readq(clint_timer_val)
+#else
+#define clint_get_cycles()	readl(clint_timer_val)
+#define clint_get_cycles_hi()	readl(((u32 *)clint_timer_val) + 1)
+#endif
+
+static void __iomem *clint_timer_val;
+
+#ifdef CONFIG_64BIT
+static u64 notrace clint_get_cycles64(void)
+{
+	return clint_get_cycles();
+}
+#else /* CONFIG_64BIT */
+static u64 notrace clint_get_cycles64(void)
+{
+	u32 hi, lo;
+
+	do {
+		hi = clint_get_cycles_hi();
+		lo = clint_get_cycles();
+	} while (hi != clint_get_cycles_hi());
+
+	return ((u64)hi << 32) | lo;
+}
+#endif /* CONFIG_64BIT */
+
+static u64 clint_rdtime(void)
+{
+	return clint_get_cycles64();
+}
+
+static struct clocksource clint_clocksource = {
+	.read		= clint_rdtime,
+	.mask		= CLOCKSOURCE_MASK(64),
+};
+
+static int clint_timer_init_dt(struct device_d* dev)
+{
+	struct device_node *cpu;
+	struct resource *iores;
+	u32 riscv_timebase;
+
+	/* one timer is enough */
+	if (clint_timer_val)
+		return 0;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+	clint_timer_val = IOMEM(iores->start) + CLINT_TIMER_VAL_OFF;
+
+	cpu = of_find_node_by_path("/cpus");
+	if (!cpu || of_property_read_u32(cpu, "timebase-frequency", &riscv_timebase))
+		panic(KERN_WARNING "RISC-V system with no 'timebase-frequency' in DTS\n");
+
+	dev_info(dev, "running at %u Hz\n", riscv_timebase);
+
+	clint_clocksource.mult = clocksource_hz2mult(riscv_timebase, clint_clocksource.shift);
+
+	return init_clock(&clint_clocksource);
+}
+
+static struct of_device_id time_clint_dt_ids[] = {
+	{ .compatible = "riscv,clint0", },
+	{ .compatible = "sifive,clint0" },
+	{ /* sentinel */ },
+};
+
+static struct driver_d clint_timer_driver = {
+	.name = "clint-timer",
+	.probe = clint_timer_init_dt,
+	.of_compatible = time_clint_dt_ids,
+};
+postcore_platform_driver(clint_timer_driver);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

