Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1DUH-0006DO-0U
 for barebox@lists.infradead.org; Mon, 10 Feb 2020 18:08:50 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 10 Feb 2020 19:08:31 +0100
Message-Id: <20200210180833.22153-2-a.fatoum@pengutronix.de>
In-Reply-To: <20200210180833.22153-1-a.fatoum@pengutronix.de>
References: <20200210180833.22153-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/5] net: designware: socfpga: fix possible invalid pointer
 deref
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

In cases where the reset controller specification in the device tree is
malformed, we get an error pointer back from reset_control_get. This
compares unequal to NULL and would cause an access violation when passed
to reset_control_(de)?assert.

Fix this by propagating the error. When the reset controller is missing,
reset_control_(de)?assert will be passed NULL pointers, rendering them
no-ops.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/designware_socfpga.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/net/designware_socfpga.c b/drivers/net/designware_socfpga.c
index ce3ac38ebe87..d6c28af45e65 100644
--- a/drivers/net/designware_socfpga.c
+++ b/drivers/net/designware_socfpga.c
@@ -77,8 +77,7 @@ static int socfpga_gen5_set_phy_mode(struct socfpga_dwc_dev *dwc_dev)
 	}
 
 	/* Assert reset to the enet controller before changing the phy mode */
-	if (eth_dev->rst)
-		reset_control_assert(eth_dev->rst);
+	reset_control_assert(eth_dev->rst);
 
 	ctrl = readl(dwc_dev->sys_mgr_base + reg_offset);
 	ctrl &= ~(SYSMGR_EMACGRP_CTRL_PHYSEL_MASK << reg_shift);
@@ -104,8 +103,7 @@ static int socfpga_gen5_set_phy_mode(struct socfpga_dwc_dev *dwc_dev)
 	/* Deassert reset for the phy configuration to be sampled by
 	 * the enet controller, and operation to start in requested mode
 	 */
-	if (eth_dev->rst)
-		reset_control_deassert(eth_dev->rst);
+	reset_control_deassert(eth_dev->rst);
 
 	return 0;
 }
@@ -124,8 +122,7 @@ static int socfpga_gen10_set_phy_mode(struct socfpga_dwc_dev *dwc_dev)
 	}
 
 	/* Assert reset to the enet controller before changing the phy mode */
-	if (eth_dev->rst)
-		reset_control_assert(eth_dev->rst);
+	reset_control_assert(eth_dev->rst);
 
 	ctrl = readl(dwc_dev->sys_mgr_base + reg_offset);
 	ctrl &= ~(SYSMGR_EMACGRP_CTRL_PHYSEL_MASK << reg_shift);
@@ -151,8 +148,7 @@ static int socfpga_gen10_set_phy_mode(struct socfpga_dwc_dev *dwc_dev)
 	/* Deassert reset for the phy configuration to be sampled by
 	 * the enet controller, and operation to start in requested mode
 	 */
-	if (eth_dev->rst)
-		reset_control_deassert(eth_dev->rst);
+	reset_control_deassert(eth_dev->rst);
 
 	return 0;
 }
@@ -212,8 +208,10 @@ static int socfpga_dwc_ether_probe(struct device_d *dev)
 		return PTR_ERR(priv);
 
 	priv->rst = reset_control_get(dev, NULL);
-	if (IS_ERR(priv->rst))
-		dev_warn(dev, "No reset lines.\n");
+	if (IS_ERR(priv->rst)) {
+		dev_err(dev, "Invalid reset lines.\n");
+		return PTR_ERR(priv->rst);
+	}
 
 	dwc_dev->priv = priv;
 
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
