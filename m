Delivery-date: Fri, 19 Mar 2021 14:12:05 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNEv7-0007RH-Mo
	for lore@lore.pengutronix.de; Fri, 19 Mar 2021 14:12:05 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNEv6-0006wk-6R
	for lore@pengutronix.de; Fri, 19 Mar 2021 14:12:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Bo7UoyZf78VFeHbGTjtZdRkp+4LoYIClh8bNBFMMEw0=; b=ZCzuMrMUArRFGsgavmArLwlrS
	1gacVXe1ay8U6aKgZDlKK4QT1fr4LoHbQdV8ORlFihLLG0M38lrfOe5bE+MwF5jTYzNUEoEstxRJP
	t+T2UNwcwlhg123KjboTkulV0Ii3TuJPk86fuLUDHsZiQFxkrLskmLqQKQxyseV0R0RYWhioJ6cEZ
	WUXmUIPoUo3AWpqhkdKoxUZlzfMuPlHIih4X6hhFfK6iyUp/sbZOMoYkfIw/c7h7zRG4nM18U1+qN
	qZ/6dvIIokZcJ8TjoQjOctHJydqVHWimhtu80dEjvWJWdef7jdhVDHsKuIOeBdPT9IqRuau0r1xvx
	T2eMu2Hdg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNEts-007SIA-Cf; Fri, 19 Mar 2021 13:10:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNEtQ-007SC9-GT
 for barebox@lists.infradead.org; Fri, 19 Mar 2021 13:10:25 +0000
Received: from [2a0a:edc0:0:c01:1d::a2]
 (helo=drehscheibe.grey.stw.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1lNEtQ-0006LQ-2p; Fri, 19 Mar 2021 14:10:20 +0100
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1lNEtP-0000zA-El; Fri, 19 Mar 2021 14:10:19 +0100
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1lNEtM-00AxYB-Cr; Fri, 19 Mar 2021 14:10:16 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Cc: m.tretter@pengutronix.de
Date: Fri, 19 Mar 2021 14:10:14 +0100
Message-Id: <20210319131016.2612134-6-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210319131016.2612134-1-m.tretter@pengutronix.de>
References: <20210319131016.2612134-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210319_131020_810142_C64CF07C 
X-CRM114-Status: UNSURE (   9.51  )
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
Subject: [PATCH 5/7] net: phy: dp83867: remove explicit setting of cfg2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>

Setting cfg2 is superfluous, because it just sets the default value.
Remove it.

Signed-off-by: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>
Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/net/phy/dp83867.c | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/drivers/net/phy/dp83867.c b/drivers/net/phy/dp83867.c
index e796498c4a18..dd769b4d3e38 100644
--- a/drivers/net/phy/dp83867.c
+++ b/drivers/net/phy/dp83867.c
@@ -180,7 +180,7 @@ static int dp83867_config_init(struct phy_device *phydev)
 {
 	struct dp83867_private *dp83867;
 	int ret;
-	u16 val, delay, cfg2;
+	u16 val, delay;
 
 	if (!phydev->priv) {
 		dp83867 = kzalloc(sizeof(*dp83867), GFP_KERNEL);
@@ -254,15 +254,6 @@ static int dp83867_config_init(struct phy_device *phydev)
 		phy_write(phydev, MII_BMCR,
 			  BMCR_ANENABLE | BMCR_FULLDPLX | BMCR_SPEED1000);
 
-		cfg2 = phy_read(phydev, MII_DP83867_CFG2);
-		cfg2 &= MII_DP83867_CFG2_MASK;
-		cfg2 |= MII_DP83867_CFG2_SPEEDOPT_10EN |
-			MII_DP83867_CFG2_SGMII_AUTONEGEN |
-			MII_DP83867_CFG2_SPEEDOPT_ENH |
-			MII_DP83867_CFG2_SPEEDOPT_CNT |
-			MII_DP83867_CFG2_SPEEDOPT_INTLOW;
-		phy_write(phydev, MII_DP83867_CFG2, cfg2);
-
 		phy_write_mmd_indirect(phydev, DP83867_RGMIICTL,
 				       DP83867_DEVADDR, 0x0);
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

