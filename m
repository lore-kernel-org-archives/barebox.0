Delivery-date: Wed, 06 Dec 2023 12:13:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rApps-005cI1-1i
	for lore@lore.pengutronix.de;
	Wed, 06 Dec 2023 12:13:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rApps-0008Nb-EU
	for lore@pengutronix.de; Wed, 06 Dec 2023 12:13:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=46+HXH9+v6aLtV8B+XXSSawDFi/NmcL8PKZvVdOCgTQ=; b=XBylCSiPThuEUtJUfTqhGBIltE
	fK8LTUqk+wc2iEQwxinILDBX7kjo9B0gUKdGeBde3I6/ab3Ck7Dpw8pP9dTJD2xAaWWzue5ck+WaD
	oBXRupknV10mP5+YZIU2ugZC4a31u01znc5oiK0enc176X6Z9pNDYMWcPRk30ZAhkF5jYRav1f4Un
	s+br+ZwOGk8aU69M/gFstHMSQFrsPX3HaSAT7/tZifmmcKMXJK+B4TmoReRm4vjTuaEPynejbOByI
	FVQV0MBtgI3e9cKpkGJAm+Fp1dXuki/TQ8UTY78bZGLYRsmSTBDG9xFkNifSAqYLZjrQkmnxNaa06
	v19CP2XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rApoP-009t7j-2A;
	Wed, 06 Dec 2023 11:11:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rApoN-009t6V-0C
	for barebox@lists.infradead.org;
	Wed, 06 Dec 2023 11:11:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1rApoH-00085s-Cl; Wed, 06 Dec 2023 12:11:21 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1rApoG-00DwkW-ND; Wed, 06 Dec 2023 12:11:20 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1rApoG-005cE0-2A;
	Wed, 06 Dec 2023 12:11:20 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>,
	Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed,  6 Dec 2023 12:11:18 +0100
Message-Id: <20231206111118.1338567-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231206_031127_100607_5DD5F87B 
X-CRM114-Status: GOOD (  17.34  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1] net: phy: add TI DP83TG720 1000BaseT1 PHY support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Oleksij Rempel <linux@rempel-privat.de>

Add driver for TI DP83TG720 driver support.

Even if the PHY is capable of creating a link on it's own. It needs
proper RGMII configuration and HW reset on link loss.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/phy/Kconfig     |   6 +++
 drivers/net/phy/Makefile    |   1 +
 drivers/net/phy/dp83tg720.c | 102 ++++++++++++++++++++++++++++++++++++
 3 files changed, 109 insertions(+)
 create mode 100644 drivers/net/phy/dp83tg720.c

diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
index e95e2a3228..8e12671801 100644
--- a/drivers/net/phy/Kconfig
+++ b/drivers/net/phy/Kconfig
@@ -35,6 +35,12 @@ config DP83TD510_PHY
 	  Support for the DP83TD510 Ethernet 10Base-T1L PHY. This PHY supports
 	  a 10M single pair Ethernet connection for up to 1000 meter cable.
 
+config DP83TG720_PHY
+	tristate "Texas Instruments DP83TG720 Ethernet 1000Base-T1 PHY"
+	help
+	  Support for the DP83TG720 Ethernet 10000Base-T1 PHY. This PHY supports
+	  a 1000M single pair Ethernet.
+
 config LXT_PHY
 	bool "Driver for the Intel LXT PHYs"
 	help
diff --git a/drivers/net/phy/Makefile b/drivers/net/phy/Makefile
index 26e4ad884d..ce15e1bab7 100644
--- a/drivers/net/phy/Makefile
+++ b/drivers/net/phy/Makefile
@@ -19,4 +19,5 @@ obj-$(CONFIG_MDIO_BUS_MUX)	+= mdio-mux.o
 obj-$(CONFIG_MDIO_BUS_MUX_GPIO)	+= mdio-mux-gpio.o
 obj-$(CONFIG_DP83867_PHY)	+= dp83867.o
 obj-$(CONFIG_DP83TD510_PHY)	+= dp83td510.o
+obj-$(CONFIG_DP83TG720_PHY)	+= dp83tg720.o
 
diff --git a/drivers/net/phy/dp83tg720.c b/drivers/net/phy/dp83tg720.c
new file mode 100644
index 0000000000..f0c6e29489
--- /dev/null
+++ b/drivers/net/phy/dp83tg720.c
@@ -0,0 +1,102 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Driver for the Texas Instruments DP83TG720 PHY
+ * Copyright (c) 2023 Pengutronix, Oleksij Rempel <kernel@pengutronix.de>
+ */
+#include <common.h>
+#include <linux/mdio.h>
+#include <linux/phy.h>
+
+#define DP83TG720S_PHY_ID			0x2000a284
+
+/* MDIO_MMD_VEND2 registers */
+#define DP83TG720S_MII_REG_10			0x10
+#define DP83TG720S_LINK_STATUS			BIT(0)
+
+#define DP83TG720S_RGMII_DELAY_CTRL		0x602
+/* In RGMII mode, Enable or disable the internal delay for RXD */
+#define DP83TG720S_RGMII_RX_CLK_SEL		BIT(1)
+/* In RGMII mode, Enable or disable the internal delay for TXD */
+#define DP83TG720S_RGMII_TX_CLK_SEL		BIT(0)
+
+#define DP83TG720S_PHY_RESET			0x1f
+#define DP83TG720S_HW_RESET			BIT(15)
+
+static int dp83tg720_config_rgmii_delay(struct phy_device *phydev)
+{
+	u16 rgmii_delay_mask;
+	u16 rgmii_delay = 0;
+
+	switch (phydev->interface) {
+	case PHY_INTERFACE_MODE_RGMII:
+		rgmii_delay = 0;
+		break;
+	case PHY_INTERFACE_MODE_RGMII_ID:
+		rgmii_delay = DP83TG720S_RGMII_RX_CLK_SEL |
+				DP83TG720S_RGMII_TX_CLK_SEL;
+		break;
+	case PHY_INTERFACE_MODE_RGMII_RXID:
+		rgmii_delay = DP83TG720S_RGMII_RX_CLK_SEL;
+		break;
+	case PHY_INTERFACE_MODE_RGMII_TXID:
+		rgmii_delay = DP83TG720S_RGMII_TX_CLK_SEL;
+		break;
+	default:
+		return 0;
+	}
+
+	rgmii_delay_mask = DP83TG720S_RGMII_RX_CLK_SEL |
+			   DP83TG720S_RGMII_TX_CLK_SEL;
+
+	return phy_modify_mmd(phydev, MDIO_MMD_VEND2,
+			      DP83TG720S_RGMII_DELAY_CTRL, rgmii_delay_mask,
+			      rgmii_delay);
+}
+
+static int dp83tg720_phy_init(struct phy_device *phydev)
+{
+	/* HW reset is needed to recover link if previous link was lost. SW
+	 * reset is not enough.
+	 */
+	phy_write(phydev, DP83TG720S_PHY_RESET, DP83TG720S_HW_RESET);
+
+	phydev->supported = SUPPORTED_1000baseT_Full;
+	phydev->advertising = SUPPORTED_1000baseT_Full;
+
+	if (phy_interface_is_rgmii(phydev))
+		return dp83tg720_config_rgmii_delay(phydev);
+
+	return 0;
+}
+
+static int dp83tg720_read_status(struct phy_device *phydev)
+{
+	u16 phy_sts;
+
+	phy_sts = phy_read(phydev, DP83TG720S_MII_REG_10);
+	phydev->link = !!(phy_sts & DP83TG720S_LINK_STATUS);
+	if (!phydev->link) {
+		phydev->speed = SPEED_UNKNOWN;
+		phydev->duplex = DUPLEX_UNKNOWN;
+
+		/* According to the "DP83TC81x, DP83TG72x Software
+		 * Implementation Guide", the PHY needs to be reset after a
+		 * link loss or if no link is created after at least 100ms.
+		 */
+		dp83tg720_phy_init(phydev);
+		return 0;
+	}
+
+	phydev->duplex = DUPLEX_FULL;
+	phydev->speed = SPEED_1000;
+
+	return 0;
+}
+
+static struct phy_driver dp83tg720_driver[] = {
+{
+	PHY_ID_MATCH_MODEL(DP83TG720S_PHY_ID),
+	.drv.name	= "TI DP83TG720S",
+	.read_status	= dp83tg720_read_status,
+	.config_init	= dp83tg720_phy_init,
+} };
+device_phy_drivers(dp83tg720_driver);
-- 
2.39.2



