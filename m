Delivery-date: Fri, 11 Aug 2023 12:28:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qUPNY-00GSac-0Q
	for lore@lore.pengutronix.de; Fri, 11 Aug 2023 12:28:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qUPNW-0007UQ-EX
	for lore@pengutronix.de; Fri, 11 Aug 2023 12:28:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CEFivk/+QExIBLkpCZBolny0Oxq7oH02HVsF0BIeZYc=; b=AK9q62+TiXB5sQCafV/nQXQjHg
	S7zkieEMcwq7b2rwLH6lHQUU8xHJgY5EnzBo7dB2o00VmawESVTyEhQPiZNzFu47V+aGBanZmbonQ
	e96/13SL3vWKLYjsCUVas4386zPLd1b+1sJcyQiaoYolb3Ct2clPTQrHvVyz+PzFMzccKz3pVSkaH
	//f0S6a8K94lOvHjmHx680Slq527iJRMkIotSjguESNskd0FojFEQhwWZxaVbzaV/pApXPmpp1m/8
	/42xFhs4VQFHEMpmhaWSkmYGDfD6tCykTXPaUw86+Ssvv7/eWZwtUZacHNCR82qXACGlDnMs1EBL5
	z9+th5lA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qUPMU-00ADF1-1f;
	Fri, 11 Aug 2023 10:27:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qUPMI-00ACzw-1N
	for barebox@lists.infradead.org;
	Fri, 11 Aug 2023 10:27:10 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qUPMD-00073K-BE
	for barebox@lists.infradead.org; Fri, 11 Aug 2023 12:27:01 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 11 Aug 2023 12:26:48 +0200
Message-Id: <20230811102657.271931-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230811102657.271931-1-m.felsch@pengutronix.de>
References: <20230811102657.271931-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230811_032706_597951_501FA57A 
X-CRM114-Status: UNSURE (   8.81  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 02/11] net: phy: micrel: make use of MDIO_MMD register defines
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Make use of the register definition instead of having magic numbers. No
functional change.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v2:
- added afa's rb

 drivers/net/phy/micrel.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/net/phy/micrel.c b/drivers/net/phy/micrel.c
index ef1f919ae792..02d474c44250 100644
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



