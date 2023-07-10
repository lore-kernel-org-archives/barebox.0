Delivery-date: Mon, 10 Jul 2023 08:38:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIkXm-005NaL-T6
	for lore@lore.pengutronix.de; Mon, 10 Jul 2023 08:38:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIkXk-0003Ew-CC
	for lore@pengutronix.de; Mon, 10 Jul 2023 08:38:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yHCLeHaR/umEPdxV62amPTDRKR2EdQjhNjxyrbH67gM=; b=3Pk3lO83chtaPPFIPly7lX6/oA
	0GkjOhchcPY79Q5eq9deA8jWBMamjIJ0DTK+tMkKaHNcsuZTO6AVfl2b7zNTVEkENRB5yY/oApRQz
	rjrXwd1MgIqEs6cETjn2Vr/rDx8AuEhK574cCWLDfgbK0YCFj+ozq1LU4iCQoZy1tiuaaQGjpiBYy
	pQa1T4iN0EQ4SLlqSbrES+ls6esiCWXgMSHJTQKVwk8pFyp8h1Jbxow16IZnWmJWCloPdqbdqgBMq
	Lz7C35WRuLJmFubcgYn43Y6vrVWecvYhJpGQ9JKZwyezTuo2OSgW89LjbiDfP5QkV6HdkRkN81JUE
	H11BueGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIkWO-00Aaxr-1t;
	Mon, 10 Jul 2023 06:37:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIkWG-00Aatn-36
	for barebox@lists.infradead.org;
	Mon, 10 Jul 2023 06:37:15 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qIkW4-0002w5-9C
	for barebox@lists.infradead.org; Mon, 10 Jul 2023 08:37:00 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 10 Jul 2023 08:36:51 +0200
Message-Id: <20230710063653.660040-5-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230710063653.660040-1-m.felsch@pengutronix.de>
References: <20230710063653.660040-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230709_233713_019971_3A6C1B90 
X-CRM114-Status: GOOD (  20.01  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 5/7] net: phy: at803x: add support for configuring SmartEEE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This commit port Linux commit:

| commit 390b4cad81484124db2b676ed20a265adc032bae
| Author: Russell King <rmk+kernel@armlinux.org.uk>
| Date:   Thu Jan 14 10:45:49 2021 +0000
|
|     net: phy: at803x: add support for configuring SmartEEE
|
|     SmartEEE for the atheros phy was deemed buggy by Freescale and commits
|     were added to disable it for their boards.
|
|     In initial testing, SolidRun found that the default settings were
|     causing disconnects but by increasing the Tw buffer time we could allow
|     enough time for all parts of the link to come out of a low power state
|     and function properly without causing a disconnect. This allows us to
|     have functional power savings of between 300 and 400mW, rather than
|     disabling the feature altogether.
|
|     This commit adds support for disabling SmartEEE and configuring the Tw
|     parameters for 1G and 100M speeds.
|
|     Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
|     Signed-off-by: Jakub Kicinski <kuba@kernel.org>

I slightly adapted the at803x_config_init() as well to be more in line
with the Linux code base.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/net/phy/at803x.c | 75 ++++++++++++++++++++++++++++++++++++++--
 1 file changed, 73 insertions(+), 2 deletions(-)

diff --git a/drivers/net/phy/at803x.c b/drivers/net/phy/at803x.c
index 41010c58ad..cc425c318f 100644
--- a/drivers/net/phy/at803x.c
+++ b/drivers/net/phy/at803x.c
@@ -59,6 +59,15 @@
  */
 #define AT8035_CLK_OUT_MASK			GENMASK(4, 3)
 
+#define AT803X_MMD3_SMARTEEE_CTL1		0x805b
+#define AT803X_MMD3_SMARTEEE_CTL3		0x805d
+#define AT803X_MMD3_SMARTEEE_CTL3_LPI_EN	BIT(8)
+
+#define AT803X_DISABLE_SMARTEEE			BIT(1)
+
+/* disable hibernation mode */
+#define AT803X_DISABLE_HIBERNATION_MODE		BIT(2)
+
 #define AT803X_CLK_OUT_STRENGTH_MASK		GENMASK(8, 7)
 #define AT803X_CLK_OUT_STRENGTH_FULL		0
 #define AT803X_CLK_OUT_STRENGTH_HALF		1
@@ -72,8 +81,11 @@
 #define AT8030_PHY_ID_MASK			0xffffffef
 
 struct at803x_priv {
+	int flags;
 	u16 clk_25m_reg;
 	u16 clk_25m_mask;
+	u8 smarteee_lpi_tw_1g;
+	u8 smarteee_lpi_tw_100m;
 };
 
 static int at803x_debug_reg_read(struct phy_device *phydev, u16 reg)
@@ -141,10 +153,29 @@ static int at803x_parse_dt(struct phy_device *phydev)
 	const struct device *dev = &phydev->dev;
 	const struct device_node *node = dev->of_node;
 	struct at803x_priv *priv = phydev->priv;
+	u32 freq, strength, tw;
 	unsigned int sel;
-	u32 freq, strength;
 	int ret;
 
+	if (of_property_read_bool(node, "qca,disable-smarteee"))
+		priv->flags |= AT803X_DISABLE_SMARTEEE;
+
+	if (!of_property_read_u32(node, "qca,smarteee-tw-us-1g", &tw)) {
+		if (!tw || tw > 255) {
+			phydev_err(phydev, "invalid qca,smarteee-tw-us-1g\n");
+			return -EINVAL;
+		}
+		priv->smarteee_lpi_tw_1g = tw;
+	}
+
+	if (!of_property_read_u32(node, "qca,smarteee-tw-us-100m", &tw)) {
+		if (!tw || tw > 255) {
+			phydev_err(phydev, "invalid qca,smarteee-tw-us-100m\n");
+			return -EINVAL;
+		}
+		priv->smarteee_lpi_tw_100m = tw;
+	}
+
 	ret = of_property_read_u32(node, "qca,clk-out-frequency", &freq);
 	if (!ret) {
 		switch (freq) {
@@ -221,6 +252,38 @@ static int at803x_probe(struct phy_device *phydev)
 	return at803x_parse_dt(phydev);
 }
 
+static int at803x_smarteee_config(struct phy_device *phydev)
+{
+	struct at803x_priv *priv = phydev->priv;
+	u16 mask = 0, val = 0;
+	int ret;
+
+	if (priv->flags & AT803X_DISABLE_SMARTEEE)
+		return phy_modify_mmd_indirect(phydev, MDIO_MMD_PCS,
+					       AT803X_MMD3_SMARTEEE_CTL3,
+					       AT803X_MMD3_SMARTEEE_CTL3_LPI_EN, 0);
+
+	if (priv->smarteee_lpi_tw_1g) {
+		mask |= 0xff00;
+		val |= priv->smarteee_lpi_tw_1g << 8;
+	}
+	if (priv->smarteee_lpi_tw_100m) {
+		mask |= 0x00ff;
+		val |= priv->smarteee_lpi_tw_100m;
+	}
+	if (!mask)
+		return 0;
+
+	ret = phy_modify_mmd_indirect(phydev, MDIO_MMD_PCS, AT803X_MMD3_SMARTEEE_CTL1,
+				      mask, val);
+	if (ret)
+		return ret;
+
+	return phy_modify_mmd_indirect(phydev, MDIO_MMD_PCS, AT803X_MMD3_SMARTEEE_CTL3,
+				       AT803X_MMD3_SMARTEEE_CTL3_LPI_EN,
+				       AT803X_MMD3_SMARTEEE_CTL3_LPI_EN);
+}
+
 static int at803x_clk_out_config(struct phy_device *phydev)
 {
 	struct at803x_priv *priv = phydev->priv;
@@ -270,7 +333,15 @@ static int at803x_config_init(struct phy_device *phydev)
 	if (ret < 0)
 		return ret;
 
-	return at803x_clk_out_config(phydev);
+	ret = at803x_smarteee_config(phydev);
+	if (ret < 0)
+		return ret;
+
+	ret = at803x_clk_out_config(phydev);
+	if (ret < 0)
+		return ret;
+
+	return 0;
 }
 
 static struct phy_driver at803x_driver[] = {
-- 
2.39.2



