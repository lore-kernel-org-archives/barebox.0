Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TG6TI-0000ij-HN
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 11:05:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Sep 2012 13:04:43 +0200
Message-Id: <1348484692-24993-15-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1348484692-24993-1-git-send-email-s.hauer@pengutronix.de>
References: <1348484692-24993-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 14/23] net fec: Switch to clk support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/fec_imx.c |   27 ++++++++++++++++++++++++---
 drivers/net/fec_imx.h |    1 +
 2 files changed, 25 insertions(+), 3 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 6acf6bd..4606558 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -24,6 +24,8 @@
 #include <clock.h>
 #include <xfuncs.h>
 #include <linux/phy.h>
+#include <linux/clk.h>
+#include <linux/err.h>
 
 #include <asm/mmu.h>
 
@@ -43,6 +45,19 @@ struct fec_frame {
 	uint8_t head[16];	/* MAC header(6 + 6 + 2) + 2(aligned) */
 };
 
+#ifdef CONFIG_COMMON_CLK
+static inline unsigned long fec_clk_get_rate(struct fec_priv *fec)
+{
+	return clk_get_rate(fec->clk);
+}
+#else
+static inline unsigned long fec_clk_get_rate(struct fec_priv *fec)
+{
+	return imx_get_fecclk();
+}
+#endif
+
+
 /*
  * MII-interface related functions
  */
@@ -54,7 +69,7 @@ static int fec_miibus_read(struct mii_bus *bus, int phyAddr, int regAddr)
 	uint32_t phy;		/* convenient holder for the PHY */
 	uint64_t start;
 
-	writel(((imx_get_fecclk() >> 20) / 5) << 1,
+	writel(((fec_clk_get_rate(fec) >> 20) / 5) << 1,
 			fec->regs + FEC_MII_SPEED);
 	/*
 	 * reading from any PHY's register is done by properly
@@ -97,7 +112,7 @@ static int fec_miibus_write(struct mii_bus *bus, int phyAddr,
 	uint32_t phy;		/* convenient holder for the PHY */
 	uint64_t start;
 
-	writel(((imx_get_fecclk() >> 20) / 5) << 1,
+	writel(((fec_clk_get_rate(fec) >> 20) / 5) << 1,
 			fec->regs + FEC_MII_SPEED);
 
 	reg = regAddr << FEC_MII_DATA_RA_SHIFT;
@@ -290,7 +305,7 @@ static int fec_init(struct eth_device *dev)
 		 * Set MII_SPEED = (1/(mii_speed * 2)) * System Clock
 		 * and do not drop the Preamble.
 		 */
-		writel(((imx_get_fecclk() >> 20) / 5) << 1,
+		writel(((fec_clk_get_rate(fec) >> 20) / 5) << 1,
 				fec->regs + FEC_MII_SPEED);
 	}
 
@@ -628,6 +643,12 @@ static int fec_probe(struct device_d *dev)
 	edev->set_ethaddr = fec_set_hwaddr;
 	edev->parent = dev;
 
+#ifdef CONFIG_COMMON_CLK
+	fec->clk = clk_get(dev, NULL);
+	if (IS_ERR(fec->clk))
+		return PTR_ERR(fec->clk);
+#endif
+
 	fec->regs = dev_request_mem_region(dev, 0);
 
 	/* Reset chip. */
diff --git a/drivers/net/fec_imx.h b/drivers/net/fec_imx.h
index d10385a..d147dca 100644
--- a/drivers/net/fec_imx.h
+++ b/drivers/net/fec_imx.h
@@ -138,6 +138,7 @@ struct fec_priv {
 	u32 phy_flags;
 	struct mii_bus miibus;
 	void (*phy_init)(struct phy_device *dev);
+	struct clk *clk;
 };
 
 /**
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
