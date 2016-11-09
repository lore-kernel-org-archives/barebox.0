Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c4VX0-0005Pq-22
 for barebox@lists.infradead.org; Wed, 09 Nov 2016 16:15:30 +0000
Received: by mail-pf0-x241.google.com with SMTP id i88so781851pfk.2
 for <barebox@lists.infradead.org>; Wed, 09 Nov 2016 08:15:04 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  9 Nov 2016 08:14:14 -0800
Message-Id: <1478708056-7875-27-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1478708056-7875-1-git-send-email-andrew.smirnov@gmail.com>
References: <1478708056-7875-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 26/28] i.MX: fec: Enable all clocks specified for FEC
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

For some i.MX variants more than just "ipg" clock need to be enabled for
Ethernet to function, so change the code to enable all of the clock
defined for FEC node (this is what analogous Linux driver does as well).

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/fec_imx.c | 71 +++++++++++++++++++++++++++++++++++++++++++--------
 drivers/net/fec_imx.h | 10 +++++++-
 2 files changed, 70 insertions(+), 11 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 8bc7c29..1be5b9d 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -51,7 +51,7 @@ static int fec_miibus_read(struct mii_bus *bus, int phyAddr, int regAddr)
 	uint32_t phy;		/* convenient holder for the PHY */
 	uint64_t start;
 
-	writel(((clk_get_rate(fec->clk) >> 20) / 5) << 1,
+	writel(((clk_get_rate(fec->clk[FEC_CLK_IPG]) >> 20) / 5) << 1,
 			fec->regs + FEC_MII_SPEED);
 	/*
 	 * reading from any PHY's register is done by properly
@@ -94,7 +94,7 @@ static int fec_miibus_write(struct mii_bus *bus, int phyAddr,
 	uint32_t phy;		/* convenient holder for the PHY */
 	uint64_t start;
 
-	writel(((clk_get_rate(fec->clk) >> 20) / 5) << 1,
+	writel(((clk_get_rate(fec->clk[FEC_CLK_IPG]) >> 20) / 5) << 1,
 			fec->regs + FEC_MII_SPEED);
 
 	reg = regAddr << FEC_MII_DATA_RA_SHIFT;
@@ -287,7 +287,7 @@ static int fec_init(struct eth_device *dev)
 	 * Set MII_SPEED = (1/(mii_speed * 2)) * System Clock
 	 * and do not drop the Preamble.
 	 */
-	writel(((clk_get_rate(fec->clk) >> 20) / 5) << 1,
+	writel(((clk_get_rate(fec->clk[FEC_CLK_IPG]) >> 20) / 5) << 1,
 			fec->regs + FEC_MII_SPEED);
 
 	if (fec->interface == PHY_INTERFACE_MODE_RMII) {
@@ -651,6 +651,59 @@ static int fec_probe_dt(struct device_d *dev, struct fec_priv *fec)
 	return -ENODEV;
 }
 #endif
+
+static int fec_clk_enable(struct fec_priv *fec)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(fec->clk); i++) {
+		const int err = clk_enable(fec->clk[i]);
+		if (err < 0)
+			return err;
+	}
+
+	return 0;
+}
+
+static void fec_clk_disable(struct fec_priv *fec)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(fec->clk); i++) {
+		if (!IS_ERR_OR_NULL(fec->clk[i]))
+			clk_disable(fec->clk[i]);
+	}
+}
+
+static void fec_clk_put(struct fec_priv *fec)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(fec->clk); i++) {
+		if (!IS_ERR_OR_NULL(fec->clk[i]))
+			clk_put(fec->clk[i]);
+	}
+}
+
+static int fec_clk_get(struct fec_priv *fec)
+{
+	int i, err = 0;
+	static const char *clk_names[ARRAY_SIZE(fec->clk)] = {
+		"ipg", "ahb", "ptp"
+	};
+
+	for (i = 0; i < ARRAY_SIZE(fec->clk); i++) {
+		fec->clk[i] = clk_get(fec->edev.parent, clk_names[i]);
+		if (IS_ERR(fec->clk[i])) {
+			err = PTR_ERR(fec->clk[i]);
+			fec_clk_put(fec);
+			break;
+		}
+	}
+
+	return err;
+}
+
 static int fec_probe(struct device_d *dev)
 {
 	struct resource *iores;
@@ -681,13 +734,11 @@ static int fec_probe(struct device_d *dev)
 	edev->set_ethaddr = fec_set_hwaddr;
 	edev->parent = dev;
 
-	fec->clk = clk_get(dev, NULL);
-	if (IS_ERR(fec->clk)) {
-		ret = PTR_ERR(fec->clk);
+	ret = fec_clk_get(fec);
+	if (ret < 0)
 		goto err_free;
-	}
 
-	ret = clk_enable(fec->clk);
+	ret = fec_clk_enable(fec);
 	if (ret < 0)
 		goto put_clk;
 
@@ -787,9 +838,9 @@ free_gpio:
 release_res:
 	release_region(iores);
 disable_clk:
-	clk_disable(fec->clk);
+	fec_clk_disable(fec);
 put_clk:
-	clk_put(fec->clk);
+	fec_clk_put(fec);
 err_free:
 	free(fec);
 	return ret;
diff --git a/drivers/net/fec_imx.h b/drivers/net/fec_imx.h
index 1947e60..85d51ba 100644
--- a/drivers/net/fec_imx.h
+++ b/drivers/net/fec_imx.h
@@ -129,6 +129,14 @@ enum fec_type {
 	FEC_TYPE_IMX6,
 };
 
+enum fec_clock {
+	FEC_CLK_IPG,
+	FEC_CLK_AHB,
+	FEC_CLK_PTP,
+
+	FEC_CLK_NUM
+};
+
 /**
  * @brief i.MX27-FEC private structure
  */
@@ -144,7 +152,7 @@ struct fec_priv {
 	u32 phy_flags;
 	struct mii_bus miibus;
 	void (*phy_init)(struct phy_device *dev);
-	struct clk *clk;
+	struct clk *clk[FEC_CLK_NUM];
 	enum fec_type type;
 };
 
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
