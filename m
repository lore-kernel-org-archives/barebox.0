Delivery-date: Mon, 05 Jan 2026 20:15:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcq2g-001cuT-2q
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 20:15:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcq2g-0006DA-GF
	for lore@pengutronix.de; Mon, 05 Jan 2026 20:15:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IcfZmLhW0fXefC0DxzXNEIcZRTZbnsTr8ZWoMOE15rQ=; b=tDTbA0L0M/5hb05GjjOrsVyANb
	9SnOqh37TKCuH4hhR9IhK8mShdJLx3LO05fGmlWaLg+uYybPdkHxk3BTHY2R1fFdOZ403iMQ0vufg
	7Gv2PY9tfHM1/SHY9BGwQEL0zvFRw2EB3rRbN1C/HLckYhqTMqNPTrewfwavyh36YTz3yLKOgNADB
	hEPa98CpSxaW7Pk/Bul+F3UuOh3rY6QPvC7Bf+gFAwtS1pRIZH/uuwZ5msP/vVo3r1uKX2xr7U1G9
	3BOKaIhyG2s1H3dYDFrJgB/9MPmXjkzpUVAsugyGe42bYpx6fHflyA6VTIkgUboiNGYhiJ/Na8GFs
	oSM5umlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcq1x-0000000BxWP-0MRM;
	Mon, 05 Jan 2026 19:14:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcq1t-0000000BxTw-1FwZ
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 19:14:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vcq1r-0005tI-Jk; Mon, 05 Jan 2026 20:14:11 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vcq1r-009E5q-1K;
	Mon, 05 Jan 2026 20:14:11 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vcq1r-00000002a4z-4BXu;
	Mon, 05 Jan 2026 20:14:11 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Jan 2026 20:12:55 +0100
Message-ID: <20260105191410.615318-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260105191410.615318-1-a.fatoum@pengutronix.de>
References: <20260105191410.615318-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_111413_391155_56A8D506 
X-CRM114-Status: GOOD (  20.47  )
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
Subject: [PATCH 4/5] usb: dwc3: add DesignWare USB3 generic platform driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); Unknown failure

Linux seems to move towards not having glue device tree nodes separate
from the DWC3 nodes. Import the Linux generic driver for use with
Layerscape and other platforms that may be migrated in future.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/dwc3/Kconfig             |  11 +++
 drivers/usb/dwc3/Makefile            |   1 +
 drivers/usb/dwc3/dwc3-generic-plat.c | 125 +++++++++++++++++++++++++++
 3 files changed, 137 insertions(+)
 create mode 100644 drivers/usb/dwc3/dwc3-generic-plat.c

diff --git a/drivers/usb/dwc3/Kconfig b/drivers/usb/dwc3/Kconfig
index bed629776227..4c97ed556a48 100644
--- a/drivers/usb/dwc3/Kconfig
+++ b/drivers/usb/dwc3/Kconfig
@@ -68,4 +68,15 @@ config USB_DWC3_AM62
 	  in USB 2.0 mode only.
 	  Say 'Y' or 'M' here if you have one such device
 
+config USB_DWC3_GENERIC_PLAT
+	tristate "DWC3 Generic Platform Driver"
+	depends on OF && COMMON_CLK
+	default ARCH_LAYERSCAPE
+	help
+	  Support USB3 functionality in simple SoC integrations.
+	  Currently supports SpacemiT and Layerscape DWC USB3. Platforms using
+	  dwc3-of-simple can easily switch to dwc3-generic by flattening
+	  the dwc3 child node in the device tree.
+	  Say 'Y' or 'M' here if your platform integrates DWC3 in a similar way.
+
 endif
diff --git a/drivers/usb/dwc3/Makefile b/drivers/usb/dwc3/Makefile
index 31acda1825f5..cd7e217c7c9b 100644
--- a/drivers/usb/dwc3/Makefile
+++ b/drivers/usb/dwc3/Makefile
@@ -15,3 +15,4 @@ endif
 obj-$(CONFIG_USB_DWC3_OF_SIMPLE)	+= dwc3-of-simple.o
 obj-$(CONFIG_USB_DWC3_AM62)		+= dwc3-am62.o
 obj-$(CONFIG_USB_DWC3_IMX8MP)		+= dwc3-imx8mp.o
+obj-$(CONFIG_USB_DWC3_GENERIC_PLAT)	+= dwc3-generic-plat.o
diff --git a/drivers/usb/dwc3/dwc3-generic-plat.c b/drivers/usb/dwc3/dwc3-generic-plat.c
new file mode 100644
index 000000000000..f3ab8a312696
--- /dev/null
+++ b/drivers/usb/dwc3/dwc3-generic-plat.c
@@ -0,0 +1,125 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * dwc3-generic-plat.c - DesignWare USB3 generic platform driver
+ *
+ * Copyright (C) 2025 Ze Huang <huang.ze@linux.dev>
+ *
+ * Inspired by dwc3-qcom.c and dwc3-of-simple.c
+ */
+
+#include <linux/clk.h>
+#include <linux/device.h>
+#include <linux/reset.h>
+#include <linux/regmap.h>
+#include <mfd/syscon.h>
+#include "of_device.h"
+#include "glue.h"
+
+struct dwc3_generic {
+	struct device		*dev;
+	struct dwc3		dwc;
+	struct clk_bulk_data	*clks;
+	int			num_clocks;
+	struct reset_control	*resets;
+};
+
+struct dwc3_generic_config {
+	int (*init)(struct dwc3_generic *dwc3g);
+	struct dwc3_properties properties;
+};
+
+#define to_dwc3_generic(d) container_of((d), struct dwc3_generic, dwc)
+
+static int dwc3_generic_probe(struct device *dev)
+{
+	const struct dwc3_generic_config *plat_config;
+	struct dwc3_probe_data probe_data = {};
+	struct dwc3_generic *dwc3g;
+	struct resource *res;
+	int ret;
+
+	dwc3g = xzalloc(sizeof(*dwc3g));
+
+	dwc3g->dev = dev;
+
+	res = dev_get_resource(dev, IORESOURCE_MEM, 0);
+	if (!res) {
+		dev_err(dev, "missing memory resource\n");
+		return -ENODEV;
+	}
+
+	dwc3g->resets = reset_control_array_get(dev);
+	if (IS_ERR(dwc3g->resets))
+		return dev_err_probe(dev, PTR_ERR(dwc3g->resets), "failed to get resets\n");
+
+	ret = reset_control_assert(dwc3g->resets);
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to assert resets\n");
+
+	/* Not strict timing, just for safety */
+	udelay(2);
+
+	ret = reset_control_deassert(dwc3g->resets);
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to deassert resets\n");
+
+	ret = clk_bulk_get_all_enabled(dwc3g->dev, &dwc3g->clks);
+	if (ret < 0)
+		return dev_err_probe(dev, ret, "failed to get clocks\n");
+
+	dwc3g->num_clocks = ret;
+	dwc3g->dwc.dev = dev;
+	probe_data.dwc = &dwc3g->dwc;
+	probe_data.res = res;
+	probe_data.ignore_clocks_and_resets = true;
+
+	plat_config = of_device_get_match_data(dev);
+	if (!plat_config) {
+		probe_data.properties = DWC3_DEFAULT_PROPERTIES;
+		goto core_probe;
+	}
+
+	probe_data.properties = plat_config->properties;
+	if (plat_config->init) {
+		ret = plat_config->init(dwc3g);
+		if (ret)
+			return dev_err_probe(dev, ret,
+					     "failed to init platform\n");
+	}
+
+core_probe:
+	ret = dwc3_core_probe(&probe_data);
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to register DWC3 Core\n");
+
+	return 0;
+}
+
+static void dwc3_generic_remove(struct device *dev)
+{
+	struct dwc3 *dwc = dev_get_drvdata(dev);
+
+	dwc3_core_remove(dwc);
+}
+
+static const struct dwc3_generic_config fsl_ls1028_dwc3 = {
+	.properties.gsbuscfg0_reqinfo = 0x2222,
+};
+
+static const struct of_device_id dwc3_generic_of_match[] = {
+	{ .compatible = "spacemit,k1-dwc3", },
+	{ .compatible = "fsl,ls1028a-dwc3", &fsl_ls1028_dwc3},
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, dwc3_generic_of_match);
+
+static struct driver dwc3_generic_driver = {
+	.probe		= dwc3_generic_probe,
+	.remove		= dwc3_generic_remove,
+	.name	= "dwc3-generic-plat",
+	.of_match_table = dwc3_generic_of_match,
+};
+device_platform_driver(dwc3_generic_driver);
+
+MODULE_LICENSE("GPL");
+MODULE_DESCRIPTION("DesignWare USB3 generic platform driver");
-- 
2.47.3



