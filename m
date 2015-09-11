Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZaHqY-0000dt-K7
 for barebox@lists.infradead.org; Fri, 11 Sep 2015 06:30:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 11 Sep 2015 08:29:39 +0200
Message-Id: <1441952979-6202-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1441952979-6202-1-git-send-email-s.hauer@pengutronix.de>
References: <1441952979-6202-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] net: fec_imx: Fix RGMII-ID mode
To: Barebox List <barebox@lists.infradead.org>

RGMII-ID uses an internal delay within the transmitter or receiver. This
feature is phy specific. The rest of the communication is normal RGMII.

So the fec driver has to check for all RGMII modes, not only
'PHY_INTERFACE_MODE_RGMII'.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/fec_imx.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index c1fa151..55f7096 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -309,7 +309,10 @@ static int fec_init(struct eth_device *dev)
 		}
 	}
 
-	if (fec->interface == PHY_INTERFACE_MODE_RGMII)
+	if (fec->interface == PHY_INTERFACE_MODE_RGMII ||
+	    fec->interface == PHY_INTERFACE_MODE_RGMII_ID ||
+	    fec->interface == PHY_INTERFACE_MODE_RGMII_RXID ||
+	    fec->interface == PHY_INTERFACE_MODE_RGMII_TXID)
 		rcntl |= 1 << 6;
 
 	writel(rcntl, fec->regs + FEC_R_CNTRL);
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
