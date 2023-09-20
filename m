Delivery-date: Wed, 20 Sep 2023 13:24:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qivJU-004Zf7-7K
	for lore@lore.pengutronix.de; Wed, 20 Sep 2023 13:24:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qivJR-00050c-Hu
	for lore@pengutronix.de; Wed, 20 Sep 2023 13:24:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=q2H0n7ctlv2KYxp49Iu4ZBxlHVTR+zN6R0yVLTNTwts=; b=qmqcjW3uokvP15rKDfOaO9dcrn
	74KPh+7dEdpdAN1101fzFKOWFg8VJPctlmgYxjHdYYfOzoncAi4+OiqirhXr5K5elOxwVh5WyG4df
	/i+vNVQJ/ydOmxLYIm50q7RUrmfIv2WsTfWjt8KceoKEH35XU12mlnMupnunWXINeLnDzH4AtlWyc
	/ed/q6016Lxg2FsZrqbrfa0HyW8ofmJZp6mMlJ7Nzj2K+t5+WFDzSFrLyacoXI9pPLwB2/Px+z6lR
	3QB3o++vr1AFd2fcEaXIqtid9g919FuCYpPOv2D+seclXNdjnMbTzHbdM3qTaThTiwrzZV1frdjiZ
	z3for02A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qivIJ-002rNF-2R;
	Wed, 20 Sep 2023 11:22:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qivIF-002rLZ-0k
	for barebox@lists.infradead.org;
	Wed, 20 Sep 2023 11:22:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qivIE-0004iv-43; Wed, 20 Sep 2023 13:22:54 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qivID-007ftL-MK; Wed, 20 Sep 2023 13:22:53 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qivID-00Bfxi-AK; Wed, 20 Sep 2023 13:22:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 20 Sep 2023 13:22:52 +0200
Message-Id: <20230920112252.2782897-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230920112252.2782897-1-s.hauer@pengutronix.de>
References: <20230920112252.2782897-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230920_042255_573939_0BB33950 
X-CRM114-Status: GOOD (  23.43  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] net: phy: dp83867: Sync with Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This updates the dp83867 phy driver to current Linux-6.5 for easier
future updates.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/dp83867.c | 528 +++++++++++++++++++++++++++-----------
 1 file changed, 377 insertions(+), 151 deletions(-)

diff --git a/drivers/net/phy/dp83867.c b/drivers/net/phy/dp83867.c
index d818594014..5dc5bac125 100644
--- a/drivers/net/phy/dp83867.c
+++ b/drivers/net/phy/dp83867.c
@@ -1,6 +1,5 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * Driver for the Texas Instruments DP83867 PHY
+// SPDX-License-Identifier: GPL-2.0
+/* Driver for the Texas Instruments DP83867 PHY
  *
  * Copyright (C) 2015 Texas Instruments Inc.
  */
@@ -13,23 +12,43 @@
 #include <linux/mdio.h>
 
 #define DP83867_PHY_ID		0x2000a231
-#define DP83867_DEVADDR		MDIO_MMD_VEND2
+#define DP83867_DEVADDR		0x1f
 
 #define MII_DP83867_PHYCTRL	0x10
 #define MII_DP83867_PHYSTS	0x11
 #define MII_DP83867_MICR	0x12
 #define MII_DP83867_ISR		0x13
-#define MII_DP83867_CFG2	0x14
-#define MII_DP83867_BISCR	0x16
-#define DP83867_CTRL		0x1f
+#define DP83867_CFG2		0x14
+#define DP83867_LEDCR1		0x18
+#define DP83867_LEDCR2		0x19
 #define DP83867_CFG3		0x1e
+#define DP83867_CTRL		0x1f
 
 /* Extended Registers */
+#define DP83867_FLD_THR_CFG	0x002e
 #define DP83867_CFG4		0x0031
+#define DP83867_CFG4_SGMII_ANEG_MASK (BIT(5) | BIT(6))
+#define DP83867_CFG4_SGMII_ANEG_TIMER_11MS   (3 << 5)
+#define DP83867_CFG4_SGMII_ANEG_TIMER_800US  (2 << 5)
+#define DP83867_CFG4_SGMII_ANEG_TIMER_2US    (1 << 5)
+#define DP83867_CFG4_SGMII_ANEG_TIMER_16MS   (0 << 5)
+
 #define DP83867_RGMIICTL	0x0032
 #define DP83867_STRAP_STS1	0x006E
+#define DP83867_STRAP_STS2	0x006f
 #define DP83867_RGMIIDCTL	0x0086
+#define DP83867_DSP_FFE_CFG	0x012c
+#define DP83867_RXFCFG		0x0134
+#define DP83867_RXFPMD1	0x0136
+#define DP83867_RXFPMD2	0x0137
+#define DP83867_RXFPMD3	0x0138
+#define DP83867_RXFSOP1	0x0139
+#define DP83867_RXFSOP2	0x013A
+#define DP83867_RXFSOP3	0x013B
 #define DP83867_IO_MUX_CFG	0x0170
+#define DP83867_SGMIICTL	0x00D3
+#define DP83867_10M_SGMII_CFG   0x016F
+#define DP83867_10M_SGMII_RATE_ADAPT_MASK BIT(7)
 
 #define DP83867_SW_RESET	BIT(15)
 #define DP83867_SW_RESTART	BIT(14)
@@ -52,56 +71,86 @@
 #define DP83867_RGMII_TX_CLK_DELAY_EN		BIT(1)
 #define DP83867_RGMII_RX_CLK_DELAY_EN		BIT(0)
 
+/* SGMIICTL bits */
+#define DP83867_SGMII_TYPE		BIT(14)
+
+/* RXFCFG bits*/
+#define DP83867_WOL_MAGIC_EN		BIT(0)
+#define DP83867_WOL_BCAST_EN		BIT(2)
+#define DP83867_WOL_UCAST_EN		BIT(4)
+#define DP83867_WOL_SEC_EN		BIT(5)
+#define DP83867_WOL_ENH_MAC		BIT(7)
+
 /* STRAP_STS1 bits */
 #define DP83867_STRAP_STS1_RESERVED		BIT(11)
 
+/* STRAP_STS2 bits */
+#define DP83867_STRAP_STS2_CLK_SKEW_TX_MASK	GENMASK(6, 4)
+#define DP83867_STRAP_STS2_CLK_SKEW_TX_SHIFT	4
+#define DP83867_STRAP_STS2_CLK_SKEW_RX_MASK	GENMASK(2, 0)
+#define DP83867_STRAP_STS2_CLK_SKEW_RX_SHIFT	0
+#define DP83867_STRAP_STS2_CLK_SKEW_NONE	BIT(2)
+#define DP83867_STRAP_STS2_STRAP_FLD		BIT(10)
+
 /* PHY CTRL bits */
-#define DP83867_PHYCR_FIFO_DEPTH_SHIFT		14
-#define DP83867_PHYCR_FIFO_DEPTH_MASK		(3 << 14)
-#define DP83867_MDI_CROSSOVER			5
-#define DP83867_MDI_CROSSOVER_AUTO		0b10
-#define DP83867_MDI_CROSSOVER_MDIX		0b01
-#define DP83867_PHYCTRL_SGMIIEN			0x0800
-#define DP83867_PHYCTRL_RXFIFO_SHIFT		12
-#define DP83867_PHYCTRL_TXFIFO_SHIFT		14
+#define DP83867_PHYCR_TX_FIFO_DEPTH_SHIFT	14
+#define DP83867_PHYCR_RX_FIFO_DEPTH_SHIFT	12
+#define DP83867_PHYCR_FIFO_DEPTH_MAX		0x03
+#define DP83867_PHYCR_TX_FIFO_DEPTH_MASK	GENMASK(15, 14)
+#define DP83867_PHYCR_RX_FIFO_DEPTH_MASK	GENMASK(13, 12)
 #define DP83867_PHYCR_RESERVED_MASK		BIT(11)
-
-/* PHY STS bits */
-#define DP83867_PHYSTS_SPEED_1000		BIT(15)
-#define DP83867_PHYSTS_SPEED_100		BIT(14)
-#define DP83867_PHYSTS_DUPLEX_FULL		BIT(13)
+#define DP83867_PHYCR_FORCE_LINK_GOOD		BIT(10)
 
 /* RGMIIDCTL bits */
+#define DP83867_RGMII_TX_CLK_DELAY_MAX		0xf
 #define DP83867_RGMII_TX_CLK_DELAY_SHIFT	4
-
-/* CFG2 bits */
-#define DP83867_DOWNSHIFT_EN			(BIT(8) | BIT(9))
-#define DP83867_DOWNSHIFT_ATTEMPT_MASK		(BIT(10) | BIT(11))
-#define DP83867_DOWNSHIFT_1_COUNT_VAL		0
-#define DP83867_DOWNSHIFT_2_COUNT_VAL		1
-#define DP83867_DOWNSHIFT_4_COUNT_VAL		2
-#define DP83867_DOWNSHIFT_8_COUNT_VAL		3
-
-/* CFG4 bits */
-#define DP83867_CFG4_SGMII_AUTONEG_TIMER_MASK	0x60
-#define DP83867_CFG4_SGMII_AUTONEG_TIMER_16MS	0x00
-#define DP83867_CFG4_SGMII_AUTONEG_TIMER_2US	0x20
-#define DP83867_CFG4_SGMII_AUTONEG_TIMER_800US	0x40
-#define DP83867_CFG4_SGMII_AUTONEG_TIMER_11MS	0x60
-#define DP83867_CFG4_RESVDBIT7			BIT(7)
-#define DP83867_CFG4_RESVDBIT8			BIT(8)
+#define DP83867_RGMII_TX_CLK_DELAY_INV	(DP83867_RGMII_TX_CLK_DELAY_MAX + 1)
+#define DP83867_RGMII_RX_CLK_DELAY_MAX		0xf
+#define DP83867_RGMII_RX_CLK_DELAY_SHIFT	0
+#define DP83867_RGMII_RX_CLK_DELAY_INV	(DP83867_RGMII_RX_CLK_DELAY_MAX + 1)
 
 /* IO_MUX_CFG bits */
-#define DP83867_IO_MUX_CFG_IO_IMPEDANCE_CTRL	0x1f
-
+#define DP83867_IO_MUX_CFG_IO_IMPEDANCE_MASK	0x1f
 #define DP83867_IO_MUX_CFG_IO_IMPEDANCE_MAX	0x0
 #define DP83867_IO_MUX_CFG_IO_IMPEDANCE_MIN	0x1f
 #define DP83867_IO_MUX_CFG_CLK_O_DISABLE	BIT(6)
 #define DP83867_IO_MUX_CFG_CLK_O_SEL_MASK	(0x1f << 8)
 #define DP83867_IO_MUX_CFG_CLK_O_SEL_SHIFT	8
 
+/* PHY STS bits */
+#define DP83867_PHYSTS_1000			BIT(15)
+#define DP83867_PHYSTS_100			BIT(14)
+#define DP83867_PHYSTS_DUPLEX			BIT(13)
+#define DP83867_PHYSTS_LINK			BIT(10)
+
+/* CFG2 bits */
+#define DP83867_DOWNSHIFT_EN		(BIT(8) | BIT(9))
+#define DP83867_DOWNSHIFT_ATTEMPT_MASK	(BIT(10) | BIT(11))
+#define DP83867_DOWNSHIFT_1_COUNT_VAL	0
+#define DP83867_DOWNSHIFT_2_COUNT_VAL	1
+#define DP83867_DOWNSHIFT_4_COUNT_VAL	2
+#define DP83867_DOWNSHIFT_8_COUNT_VAL	3
+#define DP83867_DOWNSHIFT_1_COUNT	1
+#define DP83867_DOWNSHIFT_2_COUNT	2
+#define DP83867_DOWNSHIFT_4_COUNT	4
+#define DP83867_DOWNSHIFT_8_COUNT	8
+#define DP83867_SGMII_AUTONEG_EN	BIT(7)
+
+/* CFG3 bits */
+#define DP83867_CFG3_INT_OE			BIT(7)
+#define DP83867_CFG3_ROBUST_AUTO_MDIX		BIT(9)
+
 /* CFG4 bits */
-#define DP83867_CFG4_PORT_MIRROR_EN		BIT(0)
+#define DP83867_CFG4_PORT_MIRROR_EN              BIT(0)
+
+/* FLD_THR_CFG */
+#define DP83867_FLD_THR_CFG_ENERGY_LOST_THR_MASK	0x7
+
+#define DP83867_LED_COUNT	4
+
+/* LED_DRV bits */
+#define DP83867_LED_DRV_EN(x)	BIT((x) * 4)
+#define DP83867_LED_DRV_VAL(x)	BIT((x) * 4 + 1)
 
 enum {
 	DP83867_PORT_MIRROING_KEEP,
@@ -110,41 +159,41 @@ enum {
 };
 
 struct dp83867_private {
-	int rx_id_delay;
-	int tx_id_delay;
-	int fifo_depth;
+	u32 rx_id_delay;
+	u32 tx_id_delay;
+	u32 tx_fifo_depth;
+	u32 rx_fifo_depth;
 	int io_impedance;
 	int port_mirroring;
 	bool rxctrl_strap_quirk;
 	bool set_clk_output;
 	u32 clk_output_sel;
+	bool sgmii_ref_clk_en;
 };
 
 static int dp83867_read_status(struct phy_device *phydev)
 {
-	int status;
+	int status = phy_read(phydev, MII_DP83867_PHYSTS);
 	int ret;
 
-	ret = genphy_update_link(phydev);
+	ret = genphy_read_status(phydev);
 	if (ret)
 		return ret;
 
-	status = phy_read(phydev, MII_DP83867_PHYSTS);
 	if (status < 0)
 		return status;
 
-	phydev->speed = SPEED_10;
-	phydev->duplex = DUPLEX_HALF;
+	if (status & DP83867_PHYSTS_DUPLEX)
+		phydev->duplex = DUPLEX_FULL;
+	else
+		phydev->duplex = DUPLEX_HALF;
 
-	if (status & DP83867_PHYSTS_SPEED_1000)
+	if (status & DP83867_PHYSTS_1000)
 		phydev->speed = SPEED_1000;
-	else if (status & DP83867_PHYSTS_SPEED_100)
+	else if (status & DP83867_PHYSTS_100)
 		phydev->speed = SPEED_100;
-
-	if (status & DP83867_PHYSTS_DUPLEX_FULL)
-		phydev->duplex = DUPLEX_FULL;
-
-	phydev->pause = phydev->asym_pause = 0;
+	else
+		phydev->speed = SPEED_10;
 
 	return 0;
 }
@@ -152,16 +201,70 @@ static int dp83867_read_status(struct phy_device *phydev)
 static int dp83867_config_port_mirroring(struct phy_device *phydev)
 {
 	struct dp83867_private *dp83867 = phydev->priv;
-	u16 val;
-
-	val = phy_read_mmd(phydev, DP83867_DEVADDR, DP83867_CFG4);
 
 	if (dp83867->port_mirroring == DP83867_PORT_MIRROING_EN)
-		val |= DP83867_CFG4_PORT_MIRROR_EN;
+		phy_set_bits_mmd(phydev, DP83867_DEVADDR, DP83867_CFG4,
+				 DP83867_CFG4_PORT_MIRROR_EN);
 	else
-		val &= ~DP83867_CFG4_PORT_MIRROR_EN;
+		phy_clear_bits_mmd(phydev, DP83867_DEVADDR, DP83867_CFG4,
+				   DP83867_CFG4_PORT_MIRROR_EN);
+	return 0;
+}
 
-	phy_write_mmd(phydev, DP83867_DEVADDR, DP83867_CFG4, val);
+static int dp83867_verify_rgmii_cfg(struct phy_device *phydev)
+{
+	struct dp83867_private *dp83867 = phydev->priv;
+
+	/* Existing behavior was to use default pin strapping delay in rgmii
+	 * mode, but rgmii should have meant no delay.  Warn existing users.
+	 */
+	if (phydev->interface == PHY_INTERFACE_MODE_RGMII) {
+		const u16 val = phy_read_mmd(phydev, DP83867_DEVADDR,
+					     DP83867_STRAP_STS2);
+		const u16 txskew = (val & DP83867_STRAP_STS2_CLK_SKEW_TX_MASK) >>
+				   DP83867_STRAP_STS2_CLK_SKEW_TX_SHIFT;
+		const u16 rxskew = (val & DP83867_STRAP_STS2_CLK_SKEW_RX_MASK) >>
+				   DP83867_STRAP_STS2_CLK_SKEW_RX_SHIFT;
+
+		if (txskew != DP83867_STRAP_STS2_CLK_SKEW_NONE ||
+		    rxskew != DP83867_STRAP_STS2_CLK_SKEW_NONE)
+			phydev_warn(phydev,
+				    "PHY has delays via pin strapping, but phy-mode = 'rgmii'\n"
+				    "Should be 'rgmii-id' to use internal delays txskew:%x rxskew:%x\n",
+				    txskew, rxskew);
+	}
+
+	/* RX delay *must* be specified if internal delay of RX is used. */
+	if ((phydev->interface == PHY_INTERFACE_MODE_RGMII_ID ||
+	     phydev->interface == PHY_INTERFACE_MODE_RGMII_RXID) &&
+	     dp83867->rx_id_delay == DP83867_RGMII_RX_CLK_DELAY_INV) {
+		phydev_err(phydev, "ti,rx-internal-delay must be specified\n");
+		return -EINVAL;
+	}
+
+	/* TX delay *must* be specified if internal delay of TX is used. */
+	if ((phydev->interface == PHY_INTERFACE_MODE_RGMII_ID ||
+	     phydev->interface == PHY_INTERFACE_MODE_RGMII_TXID) &&
+	     dp83867->tx_id_delay == DP83867_RGMII_TX_CLK_DELAY_INV) {
+		phydev_err(phydev, "ti,tx-internal-delay must be specified\n");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int dp83867_of_init_io_impedance(struct phy_device *phydev)
+{
+	struct dp83867_private *dp83867 = phydev->priv;
+	struct device *dev = &phydev->dev;
+	struct device_node *of_node = dev->of_node;
+
+	if (of_property_read_bool(of_node, "ti,max-output-impedance"))
+		dp83867->io_impedance = DP83867_IO_MUX_CFG_IO_IMPEDANCE_MAX;
+	else if (of_property_read_bool(of_node, "ti,min-output-impedance"))
+		dp83867->io_impedance = DP83867_IO_MUX_CFG_IO_IMPEDANCE_MIN;
+	else
+		dp83867->io_impedance = -1; /* leave at default */
 
 	return 0;
 }
@@ -176,8 +279,6 @@ static int dp83867_of_init(struct phy_device *phydev)
 	if (!of_node)
 		return -ENODEV;
 
-	dp83867->io_impedance = -EINVAL;
-
 	/* Optional configuration */
 	ret = of_property_read_u32(of_node, "ti,clk-output-sel",
 				   &dp83867->clk_output_sel);
@@ -189,32 +290,41 @@ static int dp83867_of_init(struct phy_device *phydev)
 		 */
 		if (dp83867->clk_output_sel > DP83867_CLK_O_SEL_REF_CLK &&
 		    dp83867->clk_output_sel != DP83867_CLK_O_SEL_OFF) {
-			dev_err(&phydev->dev, "ti,clk-output-sel value %u out of range\n",
+			phydev_err(phydev, "ti,clk-output-sel value %u out of range\n",
 				   dp83867->clk_output_sel);
 			return -EINVAL;
 		}
 	}
 
-	if (of_property_read_bool(of_node, "ti,max-output-impedance"))
-		dp83867->io_impedance = DP83867_IO_MUX_CFG_IO_IMPEDANCE_MAX;
-	else if (of_property_read_bool(of_node, "ti,min-output-impedance"))
-		dp83867->io_impedance = DP83867_IO_MUX_CFG_IO_IMPEDANCE_MIN;
+	ret = dp83867_of_init_io_impedance(phydev);
+	if (ret)
+		return ret;
+
+	dp83867->rxctrl_strap_quirk = of_property_read_bool(of_node,
+							    "ti,dp83867-rxctrl-strap-quirk");
 
-	dp83867->rxctrl_strap_quirk =
-			of_property_read_bool(of_node,
-					      "ti,dp83867-rxctrl-strap-quirk");
+	dp83867->sgmii_ref_clk_en = of_property_read_bool(of_node,
+							  "ti,sgmii-ref-clock-output-enable");
 
+	dp83867->rx_id_delay = DP83867_RGMII_RX_CLK_DELAY_INV;
 	ret = of_property_read_u32(of_node, "ti,rx-internal-delay",
 				   &dp83867->rx_id_delay);
-	if (ret && (phydev->interface == PHY_INTERFACE_MODE_RGMII_ID ||
-		    phydev->interface == PHY_INTERFACE_MODE_RGMII_RXID))
-		return ret;
+	if (!ret && dp83867->rx_id_delay > DP83867_RGMII_RX_CLK_DELAY_MAX) {
+		phydev_err(phydev,
+			   "ti,rx-internal-delay value of %u out of range\n",
+			   dp83867->rx_id_delay);
+		return -EINVAL;
+	}
 
+	dp83867->tx_id_delay = DP83867_RGMII_TX_CLK_DELAY_INV;
 	ret = of_property_read_u32(of_node, "ti,tx-internal-delay",
 				   &dp83867->tx_id_delay);
-	if (ret && (phydev->interface == PHY_INTERFACE_MODE_RGMII_ID ||
-		    phydev->interface == PHY_INTERFACE_MODE_RGMII_TXID))
-		return ret;
+	if (!ret && dp83867->tx_id_delay > DP83867_RGMII_TX_CLK_DELAY_MAX) {
+		phydev_err(phydev,
+			   "ti,tx-internal-delay value of %u out of range\n",
+			   dp83867->tx_id_delay);
+		return -EINVAL;
+	}
 
 	if (of_property_read_bool(of_node, "enet-phy-lane-swap"))
 		dp83867->port_mirroring = DP83867_PORT_MIRROING_EN;
@@ -222,104 +332,214 @@ static int dp83867_of_init(struct phy_device *phydev)
 	if (of_property_read_bool(of_node, "enet-phy-lane-no-swap"))
 		dp83867->port_mirroring = DP83867_PORT_MIRROING_DIS;
 
-	return of_property_read_u32(of_node, "ti,fifo-depth",
-				    &dp83867->fifo_depth);
+	ret = of_property_read_u32(of_node, "ti,fifo-depth",
+				   &dp83867->tx_fifo_depth);
+	if (ret) {
+		ret = of_property_read_u32(of_node, "tx-fifo-depth",
+					   &dp83867->tx_fifo_depth);
+		if (ret)
+			dp83867->tx_fifo_depth =
+					DP83867_PHYCR_FIFO_DEPTH_4_B_NIB;
+	}
+
+	if (dp83867->tx_fifo_depth > DP83867_PHYCR_FIFO_DEPTH_MAX) {
+		phydev_err(phydev, "tx-fifo-depth value %u out of range\n",
+			   dp83867->tx_fifo_depth);
+		return -EINVAL;
+	}
+
+	ret = of_property_read_u32(of_node, "rx-fifo-depth",
+				   &dp83867->rx_fifo_depth);
+	if (ret)
+		dp83867->rx_fifo_depth = DP83867_PHYCR_FIFO_DEPTH_4_B_NIB;
+
+	if (dp83867->rx_fifo_depth > DP83867_PHYCR_FIFO_DEPTH_MAX) {
+		phydev_err(phydev, "rx-fifo-depth value %u out of range\n",
+			   dp83867->rx_fifo_depth);
+		return -EINVAL;
+	}
+
+	return 0;
 }
 
-static inline bool phy_interface_is_sgmii(struct phy_device *phydev)
+static int dp83867_probe(struct phy_device *phydev)
 {
-	return phydev->interface == PHY_INTERFACE_MODE_SGMII ||
-	       phydev->interface == PHY_INTERFACE_MODE_QSGMII;
+	struct dp83867_private *dp83867;
+
+	dp83867 = xzalloc(sizeof(*dp83867));
+
+	phydev->priv = dp83867;
+
+	return dp83867_of_init(phydev);
 }
 
 static int dp83867_config_init(struct phy_device *phydev)
 {
-	struct dp83867_private *dp83867;
-	int ret;
-	u16 val, delay;
+	struct dp83867_private *dp83867 = phydev->priv;
+	int ret, val, bs;
+	u16 delay;
+
+	/* Force speed optimization for the PHY even if it strapped */
+	ret = phy_modify(phydev, DP83867_CFG2, DP83867_DOWNSHIFT_EN,
+			 DP83867_DOWNSHIFT_EN);
+	if (ret)
+		return ret;
 
-	if (!phydev->priv) {
-		dp83867 = kzalloc(sizeof(*dp83867), GFP_KERNEL);
-		if (!dp83867)
-			return -ENOMEM;
+	ret = dp83867_verify_rgmii_cfg(phydev);
+	if (ret)
+		return ret;
 
-		phydev->priv = dp83867;
-		ret = dp83867_of_init(phydev);
+	/* RX_DV/RX_CTRL strapped in mode 1 or mode 2 workaround */
+	if (dp83867->rxctrl_strap_quirk)
+		phy_clear_bits_mmd(phydev, DP83867_DEVADDR, DP83867_CFG4,
+				   BIT(7));
+
+	bs = phy_read_mmd(phydev, DP83867_DEVADDR, DP83867_STRAP_STS2);
+	if (bs & DP83867_STRAP_STS2_STRAP_FLD) {
+		/* When using strap to enable FLD, the ENERGY_LOST_FLD_THR will
+		 * be set to 0x2. This may causes the PHY link to be unstable -
+		 * the default value 0x1 need to be restored.
+		 */
+		ret = phy_modify_mmd(phydev, DP83867_DEVADDR,
+				     DP83867_FLD_THR_CFG,
+				     DP83867_FLD_THR_CFG_ENERGY_LOST_THR_MASK,
+				     0x1);
 		if (ret)
 			return ret;
-	} else {
-		dp83867 = phydev->priv;
 	}
 
-	/* Restart the PHY.  */
-	val = phy_read(phydev, DP83867_CTRL);
-	phy_write(phydev, DP83867_CTRL, val | DP83867_SW_RESTART);
+	if (phy_interface_is_rgmii(phydev) ||
+	    phydev->interface == PHY_INTERFACE_MODE_SGMII) {
+		val = phy_read(phydev, MII_DP83867_PHYCTRL);
+		if (val < 0)
+			return val;
+
+		val &= ~DP83867_PHYCR_TX_FIFO_DEPTH_MASK;
+		val |= (dp83867->tx_fifo_depth <<
+			DP83867_PHYCR_TX_FIFO_DEPTH_SHIFT);
 
-	if (dp83867->rxctrl_strap_quirk) {
-		val = phy_read_mmd(phydev, DP83867_DEVADDR, DP83867_CFG4);
-		val &= ~BIT(7);
-		phy_write_mmd(phydev, DP83867_DEVADDR, DP83867_CFG4, val);
+		if (phydev->interface == PHY_INTERFACE_MODE_SGMII) {
+			val &= ~DP83867_PHYCR_RX_FIFO_DEPTH_MASK;
+			val |= (dp83867->rx_fifo_depth <<
+				DP83867_PHYCR_RX_FIFO_DEPTH_SHIFT);
+		}
+
+		ret = phy_write(phydev, MII_DP83867_PHYCTRL, val);
+		if (ret)
+			return ret;
 	}
 
 	if (phy_interface_is_rgmii(phydev)) {
-		val = DP83867_MDI_CROSSOVER_AUTO << DP83867_MDI_CROSSOVER |
-		      dp83867->fifo_depth << DP83867_PHYCR_FIFO_DEPTH_SHIFT;
+		val = phy_read(phydev, MII_DP83867_PHYCTRL);
+		if (val < 0)
+			return val;
+
+		/* The code below checks if "port mirroring" N/A MODE4 has been
+		 * enabled during power on bootstrap.
+		 *
+		 * Such N/A mode enabled by mistake can put PHY IC in some
+		 * internal testing mode and disable RGMII transmission.
+		 *
+		 * In this particular case one needs to check STRAP_STS1
+		 * register's bit 11 (marked as RESERVED).
+		 */
+
+		bs = phy_read_mmd(phydev, DP83867_DEVADDR, DP83867_STRAP_STS1);
+		if (bs & DP83867_STRAP_STS1_RESERVED)
+			val &= ~DP83867_PHYCR_RESERVED_MASK;
+
 		ret = phy_write(phydev, MII_DP83867_PHYCTRL, val);
 		if (ret)
 			return ret;
 
+		/* If rgmii mode with no internal delay is selected, we do NOT use
+		 * aligned mode as one might expect.  Instead we use the PHY's default
+		 * based on pin strapping.  And the "mode 0" default is to *use*
+		 * internal delay with a value of 7 (2.00 ns).
+		 *
+		 * Set up RGMII delays
+		 */
 		val = phy_read_mmd(phydev, DP83867_DEVADDR, DP83867_RGMIICTL);
 
-		switch (phydev->interface) {
-		case PHY_INTERFACE_MODE_RGMII_ID:
-			val |= DP83867_RGMII_TX_CLK_DELAY_EN |
-			       DP83867_RGMII_RX_CLK_DELAY_EN;
-			break;
-		case PHY_INTERFACE_MODE_RGMII_TXID:
+		val &= ~(DP83867_RGMII_TX_CLK_DELAY_EN | DP83867_RGMII_RX_CLK_DELAY_EN);
+		if (phydev->interface == PHY_INTERFACE_MODE_RGMII_ID)
+			val |= (DP83867_RGMII_TX_CLK_DELAY_EN | DP83867_RGMII_RX_CLK_DELAY_EN);
+
+		if (phydev->interface == PHY_INTERFACE_MODE_RGMII_TXID)
 			val |= DP83867_RGMII_TX_CLK_DELAY_EN;
-			break;
-		case PHY_INTERFACE_MODE_RGMII_RXID:
+
+		if (phydev->interface == PHY_INTERFACE_MODE_RGMII_RXID)
 			val |= DP83867_RGMII_RX_CLK_DELAY_EN;
-			break;
-		default:
-			break;
-		}
-		phy_write_mmd(phydev, DP83867_DEVADDR, DP83867_RGMIICTL, val);
 
-		delay = (dp83867->rx_id_delay |
-			(dp83867->tx_id_delay << DP83867_RGMII_TX_CLK_DELAY_SHIFT));
+		phy_write_mmd(phydev, DP83867_DEVADDR, DP83867_RGMIICTL, val);
 
-		phy_write_mmd(phydev, DP83867_DEVADDR,
-			      DP83867_RGMIIDCTL, delay);
+		delay = 0;
+		if (dp83867->rx_id_delay != DP83867_RGMII_RX_CLK_DELAY_INV)
+			delay |= dp83867->rx_id_delay;
+		if (dp83867->tx_id_delay != DP83867_RGMII_TX_CLK_DELAY_INV)
+			delay |= dp83867->tx_id_delay <<
+				 DP83867_RGMII_TX_CLK_DELAY_SHIFT;
 
-		if (dp83867->io_impedance >= 0) {
-			val = phy_read_mmd(phydev, DP83867_DEVADDR,
-					   DP83867_IO_MUX_CFG);
-			val &= ~DP83867_IO_MUX_CFG_IO_IMPEDANCE_CTRL;
-			val |= (dp83867->io_impedance &
-				DP83867_IO_MUX_CFG_IO_IMPEDANCE_CTRL);
+		phy_write_mmd(phydev, DP83867_DEVADDR, DP83867_RGMIIDCTL,
+			      delay);
+	}
 
-			phy_write_mmd(phydev, DP83867_DEVADDR,
-				      DP83867_IO_MUX_CFG, val);
-		}
-	} else if (phy_interface_is_sgmii(phydev)) {
-		phy_write(phydev, MII_BMCR,
-			  BMCR_ANENABLE | BMCR_FULLDPLX | BMCR_SPEED1000);
+	/* If specified, set io impedance */
+	if (dp83867->io_impedance >= 0)
+		phy_modify_mmd(phydev, DP83867_DEVADDR, DP83867_IO_MUX_CFG,
+			       DP83867_IO_MUX_CFG_IO_IMPEDANCE_MASK,
+			       dp83867->io_impedance);
+
+	if (phydev->interface == PHY_INTERFACE_MODE_SGMII) {
+		/* For support SPEED_10 in SGMII mode
+		 * DP83867_10M_SGMII_RATE_ADAPT bit
+		 * has to be cleared by software. That
+		 * does not affect SPEED_100 and
+		 * SPEED_1000.
+		 */
+		ret = phy_modify_mmd(phydev, DP83867_DEVADDR,
+				     DP83867_10M_SGMII_CFG,
+				     DP83867_10M_SGMII_RATE_ADAPT_MASK,
+				     0);
+		if (ret)
+			return ret;
 
-		phy_write_mmd(phydev, DP83867_DEVADDR, DP83867_RGMIICTL, 0x0);
+		/* After reset SGMII Autoneg timer is set to 2us (bits 6 and 5
+		 * are 01). That is not enough to finalize autoneg on some
+		 * devices. Increase this timer duration to maximum 16ms.
+		 */
+		ret = phy_modify_mmd(phydev, DP83867_DEVADDR,
+				     DP83867_CFG4,
+				     DP83867_CFG4_SGMII_ANEG_MASK,
+				     DP83867_CFG4_SGMII_ANEG_TIMER_16MS);
 
-		val = DP83867_PHYCTRL_SGMIIEN |
-		      DP83867_MDI_CROSSOVER_MDIX << DP83867_MDI_CROSSOVER |
-		      dp83867->fifo_depth << DP83867_PHYCTRL_RXFIFO_SHIFT |
-		      dp83867->fifo_depth << DP83867_PHYCTRL_TXFIFO_SHIFT;
+		if (ret)
+			return ret;
 
-		phy_write(phydev, MII_DP83867_PHYCTRL, val);
-		phy_write(phydev, MII_DP83867_BISCR, 0x0);
+		val = phy_read_mmd(phydev, DP83867_DEVADDR, DP83867_SGMIICTL);
+		/* SGMII type is set to 4-wire mode by default.
+		 * If we place appropriate property in dts (see above)
+		 * switch on 6-wire mode.
+		 */
+		if (dp83867->sgmii_ref_clk_en)
+			val |= DP83867_SGMII_TYPE;
+		else
+			val &= ~DP83867_SGMII_TYPE;
+		phy_write_mmd(phydev, DP83867_DEVADDR, DP83867_SGMIICTL, val);
+
+		/* This is a SW workaround for link instability if RX_CTRL is
+		 * not strapped to mode 3 or 4 in HW. This is required for SGMII
+		 * in addition to clearing bit 7, handled above.
+		 */
+		if (dp83867->rxctrl_strap_quirk)
+			phy_set_bits_mmd(phydev, DP83867_DEVADDR, DP83867_CFG4,
+					 BIT(8));
 	}
 
-	val = phy_read(phydev, MII_DP83867_CFG2);
-	val |= DP83867_DOWNSHIFT_EN;
-	phy_write(phydev, MII_DP83867_CFG2, val);
+	val = phy_read(phydev, DP83867_CFG3);
+
+	val |= DP83867_CFG3_ROBUST_AUTO_MDIX;
+	phy_write(phydev, DP83867_CFG3, val);
 
 	if (dp83867->port_mirroring != DP83867_PORT_MIRROING_KEEP)
 		dp83867_config_port_mirroring(phydev);
@@ -333,11 +553,11 @@ static int dp83867_config_init(struct phy_device *phydev)
 		} else {
 			mask |= DP83867_IO_MUX_CFG_CLK_O_SEL_MASK;
 			val = dp83867->clk_output_sel <<
-				DP83867_IO_MUX_CFG_CLK_O_SEL_SHIFT;
+			      DP83867_IO_MUX_CFG_CLK_O_SEL_SHIFT;
 		}
 
-		phy_modify_mmd(phydev, DP83867_DEVADDR,
-			       DP83867_IO_MUX_CFG, mask, val);
+		phy_modify_mmd(phydev, DP83867_DEVADDR, DP83867_IO_MUX_CFG,
+			       mask, val);
 	}
 
 	return 0;
@@ -345,13 +565,19 @@ static int dp83867_config_init(struct phy_device *phydev)
 
 static struct phy_driver dp83867_driver[] = {
 	{
-		.phy_id = DP83867_PHY_ID,
-		.phy_id_mask = 0xfffffff0,
-		.drv.name = "TI DP83867",
-		.features = PHY_GBIT_FEATURES,
-		.config_init = dp83867_config_init,
-		.read_status = dp83867_read_status,
+		.phy_id		= DP83867_PHY_ID,
+		.phy_id_mask	= 0xfffffff0,
+		.drv.name	= "TI DP83867",
+		.features	= PHY_GBIT_FEATURES,
+
+		.probe          = dp83867_probe,
+		.config_init	= dp83867_config_init,
+
+		.read_status	= dp83867_read_status,
 	},
 };
-
 device_phy_drivers(dp83867_driver);
+
+MODULE_DESCRIPTION("Texas Instruments DP83867 PHY driver");
+MODULE_AUTHOR("Dan Murphy <dmurphy@ti.com");
+MODULE_LICENSE("GPL v2");
-- 
2.39.2



