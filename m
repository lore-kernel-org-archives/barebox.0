Delivery-date: Mon, 11 Mar 2024 17:12:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjiG4-001FQz-1b
	for lore@lore.pengutronix.de;
	Mon, 11 Mar 2024 17:12:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjiG2-0003KO-WF
	for lore@pengutronix.de; Mon, 11 Mar 2024 17:12:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zU0m2+pHZVEU78O6oO/Y2M04fsbgo8xXCXGeTe2tvZ8=; b=u1jp4kPTovt2bybkOgCLvivxKh
	I9+ZL2+BkkDUdKlPILxxXv2xeYoMmEtomBrBAub/J76my8k8NScgqbQDxqQiZvH2MoZWKhjmBwzJs
	myuTSDRRKf7RKVrg2eT7OympqAnDYrXz933tOYbyhQYaHRobzfSs3SuHJTdRRP/VWw7bLPsnJL8HM
	CHtCaTKwoOvM/rQUz5AbWtswqcjFDgqLG1nyFWMbWMlHmqKM9d+NsJVNLvmQjVatP+A5/4jexFz9E
	2DtRznf4FXgl8IjRjOPs4IlgwVwHSYROLkhqG3u4VoHecoBTx8os1zZ3GP5+VXxwx4mcvYE881Axp
	1XGZrk0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjiFS-00000002EbC-231u;
	Mon, 11 Mar 2024 16:11:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjiFK-00000002EWL-48FS
	for barebox@lists.infradead.org;
	Mon, 11 Mar 2024 16:11:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rjiFI-0002QU-NY; Mon, 11 Mar 2024 17:11:24 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rjiFI-005kb2-9e; Mon, 11 Mar 2024 17:11:24 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rjiFH-00EPUY-2H;
	Mon, 11 Mar 2024 17:11:24 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Mon, 11 Mar 2024 17:11:20 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240311-karo-imx8mp-som-board-upstreaming-v2-3-6ecda693adb2@pengutronix.de>
References: <20240311-karo-imx8mp-som-board-upstreaming-v2-0-6ecda693adb2@pengutronix.de>
In-Reply-To: <20240311-karo-imx8mp-som-board-upstreaming-v2-0-6ecda693adb2@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240311_091127_245645_C823F820 
X-CRM114-Status: GOOD (  18.88  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 3/6] net: phy: micrel: add support for ksz9131 phy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Marc Kleine-Budde <mkl@pengutronix.de>

This imports the micrel KSZ9131 gigabit phy driver from Linux, commit
0316c7e66bbd16cf2d01a4e2f5afa6afb01278f2.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 drivers/net/phy/micrel.c | 188 +++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 188 insertions(+)

diff --git a/drivers/net/phy/micrel.c b/drivers/net/phy/micrel.c
index 36cc857a2c..a203669353 100644
--- a/drivers/net/phy/micrel.c
+++ b/drivers/net/phy/micrel.c
@@ -546,6 +546,186 @@ static int ksz9031_config_init(struct phy_device *phydev)
 	return ret;
 }
 
+#define KSZ9131_SKEW_5BIT_MAX	2400
+#define KSZ9131_SKEW_4BIT_MAX	800
+#define KSZ9131_OFFSET		700
+#define KSZ9131_STEP		100
+
+static int ksz9131_of_load_skew_values(struct phy_device *phydev,
+				       const struct device_node *of_node,
+				       u16 reg, size_t field_sz,
+				       const char *field[], u8 numfields)
+{
+	int val[4] = {-(1 + KSZ9131_OFFSET), -(2 + KSZ9131_OFFSET),
+		      -(3 + KSZ9131_OFFSET), -(4 + KSZ9131_OFFSET)};
+	int skewval, skewmax = 0;
+	int matches = 0;
+	u16 maxval;
+	u16 newval;
+	u16 mask;
+	int i;
+
+	/* psec properties in dts should mean x pico seconds */
+	if (field_sz == 5)
+		skewmax = KSZ9131_SKEW_5BIT_MAX;
+	else
+		skewmax = KSZ9131_SKEW_4BIT_MAX;
+
+	for (i = 0; i < numfields; i++)
+		if (!of_property_read_s32(of_node, field[i], &skewval)) {
+			if (skewval < -KSZ9131_OFFSET)
+				skewval = -KSZ9131_OFFSET;
+			else if (skewval > skewmax)
+				skewval = skewmax;
+
+			val[i] = skewval + KSZ9131_OFFSET;
+			matches++;
+		}
+
+	if (!matches)
+		return 0;
+
+	if (matches < numfields)
+		newval = phy_read_mmd(phydev, 2, reg);
+	else
+		newval = 0;
+
+	maxval = (field_sz == 4) ? 0xf : 0x1f;
+	for (i = 0; i < numfields; i++)
+		if (val[i] != -(i + 1 + KSZ9131_OFFSET)) {
+			mask = 0xffff;
+			mask ^= maxval << (field_sz * i);
+			newval = (newval & mask) |
+				(((val[i] / KSZ9131_STEP) & maxval)
+					<< (field_sz * i));
+		}
+
+	return phy_write_mmd(phydev, 2, reg, newval);
+}
+
+#define KSZ9131RN_MMD_COMMON_CTRL_REG	2
+#define KSZ9131RN_RXC_DLL_CTRL		76
+#define KSZ9131RN_TXC_DLL_CTRL		77
+#define KSZ9131RN_DLL_CTRL_BYPASS	BIT_MASK(12)
+#define KSZ9131RN_DLL_ENABLE_DELAY	0
+#define KSZ9131RN_DLL_DISABLE_DELAY	BIT(12)
+
+static int ksz9131_config_rgmii_delay(struct phy_device *phydev)
+{
+	u16 rxcdll_val, txcdll_val;
+	int ret;
+
+	switch (phydev->interface) {
+	case PHY_INTERFACE_MODE_RGMII:
+		rxcdll_val = KSZ9131RN_DLL_DISABLE_DELAY;
+		txcdll_val = KSZ9131RN_DLL_DISABLE_DELAY;
+		break;
+	case PHY_INTERFACE_MODE_RGMII_ID:
+		rxcdll_val = KSZ9131RN_DLL_ENABLE_DELAY;
+		txcdll_val = KSZ9131RN_DLL_ENABLE_DELAY;
+		break;
+	case PHY_INTERFACE_MODE_RGMII_RXID:
+		rxcdll_val = KSZ9131RN_DLL_ENABLE_DELAY;
+		txcdll_val = KSZ9131RN_DLL_DISABLE_DELAY;
+		break;
+	case PHY_INTERFACE_MODE_RGMII_TXID:
+		rxcdll_val = KSZ9131RN_DLL_DISABLE_DELAY;
+		txcdll_val = KSZ9131RN_DLL_ENABLE_DELAY;
+		break;
+	default:
+		return 0;
+	}
+
+	ret = phy_modify_mmd(phydev, KSZ9131RN_MMD_COMMON_CTRL_REG,
+			     KSZ9131RN_RXC_DLL_CTRL, KSZ9131RN_DLL_CTRL_BYPASS,
+			     rxcdll_val);
+	if (ret < 0)
+		return ret;
+
+	return phy_modify_mmd(phydev, KSZ9131RN_MMD_COMMON_CTRL_REG,
+			      KSZ9131RN_TXC_DLL_CTRL, KSZ9131RN_DLL_CTRL_BYPASS,
+			      txcdll_val);
+}
+
+/* Silicon Errata DS80000693B
+ *
+ * When LEDs are configured in Individual Mode, LED1 is ON in a no-link
+ * condition. Workaround is to set register 0x1e, bit 9, this way LED1 behaves
+ * according to the datasheet (off if there is no link).
+ */
+static int ksz9131_led_errata(struct phy_device *phydev)
+{
+	int reg;
+
+	reg = phy_read_mmd(phydev, 2, 0);
+	if (reg < 0)
+		return reg;
+
+	if (!(reg & BIT(4)))
+		return 0;
+
+	return phy_set_bits(phydev, 0x1e, BIT(9));
+}
+
+static int ksz9131_config_init(struct phy_device *phydev)
+{
+	const struct device *dev = &phydev->dev;
+	const struct device_node *of_node = dev->of_node;
+	static const char *clk_skews[2] = {"rxc-skew-psec", "txc-skew-psec"};
+	static const char *rx_data_skews[4] = {
+		"rxd0-skew-psec", "rxd1-skew-psec",
+		"rxd2-skew-psec", "rxd3-skew-psec"
+	};
+	static const char *tx_data_skews[4] = {
+		"txd0-skew-psec", "txd1-skew-psec",
+		"txd2-skew-psec", "txd3-skew-psec"
+	};
+	static const char *control_skews[2] = {"txen-skew-psec", "rxdv-skew-psec"};
+	int ret;
+
+	if (!of_node && dev->parent->of_node)
+		of_node = dev->parent->of_node;
+
+	if (!of_node)
+		return 0;
+
+	if (phy_interface_is_rgmii(phydev)) {
+		ret = ksz9131_config_rgmii_delay(phydev);
+		if (ret < 0)
+			return ret;
+	}
+
+	ret = ksz9131_of_load_skew_values(phydev, of_node,
+					  MII_KSZ9031RN_CLK_PAD_SKEW, 5,
+					  clk_skews, 2);
+	if (ret < 0)
+		return ret;
+
+	ret = ksz9131_of_load_skew_values(phydev, of_node,
+					  MII_KSZ9031RN_CONTROL_PAD_SKEW, 4,
+					  control_skews, 2);
+	if (ret < 0)
+		return ret;
+
+	ret = ksz9131_of_load_skew_values(phydev, of_node,
+					  MII_KSZ9031RN_RX_DATA_PAD_SKEW, 4,
+					  rx_data_skews, 4);
+	if (ret < 0)
+		return ret;
+
+	ret = ksz9131_of_load_skew_values(phydev, of_node,
+					  MII_KSZ9031RN_TX_DATA_PAD_SKEW, 4,
+					  tx_data_skews, 4);
+	if (ret < 0)
+		return ret;
+
+	ret = ksz9131_led_errata(phydev);
+	if (ret < 0)
+		return ret;
+
+	return 0;
+}
+
 #define KSZ8873MLL_GLOBAL_CONTROL_4	0x06
 #define KSZ8873MLL_GLOBAL_CONTROL_4_DUPLEX	BIT(6)
 #define KSZ8873MLL_GLOBAL_CONTROL_4_SPEED	BIT(4)
@@ -757,6 +937,14 @@ static struct phy_driver ksphy_driver[] = {
 	.config_init	= ksz9031_config_init,
 	.config_aneg	= genphy_config_aneg,
 	.read_status	= ksz9031_read_status,
+}, {
+	.phy_id		= PHY_ID_KSZ9131,
+	.phy_id_mask	= 0x00fffff0,
+	.drv.name	= "Microchip KSZ9131 Gigabit PHY",
+	.features	= (PHY_GBIT_FEATURES | SUPPORTED_Pause),
+	.config_init	= ksz9131_config_init,
+	.config_aneg	= genphy_config_aneg,
+	.read_status	= genphy_read_status,
 }, {
 	.phy_id		= PHY_ID_KSZ8873MLL,
 	.phy_id_mask	= 0x00fffff0,

-- 
2.39.2



