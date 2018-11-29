Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSKfa-0007vR-Gn
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 11:39:48 +0000
Received: from unicorn.hi.pengutronix.de
 ([2001:67c:670:100:a61f:72ff:fe69:16d] helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gSKfP-0003hI-5E
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 12:39:35 +0100
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gSKfO-0001KH-Sb
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 12:39:34 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 29 Nov 2018 12:39:30 +0100
Message-Id: <20181129113931.5045-3-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 3/4] net: designware: reorder execution of write and busy check
To: Barebox List <barebox@lists.infradead.org>

Instead of first writing to the MII register and then checking if the
MII operation is finished. Check if there is an ongoing operation and
then write to the MII register.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/net/designware.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index 410658d67b39..104258e21c51 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -92,12 +92,12 @@ static int dwc_ether_mii_write(struct mii_bus *dev, int addr, int reg, u16 val)
 	miiaddr = ((addr << MIIADDRSHIFT) & MII_ADDRMSK) |
 		  ((reg << MIIREGSHIFT) & MII_REGMSK) | MII_WRITE;
 
-	writel(miiaddr | MII_CLKRANGE_150_250M | MII_BUSY, &mac_p->miiaddr);
-
 	ret = dwc_wait_mii_idle(dev);
 	if (ret)
 		return ret;
 
+	writel(miiaddr | MII_CLKRANGE_150_250M | MII_BUSY, &mac_p->miiaddr);
+
 	/* Needed as a fix for ST-Phy */
 	dwc_ether_mii_read(dev, addr, reg);
 	return 0;
-- 
2.19.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
