Delivery-date: Wed, 12 Jun 2024 15:03:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHNdn-004oje-11
	for lore@lore.pengutronix.de;
	Wed, 12 Jun 2024 15:03:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHNdm-0007pD-Mz
	for lore@pengutronix.de; Wed, 12 Jun 2024 15:03:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=imaI0WLQlRHnE3NPeqdx9nDHllUp0L+gDEqWpgc3Zg4=; b=ZLppyDwjzopZE3xcvsx0ht/UKo
	kqo3QpKCE6kydQjYZ4rG2WmNf7mnsuqVEre4gXIre5giKcFrgNencxp3Kdg30y7vur3tiNXHEUJlZ
	u+D0HcRF2ULNzr7SpNETpfuJHn69n+rV7IFySP71EoEV9pi0/WIZZ5V5tFQ7TX/zSrcXkpgx0fA70
	9IchJm/8gOJx8g7DZ/1zEY8IR27ZgvDT5n53NkvuwZDGYtl+l2R2/snOSsb5yqJbqC+SXJxm6ux8g
	HvnqFXqkGNyqo9Wee3kHvURt+opZL37Nadev6S2NxoGARb15toymJaICbGRQusAr38HeEM9QHQK6v
	amV4j30Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHNd2-0000000CfFP-0dp0;
	Wed, 12 Jun 2024 13:03:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHNcy-0000000CfEp-0kOn
	for barebox@lists.infradead.org;
	Wed, 12 Jun 2024 13:03:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1sHNcv-0007gm-V5; Wed, 12 Jun 2024 15:02:57 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1sHNcv-001nH6-Fl; Wed, 12 Jun 2024 15:02:57 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1sHNcv-00F3oF-1M;
	Wed, 12 Jun 2024 15:02:57 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: David Jander <david@protonic.nl>,
	Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 12 Jun 2024 15:02:56 +0200
Message-Id: <20240612130256.3587709-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_060300_238928_CC4DE46B 
X-CRM114-Status: GOOD (  12.24  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] net: phy: dp83tg720: wake up PHYs in managed mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: David Jander <david@protonic.nl>

In case this PHY is bootstrapped for managed mode, we need to manually
wake it. Otherwise no link will be detected.

Signed-off-by: David Jander <david@protonic.nl>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/phy/dp83tg720.c | 26 +++++++++++++++++++++++---
 1 file changed, 23 insertions(+), 3 deletions(-)

diff --git a/drivers/net/phy/dp83tg720.c b/drivers/net/phy/dp83tg720.c
index 0571f4cb52..d57985539d 100644
--- a/drivers/net/phy/dp83tg720.c
+++ b/drivers/net/phy/dp83tg720.c
@@ -21,6 +21,11 @@
 #define DP83TG720S_PHY_RESET			0x1f
 #define DP83TG720S_HW_RESET			BIT(15)
 
+#define DP83TG720S_LPS_CFG3			0x18c
+/* Power modes are documented as bitfields but used as values */
+/* Power Mode 0 is Normal mode */
+#define DP83TG720S_LPS_CFG3_PWR_MODE_0		BIT(0)
+
 static int dp83tg720_config_rgmii_delay(struct phy_device *phydev)
 {
 	u16 rgmii_delay_mask;
@@ -54,6 +59,8 @@ static int dp83tg720_config_rgmii_delay(struct phy_device *phydev)
 
 static int dp83tg720_phy_init(struct phy_device *phydev)
 {
+	int ret = 0;
+
 	/* HW reset is needed to recover link if previous link was lost. SW
 	 * reset is not enough.
 	 */
@@ -62,10 +69,23 @@ static int dp83tg720_phy_init(struct phy_device *phydev)
 	phydev->supported = SUPPORTED_1000baseT_Full;
 	phydev->advertising = SUPPORTED_1000baseT_Full;
 
-	if (phy_interface_is_rgmii(phydev))
-		return dp83tg720_config_rgmii_delay(phydev);
+	/* According to the "DP83TG720R-Q1 1000BASE-T1 Automotive Ethernet PHY
+	 * datasheet (Rev. C)" - "T6.2 Post reset stabilization-time prior to
+	 * MDC preamble for register access is 1ms."
+	 */
+	mdelay(1);
 
-	return 0;
+	if (phy_interface_is_rgmii(phydev)) {
+		ret = dp83tg720_config_rgmii_delay(phydev);
+		if (ret)
+			return ret;
+	}
+
+	/* In case the PHY is bootstrapped in managed mode, we need to
+	 * wake it.
+	 */
+	return phy_write_mmd(phydev, MDIO_MMD_VEND2, DP83TG720S_LPS_CFG3,
+			     DP83TG720S_LPS_CFG3_PWR_MODE_0);
 }
 
 static int dp83tg720_read_status(struct phy_device *phydev)
-- 
2.39.2



