Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VJ2qZ-0008Kt-Gx
 for barebox@lists.infradead.org; Mon, 09 Sep 2013 14:53:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  9 Sep 2013 16:53:21 +0200
Message-Id: <1378738401-723-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1378738401-723-1-git-send-email-s.hauer@pengutronix.de>
References: <1378738401-723-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/6] net: designware: remove backspaces from code
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/designware.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index a71e2e9..ecb4656 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -82,7 +82,7 @@ static int dwc_ether_mii_read(struct mii_bus *dev, int addr, int reg)
 	u64 start;
 	u32 miiaddr;
 
-	miiaddr = ((addr << MIIADDRSHIFT) & MII_ADDRMSK) | \
+	miiaddr = ((addr << MIIADDRSHIFT) & MII_ADDRMSK) |
 		  ((reg << MIIREGSHIFT) & MII_REGMSK);
 
 	writel(miiaddr | MII_CLKRANGE_150_250M | MII_BUSY, &mac_p->miiaddr);
@@ -105,7 +105,7 @@ static int dwc_ether_mii_write(struct mii_bus *dev, int addr, int reg, u16 val)
 	u32 miiaddr;
 
 	writel(val, &mac_p->miidata);
-	miiaddr = ((addr << MIIADDRSHIFT) & MII_ADDRMSK) | \
+	miiaddr = ((addr << MIIADDRSHIFT) & MII_ADDRMSK) |
 		  ((reg << MIIREGSHIFT) & MII_REGMSK) | MII_WRITE;
 
 	writel(miiaddr | MII_CLKRANGE_150_250M | MII_BUSY, &mac_p->miiaddr);
@@ -346,7 +346,7 @@ static int dwc_ether_rx(struct eth_device *dev)
 	if (status & DESC_RXSTS_OWNBYDMA)
 		return 0;
 
-	length = (status & DESC_RXSTS_FRMLENMSK) >> \
+	length = (status & DESC_RXSTS_FRMLENMSK) >>
 		 DESC_RXSTS_FRMLENSHFT;
 
 	/*
@@ -389,7 +389,7 @@ static int dwc_ether_set_ethaddr(struct eth_device *dev, u8 adr[6])
 	struct eth_mac_regs *mac_p = priv->mac_regs_p;
 	u32 macid_lo, macid_hi;
 
-	macid_lo = adr[0] + (adr[1] << 8) + \
+	macid_lo = adr[0] + (adr[1] << 8) +
 		   (adr[2] << 16) + (adr[3] << 24);
 	macid_hi = adr[4] + (adr[5] << 8);
 	writel(macid_hi, &mac_p->macaddr0hi);
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
