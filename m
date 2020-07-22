Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jy9pG-0000es-1Z
 for barebox@lists.infradead.org; Wed, 22 Jul 2020 08:10:06 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 22 Jul 2020 10:09:55 +0200
Message-Id: <20200722080956.17454-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/2] phy: stm32-usphyc: release resources to properly support
 EPROBE_DEFER
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Driver failed to release resources on failed probe so far, leading to
deferred probe failing with -EBUSY. Fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/phy/phy-stm32-usbphyc.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/phy-stm32-usbphyc.c b/drivers/phy/phy-stm32-usbphyc.c
index 093842fe1460..d9eaa8a7544a 100644
--- a/drivers/phy/phy-stm32-usbphyc.c
+++ b/drivers/phy/phy-stm32-usbphyc.c
@@ -328,13 +328,13 @@ static int stm32_usbphyc_probe(struct device_d *dev)
 	if (IS_ERR(usbphyc->clk)) {
 		ret = PTR_ERR(usbphyc->clk);
 		dev_err(dev, "clk get failed: %d\n", ret);
-		return ret;
+		goto release_region;
 	}
 
 	ret = clk_enable(usbphyc->clk);
 	if (ret) {
 		dev_err(dev, "clk enable failed: %d\n", ret);
-		return ret;
+		goto release_region;
 	}
 
 	device_reset_us(dev, 2);
@@ -405,6 +405,11 @@ static int stm32_usbphyc_probe(struct device_d *dev)
 
 clk_disable:
 	clk_disable(usbphyc->clk);
+release_region:
+	release_region(iores);
+
+	free(usbphyc->phys);
+	free(usbphyc);
 
 	return ret;
 }
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
