Delivery-date: Mon, 31 Jan 2022 08:55:43 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nERXL-001TFC-PQ
	for lore@lore.pengutronix.de; Mon, 31 Jan 2022 08:55:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nERXJ-00050p-FF
	for lore@pengutronix.de; Mon, 31 Jan 2022 08:55:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XovCcdisMtR6UKOZfdge62LV+b8O+Bos5m7zxyETDdA=; b=A1j0KhCFtACvXd
	phHaLCfsRjflQOiu9NN9aoi5NzjPkWk9Rz2T25sornJshyrwze3kjwt8LA2OsuL7XBe9nZXo35s+s
	UDsLmE3a+rVrlsjN1qcp+BfRIOullkA7gbRZ5wA3TaiV0f/rYDyzZADeu2X9ZIWxLi0AR7FZdRhuP
	wVYT4E79/18JWM7ptolLkEMyiebttu77LmSgGQT0oVWVUS3KwMshFfg9OdeNp8NuDE26QKfo/44en
	xsq2j/xsUiTqDLyIfoe+H8yZbXyPNzrA4osQfKAR2RvHnGPlR9hSGWQ05DNxoqN2+1EKJYYV6YfmP
	sQ9Z9v/Zz3pnsTR61uBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nERVi-008Kt8-4J; Mon, 31 Jan 2022 07:54:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nERVQ-008Kor-Ia
 for barebox@lists.infradead.org; Mon, 31 Jan 2022 07:53:50 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nERVL-0004fX-Tj; Mon, 31 Jan 2022 08:53:39 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nERVL-007qIx-Ep; Mon, 31 Jan 2022 08:53:39 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 31 Jan 2022 08:53:37 +0100
Message-Id: <20220131075338.1869305-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220130_235344_846206_153788F9 
X-CRM114-Status: GOOD (  25.13  )
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
Subject: [PATCH 1/2] reset: add simple reset controller support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Incoming STM32 MCU support will leverage this driver, so port it over
from Linux v5.16.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/reset/Kconfig              |  17 +++
 drivers/reset/Makefile             |   1 +
 drivers/reset/reset-simple.c       | 189 +++++++++++++++++++++++++++++
 include/linux/reset/reset-simple.h |  45 +++++++
 4 files changed, 252 insertions(+)
 create mode 100644 drivers/reset/reset-simple.c
 create mode 100644 include/linux/reset/reset-simple.h

diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
index 6c70c1026998..82c85162533d 100644
--- a/drivers/reset/Kconfig
+++ b/drivers/reset/Kconfig
@@ -15,6 +15,23 @@ menuconfig RESET_CONTROLLER
 
 if RESET_CONTROLLER
 
+config RESET_SIMPLE
+	bool "Simple Reset Controller Driver" if COMPILE_TEST
+	help
+	  This enables a simple reset controller driver for reset lines that
+	  that can be asserted and deasserted by toggling bits in a contiguous,
+	  exclusive register space.
+
+	  Currently this driver supports:
+	   - Altera 64-Bit SoCFPGAs
+	   - ASPEED BMC SoCs
+	   - Bitmain BM1880 SoC
+	   - Realtek SoCs
+	   - RCC reset controller in STM32 MCUs
+	   - Allwinner SoCs
+	   - SiFive FU740 SoCs
+
+
 config RESET_IMX7
 	bool "i.MX7 Reset Driver"
 	default ARCH_IMX7
diff --git a/drivers/reset/Makefile b/drivers/reset/Makefile
index d884a83aa3f7..b4270411fdaf 100644
--- a/drivers/reset/Makefile
+++ b/drivers/reset/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_RESET_CONTROLLER) += core.o
+obj-$(CONFIG_RESET_SIMPLE) += reset-simple.o
 obj-$(CONFIG_ARCH_SOCFPGA) += reset-socfpga.o
 obj-$(CONFIG_RESET_IMX7) += reset-imx7.o
 obj-$(CONFIG_RESET_STM32) += reset-stm32.o
diff --git a/drivers/reset/reset-simple.c b/drivers/reset/reset-simple.c
new file mode 100644
index 000000000000..082956d94dae
--- /dev/null
+++ b/drivers/reset/reset-simple.c
@@ -0,0 +1,189 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Simple Reset Controller Driver
+ *
+ * Copyright (C) 2017 Pengutronix, Philipp Zabel <kernel@pengutronix.de>
+ *
+ * Based on Allwinner SoCs Reset Controller driver
+ *
+ * Copyright 2013 Maxime Ripard
+ *
+ * Maxime Ripard <maxime.ripard@free-electrons.com>
+ */
+
+#include <common.h>
+#include <init.h>
+#include <linux/err.h>
+#include <linux/reset-controller.h>
+#include <linux/reset/reset-simple.h>
+#include <restart.h>
+#include <reset_source.h>
+#include <asm/io.h>
+
+static inline struct reset_simple_data *
+to_reset_simple_data(struct reset_controller_dev *rcdev)
+{
+	return container_of(rcdev, struct reset_simple_data, rcdev);
+}
+
+static int reset_simple_update(struct reset_controller_dev *rcdev,
+			       unsigned long id, bool assert)
+{
+	struct reset_simple_data *data = to_reset_simple_data(rcdev);
+	int reg_width = sizeof(u32);
+	int bank = id / (reg_width * BITS_PER_BYTE);
+	int offset = id % (reg_width * BITS_PER_BYTE);
+	u32 reg;
+
+	reg = readl(data->membase + (bank * reg_width));
+	if (assert ^ data->active_low)
+		reg |= BIT(offset);
+	else
+		reg &= ~BIT(offset);
+	writel(reg, data->membase + (bank * reg_width));
+
+	return 0;
+}
+
+static int reset_simple_assert(struct reset_controller_dev *rcdev,
+			       unsigned long id)
+{
+	return reset_simple_update(rcdev, id, true);
+}
+
+static int reset_simple_deassert(struct reset_controller_dev *rcdev,
+				 unsigned long id)
+{
+	return reset_simple_update(rcdev, id, false);
+}
+
+static int reset_simple_reset(struct reset_controller_dev *rcdev,
+			      unsigned long id)
+{
+	struct reset_simple_data *data = to_reset_simple_data(rcdev);
+	int ret;
+
+	if (!data->reset_us)
+		return -ENOTSUPP;
+
+	ret = reset_simple_assert(rcdev, id);
+	if (ret)
+		return ret;
+
+	udelay(data->reset_us);
+
+	return reset_simple_deassert(rcdev, id);
+}
+
+static int __maybe_unused reset_simple_status(struct reset_controller_dev *rcdev,
+					      unsigned long id)
+{
+	struct reset_simple_data *data = to_reset_simple_data(rcdev);
+	int reg_width = sizeof(u32);
+	int bank = id / (reg_width * BITS_PER_BYTE);
+	int offset = id % (reg_width * BITS_PER_BYTE);
+	u32 reg;
+
+	reg = readl(data->membase + (bank * reg_width));
+
+	return !(reg & BIT(offset)) ^ !data->status_active_low;
+}
+
+const struct reset_control_ops reset_simple_ops = {
+	.assert		= reset_simple_assert,
+	.deassert	= reset_simple_deassert,
+	.reset		= reset_simple_reset,
+};
+EXPORT_SYMBOL_GPL(reset_simple_ops);
+
+/**
+ * struct reset_simple_devdata - simple reset controller properties
+ * @reg_offset: offset between base address and first reset register.
+ * @nr_resets: number of resets. If not set, default to resource size in bits.
+ * @active_low: if true, bits are cleared to assert the reset. Otherwise, bits
+ *              are set to assert the reset.
+ * @status_active_low: if true, bits read back as cleared while the reset is
+ *                     asserted. Otherwise, bits read back as set while the
+ *                     reset is asserted.
+ */
+struct reset_simple_devdata {
+	u32 reg_offset;
+	u32 nr_resets;
+	bool active_low;
+	bool status_active_low;
+};
+
+#define SOCFPGA_NR_BANKS	8
+
+static const struct reset_simple_devdata reset_simple_socfpga = {
+	.reg_offset = 0x20,
+	.nr_resets = SOCFPGA_NR_BANKS * 32,
+	.status_active_low = true,
+};
+
+static const struct reset_simple_devdata reset_simple_active_low = {
+	.active_low = true,
+	.status_active_low = true,
+};
+
+static const struct of_device_id reset_simple_dt_ids[] = {
+	{ .compatible = "altr,stratix10-rst-mgr",
+		.data = &reset_simple_socfpga },
+	{ .compatible = "st,stm32-rcc", },
+	{ .compatible = "allwinner,sun6i-a31-clock-reset",
+		.data = &reset_simple_active_low },
+	{ .compatible = "zte,zx296718-reset",
+		.data = &reset_simple_active_low },
+	{ .compatible = "aspeed,ast2400-lpc-reset" },
+	{ .compatible = "aspeed,ast2500-lpc-reset" },
+	{ .compatible = "bitmain,bm1880-reset",
+		.data = &reset_simple_active_low },
+	{ .compatible = "brcm,bcm4908-misc-pcie-reset",
+		.data = &reset_simple_active_low },
+	{ .compatible = "snps,dw-high-reset" },
+	{ .compatible = "snps,dw-low-reset",
+		.data = &reset_simple_active_low },
+	{ /* sentinel */ },
+};
+
+static int reset_simple_probe(struct device_d *dev)
+{
+	const struct reset_simple_devdata *devdata;
+	struct reset_simple_data *data;
+	struct resource *res;
+	u32 reg_offset = 0;
+
+	devdata = device_get_match_data(dev);
+
+	data = kzalloc(sizeof(*data), GFP_KERNEL);
+	if (!data)
+		return -ENOMEM;
+
+	res = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(res))
+		return PTR_ERR(res);
+
+	data->membase = IOMEM(res->start);
+	data->rcdev.nr_resets = resource_size(res) * BITS_PER_BYTE;
+	data->rcdev.ops = &reset_simple_ops;
+	data->rcdev.of_node = dev->device_node;
+
+	if (devdata) {
+		reg_offset = devdata->reg_offset;
+		if (devdata->nr_resets)
+			data->rcdev.nr_resets = devdata->nr_resets;
+		data->active_low = devdata->active_low;
+		data->status_active_low = devdata->status_active_low;
+	}
+
+	data->membase += reg_offset;
+
+	return reset_controller_register(&data->rcdev);
+}
+
+static struct driver_d reset_simple_driver = {
+	.probe	= reset_simple_probe,
+	.name		= "simple-reset",
+	.of_compatible	= reset_simple_dt_ids,
+};
+postcore_platform_driver(reset_simple_driver);
diff --git a/include/linux/reset/reset-simple.h b/include/linux/reset/reset-simple.h
new file mode 100644
index 000000000000..cb38a4b59765
--- /dev/null
+++ b/include/linux/reset/reset-simple.h
@@ -0,0 +1,45 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Simple Reset Controller ops
+ *
+ * Based on Allwinner SoCs Reset Controller driver
+ *
+ * Copyright 2013 Maxime Ripard
+ *
+ * Maxime Ripard <maxime.ripard@free-electrons.com>
+ */
+
+#ifndef __RESET_SIMPLE_H__
+#define __RESET_SIMPLE_H__
+
+#include <io.h>
+#include <linux/reset-controller.h>
+
+/**
+ * struct reset_simple_data - driver data for simple reset controllers
+ * @membase: memory mapped I/O register range
+ * @rcdev: reset controller device base structure
+ * @active_low: if true, bits are cleared to assert the reset. Otherwise, bits
+ *              are set to assert the reset. Note that this says nothing about
+ *              the voltage level of the actual reset line.
+ * @status_active_low: if true, bits read back as cleared while the reset is
+ *                     asserted. Otherwise, bits read back as set while the
+ *                     reset is asserted.
+ * @reset_us: Minimum delay in microseconds needed that needs to be
+ *            waited for between an assert and a deassert to reset the
+ *            device. If multiple consumers with different delay
+ *            requirements are connected to this controller, it must
+ *            be the largest minimum delay. 0 means that such a delay is
+ *            unknown and the reset operation is unsupported.
+ */
+struct reset_simple_data {
+	void __iomem			*membase;
+	struct reset_controller_dev	rcdev;
+	bool				active_low;
+	bool				status_active_low;
+	unsigned int			reset_us;
+};
+
+extern const struct reset_control_ops reset_simple_ops;
+
+#endif /* __RESET_SIMPLE_H__ */
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

