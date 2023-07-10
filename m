Delivery-date: Mon, 10 Jul 2023 08:38:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIkXl-005NZR-0L
	for lore@lore.pengutronix.de; Mon, 10 Jul 2023 08:38:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIkXh-0003Dd-WE
	for lore@pengutronix.de; Mon, 10 Jul 2023 08:38:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=L3oTDzxAXxKY6BkeGwiVrNtJlRnRlUE69u2coUEt1WI=; b=RmnKc9uhjnX1IEJ2cMS7CIswYj
	ZCb4j6Ckyf7SRE/p487S2ztVPYpS7z8ahky9iIH7yg+Wm04iTVsbKPsNUQNNYFEksrTErs9wrZLq3
	yG7cA3zhWUYV+yWSfsjwX0Qz1g5wAmcrkvDK36lD7FJ6v7ZYkmuP2SQ+t9PDtB3wsqDxf8VZEOMB0
	A5zBr6QUh+AHiWiTtI6JuKmoKWtnrty+ODxqrvIh1yUrN0LcSE8pxPpsMp3KkM3UHr9YheBNpmHAG
	sduiT22rKGMFfwG6Ud1op0wZVe8VP+CV2NX2CTdu3PVt3WazMI3lyEIsL6fpj20d+vkpB23pYYxyt
	QncRypwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIkWM-00AaxD-0J;
	Mon, 10 Jul 2023 06:37:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIkWG-00Aati-2w
	for barebox@lists.infradead.org;
	Mon, 10 Jul 2023 06:37:15 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qIkW3-0002w5-Ob
	for barebox@lists.infradead.org; Mon, 10 Jul 2023 08:36:59 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 10 Jul 2023 08:36:48 +0200
Message-Id: <20230710063653.660040-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230710063653.660040-1-m.felsch@pengutronix.de>
References: <20230710063653.660040-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230709_233712_945108_0207302D 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH 2/7] net: phy: micrel: make use of MDIO_MMD register defines
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Make use of the register definition instead of having magic numbers. No
functional change.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/net/phy/micrel.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/net/phy/micrel.c b/drivers/net/phy/micrel.c
index ef1f919ae7..02d474c442 100644
--- a/drivers/net/phy/micrel.c
+++ b/drivers/net/phy/micrel.c
@@ -447,23 +447,27 @@ static int ksz9031_config_rgmii_delay(struct phy_device *phydev)
 		return 0;
 	}
 
-	phy_write_mmd_indirect(phydev, MII_KSZ9031RN_CONTROL_PAD_SKEW, 2,
+	phy_write_mmd_indirect(phydev, MII_KSZ9031RN_CONTROL_PAD_SKEW,
+			       MDIO_MMD_WIS,
 			       FIELD_PREP(MII_KSZ9031RN_RX_CTL_M, rx) |
 			       FIELD_PREP(MII_KSZ9031RN_TX_CTL_M, tx));
 
-	phy_write_mmd_indirect(phydev, MII_KSZ9031RN_RX_DATA_PAD_SKEW, 2,
+	phy_write_mmd_indirect(phydev, MII_KSZ9031RN_RX_DATA_PAD_SKEW,
+			       MDIO_MMD_WIS,
 			       FIELD_PREP(MII_KSZ9031RN_RXD3, rx) |
 			       FIELD_PREP(MII_KSZ9031RN_RXD2, rx) |
 			       FIELD_PREP(MII_KSZ9031RN_RXD1, rx) |
 			       FIELD_PREP(MII_KSZ9031RN_RXD0, rx));
 
-	phy_write_mmd_indirect(phydev, MII_KSZ9031RN_TX_DATA_PAD_SKEW, 2,
+	phy_write_mmd_indirect(phydev, MII_KSZ9031RN_TX_DATA_PAD_SKEW,
+			       MDIO_MMD_WIS,
 			       FIELD_PREP(MII_KSZ9031RN_TXD3, tx) |
 			       FIELD_PREP(MII_KSZ9031RN_TXD2, tx) |
 			       FIELD_PREP(MII_KSZ9031RN_TXD1, tx) |
 			       FIELD_PREP(MII_KSZ9031RN_TXD0, tx));
 
-	phy_write_mmd_indirect(phydev, MII_KSZ9031RN_CLK_PAD_SKEW, 2,
+	phy_write_mmd_indirect(phydev, MII_KSZ9031RN_CLK_PAD_SKEW,
+			       MDIO_MMD_WIS,
 			       FIELD_PREP(MII_KSZ9031RN_GTX_CLK, tx_clk) |
 			       FIELD_PREP(MII_KSZ9031RN_RX_CLK, rx_clk));
 	return 0;
-- 
2.39.2



