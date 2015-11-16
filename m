Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.com ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZyFf1-0006Nm-8M
 for barebox@lists.infradead.org; Mon, 16 Nov 2015 09:01:25 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 21A21A003E6
 for <barebox@lists.infradead.org>; Mon, 16 Nov 2015 10:01:17 +0100 (CET)
From: Stefan Christ <s.christ@phytec.de>
Date: Mon, 16 Nov 2015 10:00:43 +0100
Message-Id: <1447664445-19282-1-git-send-email-s.christ@phytec.de>
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
Subject: [PATCH 1/3] net: fec: set phy reset time to 1ms
To: barebox@lists.infradead.org

According to the device tree bindings in dts/Bindings/net/fsl-fec.txt
the default phy-reset time is 1ms.

Signed-off-by: Stefan Christ <s.christ@phytec.de>
---
 drivers/net/fec_imx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 78ccb85..f19d046 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -692,7 +692,7 @@ static int fec_probe(struct device_d *dev)
 		if (ret)
 			goto err_free;
 
-		udelay(10);
+		mdelay(1);
 		gpio_set_value(phy_reset, 1);
 	}
 
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
