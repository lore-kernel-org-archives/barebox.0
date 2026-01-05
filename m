Delivery-date: Mon, 05 Jan 2026 20:15:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcq2e-001ctB-2p
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 20:15:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcq2e-0006BA-41
	for lore@pengutronix.de; Mon, 05 Jan 2026 20:15:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RgVFcc/bZ1loP9ymB1Hx0E9ixl+8D1KMLTBUBxnykiU=; b=MhHmjxV/Pj4ntWgsriDB6IWONN
	R89D9kmonI1WzeFh5OJK7BMm8MYLAOxS0WPnyp4H0V/fX/ww8IXOyuwR0mLb5S7o+gd9lzrXyQ/m0
	Cjwogte0FoA/jQLTWLTWApZu7WV883Znl6QpC/RjLCZapHiM1eW5dla2dEzI4d2qPdfyy7mLrcnUh
	XhbQzvUnNG0z3UE26wLHwmanxH6l0hBT5oKsuJ8TehUnXYzq1MTzW+RYgFLFk8VtOwWapUwul86ky
	6Ghg0WbFnlt0wll6B9PlqckzZksyno0RuP7kRsG09fGnuV99hUSCgbb76weCWsMbQ66L1rJClRuJQ
	Lx/aW+hQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcq1y-0000000BxX1-0ffH;
	Mon, 05 Jan 2026 19:14:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcq1t-0000000BxTv-1FiH
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 19:14:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vcq1r-0005tE-Ix; Mon, 05 Jan 2026 20:14:11 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vcq1r-009E5n-1B;
	Mon, 05 Jan 2026 20:14:11 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vcq1r-00000002a4z-3z6s;
	Mon, 05 Jan 2026 20:14:11 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Jan 2026 20:12:54 +0100
Message-ID: <20260105191410.615318-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260105191410.615318-1-a.fatoum@pengutronix.de>
References: <20260105191410.615318-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_111413_390103_DCCB5778 
X-CRM114-Status: GOOD (  16.40  )
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
Subject: [PATCH 3/5] clk: implement and use clk_bulk_get_all_enabled helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux has a devm_clk_bulk_get_all_enabled helper for drivers that just
want to get and enable all clocks associated with a device.

Import it to barebox and make use of it where applicable, except for
dwc3-of-simple.c: The upstream Linux driver doesn't make use of it and
we will want to sync DWC3 against Linux anyway, so this will reduce
churn a tiny little bit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/bus/simple-pm-bus.c |  6 +-----
 drivers/clk/clk-bulk.c      | 19 +++++++++++++++++++
 drivers/usb/dwc3/core.c     |  6 +-----
 drivers/usb/host/ehci-hcd.c |  5 +----
 include/linux/clk.h         | 16 ++++++++++++++++
 5 files changed, 38 insertions(+), 14 deletions(-)

diff --git a/drivers/bus/simple-pm-bus.c b/drivers/bus/simple-pm-bus.c
index 8536982b69c4..caafee1e407e 100644
--- a/drivers/bus/simple-pm-bus.c
+++ b/drivers/bus/simple-pm-bus.c
@@ -16,13 +16,9 @@ static int simple_pm_bus_probe(struct device *dev)
 	int num_clks;
 
 	if (deep_probe_is_supported()) {
-		num_clks = clk_bulk_get_all(dev, &clks);
+		num_clks = clk_bulk_get_all_enabled(dev, &clks);
 		if (num_clks < 0)
 			return dev_err_probe(dev, num_clks, "failed to get clocks\n");
-
-		num_clks = clk_bulk_prepare_enable(num_clks, clks);
-		if (num_clks)
-			return dev_err_probe(dev, num_clks, "failed to enable clocks\n");
 	}
 
 	of_platform_populate(np, NULL, dev);
diff --git a/drivers/clk/clk-bulk.c b/drivers/clk/clk-bulk.c
index db775dc40b39..c16fed282b21 100644
--- a/drivers/clk/clk-bulk.c
+++ b/drivers/clk/clk-bulk.c
@@ -153,6 +153,25 @@ int __must_check clk_bulk_get_all(struct device *dev,
 }
 EXPORT_SYMBOL(clk_bulk_get_all);
 
+int __must_check clk_bulk_get_all_enabled(struct device *dev,
+					  struct clk_bulk_data **clks)
+{
+	int ret, num_clks;
+
+	num_clks = clk_bulk_get_all(dev, clks);
+	if (num_clks <= 0)
+		return num_clks;
+
+	ret = clk_bulk_prepare_enable(num_clks, *clks);
+	if (ret < 0) {
+		clk_bulk_put_all(num_clks, *clks);
+		return ret;
+	}
+
+	return num_clks;
+}
+EXPORT_SYMBOL_GPL(devm_clk_bulk_get_all_enabled);
+
 /**
  * clk_bulk_disable - gate a set of clocks
  * @num_clks: the number of clk_bulk_data
diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index cb22f19e39cc..747245f908a4 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -1454,17 +1454,13 @@ int dwc3_core_probe(const struct dwc3_probe_data *data)
 
 	if (!data->ignore_clocks_and_resets) {
 		if (dev->of_node) {
-			ret = clk_bulk_get_all(dev, &dwc->clks);
+			ret = clk_bulk_get_all_enabled(dev, &dwc->clks);
 			if (ret < 0)
 				return ret;
 
 			dwc->num_clks = ret;
 		}
 
-		ret = clk_bulk_enable(dwc->num_clks, dwc->clks);
-		if (ret)
-			return ret;
-
 		dwc->reset = reset_control_get(dev, NULL);
 		if (IS_ERR(dwc->reset)) {
 			dev_err(dev, "Failed to get reset control: %pe\n", dwc->reset);
diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 5fde8d2a4abd..51b9e52a4ffe 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -1442,14 +1442,11 @@ static int ehci_probe(struct device *dev)
 	if (ret)
 		return ret;
 
-	ret = clk_bulk_get_all(dev, &clks);
+	ret = clk_bulk_get_all_enabled(dev, &clks);
 	if (ret < 0)
 		return ret;
 
 	num_clocks = ret;
-	ret = clk_bulk_enable(num_clocks, clks);
-	if (ret)
-		return ret;
 
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 526641927754..7673937a0a82 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -1032,6 +1032,22 @@ int __must_check clk_bulk_get_optional(struct device *dev, int num_clks,
 int __must_check clk_bulk_get_all(struct device *dev,
 				  struct clk_bulk_data **clks);
 
+/**
+ * devm_clk_bulk_get_all_enabled - Get and enable all clocks of the consumer
+ * @dev: device for clock "consumer"
+ * @clks: pointer to the clk_bulk_data table of consumer
+ *
+ * Returns a positive value for the number of clocks obtained while the
+ * clock references are stored in the clk_bulk_data table in @clks field.
+ * Returns 0 if there're none and a negative value if something failed.
+ *
+ * This helper function allows drivers to get all clocks of the
+ * consumer and enables them in one operation.
+ */
+
+int __must_check clk_bulk_get_all_enabled(struct device *dev,
+					  struct clk_bulk_data **clks);
+
 /**
  * clk_bulk_put	- "free" the clock source
  * @num_clks: the number of clk_bulk_data
-- 
2.47.3



