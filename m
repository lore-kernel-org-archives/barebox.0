Delivery-date: Tue, 09 May 2023 08:06:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pwGUt-00BCFi-SQ
	for lore@lore.pengutronix.de; Tue, 09 May 2023 08:06:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pwGUs-0003Rn-2z
	for lore@pengutronix.de; Tue, 09 May 2023 08:06:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Tn9VyeHN9NokhsKVx16Ep6Ykwi4RJenrElchNPr0Lsg=; b=ky463O0SQyolTnSE8r+xOWMua8
	A3GXecs5Se6DIffga8DuADHwMz8Gcx26J0TU4R4Zbz7eJY78V/LdnYT97JzZWSD+4ITZBmr8e8+DL
	+o/cQ4ve6LpGmMxD8o81yKp4ZcO7L1VBJFUvPJmYeJLNmGxgJUab4Pzwz23UoyYyi6Q2nhbjo8RzA
	NUh2DkbG2hNAzKKgipVe0b0hK3VmWRPKkQTuLyyysy+Xwo4U2OrlzWdjLldXvhgFkAtbp9ystdlC4
	sZQBgOF7K4AiXrLrUTGfl5D2O3/tpEK64zkx9eWuEviEWsOL5V8KVC4U9vcomsTuH6V1BwcqCBX2D
	axhaTGsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwGTc-002NII-1T;
	Tue, 09 May 2023 06:05:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwGTZ-002NH2-37
	for barebox@lists.infradead.org;
	Tue, 09 May 2023 06:05:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <jzi@pengutronix.de>)
	id 1pwGTV-0003G4-UJ; Tue, 09 May 2023 08:05:25 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <jzi@pengutronix.de>)
	id 1pwGTV-002AZL-6d; Tue, 09 May 2023 08:05:25 +0200
Received: from jzi by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <jzi@pengutronix.de>)
	id 1pwGTU-002yHu-In; Tue, 09 May 2023 08:05:24 +0200
From: Johannes Zink <j.zink@pengutronix.de>
To: barebox@lists.infradead.org
Cc: patchwork-jzi@pengutronix.de,
	Johannes Zink <j.zink@pengutronix.de>
Date: Tue,  9 May 2023 08:05:21 +0200
Message-Id: <20230509060521.707205-1-j.zink@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230508_230530_006733_E6721421 
X-CRM114-Status: GOOD (  12.89  )
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
Subject: [PATCH v2] net: phy: print error messages to log
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Previously the phy core did just print info and error messages to
console, but they did not show up in the system log.

Now the dev_info and dev_err macros are used instead of raw puts,
they are now nicely formatted and show up in the log.

Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
---
Changelog:

v1 -> v2: Worked in Ahmad's review findings:
          - use dev_err and dev_info instead of pr_err and pr_info

          Thank you for your review!

 drivers/net/phy/phy.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 54dbbca7255a..dbc30b66b828 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -462,7 +462,7 @@ int phy_device_connect(struct eth_device *edev, struct mii_bus *bus, int addr,
 	ret = -ENODEV;
 out:
 	if (ret)
-		puts("Unable to find a PHY (unknown ID?)\n");
+		dev_err(&edev->dev, "Unable to find a PHY (unknown ID?)\n");
 
 	return ret;
 }
@@ -675,7 +675,7 @@ int genphy_aneg_done(struct phy_device *phydev)
 
 	/* Restart auto-negotiation if remote fault */
 	if (bmsr & BMSR_RFAULT) {
-		puts("PHY remote fault detected\n"
+		dev_info(&phydev->dev, "PHY remote fault detected\n"
 		     "PHY restarting auto-negotiation\n");
 		phy_write(phydev, MII_BMCR,
 				  BMCR_ANENABLE | BMCR_ANRESTART);
-- 
2.39.2



