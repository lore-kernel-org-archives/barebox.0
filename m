Delivery-date: Wed, 13 Sep 2023 14:09:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgOgZ-00Dk04-CL
	for lore@lore.pengutronix.de; Wed, 13 Sep 2023 14:09:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgOgW-0001HD-FY
	for lore@pengutronix.de; Wed, 13 Sep 2023 14:09:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sS0+iqzhNmFtsvGkHSTTBYaLVxTFU9HG+e94HEkOjM8=; b=zcDOQ/PD5V3fUXjLkT2TQEMaAR
	HaLMrN8+HzTZ+BTRe68EkSnlLkSlCtAlZlwRUyzXOSRrSfTAnixAmVH6+evg39ent+Y1y4byWSmdC
	hq1cinmdy0EthjPFAuRg8GTp+gT/0wiRFCNv7lAQa/KPn+/E8wtU7XTf+QdRKDst6IvcHL30hQOoS
	netdeYZb6SO4SaWJcj7pkGand+hIDK3f7KQywJ4Y85QLLsgpchkEfaxCjY5Q9PBut6NSCNVKnUT5V
	kv4UWDqkGPrdCMd8ZDjWymme0o7x821xUw0378BmMV8tUTzP3TPiCIJa4qrnQrympGdduiY3E0h74
	qPuGHWCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgOfT-005ocO-0g;
	Wed, 13 Sep 2023 12:08:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgOfP-005obM-2s
	for barebox@lists.infradead.org;
	Wed, 13 Sep 2023 12:08:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qgOfG-0000zs-QJ; Wed, 13 Sep 2023 14:08:14 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qgOfG-0063bZ-7Q; Wed, 13 Sep 2023 14:08:14 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qgOfG-007qPf-0a;
	Wed, 13 Sep 2023 14:08:14 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Sep 2023 14:08:07 +0200
Message-Id: <20230913120807.1869600-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230913120807.1869600-1-a.fatoum@pengutronix.de>
References: <20230913120807.1869600-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230913_050824_098125_285E4F3B 
X-CRM114-Status: GOOD (  36.30  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] watchdog: add Cadence watchdog support for Xilinx SoCs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds support for the Cadence watchdog IP available in Zynq-7000
and ZynqMP SoCs.

The driver has been ported from Linux v6.4 and tested on the ZynqMP.
Keep in mind that changes to the XSA may be necessary for the watchdog
to actually be able to reset the system.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/watchdog/Kconfig       |   6 +
 drivers/watchdog/Makefile      |   1 +
 drivers/watchdog/cadence_wdt.c | 278 +++++++++++++++++++++++++++++++++
 3 files changed, 285 insertions(+)
 create mode 100644 drivers/watchdog/cadence_wdt.c

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index 6f209e096ebe..e5c2036e6d19 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -165,4 +165,10 @@ config WDAT_WDT
 	  found on some desktop machines as well. This driver will take
 	  over the native iTCO watchdog driver found on many Intel CPUs.
 
+config CADENCE_WATCHDOG
+	tristate "Cadence Watchdog Timer"
+	help
+	  Say Y here if you want to include support for the watchdog
+	  timer in the Xilinx Zynq.
+
 endif
diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
index 265ae179f188..cdd9460e3478 100644
--- a/drivers/watchdog/Makefile
+++ b/drivers/watchdog/Makefile
@@ -22,3 +22,4 @@ obj-$(CONFIG_GPIO_WATCHDOG) += gpio_wdt.o
 obj-$(CONFIG_ITCO_WDT) += itco_wdt.o
 obj-$(CONFIG_STARFIVE_WDT) += starfive_wdt.o
 obj-$(CONFIG_WDAT_WDT) += wdat_wdt.o
+obj-$(CONFIG_CADENCE_WATCHDOG) += cadence_wdt.o
diff --git a/drivers/watchdog/cadence_wdt.c b/drivers/watchdog/cadence_wdt.c
new file mode 100644
index 000000000000..17655a188c7f
--- /dev/null
+++ b/drivers/watchdog/cadence_wdt.c
@@ -0,0 +1,278 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Cadence WDT driver - Used by Xilinx Zynq
+ *
+ * Copyright (C) 2010 - 2014 Xilinx, Inc.
+ *
+ */
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <of.h>
+#include <restart.h>
+#include <watchdog.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+#include <linux/reset.h>
+
+/* Supports 1 - 516 sec */
+#define CDNS_WDT_MAX_TIMEOUT	516
+
+/* Restart key */
+#define CDNS_WDT_RESTART_KEY 0x00001999
+
+/* Counter register access key */
+#define CDNS_WDT_REGISTER_ACCESS_KEY 0x00920000
+
+/* Counter value divisor */
+#define CDNS_WDT_COUNTER_VALUE_DIVISOR 0x1000
+
+/* Clock prescaler value and selection */
+#define CDNS_WDT_PRESCALE_64	64
+#define CDNS_WDT_PRESCALE_512	512
+#define CDNS_WDT_PRESCALE_4096	4096
+#define CDNS_WDT_PRESCALE_SELECT_64	1
+#define CDNS_WDT_PRESCALE_SELECT_512	2
+#define CDNS_WDT_PRESCALE_SELECT_4096	3
+
+/* Input clock frequency */
+#define CDNS_WDT_CLK_10MHZ	10000000
+#define CDNS_WDT_CLK_75MHZ	75000000
+
+/* Counter maximum value */
+#define CDNS_WDT_COUNTER_MAX 0xFFF
+
+/**
+ * struct cdns_wdt - Watchdog device structure
+ * @regs: baseaddress of device
+ * @clk: struct clk * of a clock source
+ * @prescaler: for saving prescaler value
+ * @ctrl_clksel: counter clock prescaler selection
+ * @cdns_wdt_device: watchdog device structure
+ *
+ * Structure containing parameters specific to cadence watchdog.
+ */
+struct cdns_wdt {
+	void __iomem		*regs;
+	struct clk		*clk;
+	u32			prescaler;
+	u32			ctrl_clksel;
+	struct watchdog		cdns_wdt_device;
+	unsigned		timeout;
+};
+
+static inline struct cdns_wdt *to_cdns_wdt(struct watchdog *wdd)
+{
+	return container_of(wdd, struct cdns_wdt, cdns_wdt_device);
+}
+
+/* Write access to Registers */
+static inline void cdns_wdt_writereg(struct cdns_wdt *wdt, u32 offset, u32 val)
+{
+	writel_relaxed(val, wdt->regs + offset);
+}
+
+/*************************Register Map**************************************/
+
+/* Register Offsets for the WDT */
+#define CDNS_WDT_ZMR_OFFSET	0x0	/* Zero Mode Register */
+#define CDNS_WDT_CCR_OFFSET	0x4	/* Counter Control Register */
+#define CDNS_WDT_RESTART_OFFSET	0x8	/* Restart Register */
+#define CDNS_WDT_SR_OFFSET	0xC	/* Status Register */
+
+/*
+ * Zero Mode Register - This register controls how the time out is indicated
+ * and also contains the access code to allow writes to the register (0xABC).
+ */
+#define CDNS_WDT_ZMR_WDEN_MASK	0x00000001 /* Enable the WDT */
+#define CDNS_WDT_ZMR_RSTEN_MASK	0x00000002 /* Enable the reset output */
+#define CDNS_WDT_ZMR_IRQEN_MASK	0x00000004 /* Enable IRQ output */
+#define CDNS_WDT_ZMR_RSTLEN_16	0x00000030 /* Reset pulse of 16 pclk cycles */
+#define CDNS_WDT_ZMR_ZKEY_VAL	0x00ABC000 /* Access key, 0xABC << 12 */
+/*
+ * Counter Control register - This register controls how fast the timer runs
+ * and the reset value and also contains the access code to allow writes to
+ * the register.
+ */
+#define CDNS_WDT_CCR_CRV_MASK	0x00003FFC /* Counter reset value */
+
+/**
+ * cdns_wdt_stop - Stop the watchdog.
+ *
+ * @wdt: cadence watchdog device
+ *
+ * Read the contents of the ZMR register, clear the WDEN bit
+ * in the register and set the access key for successful write.
+ */
+static void cdns_wdt_stop(struct cdns_wdt *wdt)
+{
+	cdns_wdt_writereg(wdt, CDNS_WDT_ZMR_OFFSET,
+			  CDNS_WDT_ZMR_ZKEY_VAL & (~CDNS_WDT_ZMR_WDEN_MASK));
+}
+
+/**
+ * cdns_wdt_reload - Reload the watchdog timer (i.e. pat the watchdog).
+ *
+ * @wdt: cadence watchdog device
+ *
+ * Write the restart key value (0x00001999) to the restart register.
+ */
+static void cdns_wdt_reload(struct cdns_wdt *wdt)
+{
+	cdns_wdt_writereg(wdt, CDNS_WDT_RESTART_OFFSET,
+			  CDNS_WDT_RESTART_KEY);
+}
+
+/**
+ * cdns_wdt_start - Enable and start the watchdog.
+ *
+ * @wdt: cadence watchdog device
+ * @timeout: new timeout
+ *
+ * The counter value is calculated according to the formula:
+ *		calculated count = (timeout * clock) / prescaler + 1.
+ * The calculated count is divided by 0x1000 to obtain the field value
+ * to write to counter control register.
+ * Clears the contents of prescaler and counter reset value. Sets the
+ * prescaler to 4096 and the calculated count and access key
+ * to write to CCR Register.
+ * Sets the WDT (WDEN bit) and either the Reset signal(RSTEN bit)
+ * or Interrupt signal(IRQEN) with a specified cycles and the access
+ * key to write to ZMR Register.
+ */
+static void cdns_wdt_start(struct cdns_wdt *wdt, unsigned timeout)
+{
+	unsigned int data = 0;
+	unsigned short count;
+	unsigned long clock_f = clk_get_rate(wdt->clk);
+
+	/*
+	 * Counter value divisor to obtain the value of
+	 * counter reset to be written to control register.
+	 */
+	count = (timeout * (clock_f / wdt->prescaler)) /
+		 CDNS_WDT_COUNTER_VALUE_DIVISOR + 1;
+
+	if (count > CDNS_WDT_COUNTER_MAX)
+		count = CDNS_WDT_COUNTER_MAX;
+
+	cdns_wdt_writereg(wdt, CDNS_WDT_ZMR_OFFSET,
+			  CDNS_WDT_ZMR_ZKEY_VAL);
+
+	count = (count << 2) & CDNS_WDT_CCR_CRV_MASK;
+
+	/* Write counter access key first to be able write to register */
+	data = count | CDNS_WDT_REGISTER_ACCESS_KEY | wdt->ctrl_clksel;
+	cdns_wdt_writereg(wdt, CDNS_WDT_CCR_OFFSET, data);
+	data = CDNS_WDT_ZMR_WDEN_MASK | CDNS_WDT_ZMR_RSTLEN_16 |
+	       CDNS_WDT_ZMR_ZKEY_VAL;
+
+	/* Reset on timeout regardless of what's specified in device tree. */
+	data |= CDNS_WDT_ZMR_RSTEN_MASK;
+	data &= ~CDNS_WDT_ZMR_IRQEN_MASK;
+
+	cdns_wdt_writereg(wdt, CDNS_WDT_ZMR_OFFSET, data);
+	cdns_wdt_writereg(wdt, CDNS_WDT_RESTART_OFFSET,
+			  CDNS_WDT_RESTART_KEY);
+}
+
+/**
+ * cdns_wdt_settimeout - Set a new timeout value for the watchdog device.
+ *
+ * @wdd: watchdog device
+ * @new_time: new timeout value that needs to be set
+ * Return: 0 on success
+ *
+ * Update the watchdog device timeout with new value which is used when
+ * cdns_wdt_start is called.
+ */
+static int cdns_wdt_settimeout(struct watchdog *wdd,
+			       unsigned int new_time)
+{
+	struct cdns_wdt *wdt = to_cdns_wdt(wdd);
+
+	if (new_time > wdd->timeout_max)
+		return -EINVAL;
+
+	if (new_time == 0) {
+		cdns_wdt_stop(wdt);
+	} else if (wdt->timeout != new_time) {
+		cdns_wdt_start(wdt, new_time);
+		wdt->timeout = new_time;
+	} else {
+		cdns_wdt_reload(wdt);
+	}
+
+	return 0;
+}
+
+/************************Platform Operations*****************************/
+/**
+ * cdns_wdt_probe - Probe call for the device.
+ *
+ * @pdev: handle to the platform device structure.
+ * Return: 0 on success, negative error otherwise.
+ *
+ * It does all the memory allocation and registration for the device.
+ */
+static int cdns_wdt_probe(struct device *dev)
+{
+	unsigned long clock_f;
+	struct cdns_wdt *wdt;
+	struct resource *res;
+	struct watchdog *cdns_wdt_device;
+
+	wdt = xzalloc(sizeof(*wdt));
+
+	cdns_wdt_device = &wdt->cdns_wdt_device;
+	cdns_wdt_device->name = "cdns_wdt";
+	cdns_wdt_device->hwdev = dev;
+	cdns_wdt_device->set_timeout = cdns_wdt_settimeout;
+	cdns_wdt_device->timeout_max = CDNS_WDT_MAX_TIMEOUT;
+
+	res = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(res))
+		return PTR_ERR(res);
+
+	wdt->regs = IOMEM(res->start);
+
+	/* We don't service interrupts in barebox, so a watchdog that doesn't
+	 * reset the system isn't a useful thing to register
+	 */
+	if (!of_property_read_bool(dev->of_node, "reset-on-timeout"))
+		dev_notice(dev, "proceeding as if reset-on-timeout was set\n");
+
+	wdt->clk = clk_get_enabled(dev, NULL);
+	if (IS_ERR(wdt->clk))
+		return dev_err_probe(dev, PTR_ERR(wdt->clk),
+				     "input clock not found\n");
+
+	clock_f = clk_get_rate(wdt->clk);
+	if (clock_f <= CDNS_WDT_CLK_75MHZ) {
+		wdt->prescaler = CDNS_WDT_PRESCALE_512;
+		wdt->ctrl_clksel = CDNS_WDT_PRESCALE_SELECT_512;
+	} else {
+		wdt->prescaler = CDNS_WDT_PRESCALE_4096;
+		wdt->ctrl_clksel = CDNS_WDT_PRESCALE_SELECT_4096;
+	}
+
+	return watchdog_register(cdns_wdt_device);
+}
+
+static const struct of_device_id cdns_wdt_of_match[] = {
+	{ .compatible = "cdns,wdt-r1p2", },
+	{ /* end of table */ }
+};
+MODULE_DEVICE_TABLE(of, cdns_wdt_of_match);
+
+static struct driver cdns_wdt_driver = {
+	.name		= "cdns-wdt",
+	.probe		= cdns_wdt_probe,
+	.of_match_table	= cdns_wdt_of_match,
+};
+device_platform_driver(cdns_wdt_driver);
+
+MODULE_AUTHOR("Xilinx, Inc.");
+MODULE_DESCRIPTION("Watchdog driver for Cadence WDT");
+MODULE_LICENSE("GPL");
-- 
2.39.2



