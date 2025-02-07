Delivery-date: Fri, 07 Feb 2025 08:21:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tgIfl-009Xv3-1v
	for lore@lore.pengutronix.de;
	Fri, 07 Feb 2025 08:21:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tgIfl-0000bP-EV
	for lore@pengutronix.de; Fri, 07 Feb 2025 08:21:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qAlE05ID/XcQPwu5YkhGCF860TFzFP8hXSviYESexgc=; b=B/uDn548YpvDhJlTXzs6AvJr5D
	XUc9dX8alMzfVqrNsNqL3cjDF96QrXCIP2eilvvnt6E9/ebjFG+uO8TwjdS3TwuKxQ9yTl0XN49vL
	LgJOIDce+LEOFcYnP7WXtm+ikB6diJgBNUiyj7ywtwkun5z1gCDtFejLdjwjWibZAd0fGi72LHJ2v
	0CJ7rO5CPS+1cS3NK0WDpl4eqajxl/EPNIMJS/t5RNr9F60e0ZIcx9N9fZoOWMbLC/vN1giUjxfxJ
	WvB27bE/Dqg4A0qebUAU5fcKWDMq3pqkITxoOIZDR25VZGxJI2Y9CuIuqP4LtS8wzMFtQxYnnEdF6
	WA7YY6wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgIez-00000008cTX-2k7e;
	Fri, 07 Feb 2025 07:20:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgIew-00000008cSs-2Lqk
	for barebox@lists.infradead.org;
	Fri, 07 Feb 2025 07:20:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tgIet-0000TV-At; Fri, 07 Feb 2025 08:20:15 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tgIet-003wGk-0U;
	Fri, 07 Feb 2025 08:20:15 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tgIet-000x0I-07;
	Fri, 07 Feb 2025 08:20:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  7 Feb 2025 08:20:13 +0100
Message-Id: <20250207072013.226803-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250206_232018_600426_E6E338D0 
X-CRM114-Status: GOOD (  25.12  )
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
Subject: [PATCH] soc: k3: Add support for Texas Instruments K3 ESM driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The ESM (Error Signaling Module) is used to route error signals within
the K3 SoCs somewhat similar to interrupts. The handling for these is
different though, and can be routed for hardware error handling, to
be handled by safety processor or just as error interrupts handled
by the main processor. The u-boot level ESM driver is just used to
configure the ESM signals so that they get routed to proper destination.

The code and the commit message is based on the corresponding U-Boot
driver as of U-Boot-2025.01.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-k3/common.c |  13 ++++
 drivers/soc/Kconfig       |   1 +
 drivers/soc/ti/Kconfig    |   4 ++
 drivers/soc/ti/Makefile   |   1 +
 drivers/soc/ti/k3-esm.c   | 136 ++++++++++++++++++++++++++++++++++++++
 5 files changed, 155 insertions(+)
 create mode 100644 drivers/soc/ti/Kconfig
 create mode 100644 drivers/soc/ti/k3-esm.c

diff --git a/arch/arm/mach-k3/common.c b/arch/arm/mach-k3/common.c
index 9e3dab5b8e..c2a774ea67 100644
--- a/arch/arm/mach-k3/common.c
+++ b/arch/arm/mach-k3/common.c
@@ -242,6 +242,17 @@ static int am625_of_fixup(struct device_node *root, void *unused)
 	return 0;
 }
 
+#define CTRLMMR_MCU_RST_CTRL	IOMEM(0x04518170)
+#define RST_CTRL_ESM_ERROR_RST_EN_Z_MASK BIT(17)
+
+static void am625_enable_mcu_esm_reset(void)
+{
+	/* activate reset of main by ESMO */
+	u32 stat = readl(CTRLMMR_MCU_RST_CTRL);
+	stat &= ~RST_CTRL_ESM_ERROR_RST_EN_Z_MASK;
+	writel(stat, CTRLMMR_MCU_RST_CTRL);
+}
+
 static int am625_init(void)
 {
 	enum bootsource src = BOOTSOURCE_UNKNOWN;
@@ -264,6 +275,8 @@ static int am625_init(void)
 
 	of_register_fixup(am625_of_fixup, NULL);
 
+	am625_enable_mcu_esm_reset();
+
 	return 0;
 }
 postcore_initcall(am625_init);
diff --git a/drivers/soc/Kconfig b/drivers/soc/Kconfig
index c0fe214429..cbde3c35a4 100644
--- a/drivers/soc/Kconfig
+++ b/drivers/soc/Kconfig
@@ -3,5 +3,6 @@ menu "SoC drivers"
 source "drivers/soc/imx/Kconfig"
 source "drivers/soc/kvx/Kconfig"
 source "drivers/soc/rockchip/Kconfig"
+source "drivers/soc/ti/Kconfig"
 
 endmenu
diff --git a/drivers/soc/ti/Kconfig b/drivers/soc/ti/Kconfig
new file mode 100644
index 0000000000..8d2dd86f3f
--- /dev/null
+++ b/drivers/soc/ti/Kconfig
@@ -0,0 +1,4 @@
+config K3_ESM
+	bool
+	depends on ARCH_K3 && MACH_K3_CORTEX_R5
+	default y
diff --git a/drivers/soc/ti/Makefile b/drivers/soc/ti/Makefile
index 56f6653882..3109a4e967 100644
--- a/drivers/soc/ti/Makefile
+++ b/drivers/soc/ti/Makefile
@@ -1 +1,2 @@
 obj-y += k3-navss-ringacc.o
+obj-$(CONFIG_K3_ESM) += k3-esm.o
diff --git a/drivers/soc/ti/k3-esm.c b/drivers/soc/ti/k3-esm.c
new file mode 100644
index 0000000000..3f51b757c9
--- /dev/null
+++ b/drivers/soc/ti/k3-esm.c
@@ -0,0 +1,136 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Texas Instruments' K3 Error Signalling Module driver
+ *
+ * Copyright (C) 2019 Texas Instruments Incorporated - https://www.ti.com/
+ *      Tero Kristo <t-kristo@ti.com>
+ *
+ */
+
+#include <driver.h>
+#include <malloc.h>
+#include <xfuncs.h>
+#include <io.h>
+
+#define ESM_SFT_RST			0x0c
+#define ESM_SFT_RST_KEY			0x0f
+#define ESM_EN				0x08
+#define ESM_EN_KEY			0x0f
+
+#define ESM_STS(i)			(0x404 + (i) / 32 * 0x20)
+#define ESM_STS_MASK(i)			(1 << ((i) % 32))
+#define ESM_PIN_EN_SET_OFFSET(i)	(0x414 + (i) / 32 * 0x20)
+#define ESM_PIN_MASK(i)			(1 << ((i) % 32))
+#define ESM_INTR_EN_SET_OFFSET(i)	(0x408 + (i) / 32 * 0x20)
+#define ESM_INTR_MASK(i)		(1 << ((i) % 32))
+#define ESM_INTR_PRIO_SET_OFFSET(i)	(0x410 + (i) / 32 * 0x20)
+#define ESM_INTR_PRIO_MASK(i)		(1 << ((i) % 32))
+
+static void esm_pin_enable(void __iomem *base, int pin)
+{
+	u32 value;
+
+	value = readl(base + ESM_PIN_EN_SET_OFFSET(pin));
+	value |= ESM_PIN_MASK(pin);
+	/* Enable event */
+	writel(value, base + ESM_PIN_EN_SET_OFFSET(pin));
+}
+
+static void esm_intr_enable(void __iomem *base, int pin)
+{
+	u32 value;
+
+	value = readl(base + ESM_INTR_EN_SET_OFFSET(pin));
+	value |= ESM_INTR_MASK(pin);
+	/* Enable Interrupt event */
+	writel(value, base + ESM_INTR_EN_SET_OFFSET(pin));
+}
+
+static void esm_intr_prio_set(void __iomem *base, int pin)
+{
+	u32 value;
+
+	value = readl(base + ESM_INTR_PRIO_SET_OFFSET(pin));
+	value |= ESM_INTR_PRIO_MASK(pin);
+	/* Set to priority */
+	writel(value, base + ESM_INTR_PRIO_SET_OFFSET(pin));
+}
+
+static void esm_clear_raw_status(void __iomem *base, int pin)
+{
+	u32 value;
+
+	value = readl(base + ESM_STS(pin));
+	value |= ESM_STS_MASK(pin);
+	/* Clear Event status */
+	writel(value, base + ESM_STS(pin));
+}
+/**
+ * k3_esm_probe: configures ESM based on DT data
+ *
+ * Parses ESM info from device tree, and configures the module accordingly.
+ */
+static int k3_esm_probe(struct device *dev)
+{
+	int ret;
+	void __iomem *base;
+	int num_pins;
+	u32 *pins;
+	int i;
+	struct device_node *np = dev->of_node;
+
+	base = dev_request_mem_region(dev, 0);
+	if (IS_ERR(base))
+		return -ENODEV;
+
+	num_pins = of_property_count_elems_of_size(np, "ti,esm-pins", sizeof(u32));
+	if (num_pins < 0) {
+		dev_err(dev, "ti,esm-pins property missing or invalid: %d\n",
+			num_pins);
+		return num_pins;
+	}
+
+	pins = xzalloc(num_pins * sizeof(u32));
+	if (!pins)
+		return -ENOMEM;
+
+	ret = of_property_read_u32_array(np, "ti,esm-pins", pins, num_pins);
+	if (ret < 0) {
+		dev_err(dev, "failed to read ti,esm-pins property: %d\n",
+			ret);
+		goto free_pins;
+	}
+
+	/* Clear any pending events */
+	writel(ESM_SFT_RST_KEY, base + ESM_SFT_RST);
+
+	for (i = 0; i < num_pins; i++) {
+		esm_intr_prio_set(base, pins[i]);
+		esm_clear_raw_status(base, pins[i]);
+		esm_pin_enable(base, pins[i]);
+		esm_intr_enable(base, pins[i]);
+	}
+
+	/* Enable ESM */
+	writel(ESM_EN_KEY, base + ESM_EN);
+
+free_pins:
+	free(pins);
+	return ret;
+}
+
+static const struct of_device_id k3_esm_ids[] = {
+	{
+		.compatible = "ti,j721e-esm",
+	}, {
+		/* sentinel */
+	},
+};
+
+static struct driver k3_esm = {
+	.probe  = k3_esm_probe,
+	.name   = "k3-esm",
+	.of_compatible = k3_esm_ids,
+};
+
+core_platform_driver(k3_esm);
-- 
2.39.5



