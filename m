Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yno6i-0006uC-DB
 for barebox@lists.infradead.org; Thu, 30 Apr 2015 13:02:28 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Thu, 30 Apr 2015 15:01:46 +0200
Message-Id: <1430398906-3930-1-git-send-email-mpa@pengutronix.de>
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
Subject: [PATCH] net: fec: Fix RGMII-ID
To: barebox@lists.infradead.org

RGMII-ID just defines transmitter internal delays. Otherwise it is the
same as RGMII. As the differences only influence the behaviour of the
phy, the fec driver should handle it the same way as RGMII.

Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
---
 drivers/net/fec_imx.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index c1fa1517da81..54095e7b7ab7 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -309,7 +309,10 @@ static int fec_init(struct eth_device *dev)
 		}
 	}
 
-	if (fec->interface == PHY_INTERFACE_MODE_RGMII)
+	if (fec->interface == PHY_INTERFACE_MODE_RGMII ||
+	    fec->interface == PHY_INTERFACE_MODE_RGMII_ID ||
+	    fec->interface == PHY_INTERFACE_MODE_RGMII_TXID ||
+	    fec->interface == PHY_INTERFACE_MODE_RGMII_RXID)
 		rcntl |= 1 << 6;
 
 	writel(rcntl, fec->regs + FEC_R_CNTRL);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
