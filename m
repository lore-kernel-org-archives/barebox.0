Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSKfa-0007vS-Go
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 11:39:49 +0000
Received: from unicorn.hi.pengutronix.de
 ([2001:67c:670:100:a61f:72ff:fe69:16d] helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gSKfP-0003hJ-74
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 12:39:35 +0100
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gSKfO-0001KK-UJ
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 12:39:34 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 29 Nov 2018 12:39:31 +0100
Message-Id: <20181129113931.5045-4-s.trumtrar@pengutronix.de>
In-Reply-To: <20181129113931.5045-1-s.trumtrar@pengutronix.de>
References: <20181129113931.5045-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 4/4] net: designware: return error value in mii_write
To: Barebox List <barebox@lists.infradead.org>

Do not drop the error value and use it as a return value instead.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/net/designware.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index 104258e21c51..cb7c4a13719c 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -99,8 +99,7 @@ static int dwc_ether_mii_write(struct mii_bus *dev, int addr, int reg, u16 val)
 	writel(miiaddr | MII_CLKRANGE_150_250M | MII_BUSY, &mac_p->miiaddr);
 
 	/* Needed as a fix for ST-Phy */
-	dwc_ether_mii_read(dev, addr, reg);
-	return 0;
+	return dwc_ether_mii_read(dev, addr, reg);
 }
 
 
-- 
2.19.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
