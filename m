Delivery-date: Fri, 19 Mar 2021 14:12:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNEvB-0007Rz-1H
	for lore@lore.pengutronix.de; Fri, 19 Mar 2021 14:12:09 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNEv9-0006zS-Le
	for lore@pengutronix.de; Fri, 19 Mar 2021 14:12:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0n0a41646KzJ0EY2zmnip9jwhX8utKl2N6Gw6hj84/w=; b=FxS3TNVJ4VNjiOj4Jjyib87S7
	KDpAM6/gVJLGIzPDTSCwgSH103TLuGUs8duyAjtyP2n6QF5k7qe2uoAx8n0CqhPcBWJ6yIWKCVxKa
	qhe6vn/LE5uGEH4JCqTyP3BOfHk+l6sMsLPabTfjAdwf4HYg2F2qQe1DvXSELI/7AxVuHzRelEMzM
	ObsW/tu0bVBumiIbtgnXNudWE1U7QrQ6aNS+gHx7Lu4F2w+nwAgHPC84RJij/Rx2CGtER21XiwTDK
	BRAycd3da8OIUWmOAMXQPxkDs3+Y/ox8ePBZRuB0s21Kdiu6iHKTrsPHllHC/ckRfDSo3dx7jqqxt
	DSokSUtIQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNEty-007SLE-Gu; Fri, 19 Mar 2021 13:10:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNEtQ-007SC8-FQ
 for barebox@lists.infradead.org; Fri, 19 Mar 2021 13:10:25 +0000
Received: from [2a0a:edc0:0:c01:1d::a2]
 (helo=drehscheibe.grey.stw.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1lNEtQ-0006LS-2E; Fri, 19 Mar 2021 14:10:20 +0100
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1lNEtP-0000z9-En; Fri, 19 Mar 2021 14:10:19 +0100
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1lNEtM-00AxYE-DG; Fri, 19 Mar 2021 14:10:16 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Cc: m.tretter@pengutronix.de
Date: Fri, 19 Mar 2021 14:10:15 +0100
Message-Id: <20210319131016.2612134-7-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210319131016.2612134-1-m.tretter@pengutronix.de>
References: <20210319131016.2612134-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210319_131020_801464_BE620D6E 
X-CRM114-Status: GOOD (  14.14  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 6/7] net: phy: dp83867: read status from PHY status register
 PHYSTS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>

Read link status information in dp83867 specific register instead of
using `genphy_read_status()`.

In case of a link downshift, `genphy_read_status()` can return
`SPEED_1000` even if the negotiated speed is 100 Mbit.

A downshift can happen, if both link-partners are gigabit-capable, but
the connection supports only 100 MBit, for example because of a 100 MBit
PoE injector that connects only 2 of the 4 twisted pairs.

Signed-off-by: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>
Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/net/phy/dp83867.c | 36 ++++++++++++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/drivers/net/phy/dp83867.c b/drivers/net/phy/dp83867.c
index dd769b4d3e38..c19f6ecba267 100644
--- a/drivers/net/phy/dp83867.c
+++ b/drivers/net/phy/dp83867.c
@@ -16,6 +16,7 @@
 #define DP83867_DEVADDR		MDIO_MMD_VEND2
 
 #define MII_DP83867_PHYCTRL	0x10
+#define MII_DP83867_PHYSTS	0x11
 #define MII_DP83867_MICR	0x12
 #define MII_DP83867_ISR		0x13
 #define MII_DP83867_CFG2	0x14
@@ -65,6 +66,11 @@
 #define DP83867_PHYCTRL_TXFIFO_SHIFT		14
 #define DP83867_PHYCR_RESERVED_MASK		BIT(11)
 
+/* PHY STS bits */
+#define DP83867_PHYSTS_SPEED_1000		BIT(15)
+#define DP83867_PHYSTS_SPEED_100		BIT(14)
+#define DP83867_PHYSTS_DUPLEX_FULL		BIT(13)
+
 /* RGMIIDCTL bits */
 #define DP83867_RGMII_TX_CLK_DELAY_SHIFT	4
 
@@ -109,6 +115,35 @@ struct dp83867_private {
 	bool rxctrl_strap_quirk;
 };
 
+static int dp83867_read_status(struct phy_device *phydev)
+{
+	int status;
+	int ret;
+
+	ret = genphy_update_link(phydev);
+	if (ret)
+		return ret;
+
+	status = phy_read(phydev, MII_DP83867_PHYSTS);
+	if (status < 0)
+		return status;
+
+	phydev->speed = SPEED_10;
+	phydev->duplex = DUPLEX_HALF;
+
+	if (status & DP83867_PHYSTS_SPEED_1000)
+		phydev->speed = SPEED_1000;
+	else if (status & DP83867_PHYSTS_SPEED_100)
+		phydev->speed = SPEED_100;
+
+	if (status & DP83867_PHYSTS_DUPLEX_FULL)
+		phydev->duplex = DUPLEX_FULL;
+
+	phydev->pause = phydev->asym_pause = 0;
+
+	return 0;
+}
+
 static int dp83867_config_port_mirroring(struct phy_device *phydev)
 {
 	struct dp83867_private *dp83867 = phydev->priv;
@@ -279,6 +314,7 @@ static struct phy_driver dp83867_driver[] = {
 		.drv.name = "TI DP83867",
 		.features = PHY_GBIT_FEATURES,
 		.config_init = dp83867_config_init,
+		.read_status = dp83867_read_status,
 	},
 };
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

