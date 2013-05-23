Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UfW2V-0005k3-4i
 for barebox@lists.infradead.org; Thu, 23 May 2013 13:58:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 23 May 2013 15:58:20 +0200
Message-Id: <1369317500-12935-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] net: fec_imx: default phy address to -1 for dt probe
To: barebox@lists.infradead.org

To enable automatic probing of the phy.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/fec_imx.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 1a85d15..25d8d8e 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -707,6 +707,7 @@ static int fec_probe(struct device_d *dev)
 
 	if (dev->device_node) {
 		ret = fec_probe_dt(dev, fec);
+		fec->phy_addr = -1;
 	} else if (pdata) {
 		fec->interface = pdata->xcv_type;
 		fec->phy_init = pdata->phy_init;
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
