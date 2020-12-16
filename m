Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kpdg7-0007Wo-6v
 for barebox@lists.infradead.org; Wed, 16 Dec 2020 20:45:45 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1kpdg0-0005TA-CR
 for barebox@lists.infradead.org; Wed, 16 Dec 2020 21:45:36 +0100
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1kpdfz-00027d-Tm
 for barebox@lists.infradead.org; Wed, 16 Dec 2020 21:45:35 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Wed, 16 Dec 2020 21:45:31 +0100
Message-Id: <20201216204534.8054-3-m.grzeschik@pengutronix.de>
In-Reply-To: <20201216204534.8054-1-m.grzeschik@pengutronix.de>
References: <20201216204534.8054-1-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/5] usb: dwc2: add clk dependency for probe via oftree
To: barebox@lists.infradead.org

The dwc2 controller at least needs one core clock which needs to be
enabled before it is able to address the core registers. This patch adds
the referenced clock in the devicetree to be used.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/usb/dwc2/core.h |  1 +
 drivers/usb/dwc2/dwc2.c | 19 +++++++++++++++++--
 2 files changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/dwc2/core.h b/drivers/usb/dwc2/core.h
index b9845b5524..780efb262c 100644
--- a/drivers/usb/dwc2/core.h
+++ b/drivers/usb/dwc2/core.h
@@ -467,6 +467,7 @@ struct dwc2 {
 	struct dwc2_core_params params;
 
 	struct phy *phy; /* optional */
+	struct clk *clk;
 
 #ifdef CONFIG_USB_DWC2_HOST
 	struct usb_host host;
diff --git a/drivers/usb/dwc2/dwc2.c b/drivers/usb/dwc2/dwc2.c
index 87d0ec7a5a..13455479ef 100644
--- a/drivers/usb/dwc2/dwc2.c
+++ b/drivers/usb/dwc2/dwc2.c
@@ -50,15 +50,26 @@ static int dwc2_probe(struct device_d *dev)
 	dwc2->regs = IOMEM(iores->start);
 	dwc2->dev = dev;
 
+	dwc2->clk = clk_get(dev, NULL);
+	if (IS_ERR(dwc2->clk)) {
+		ret = PTR_ERR(dwc2->clk);
+		dev_err(dev, "Failed to get USB clock %d\n", ret);
+		goto release_region;
+	}
+
+	ret = clk_enable(dwc2->clk);
+	if (ret)
+		goto clk_put;
+
 	dwc2->phy = phy_optional_get(dev, "usb2-phy");
 	if (IS_ERR(dwc2->phy)) {
 		ret = PTR_ERR(dwc2->phy);
-		goto release_region;
+		goto clk_disable;
 	}
 
 	ret = phy_init(dwc2->phy);
 	if (ret)
-		goto err_phy_init;
+		goto clk_disable;
 	ret = phy_power_on(dwc2->phy);
 	if (ret)
 		goto err_phy_power;
@@ -100,6 +111,10 @@ error:
 	phy_power_off(dwc2->phy);
 err_phy_power:
 	phy_exit(dwc2->phy);
+clk_disable:
+	clk_disable(dwc2->clk);
+clk_put:
+	clk_put(dwc2->clk);
 release_region:
 	release_region(iores);
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
