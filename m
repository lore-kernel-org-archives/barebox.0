Delivery-date: Mon, 05 Jan 2026 20:15:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcq2g-001cu7-1A
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 20:15:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcq2f-0006C4-GJ
	for lore@pengutronix.de; Mon, 05 Jan 2026 20:15:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UywUgKdiHQhzA8Mp2Boas40wNHuG5wO8UNPSmtkdz9Y=; b=lEpCotWh+EPm1QJ2mO+VTQIxbA
	xnVehD3UQY0nVmJLUpFFQn01NJF61mwgasjMKDZyJcHBB4D2peo8DOF9pNWPKWfZNd0KYSidxA2CF
	6K017Q3oDExSK4o6V9xQtMQs9wDjFEuY8Ne19kzn0saPbp9Xs3gQacnOGd43t6K1CTS6wqu+kgRO7
	aYHecvHjhtjFlTpFzLCC9do4gdjUG41IG+wkYG5yVBV8WdyqEp+lKyn6/1FYX0++mrvy+tOgNr5sB
	5CXLLA3Zk2ezAzeHXe3rFeKkgqctoiBc2xMTWrdwq0OmdMpNmI/Kv7wL+69AarDEsxYCIG0RRsuWi
	aofiBnDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcq1x-0000000BxWp-3Vmh;
	Mon, 05 Jan 2026 19:14:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcq1t-0000000BxTy-1Fmg
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 19:14:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vcq1r-0005tC-Ee; Mon, 05 Jan 2026 20:14:11 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vcq1r-009E5h-0r;
	Mon, 05 Jan 2026 20:14:11 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vcq1r-00000002a4z-3bLi;
	Mon, 05 Jan 2026 20:14:11 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Jan 2026 20:12:52 +0100
Message-ID: <20260105191410.615318-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260105191410.615318-1-a.fatoum@pengutronix.de>
References: <20260105191410.615318-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_111413_397245_A06CF48D 
X-CRM114-Status: GOOD (  25.76  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/5] usb: dwc3: export dwc3_core_probe/dwc3_core_remove like Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Traditionally, platforms-specific glue was abstracted as a separate
parent device tree node for the snps,dwc3 node. For some newer
integrations, this is no longer the case and there is only a single
(flattened) node. To prepare support for these drivers, export the probe
and remove functions with the Linux semantics.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/dwc3/core.c | 78 ++++++++++++++++++++++++++++-------------
 drivers/usb/dwc3/glue.h | 49 ++++++++++++++++++++++++++
 2 files changed, 102 insertions(+), 25 deletions(-)
 create mode 100644 drivers/usb/dwc3/glue.h

diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index 7f2cb6c4a70a..472630c95392 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -17,6 +17,7 @@
 #include <linux/reset.h>
 #include <linux/usb/of.h>
 
+#include "glue.h"
 #include "core.h"
 #include "gadget.h"
 #include "io.h"
@@ -1402,41 +1403,43 @@ static void dwc3_check_params(struct dwc3 *dwc)
 	}
 }
 
-static int dwc3_probe(struct device *dev)
+int dwc3_core_probe(const struct dwc3_probe_data *data)
 {
-	struct dwc3		*dwc;
+	struct dwc3		*dwc = data->dwc;
+	struct device		*dev = dwc->dev;
+	struct resource		*res = data->res;
 	int			ret;
 
-	dwc = xzalloc(sizeof(*dwc));
 	dev->priv = dwc;
 
-	dwc->dev = dev;
-	dwc->regs = dev_get_mem_region(dwc->dev, 0) + DWC3_GLOBALS_REGS_START;
+	dwc->regs = IOMEM(res->start) + DWC3_GLOBALS_REGS_START;
 
 	dwc3_get_properties(dwc);
 
-	if (dev->of_node) {
-		ret = clk_bulk_get_all(dev, &dwc->clks);
-		if (ret < 0)
+	if (!data->ignore_clocks_and_resets) {
+		if (dev->of_node) {
+			ret = clk_bulk_get_all(dev, &dwc->clks);
+			if (ret < 0)
+				return ret;
+
+			dwc->num_clks = ret;
+		}
+
+		ret = clk_bulk_enable(dwc->num_clks, dwc->clks);
+		if (ret)
 			return ret;
 
-		dwc->num_clks = ret;
+		dwc->reset = reset_control_get(dev, NULL);
+		if (IS_ERR(dwc->reset)) {
+			dev_err(dev, "Failed to get reset control: %pe\n", dwc->reset);
+			return PTR_ERR(dwc->reset);
+		}
+
+		reset_control_assert(dwc->reset);
+		mdelay(1);
+		reset_control_deassert(dwc->reset);
 	}
 
-	ret = clk_bulk_enable(dwc->num_clks, dwc->clks);
-	if (ret)
-		return ret;
-
-	dwc->reset = reset_control_get(dev, NULL);
-	if (IS_ERR(dwc->reset)) {
-		dev_err(dev, "Failed to get reset control: %pe\n", dwc->reset);
-		return PTR_ERR(dwc->reset);
-	}
-
-	reset_control_assert(dwc->reset);
-	mdelay(1);
-	reset_control_deassert(dwc->reset);
-
 	if (!dwc3_core_is_valid(dwc)) {
 		dev_err(dwc->dev, "this is not a DesignWare USB3 DRD Core\n");
 		return -ENODEV;
@@ -1476,10 +1479,30 @@ static int dwc3_probe(struct device *dev)
 	return 0;
 }
 
-static void dwc3_remove(struct device *dev)
+static int dwc3_probe(struct device *dev)
 {
-	struct dwc3 *dwc = dev->priv;
+	struct dwc3_probe_data probe_data = {};
+	struct resource *res;
+	struct dwc3 *dwc;
 
+	res = dev_get_resource(dev, IORESOURCE_MEM, 0);
+	if (!res) {
+		dev_err(dev, "missing memory resource\n");
+		return -ENODEV;
+	}
+
+	dwc = xzalloc(sizeof(*dwc));
+
+	dwc->dev = dev;
+
+	probe_data.dwc = dwc;
+	probe_data.res = res;
+
+	return dwc3_core_probe(&probe_data);
+}
+
+void dwc3_core_remove(struct dwc3 *dwc)
+{
 	dwc3_core_exit_mode(dwc);
 	dwc3_core_exit(dwc);
 	clk_bulk_put(dwc->num_clks, dwc->clks);
@@ -1487,6 +1510,11 @@ static void dwc3_remove(struct device *dev)
 	dwc3_free_scratch_buffers(dwc);
 }
 
+static void dwc3_remove(struct device *dev)
+{
+	dwc3_core_remove(dev->priv);
+}
+
 static const struct of_device_id of_dwc3_match[] = {
 	{
 		.compatible = "snps,dwc3",
diff --git a/drivers/usb/dwc3/glue.h b/drivers/usb/dwc3/glue.h
new file mode 100644
index 000000000000..05d6d2723d19
--- /dev/null
+++ b/drivers/usb/dwc3/glue.h
@@ -0,0 +1,49 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * glue.h - DesignWare USB3 DRD glue header
+ */
+
+#ifndef __DRIVERS_USB_DWC3_GLUE_H
+#define __DRIVERS_USB_DWC3_GLUE_H
+
+#include <linux/types.h>
+#include "core.h"
+
+/**
+ * dwc3_probe_data: Initialization parameters passed to dwc3_core_probe()
+ * @dwc: Reference to dwc3 context structure
+ * @res: resource for the DWC3 core mmio region
+ * @ignore_clocks_and_resets: clocks and resets defined for the device should
+ *		be ignored by the DWC3 core, as they are managed by the glue
+ */
+struct dwc3_probe_data {
+	struct dwc3 *dwc;
+	struct resource *res;
+	bool ignore_clocks_and_resets;
+};
+
+/**
+ * dwc3_core_probe - Initialize the core dwc3 driver
+ * @data: Initialization and configuration parameters for the controller
+ *
+ * Initializes the DesignWare USB3 core driver by setting up resources,
+ * registering interrupts, performing hardware setup, and preparing
+ * the controller for operation in the appropriate mode (host, gadget,
+ * or OTG). This is the main initialization function called by glue
+ * layer drivers to set up the core controller.
+ *
+ * Return: 0 on success, negative error code on failure
+ */
+int dwc3_core_probe(const struct dwc3_probe_data *data);
+
+/**
+ * dwc3_core_remove - Deinitialize and remove the core dwc3 driver
+ * @dwc: Pointer to DWC3 controller context
+ *
+ * Cleans up resources and disables the dwc3 core driver. This should be called
+ * during driver removal or when the glue layer needs to shut down the
+ * controller completely.
+ */
+void dwc3_core_remove(struct dwc3 *dwc);
+
+#endif
-- 
2.47.3



