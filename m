Delivery-date: Tue, 03 Dec 2024 15:02:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tITTo-003WOd-0c
	for lore@lore.pengutronix.de;
	Tue, 03 Dec 2024 15:02:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tITTo-0001DF-0O
	for lore@pengutronix.de; Tue, 03 Dec 2024 15:02:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Ds4LQAsCSP7c7+lbwXWFwG2TGGETsmTP8u8i8cWlEKs=; b=qbr2OYmZ4txeFM3vJuA7or8Ryb
	jOPVntUyWPJ8KdJMA7m2FJRZtlIn3mow+fk7zucssTS32OUwA12m9gZ/Tr9IHVGZWsjhmDsD8fuo1
	ggtdlSAiX3xfoNjI4Ymu3Wml+J7R/AoIiaRz8BHCfUNpImen9LeHBHiQqknUeEKHFGgXY5lF6VXeF
	+VMaxWKLs3Wh5T0j3hU+8qBJMEBhjaTI9bXoXAoTpKS6ZhMMWbHau+/pKx8SBXUa2VLfQycCC3Mb+
	7Tanj2S+zpwGE7QIBjso1rYUlVr/NpP09R9yu4fLZUOPRafaiO8Jbcfbjj3KG5/oxgdeIFR1JtBRR
	EVQLdmSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tITT4-00000009iQr-3O9t;
	Tue, 03 Dec 2024 14:01:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tITT1-00000009iP0-2M7t
	for barebox@lists.infradead.org;
	Tue, 03 Dec 2024 14:01:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1tITSy-000114-01; Tue, 03 Dec 2024 15:01:28 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tITSx-001UHV-08;
	Tue, 03 Dec 2024 15:01:27 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tITSx-00BBvh-2R;
	Tue, 03 Dec 2024 15:01:27 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue,  3 Dec 2024 15:01:25 +0100
Message-Id: <20241203140125.2667446-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241203_060131_600398_D7BE6DD5 
X-CRM114-Status: GOOD (  17.52  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1] net: designware: eqos: stm32: add stm32mp13 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add support for STM32MP13x variants. Tested on STM32MP133.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/designware_stm32.c | 94 +++++++++++++++++++++++++++++-----
 1 file changed, 80 insertions(+), 14 deletions(-)

diff --git a/drivers/net/designware_stm32.c b/drivers/net/designware_stm32.c
index 54dabcc8d32a..b21cb5cb13ac 100644
--- a/drivers/net/designware_stm32.c
+++ b/drivers/net/designware_stm32.c
@@ -8,10 +8,11 @@
 
 #include <common.h>
 #include <init.h>
-#include <net.h>
 #include <linux/clk.h>
-#include <mfd/syscon.h>
 #include <linux/regmap.h>
+#include <mfd/syscon.h>
+#include <net.h>
+#include <of_device.h>
 
 #include "designware_eqos.h"
 
@@ -44,13 +45,21 @@
 #define SYSCFG_MP1_ETH_MASK		GENMASK(23, 16)
 #define SYSCFG_PMCCLRR_OFFSET		0x40
 
+struct stm32_ops {
+	const struct eqos_ops *eqos_ops;
+	bool is_mp13;
+	u32 syscfg_clr_off;
+};
+
 struct eqos_stm32 {
 	struct clk_bulk_data *clks;
 	int num_clks;
 	struct regmap *regmap;
 	u32 mode_reg;
+	u32 mode_mask;
 	int eth_clk_sel_reg;
 	int eth_ref_clk_sel_reg;
+	const struct stm32_ops *ops;
 };
 
 static inline struct eqos_stm32 *to_stm32(struct eqos *eqos)
@@ -72,12 +81,20 @@ static unsigned long eqos_get_csr_clk_rate_stm32(struct eqos *eqos)
 
 static int eqos_set_mode_stm32(struct eqos_stm32 *priv, phy_interface_t interface)
 {
-	u32 val, reg = priv->mode_reg;
+	u32 reg = priv->mode_reg;
+	u32 val = 0;
 	int ret;
 
 	switch (interface) {
 	case PHY_INTERFACE_MODE_MII:
-		val = SYSCFG_PMCR_ETH_SEL_MII;
+		/*
+		 * STM32MP15xx supports both MII and GMII, STM32MP13xx MII only.
+		 * SYSCFG_PMCSETR ETH_SELMII is present only on STM32MP15xx and
+		 * acts as a selector between 0:GMII and 1:MII. As STM32MP13xx
+		 * supports only MII, ETH_SELMII is not present.
+		 */
+		if (!priv->ops->is_mp13)  /* Select MII mode on STM32MP15xx */
+			val |= SYSCFG_PMCR_ETH_SEL_MII;
 		break;
 	case PHY_INTERFACE_MODE_GMII:
 		val = SYSCFG_PMCR_ETH_SEL_GMII;
@@ -101,16 +118,16 @@ static int eqos_set_mode_stm32(struct eqos_stm32 *priv, phy_interface_t interfac
 		return -EINVAL;
 	}
 
+	/* Shift value at correct ethernet MAC offset in SYSCFG_PMCSETR */
+	val <<= ffs(priv->mode_mask) - ffs(SYSCFG_MP1_ETH_MASK);
+
 	/* Need to update PMCCLRR (clear register) */
-	ret = regmap_write(priv->regmap, reg + SYSCFG_PMCCLRR_OFFSET,
-			   SYSCFG_MP1_ETH_MASK);
+	ret = regmap_write(priv->regmap, priv->ops->syscfg_clr_off,
+			   priv->mode_mask);
 	if (ret)
-		return -EIO;
-
-	/* Update PMCSETR (set register) */
-	regmap_update_bits(priv->regmap, reg, GENMASK(23, 16), val);
+		return ret;
 
-	return 0;
+	return regmap_update_bits(priv->regmap, reg, priv->mode_mask, val);
 }
 
 static int eqos_init_stm32(struct device *dev, struct eqos *eqos)
@@ -142,6 +159,18 @@ static int eqos_init_stm32(struct device *dev, struct eqos *eqos)
 		return -EINVAL;
 	}
 
+	priv->mode_mask = SYSCFG_MP1_ETH_MASK;
+	ret = of_property_read_u32_index(np, "st,syscon", 2, &priv->mode_mask);
+	if (ret) {
+		if (priv->ops->is_mp13) {
+			dev_err(dev, "Sysconfig register mask must be set (%pe)\n",
+				ERR_PTR(ret));
+		} else {
+			dev_dbg(dev, "Warning sysconfig register mask not set (%pe)\n",
+				ERR_PTR(ret));
+		}
+	}
+
 	ret = eqos_set_mode_stm32(priv, eqos->interface);
 	if (ret)
 		dev_warn(dev, "Configuring syscfg failed: %s\n", strerror(-ret));
@@ -167,7 +196,18 @@ static int eqos_init_stm32(struct device *dev, struct eqos *eqos)
 	return clk_bulk_enable(priv->num_clks, priv->clks);
 }
 
-static struct eqos_ops stm32_ops = {
+static struct eqos_ops stm32mp13_ops = {
+	.init = eqos_init_stm32,
+	.get_ethaddr = eqos_get_ethaddr,
+	.set_ethaddr = eqos_set_ethaddr,
+	.adjust_link = eqos_adjust_link,
+	.get_csr_clk_rate = eqos_get_csr_clk_rate_stm32,
+
+	.clk_csr = EQOS_MDIO_ADDR_CR_250_300,
+	.config_mac = EQOS_MAC_RXQ_CTRL0_RXQ0EN_ENABLED_DCB,
+};
+
+static struct eqos_ops stm32mp15_ops = {
 	.init = eqos_init_stm32,
 	.get_ethaddr = eqos_get_ethaddr,
 	.set_ethaddr = eqos_set_ethaddr,
@@ -178,9 +218,34 @@ static struct eqos_ops stm32_ops = {
 	.config_mac = EQOS_MAC_RXQ_CTRL0_RXQ0EN_ENABLED_AV,
 };
 
+static struct stm32_ops stm32mp13_dwmac_data = {
+	.eqos_ops = &stm32mp13_ops,
+	.syscfg_clr_off = 0x08,
+	.is_mp13 = true,
+};
+
+static struct stm32_ops stm32mp15_dwmac_data = {
+	.eqos_ops = &stm32mp15_ops,
+	.syscfg_clr_off = 0x44,
+	.is_mp13 = false,
+};
+
 static int eqos_probe_stm32(struct device *dev)
 {
-	return eqos_probe(dev, &stm32_ops, xzalloc(sizeof(struct eqos_stm32)));
+	const struct stm32_ops *data;
+	struct eqos_stm32 *priv;
+
+	priv = xzalloc(sizeof(*priv));
+	if (!priv)
+		return -ENOMEM;
+
+	data = of_device_get_match_data(dev);
+	if (!data)
+		return -EINVAL;
+
+	priv->ops = data;
+
+	return eqos_probe(dev, data->eqos_ops, priv);
 }
 
 static void eqos_remove_stm32(struct device *dev)
@@ -194,7 +259,8 @@ static void eqos_remove_stm32(struct device *dev)
 }
 
 static const struct of_device_id eqos_stm32_ids[] = {
-	{ .compatible = "st,stm32mp1-dwmac" },
+	{ .compatible = "st,stm32mp1-dwmac", .data = &stm32mp15_dwmac_data},
+	{ .compatible = "st,stm32mp13-dwmac", .data = &stm32mp13_dwmac_data},
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, eqos_stm32_ids);
-- 
2.39.5



