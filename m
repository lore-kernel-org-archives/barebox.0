Delivery-date: Mon, 01 Dec 2025 09:48:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vPza2-006kyB-0k
	for lore@lore.pengutronix.de;
	Mon, 01 Dec 2025 09:48:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vPza1-0002ww-BK
	for lore@pengutronix.de; Mon, 01 Dec 2025 09:48:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=c+rrtKoS4v8XMahcZgICY2TXrmcjd206PeyyotkvhxM=; b=Xa/0wvcz9jaBqGawrvn86lAfgr
	BkFin2GiRLHXpbvQOb6u/UZiVlA8LCynn79l3YaHS6vqgzPkcBUxOH9cSyG+YUX/ObrNC9fb3lCJw
	h7FslamTiTDF8QV8aKp2zxFdAedCvAfnJkNEE47suTbYHa9wC7NMDWT6V9GhNoSw7Z57uVrDoJFUB
	4niJqDWjhAeGB0vow1/Q+cvFzfU+oWchgDD1dA4oDhQ1cdfbZNzhYVUq+rn+1jBo8c/gyjkZRhzEn
	8rLUxOnWwgzzjAIFixca8G/8yfD79+XzmNbM41IyoxQa/uvHvC0ZXFAI7JtWnSACWtj/y3i2n6JMg
	u+MBV9Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPzZV-000000039E4-18Wu;
	Mon, 01 Dec 2025 08:47:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPzZQ-000000039B5-0nnN
	for barebox@lists.infradead.org;
	Mon, 01 Dec 2025 08:47:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vPzZN-0002eN-Ax; Mon, 01 Dec 2025 09:47:41 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  1 Dec 2025 09:45:54 +0100
Message-ID: <20251201084737.1270303-4-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251201084737.1270303-1-a.fatoum@barebox.org>
References: <20251201084737.1270303-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_004744_248843_3E6D2CA1 
X-CRM114-Status: GOOD (  20.75  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 4/6] of: add proper driver for simple-pm-bus
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

simple-pm-bus is currently handled exactly the same as simple-bus in
barebox with the assumption that clocks/power-domains are already
enabled.

This is not necessarily the case, so let's add a driver for
simple-pm-bus that actually does power management and keep the old
behavior the same for devices without deep probe.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
v2 -> v3:
  - new change
---
 drivers/bus/Kconfig         | 10 ++++++++
 drivers/bus/Makefile        |  1 +
 drivers/bus/simple-pm-bus.c | 47 +++++++++++++++++++++++++++++++++++++
 drivers/of/base.c           |  2 ++
 4 files changed, 60 insertions(+)
 create mode 100644 drivers/bus/simple-pm-bus.c

diff --git a/drivers/bus/Kconfig b/drivers/bus/Kconfig
index b480cf8bff0f..9b2e0c0ae8ea 100644
--- a/drivers/bus/Kconfig
+++ b/drivers/bus/Kconfig
@@ -34,4 +34,14 @@ config ACPI
 	  Driver needed for supporting drivers probed from ACPI tables.
 	  The root SDT is found via UEFI.
 
+config OF_SIMPLE_PM_BUS
+	def_bool PM_GENERIC_DOMAINS
+	prompt "Simple Power-managed bus" if COMPILE_TEST
+	depends on OFDEVICE
+	help
+	  simple-pm-bus is a bus that may have clocks and power domains
+	  that need to be enabled before the bus may be accessed.
+	  If this option is disabled or deep probe is not enabled at
+	  runtime, simple-pm-bus will be treated identically to simple-bus.
+
 endmenu
diff --git a/drivers/bus/Makefile b/drivers/bus/Makefile
index 2c54b3ea307d..1e18c14b970c 100644
--- a/drivers/bus/Makefile
+++ b/drivers/bus/Makefile
@@ -4,3 +4,4 @@ obj-$(CONFIG_IMX_WEIM)		+= imx-weim.o
 obj-$(CONFIG_MVEBU_MBUS)	+= mvebu-mbus.o
 obj-$(CONFIG_TI_SYSC)		+= ti-sysc.o
 obj-$(CONFIG_ACPI)		+= acpi.o
+obj-$(CONFIG_OF_SIMPLE_PM_BUS)	+= simple-pm-bus.o
diff --git a/drivers/bus/simple-pm-bus.c b/drivers/bus/simple-pm-bus.c
new file mode 100644
index 000000000000..8536982b69c4
--- /dev/null
+++ b/drivers/bus/simple-pm-bus.c
@@ -0,0 +1,47 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Simple Power-Managed Bus Driver
+ *
+ * Copyright (C) 2014-2015 Glider bvba
+ */
+
+#include <linux/clk.h>
+#include <driver.h>
+#include <of.h>
+
+static int simple_pm_bus_probe(struct device *dev)
+{
+	struct device_node *np = dev->of_node;
+	struct clk_bulk_data *clks;
+	int num_clks;
+
+	if (deep_probe_is_supported()) {
+		num_clks = clk_bulk_get_all(dev, &clks);
+		if (num_clks < 0)
+			return dev_err_probe(dev, num_clks, "failed to get clocks\n");
+
+		num_clks = clk_bulk_prepare_enable(num_clks, clks);
+		if (num_clks)
+			return dev_err_probe(dev, num_clks, "failed to enable clocks\n");
+	}
+
+	of_platform_populate(np, NULL, dev);
+
+	return 0;
+}
+
+static const struct of_device_id simple_pm_bus_of_match[] = {
+	{ .compatible = "simple-pm-bus", },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, simple_pm_bus_of_match);
+
+static struct driver simple_pm_bus_driver = {
+	.probe = simple_pm_bus_probe,
+	.name = "simple-pm-bus",
+	.of_match_table = simple_pm_bus_of_match,
+};
+core_platform_driver(simple_pm_bus_driver);
+
+MODULE_DESCRIPTION("Simple Power-Managed Bus Driver");
+MODULE_AUTHOR("Geert Uytterhoeven <geert+renesas@glider.be>");
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 15265dc22623..3cec2878efab 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2875,8 +2875,10 @@ const struct of_device_id of_default_bus_match_table[] = {
 	{
 		.compatible = "simple-bus",
 	}, {
+#ifndef CONFIG_OF_SIMPLE_PM_BUS
 		.compatible = "simple-pm-bus",
 	}, {
+#endif
 		.compatible = "simple-mfd",
 	}, {
 		/* sentinel */
-- 
2.47.3



