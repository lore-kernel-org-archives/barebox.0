Delivery-date: Mon, 10 Jul 2023 08:38:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIkXo-005NbW-W7
	for lore@lore.pengutronix.de; Mon, 10 Jul 2023 08:38:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIkXm-0003Fp-GK
	for lore@pengutronix.de; Mon, 10 Jul 2023 08:38:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ht/J06a9Kmd3PDsKrjqa/Z9I016jpvToVXlMWKZiD+Y=; b=jXvO2fsqEC4AbZt+LZqeN4eOTb
	Rqbm8XBP4UMY4TkBlBFLtn2shcixdjZ0TpyEyGMTXteizXWIG91JtMGwze1U+eJ8VJzWpXZTCeA+j
	QpKohT8BsxSliT/H75e0q7QzehhKz1Jx2KR2CpfLP1CRRZ9DS3hdWM7kqbq99iniy/fJNWGsxy7v+
	hXTqXA7Dte4+Ft81ec7qRO6kRz8LPHmj5TYm8vEk/0GIg1vvdNy5RhZvgJcjhMfjip1poVUSS2Bar
	RLk3rXOXnhTn2Yu9XnpUseqTYPpBQYIyiipC3OW1eQnCZYU4l3I1HCMB4qsUC//ZESjkwnnjtTl61
	9yIoBeqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIkWN-00AaxY-1A;
	Mon, 10 Jul 2023 06:37:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIkWG-00Aato-30
	for barebox@lists.infradead.org;
	Mon, 10 Jul 2023 06:37:15 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qIkW4-0002w5-El
	for barebox@lists.infradead.org; Mon, 10 Jul 2023 08:37:00 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 10 Jul 2023 08:36:52 +0200
Message-Id: <20230710063653.660040-6-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230710063653.660040-1-m.felsch@pengutronix.de>
References: <20230710063653.660040-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230709_233712_990340_F9E06093 
X-CRM114-Status: GOOD (  18.37  )
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
Subject: [PATCH 6/7] net: phy: at803x: add disable hibernation mode support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This commit ports Linux commit:

| commit 9ecf04016c87bcb33b44e24489d33618e2592f41
| Author: Wei Fang <wei.fang@nxp.com>
| Date:   Thu Aug 18 11:00:54 2022 +0800
|
|     net: phy: at803x: add disable hibernation mode support
|
|     When the cable is unplugged, the Atheros AR803x PHYs will enter
|     hibernation mode after about 10 seconds if the hibernation mode
|     is enabled and will not provide any clock to the MAC. But for
|     some MACs, this feature might cause unexpected issues due to the
|     logic of MACs.
|     Taking SYNP MAC (stmmac) as an example, if the cable is unplugged
|     and the "eth0" interface is down, the AR803x PHY will enter
|     hibernation mode. Then perform the "ifconfig eth0 up" operation,
|     the stmmac can't be able to complete the software reset operation
|     and fail to init it's own DMA. Therefore, the "eth0" interface is
|     failed to ifconfig up. Why does it cause this issue? The truth is
|     that the software reset operation of the stmmac is designed to
|     depend on the RX_CLK of PHY.
|     So, this patch offers an option for the user to determine whether
|     to disable the hibernation mode of AR803x PHYs.
|
|     Signed-off-by: Wei Fang <wei.fang@nxp.com>
|     Reviewed-by: Andrew Lunn <andrew@lunn.ch>
|     Signed-off-by: Jakub Kicinski <kuba@kernel.org>

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/net/phy/at803x.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/net/phy/at803x.c b/drivers/net/phy/at803x.c
index cc425c318f..d8a9c3588f 100644
--- a/drivers/net/phy/at803x.c
+++ b/drivers/net/phy/at803x.c
@@ -32,6 +32,9 @@
 #define AT803X_DEBUG_REG_5			0x05
 #define AT803X_DEBUG_TX_CLK_DLY_EN		BIT(8)
 
+#define AT803X_DEBUG_REG_HIB_CTRL		0x0b
+#define   AT803X_DEBUG_HIB_CTRL_PS_HIB_EN	BIT(15)
+
 /* AT803x supports either the XTAL input pad, an internal PLL or the
  * DSP as clock reference for the clock output pad. The XTAL reference
  * is only used for 25 MHz output, all other frequencies need the PLL.
@@ -140,6 +143,20 @@ static int at803x_disable_tx_delay(struct phy_device *phydev)
 				     AT803X_DEBUG_TX_CLK_DLY_EN, 0);
 }
 
+static int at803x_hibernation_mode_config(struct phy_device *phydev)
+{
+	struct at803x_priv *priv = phydev->priv;
+
+	/* The default after hardware reset is hibernation mode enabled. After
+	 * software reset, the value is retained.
+	 */
+	if (!(priv->flags & AT803X_DISABLE_HIBERNATION_MODE))
+		return 0;
+
+	return at803x_debug_reg_mask(phydev, AT803X_DEBUG_REG_HIB_CTRL,
+				     AT803X_DEBUG_HIB_CTRL_PS_HIB_EN, 0);
+}
+
 static bool at803x_match_phy_id(struct phy_device *phydev, u32 phy_id)
 {
 	struct phy_driver *drv = to_phy_driver(phydev->dev.driver);
@@ -160,6 +177,9 @@ static int at803x_parse_dt(struct phy_device *phydev)
 	if (of_property_read_bool(node, "qca,disable-smarteee"))
 		priv->flags |= AT803X_DISABLE_SMARTEEE;
 
+	if (of_property_read_bool(node, "qca,disable-hibernation-mode"))
+		priv->flags |= AT803X_DISABLE_HIBERNATION_MODE;
+
 	if (!of_property_read_u32(node, "qca,smarteee-tw-us-1g", &tw)) {
 		if (!tw || tw > 255) {
 			phydev_err(phydev, "invalid qca,smarteee-tw-us-1g\n");
@@ -341,6 +361,10 @@ static int at803x_config_init(struct phy_device *phydev)
 	if (ret < 0)
 		return ret;
 
+	ret = at803x_hibernation_mode_config(phydev);
+	if (ret < 0)
+		return ret;
+
 	return 0;
 }
 
-- 
2.39.2



