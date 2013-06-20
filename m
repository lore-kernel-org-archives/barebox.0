Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpYlh-0004gF-FK
 for barebox@lists.infradead.org; Thu, 20 Jun 2013 06:55:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 20 Jun 2013 08:54:12 +0200
Message-Id: <1371711261-10039-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1371711261-10039-1-git-send-email-s.hauer@pengutronix.de>
References: <1371711261-10039-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/17] net: fec: Use clk API unconditionally
To: barebox@lists.infradead.org
Cc: Juergen Beisert <jbe@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/fec_imx.c | 31 +++++++++----------------------
 1 file changed, 9 insertions(+), 22 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 1346c91..2f31352 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -45,19 +45,6 @@ struct fec_frame {
 	uint8_t head[16];	/* MAC header(6 + 6 + 2) + 2(aligned) */
 };
 
-#ifdef CONFIG_COMMON_CLK
-static inline unsigned long fec_clk_get_rate(struct fec_priv *fec)
-{
-	return clk_get_rate(fec->clk);
-}
-#else
-static inline unsigned long fec_clk_get_rate(struct fec_priv *fec)
-{
-	return imx_get_fecclk();
-}
-#endif
-
-
 /*
  * MII-interface related functions
  */
@@ -69,7 +56,7 @@ static int fec_miibus_read(struct mii_bus *bus, int phyAddr, int regAddr)
 	uint32_t phy;		/* convenient holder for the PHY */
 	uint64_t start;
 
-	writel(((fec_clk_get_rate(fec) >> 20) / 5) << 1,
+	writel(((clk_get_rate(fec->clk) >> 20) / 5) << 1,
 			fec->regs + FEC_MII_SPEED);
 	/*
 	 * reading from any PHY's register is done by properly
@@ -112,7 +99,7 @@ static int fec_miibus_write(struct mii_bus *bus, int phyAddr,
 	uint32_t phy;		/* convenient holder for the PHY */
 	uint64_t start;
 
-	writel(((fec_clk_get_rate(fec) >> 20) / 5) << 1,
+	writel(((clk_get_rate(fec->clk) >> 20) / 5) << 1,
 			fec->regs + FEC_MII_SPEED);
 
 	reg = regAddr << FEC_MII_DATA_RA_SHIFT;
@@ -305,7 +292,7 @@ static int fec_init(struct eth_device *dev)
 	 * Set MII_SPEED = (1/(mii_speed * 2)) * System Clock
 	 * and do not drop the Preamble.
 	 */
-	writel(((fec_clk_get_rate(fec) >> 20) / 5) << 1,
+	writel(((clk_get_rate(fec->clk) >> 20) / 5) << 1,
 			fec->regs + FEC_MII_SPEED);
 
 	if (fec->interface == PHY_INTERFACE_MODE_RMII) {
@@ -674,14 +661,14 @@ static int fec_probe(struct device_d *dev)
 	edev->set_ethaddr = fec_set_hwaddr;
 	edev->parent = dev;
 
-	if (IS_ENABLED(CONFIG_COMMON_CLK)) {
-		fec->clk = clk_get(dev, NULL);
-		if (IS_ERR(fec->clk)) {
-			ret = PTR_ERR(fec->clk);
-			goto err_free;
-		}
+	fec->clk = clk_get(dev, NULL);
+	if (IS_ERR(fec->clk)) {
+		ret = PTR_ERR(fec->clk);
+		goto err_free;
 	}
 
+	clk_enable(fec->clk);
+
 	fec->regs = dev_request_mem_region(dev, 0);
 
 	/* Reset chip. */
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
