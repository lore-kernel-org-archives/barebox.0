Delivery-date: Mon, 03 Nov 2025 16:20:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFwLr-00Etdb-1t
	for lore@lore.pengutronix.de;
	Mon, 03 Nov 2025 16:20:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFwLq-00028y-J8
	for lore@pengutronix.de; Mon, 03 Nov 2025 16:20:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=naP7LB4ZVpjDWsPecl/cd7ZBhQPLXz3H558JqGZjFMk=; b=Uwwjlaek29BpIZ
	FB3omtw26rCurZDTZsbtP+dfVrVQ1evy/DCvrA5HnVIXqlu+dqhTLgBS/8ijzJ+bIzqkOSzrORJJ3
	9DePtEAheDCscSd1fqY8CA9u+lpAZzU0O5w1rZOCG4vK2LJsSCmD1Zq8UM0dVC8s6kyCQ4cYN8OzT
	g03V6EaA35GbuPsdjtRN6W/ZP4430I2C/njPo2l9V5YeejC2dS5au4I/r6D6xZ4n2iWRjQkzwsXDl
	hlyI/Y3rdaXR3dgIMcLjBe+1xejkt/AXt/vXC0jBHFnLrtmW7AtvGYOws3ejqnF28Nk+AscQffnyr
	dfNQy9600jOQnnMhbSpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFwLP-0000000A7t1-2K7z;
	Mon, 03 Nov 2025 15:19:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFwLL-0000000A7rW-2K6B
	for barebox@lists.infradead.org;
	Mon, 03 Nov 2025 15:19:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vFwLI-0001zZ-NA; Mon, 03 Nov 2025 16:19:36 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vFwLI-006sq5-1g;
	Mon, 03 Nov 2025 16:19:36 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vFwLI-00000009w3q-1lkZ;
	Mon, 03 Nov 2025 16:19:36 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon,  3 Nov 2025 16:19:31 +0100
Message-ID: <20251103151935.2368094-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_071939_751098_092FC91D 
X-CRM114-Status: GOOD (  26.64  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Holger Assmann <h.assmann@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] usb: dwc3: port Linux i.MX8MP glue driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Commit e213627bbe ("usb: dwc3: of-simple: add i.MX8MP compatible")
added i.MX8MP support by matching the i.MX8MP glue in dwc3-of-simple.

This is unlike what the kernel was doing, because "Linux uses this wrapper
for wakeup handling, but we don't need this functionality in Barebox".

Looking at Linux v6.18-rc3, this is not accurate anymore:
The upstream i.MX8MP glue driver handles a number of device tree properties
that we do not handle in barebox:

  * fsl,permanently-attached
  * fsl,disable-port-power-control
  * fsl,over-current-active-low
  * fsl,power-active-low

The Linux driver also sets two software properies:

  * xhci-missing-cas-quirk
  * xhci-skip-phy-init-quirk

But both are unneeded for barebox as the former only matters when
resuming from runtime suspend and the latter is the only behavior we
currently have in barebox, because the XHCI driver itself doesn't yet
use the PHY API.

Thus import the Linux driver without the software property bits to add
support for the OF bindings.

Reported-by: Marc Kleine-Budde <mkl@pengutronix.de>
Reported-by: Holger Assmann <h.assmann@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/dwc3/Kconfig          |  10 ++
 drivers/usb/dwc3/Makefile         |   1 +
 drivers/usb/dwc3/dwc3-imx8mp.c    | 160 ++++++++++++++++++++++++++++++
 drivers/usb/dwc3/dwc3-of-simple.c |   1 -
 4 files changed, 171 insertions(+), 1 deletion(-)
 create mode 100644 drivers/usb/dwc3/dwc3-imx8mp.c

diff --git a/drivers/usb/dwc3/Kconfig b/drivers/usb/dwc3/Kconfig
index de5f0ef6f3eb..bed629776227 100644
--- a/drivers/usb/dwc3/Kconfig
+++ b/drivers/usb/dwc3/Kconfig
@@ -48,6 +48,16 @@ config USB_DWC3_OF_SIMPLE
 	 Currently supports Xilinx and Qualcomm DWC USB3 IP.
 	 Say 'Y' or 'M' if you have one such device.
 
+config USB_DWC3_IMX8MP
+	tristate "NXP iMX8MP Platform"
+	depends on OF && COMMON_CLK
+	depends on ARCH_IMX8MP || COMPILE_TEST
+	default USB_DWC3
+	help
+	  NXP iMX8M Plus SoC use DesignWare Core IP for USB2/3
+	  functionality.
+	  Say 'Y' or 'M' if you have one such device.
+
 config USB_DWC3_AM62
 	tristate "Texas Instruments AM62 Platforms"
 	depends on ARCH_K3 || COMPILE_TEST
diff --git a/drivers/usb/dwc3/Makefile b/drivers/usb/dwc3/Makefile
index 30097da367d9..31acda1825f5 100644
--- a/drivers/usb/dwc3/Makefile
+++ b/drivers/usb/dwc3/Makefile
@@ -14,3 +14,4 @@ endif
 
 obj-$(CONFIG_USB_DWC3_OF_SIMPLE)	+= dwc3-of-simple.o
 obj-$(CONFIG_USB_DWC3_AM62)		+= dwc3-am62.o
+obj-$(CONFIG_USB_DWC3_IMX8MP)		+= dwc3-imx8mp.o
diff --git a/drivers/usb/dwc3/dwc3-imx8mp.c b/drivers/usb/dwc3/dwc3-imx8mp.c
new file mode 100644
index 000000000000..d7f2795dc504
--- /dev/null
+++ b/drivers/usb/dwc3/dwc3-imx8mp.c
@@ -0,0 +1,160 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * dwc3-imx8mp.c - NXP imx8mp Specific Glue layer
+ *
+ * Copyright (c) 2020 NXP.
+ */
+
+#include <linux/cleanup.h>
+#include <linux/clk.h>
+#include <linux/io.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <of.h>
+#include <linux/device.h>
+
+/* USB wakeup registers */
+#define USB_WAKEUP_CTRL			0x00
+
+/* Global wakeup interrupt enable, also used to clear interrupt */
+#define USB_WAKEUP_EN			BIT(31)
+/* Wakeup from connect or disconnect, only for superspeed */
+#define USB_WAKEUP_SS_CONN		BIT(5)
+/* 0 select vbus_valid, 1 select sessvld */
+#define USB_WAKEUP_VBUS_SRC_SESS_VAL	BIT(4)
+/* Enable signal for wake up from u3 state */
+#define USB_WAKEUP_U3_EN		BIT(3)
+/* Enable signal for wake up from id change */
+#define USB_WAKEUP_ID_EN		BIT(2)
+/* Enable signal for wake up from vbus change */
+#define	USB_WAKEUP_VBUS_EN		BIT(1)
+/* Enable signal for wake up from dp/dm change */
+#define USB_WAKEUP_DPDM_EN		BIT(0)
+
+#define USB_WAKEUP_EN_MASK		GENMASK(5, 0)
+
+/* USB glue registers */
+#define USB_CTRL0		0x00
+#define USB_CTRL1		0x04
+
+#define USB_CTRL0_PORTPWR_EN	BIT(12) /* 1 - PPC enabled (default) */
+#define USB_CTRL0_USB3_FIXED	BIT(22) /* 1 - USB3 permanent attached */
+#define USB_CTRL0_USB2_FIXED	BIT(23) /* 1 - USB2 permanent attached */
+
+#define USB_CTRL1_OC_POLARITY	BIT(16) /* 0 - HIGH / 1 - LOW */
+#define USB_CTRL1_PWR_POLARITY	BIT(17) /* 0 - HIGH / 1 - LOW */
+
+struct dwc3_imx8mp {
+	struct device			*dev;
+	struct platform_device		*dwc3;
+	void __iomem			*hsio_blk_base;
+	void __iomem			*glue_base;
+	struct clk			*hsio_clk;
+	struct clk			*suspend_clk;
+	bool				wakeup_pending;
+};
+
+static void imx8mp_configure_glue(struct dwc3_imx8mp *dwc3_imx)
+{
+	struct device *dev = dwc3_imx->dev;
+	struct device_node *np = dev_of_node(dev);
+	u32 value;
+
+	if (!dwc3_imx->glue_base)
+		return;
+
+	value = readl(dwc3_imx->glue_base + USB_CTRL0);
+
+	if (of_property_read_bool(np, "fsl,permanently-attached"))
+		value |= (USB_CTRL0_USB2_FIXED | USB_CTRL0_USB3_FIXED);
+	else
+		value &= ~(USB_CTRL0_USB2_FIXED | USB_CTRL0_USB3_FIXED);
+
+	if (of_property_read_bool(np, "fsl,disable-port-power-control"))
+		value &= ~(USB_CTRL0_PORTPWR_EN);
+	else
+		value |= USB_CTRL0_PORTPWR_EN;
+
+	writel(value, dwc3_imx->glue_base + USB_CTRL0);
+
+	value = readl(dwc3_imx->glue_base + USB_CTRL1);
+	if (of_property_read_bool(np, "fsl,over-current-active-low"))
+		value |= USB_CTRL1_OC_POLARITY;
+	else
+		value &= ~USB_CTRL1_OC_POLARITY;
+
+	if (of_property_read_bool(np, "fsl,power-active-low"))
+		value |= USB_CTRL1_PWR_POLARITY;
+	else
+		value &= ~USB_CTRL1_PWR_POLARITY;
+
+	writel(value, dwc3_imx->glue_base + USB_CTRL1);
+}
+
+static int dwc3_imx8mp_probe(struct device *dev)
+{
+	struct device_node	*node = dev->of_node;
+	struct dwc3_imx8mp	*dwc3_imx;
+	struct resource		*res;
+	int			err;
+
+	if (!node) {
+		dev_err(dev, "device node not found\n");
+		return -EINVAL;
+	}
+
+	dwc3_imx = devm_kzalloc(dev, sizeof(*dwc3_imx), GFP_KERNEL);
+	if (!dwc3_imx)
+		return -ENOMEM;
+
+	dwc3_imx->dev = dev;
+
+	dwc3_imx->hsio_blk_base = dev_platform_ioremap_resource(dev, 0);
+	if (IS_ERR(dwc3_imx->hsio_blk_base))
+		return PTR_ERR(dwc3_imx->hsio_blk_base);
+
+	res = dev_request_mem_resource(dev, 1);
+	if (!res)
+		dev_warn(dev, "Base address for glue layer missing. Continuing without, some features are missing though.");
+	else
+		dwc3_imx->glue_base = IOMEM(res->start);
+
+	dwc3_imx->hsio_clk = clk_get_enabled(dev, "hsio");
+	if (IS_ERR(dwc3_imx->hsio_clk))
+		return dev_err_probe(dev, PTR_ERR(dwc3_imx->hsio_clk),
+				     "Failed to get hsio clk\n");
+
+	dwc3_imx->suspend_clk = clk_get_enabled(dev, "suspend");
+	if (IS_ERR(dwc3_imx->suspend_clk))
+		return dev_err_probe(dev, PTR_ERR(dwc3_imx->suspend_clk),
+				     "Failed to get suspend clk\n");
+
+	imx8mp_configure_glue(dwc3_imx);
+
+	err = of_platform_populate(node, NULL, dev);
+	if (err) {
+		dev_err(dev, "failed to create dwc3 core\n");
+		return err;
+	}
+
+	return 0;
+}
+
+static const struct of_device_id dwc3_imx8mp_of_match[] = {
+	{ .compatible = "fsl,imx8mp-dwc3", },
+	{},
+};
+MODULE_DEVICE_TABLE(of, dwc3_imx8mp_of_match);
+
+static struct driver dwc3_imx8mp_driver = {
+	.probe		= dwc3_imx8mp_probe,
+	.name	= "imx8mp-dwc3",
+	.of_match_table	= dwc3_imx8mp_of_match,
+};
+
+device_platform_driver(dwc3_imx8mp_driver);
+
+MODULE_ALIAS("platform:imx8mp-dwc3");
+MODULE_AUTHOR("jun.li@nxp.com");
+MODULE_LICENSE("GPL v2");
+MODULE_DESCRIPTION("DesignWare USB3 imx8mp Glue Layer");
diff --git a/drivers/usb/dwc3/dwc3-of-simple.c b/drivers/usb/dwc3/dwc3-of-simple.c
index 1e622240152e..b2b8ea9f23ce 100644
--- a/drivers/usb/dwc3/dwc3-of-simple.c
+++ b/drivers/usb/dwc3/dwc3-of-simple.c
@@ -67,7 +67,6 @@ static void dwc3_of_simple_remove(struct device *dev)
 static const struct of_device_id of_dwc3_simple_match[] = {
 	{.compatible = "rockchip,rk3399-dwc3"},
 	{.compatible = "xlnx,zynqmp-dwc3"},
-	{.compatible = "fsl,imx8mp-dwc3"},
 	{/* Sentinel */}};
 MODULE_DEVICE_TABLE(of, of_dwc3_simple_match);
 
-- 
2.47.3



