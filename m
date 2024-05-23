Delivery-date: Thu, 23 May 2024 16:41:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sA9dC-00FH9J-2V
	for lore@lore.pengutronix.de;
	Thu, 23 May 2024 16:41:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sA9dB-0006Rj-Vo
	for lore@pengutronix.de; Thu, 23 May 2024 16:41:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LrkfpK1rh8SLmB42X8Bk7a25Tp89IrkIWPvidZY7UEo=; b=Z5YyJ0LY6TGbga6tWeJkg9UTrm
	G9WE+V9Iosy05tuPDnu5SX1S36vGK3leafcNpH4kbKDyv1ODhvGKRxOE5btj06/liQu6z6na+hcol
	CFP2UWWj5zCLQueySrE49TJUMMTZD1sXCrCT50EFMt+qg73l7nIwIlNMIIxGzpfPtUNPfT1l/Mmd3
	pA2I+xgkdA5lKgnz/IoLlv2xIsnZsg4VxVO/wTUOxWgOYerQPBYajAyaSwxmzELUD6QaVGXohMiFl
	gyX2PZUx9O3eNHeDZjjB33FSIVTYAjveMwhkXV3YOJP4ZpYKlcxy4YoaDANiqJrlm7z1HP0rCha2/
	1ta7X3iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA9cZ-00000006WMS-2rm8;
	Thu, 23 May 2024 14:40:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA9cV-00000006WKz-14Xs
	for barebox@lists.infradead.org;
	Thu, 23 May 2024 14:40:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1sA9cQ-00065G-Tu; Thu, 23 May 2024 16:40:34 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1sA9cQ-002fq5-HO; Thu, 23 May 2024 16:40:34 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1sA9cQ-0078ww-1a;
	Thu, 23 May 2024 16:40:34 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Thu, 23 May 2024 16:40:30 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240523-feature-dp83867-soft-reset-v1-3-428d15168dfe@pengutronix.de>
References: <20240523-feature-dp83867-soft-reset-v1-0-428d15168dfe@pengutronix.de>
In-Reply-To: <20240523-feature-dp83867-soft-reset-v1-0-428d15168dfe@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240523_074039_331841_002B5C80 
X-CRM114-Status: GOOD (  14.35  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] net: phy: dp83867: sync dp83867_phy_rest
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is a port of the `dp83867_phy_reset` function at the state of linux
commit a129b41fe0a8b4da828c46b10f5244ca07a3fec3 ("Revert "net: phy:
dp83867: perform soft reset and retain established link"). Which
performs a reset before starting the initial configuration.

It is a refactoring of commit 095cd32961aab64cfe72941ce43d99876852e12b
("net: phy: dp83867: reset PHY on probe") which already ported parts of
the function, but diverted from the upstream implementation.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 drivers/net/phy/dp83867.c | 28 ++++++++++++++++++++++------
 1 file changed, 22 insertions(+), 6 deletions(-)

diff --git a/drivers/net/phy/dp83867.c b/drivers/net/phy/dp83867.c
index aefc651489..3c9a8e6355 100644
--- a/drivers/net/phy/dp83867.c
+++ b/drivers/net/phy/dp83867.c
@@ -362,8 +362,6 @@ static int dp83867_of_init(struct phy_device *phydev)
 	return 0;
 }
 
-static int dp83867_phy_reset(struct phy_device *phydev); /* see below */
-
 static int dp83867_probe(struct phy_device *phydev)
 {
 	struct dp83867_private *dp83867;
@@ -372,8 +370,6 @@ static int dp83867_probe(struct phy_device *phydev)
 
 	phydev->priv = dp83867;
 
-	dp83867_phy_reset(phydev);
-
 	return dp83867_of_init(phydev);
 }
 
@@ -571,14 +567,33 @@ static int dp83867_phy_reset(struct phy_device *phydev)
 {
 	int err;
 
+	err = phy_write(phydev, DP83867_CTRL, DP83867_SW_RESET);
+	if (err < 0)
+		return err;
+
+	udelay(20);
+
+	err = phy_modify(phydev, MII_DP83867_PHYCTRL,
+			 DP83867_PHYCR_FORCE_LINK_GOOD, 0);
+	if (err < 0)
+		return err;
+
+	/* Configure the DSP Feedforward Equalizer Configuration register to
+	 * improve short cable (< 1 meter) performance. This will not affect
+	 * long cable performance.
+	 */
+	err = phy_write_mmd(phydev, DP83867_DEVADDR, DP83867_DSP_FFE_CFG,
+			    0x0e81);
+	if (err < 0)
+		return err;
+
 	err = phy_write(phydev, DP83867_CTRL, DP83867_SW_RESTART);
 	if (err < 0)
 		return err;
 
 	udelay(20);
 
-	return phy_modify(phydev, MII_DP83867_PHYCTRL,
-			 DP83867_PHYCR_FORCE_LINK_GOOD, 0);
+	return 0;
 }
 
 static struct phy_driver dp83867_driver[] = {
@@ -590,6 +605,7 @@ static struct phy_driver dp83867_driver[] = {
 
 		.probe          = dp83867_probe,
 		.config_init	= dp83867_config_init,
+		.soft_reset	= dp83867_phy_reset,
 
 		.read_status	= dp83867_read_status,
 	},

-- 
2.39.2



