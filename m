Delivery-date: Mon, 11 Mar 2024 10:11:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjbgs-000puM-39
	for lore@lore.pengutronix.de;
	Mon, 11 Mar 2024 10:11:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjbgn-0001aZ-7i
	for lore@pengutronix.de; Mon, 11 Mar 2024 10:11:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=59QfnkIXAwg7pw7sLlLLe5q+jnRjCNyWOQudCH1+LoE=; b=YxnYS4OkUYLqgyscSYhpAchBJv
	iDREPKKLHZxTaa+c6snlmsaBG6byr2tjb9Y48g9nXLmP2IRD19u7KC8A/snI++EPMgBl5wz7YDJDf
	Z6h7ZoDh3AspSQp3klOygEkFCZax7qYF4FzVHFYtAvE7QBZ8WuZHp2SNDTZFe4SpMq4bB8y0VKoIB
	Ro1mMjRBREI2akYZUyYAQgkfT2f2DiIZ28srkH1cOIKd4OylFlxMi/S+Nzk0LoT7h6MmUWfqOeDf4
	S9FnS7/LfWWSlhI7r6fahtjZUlU+Q0plrLWbn1cmvl4E+GO5Tr0fed0SfVywzc1WLX6rp242ZTQSq
	CfOiacTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjbft-00000000kKT-1dUH;
	Mon, 11 Mar 2024 09:10:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjbfp-00000000kHx-3Nzl
	for barebox@lists.infradead.org;
	Mon, 11 Mar 2024 09:10:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rjbfi-0000gR-IQ; Mon, 11 Mar 2024 10:10:14 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rjbfi-005g49-40; Mon, 11 Mar 2024 10:10:14 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rjbfh-00ANLu-1h;
	Mon, 11 Mar 2024 10:10:14 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Mon, 11 Mar 2024 10:10:09 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240311-karo-imx8mp-som-board-upstreaming-v1-2-7c77f9ba02e5@pengutronix.de>
References: <20240311-karo-imx8mp-som-board-upstreaming-v1-0-7c77f9ba02e5@pengutronix.de>
In-Reply-To: <20240311-karo-imx8mp-som-board-upstreaming-v1-0-7c77f9ba02e5@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240311_021021_975795_B01EC4FA 
X-CRM114-Status: GOOD (  11.29  )
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
Subject: [PATCH 2/6] net: phy: micrel: update id table from Linux kernel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Marc Kleine-Budde <mkl@pengutronix.de>

This syncs the known Micrel PHY IDs and register definitions with the
Linux kernel, commit f600bb612b06adf70ccdefbd3294c71275b650c2.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 include/linux/micrel_phy.h | 49 +++++++++++++++++++++++++++++++++++++++-------
 1 file changed, 42 insertions(+), 7 deletions(-)

diff --git a/include/linux/micrel_phy.h b/include/linux/micrel_phy.h
index 8752dbbc61..591bf5b5e8 100644
--- a/include/linux/micrel_phy.h
+++ b/include/linux/micrel_phy.h
@@ -1,26 +1,26 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
 /*
  * include/linux/micrel_phy.h
  *
  * Micrel PHY IDs
- *
- * This program is free software; you can redistribute  it and/or modify it
- * under  the terms of  the GNU General  Public License as published by the
- * Free Software Foundation;  either version 2 of the  License, or (at your
- * option) any later version.
- *
  */
 
 #ifndef _MICREL_PHY_H
 #define _MICREL_PHY_H
 
+#define MICREL_OUI		0x0885
+
 #define MICREL_PHY_ID_MASK	0x00fffff0
 
 #define PHY_ID_KSZ8873MLL	0x000e7237
 #define PHY_ID_KSZ9021		0x00221610
+#define PHY_ID_KSZ9021RLRN	0x00221611
 #define PHY_ID_KS8737		0x00221720
 #define PHY_ID_KSZ8021		0x00221555
 #define PHY_ID_KSZ8031		0x00221556
 #define PHY_ID_KSZ8041		0x00221510
+/* undocumented */
+#define PHY_ID_KSZ8041RNLI	0x00221537
 #define PHY_ID_KSZ8051		0x00221550
 /* same id: ks8001 Rev. A/B, and ks8721 Rev 3. */
 #define PHY_ID_KSZ8001		0x0022161A
@@ -28,11 +28,46 @@
 #define PHY_ID_KSZ8081		0x00221560
 #define PHY_ID_KSZ8061		0x00221570
 #define PHY_ID_KSZ9031		0x00221620
+#define PHY_ID_KSZ9131		0x00221640
+#define PHY_ID_LAN8814		0x00221660
+#define PHY_ID_LAN8804		0x00221670
+#define PHY_ID_LAN8841		0x00221650
 
 #define PHY_ID_KSZ886X		0x00221430
 #define PHY_ID_KSZ8863		0x00221435
 
+#define PHY_ID_KSZ87XX		0x00221550
+
+#define	PHY_ID_KSZ9477		0x00221631
+
 /* struct phy_device dev_flags definitions */
-#define MICREL_PHY_50MHZ_CLK	0x00000001
+#define MICREL_PHY_50MHZ_CLK	BIT(0)
+#define MICREL_PHY_FXEN		BIT(1)
+#define MICREL_KSZ8_P1_ERRATA	BIT(2)
+#define MICREL_NO_EEE		BIT(3)
+
+#define MICREL_KSZ9021_EXTREG_CTRL	0xB
+#define MICREL_KSZ9021_EXTREG_DATA_WRITE	0xC
+#define MICREL_KSZ9021_RGMII_CLK_CTRL_PAD_SCEW	0x104
+#define MICREL_KSZ9021_RGMII_RX_DATA_PAD_SCEW	0x105
+
+/* Device specific MII_BMCR (Reg 0) bits */
+/* 1 = HP Auto MDI/MDI-X mode, 0 = Microchip Auto MDI/MDI-X mode */
+#define KSZ886X_BMCR_HP_MDIX			BIT(5)
+/* 1 = Force MDI (transmit on RXP/RXM pins), 0 = Normal operation
+ * (transmit on TXP/TXM pins)
+ */
+#define KSZ886X_BMCR_FORCE_MDI			BIT(4)
+/* 1 = Disable auto MDI-X */
+#define KSZ886X_BMCR_DISABLE_AUTO_MDIX		BIT(3)
+#define KSZ886X_BMCR_DISABLE_FAR_END_FAULT	BIT(2)
+#define KSZ886X_BMCR_DISABLE_TRANSMIT		BIT(1)
+#define KSZ886X_BMCR_DISABLE_LED		BIT(0)
+
+/* PHY Special Control/Status Register (Reg 31) */
+#define KSZ886X_CTRL_MDIX_STAT			BIT(4)
+#define KSZ886X_CTRL_FORCE_LINK			BIT(3)
+#define KSZ886X_CTRL_PWRSAVE			BIT(2)
+#define KSZ886X_CTRL_REMOTE_LOOPBACK		BIT(1)
 
 #endif /* _MICREL_PHY_H */

-- 
2.39.2



