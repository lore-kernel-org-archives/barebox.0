Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSKfa-0007vP-Gm
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 11:39:47 +0000
Received: from unicorn.hi.pengutronix.de
 ([2001:67c:670:100:a61f:72ff:fe69:16d] helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gSKfP-0003hG-1w
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 12:39:35 +0100
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gSKfO-0001KC-IV
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 12:39:34 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 29 Nov 2018 12:39:28 +0100
Message-Id: <20181129113931.5045-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 1/4] net: designware: socfpga: return error value
To: Barebox List <barebox@lists.infradead.org>

Instead of silently dropping the return value of socfpga_dwc_set_phy_mode,
use it as the return value of the function, instead.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/net/designware_socfpga.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/net/designware_socfpga.c b/drivers/net/designware_socfpga.c
index cb88882d66a0..ff4b6a565559 100644
--- a/drivers/net/designware_socfpga.c
+++ b/drivers/net/designware_socfpga.c
@@ -158,9 +158,7 @@ static int socfpga_dwc_ether_probe(struct device_d *dev)
 	if (ret)
 		return ret;
 
-	socfpga_dwc_set_phy_mode(dwc_dev);
-
-	return 0;
+	return socfpga_dwc_set_phy_mode(dwc_dev);
 }
 
 static struct dw_eth_drvdata socfpga_stmmac_drvdata = {
-- 
2.19.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
