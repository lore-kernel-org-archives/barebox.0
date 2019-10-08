Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHlI0-0004tD-0L
 for barebox@lists.infradead.org; Tue, 08 Oct 2019 08:56:17 +0000
From: Stefan Riedmueller <s.riedmueller@phytec.de>
Date: Tue, 8 Oct 2019 10:56:11 +0200
Message-Id: <1570524972-208631-1-git-send-email-s.riedmueller@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] net: fec_imx: Fix resource rollback with regulator errors
To: barebox@lists.infradead.org

When the driver is not able to get or control the phy regulator memory
resources are already acquired and need to be released during rollback.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 drivers/net/fec_imx.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 31c91021893a..5ef1d4359e91 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -781,7 +781,8 @@ static int fec_probe(struct device_d *dev)
 	if (IS_ERR(fec->reg_phy)) {
 		if (PTR_ERR(fec->reg_phy) == -EPROBE_DEFER) {
 			ret = -EPROBE_DEFER;
-			goto disable_clk;
+			fec->reg_phy = NULL;
+			goto release_res;
 		}
 		fec->reg_phy = NULL;
 	}
@@ -789,7 +790,7 @@ static int fec_probe(struct device_d *dev)
 	ret = regulator_enable(fec->reg_phy);
 	if (ret) {
 		dev_err(dev, "Failed to enable phy regulator: %d\n", ret);
-		goto disable_clk;
+		goto release_res;
 	}
 
 	phy_reset = of_get_named_gpio(dev->device_node, "phy-reset-gpios", 0);
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
