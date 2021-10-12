Delivery-date: Tue, 12 Oct 2021 12:11:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1maEkV-0007K7-By
	for lore@lore.pengutronix.de; Tue, 12 Oct 2021 12:11:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1maEkU-0001ye-75
	for lore@pengutronix.de; Tue, 12 Oct 2021 12:11:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YEuHq8OxhVzjz4p0UGcNgIZQ4FC3Xx8cNbXm+2iqNwg=; b=cJgjpN4NDR6onl
	Sp6Wtj8FAMJwCj7kBMNqaXY24lAwxM/tQ3HRFQWDQL3xq+ZYWnksLKrtVH7iMb2rnmhQrV6cu5xN2
	ypEW4SvGwJOoi2Y8agvLYSO95qi10clPIaB4NoWNn4a79DtjaGtjHH0goOPwM/2FXhfCjIlRINmy5
	jaNItARSsPI+nf+BdRLA9E85/m1smIjF7hdZn2C2su6FBdtfk5+BlDvIcgZuXzUgjrOItYSuf6Li8
	UPDn0nONcTHe2EESCoxenu6VX2Kfr8woDIrx8zKMPUDwzN7T9xLbFbGC/JlkSxw8DeiBc2Q2fzysx
	enYiifRXww70kxUqgX0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1maEiy-00CNe5-A0; Tue, 12 Oct 2021 10:09:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maEiZ-00CNY8-F5
 for barebox@lists.infradead.org; Tue, 12 Oct 2021 10:09:10 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1maEiT-0001Za-AW; Tue, 12 Oct 2021 12:09:01 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1maEiT-0000Nd-13; Tue, 12 Oct 2021 12:09:01 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 12 Oct 2021 12:08:59 +0200
Message-Id: <20211012100859.1409-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211012100859.1409-1-o.rempel@pengutronix.de>
References: <20211012100859.1409-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211012_030907_546321_66DF9948 
X-CRM114-Status: GOOD (  19.79  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 2/2] net: phy: micrel: port clock select support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Port devicetree based clock select support from kernel micrel driver (v5.15-rc1).
This support is needed to make netboot work on boards with PHY node and
"rmii-ref" property.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/phy/micrel.c | 101 ++++++++++++++++++++++++++++++++++++++-
 1 file changed, 100 insertions(+), 1 deletion(-)

diff --git a/drivers/net/phy/micrel.c b/drivers/net/phy/micrel.c
index ea193c84a7..958abdd9d6 100644
--- a/drivers/net/phy/micrel.c
+++ b/drivers/net/phy/micrel.c
@@ -14,6 +14,7 @@
 
 #include <common.h>
 #include <init.h>
+#include <linux/clk.h>
 #include <linux/mii.h>
 #include <linux/ethtool.h>
 #include <linux/phy.h>
@@ -38,6 +39,10 @@
 /* PHY Control 1 */
 #define MII_KSZPHY_CTRL_1			0x1e
 
+/* PHY Control 2 / PHY Control (if no PHY Control 1) */
+#define MII_KSZPHY_CTRL_2			0x1f
+#define KSZPHY_RMII_REF_CLK_SEL			BIT(7)
+
 /* Write/read to/from extended registers */
 #define MII_KSZPHY_EXTREG                       0x0b
 #define KSZPHY_EXTREG_WRITE                     0x8000
@@ -52,6 +57,20 @@
 
 #define PS_TO_REG				200
 
+struct kszphy_type {
+	bool has_rmii_ref_clk_sel;
+};
+
+struct kszphy_priv {
+	const struct kszphy_type *type;
+	bool rmii_ref_clk_sel;
+	bool rmii_ref_clk_sel_val;
+};
+
+static const struct kszphy_type ksz8081_type = {
+	.has_rmii_ref_clk_sel	= true,
+};
+
 static int kszphy_extended_write(struct phy_device *phydev,
 				u32 regnum, u16 val)
 {
@@ -66,6 +85,22 @@ static int kszphy_extended_read(struct phy_device *phydev,
 	return phy_read(phydev, MII_KSZPHY_EXTREG_READ);
 }
 
+static int kszphy_rmii_clk_sel(struct phy_device *phydev, bool val)
+{
+	int ctrl;
+
+	ctrl = phy_read(phydev, MII_KSZPHY_CTRL);
+	if (ctrl < 0)
+		return ctrl;
+
+	if (val)
+		ctrl |= KSZPHY_RMII_REF_CLK_SEL;
+	else
+		ctrl &= ~KSZPHY_RMII_REF_CLK_SEL;
+
+	return phy_write(phydev, MII_KSZPHY_CTRL, ctrl);
+}
+
 /* Handle LED mode, shift = position of first led mode bit, usually 4 or 14 */
 static int kszphy_led_mode(struct phy_device *phydev, int reg, int shift)
 {
@@ -83,6 +118,24 @@ static int kszphy_led_mode(struct phy_device *phydev, int reg, int shift)
 	return 0;
 }
 
+/* Some config bits need to be set again on resume, handle them here. */
+static int kszphy_config_reset(struct phy_device *phydev)
+{
+	struct kszphy_priv *priv = phydev->priv;
+	int ret;
+
+	if (priv->rmii_ref_clk_sel) {
+		ret = kszphy_rmii_clk_sel(phydev, priv->rmii_ref_clk_sel_val);
+		if (ret) {
+			dev_err(&phydev->dev,
+				   "failed to set rmii reference clock\n");
+			return ret;
+		}
+	}
+
+	return 0;
+}
+
 static int kszphy_config_init(struct phy_device *phydev)
 {
 	kszphy_led_mode(phydev, MII_KSZPHY_CTRL_1, 14);
@@ -96,7 +149,7 @@ static int ksz8021_config_init(struct phy_device *phydev)
 
 	kszphy_led_mode(phydev, MII_KSZPHY_CTRL, 4);
 
-	return 0;
+	return kszphy_config_reset(phydev);
 }
 
 static int ks8051_config_init(struct phy_device *phydev)
@@ -468,6 +521,50 @@ static int ksz8873mll_config_init(struct phy_device *phydev)
 	return 0;
 }
 
+static int kszphy_probe(struct phy_device *phydev)
+{
+	struct device_d *dev = &phydev->dev;
+	struct device_node *np = dev->device_node;
+	struct phy_driver *drv = to_phy_driver(dev->driver);
+	const struct kszphy_type *type = drv->driver_data;
+	struct kszphy_priv *priv;
+	struct clk *clk;
+
+	priv = xzalloc(sizeof(*priv));
+
+	phydev->priv = priv;
+
+	priv->type = type;
+
+	clk = clk_get(dev, "rmii-ref");
+	/* NOTE: clk may be NULL if building without CONFIG_HAVE_CLK */
+	if (!IS_ERR_OR_NULL(clk)) {
+		unsigned long rate = clk_get_rate(clk);
+		bool rmii_ref_clk_sel_25_mhz;
+
+		priv->rmii_ref_clk_sel = type->has_rmii_ref_clk_sel;
+		rmii_ref_clk_sel_25_mhz = of_property_read_bool(np,
+				"micrel,rmii-reference-clock-select-25-mhz");
+
+		if (rate > 24500000 && rate < 25500000) {
+			priv->rmii_ref_clk_sel_val = rmii_ref_clk_sel_25_mhz;
+		} else if (rate > 49500000 && rate < 50500000) {
+			priv->rmii_ref_clk_sel_val = !rmii_ref_clk_sel_25_mhz;
+		} else {
+			dev_err(dev, "Clock rate out of range: %ld\n", rate);
+			return -EINVAL;
+		}
+	}
+
+	/* Support legacy board-file configuration */
+	if (phydev->dev_flags & MICREL_PHY_50MHZ_CLK) {
+		priv->rmii_ref_clk_sel = true;
+		priv->rmii_ref_clk_sel_val = true;
+	}
+
+	return 0;
+}
+
 static struct phy_driver ksphy_driver[] = {
 {
 	.phy_id		= PHY_ID_KS8737,
@@ -517,7 +614,9 @@ static struct phy_driver ksphy_driver[] = {
 	.phy_id		= PHY_ID_KSZ8081,
 	.phy_id_mask	= MICREL_PHY_ID_MASK,
 	.drv.name	= "Micrel KSZ8081/91",
+	.driver_data	= &ksz8081_type,
 	.features	= (PHY_BASIC_FEATURES | SUPPORTED_Pause),
+	.probe		= kszphy_probe,
 	.config_init	= ksz8021_config_init,
 	.config_aneg	= genphy_config_aneg,
 	.read_status	= genphy_read_status,
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

