Delivery-date: Mon, 25 Mar 2024 12:02:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1roi6R-003j4s-0D
	for lore@lore.pengutronix.de;
	Mon, 25 Mar 2024 12:02:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1roi6P-0001Ef-Lq
	for lore@pengutronix.de; Mon, 25 Mar 2024 12:02:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0BIfDBDxKpLKw6RjGOYxNbyzGZNB4kh9nL1YlooeqQ0=; b=DZdorQhEiJny/O71FK9ER1Vbfr
	czxnujcahX7xKwBaDZ/vL5q2IcT3wXIfviMmRrRWNoBo1/3S4gyiX8s5/Ws/0wHDo9luRTPhRvIgc
	t6sSFWE0z+9sn1E95irMgbERvy5PDuf4jd9DLbW2wBcChPC+fIR/5adVHx60VTGOhWPFAg/AZgm/C
	3c00id06EkZ9nk0hS+Xav1cUn83uhVu0kMzS7Q/29fQB1/KIixoPw7rMn5Mb7P34wxuAq/FckRucS
	o8/X/DJ9/p3+rm3tFv+vtG0SxLw9+f4D8PoBNiIYFN+mvSbnCphAiZWsiidp6y9LpueCzMs4UMtE0
	H5gYTeXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roi5u-0000000Gv3C-08id;
	Mon, 25 Mar 2024 11:02:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roi5p-0000000Gv1Z-25bC
	for barebox@lists.infradead.org;
	Mon, 25 Mar 2024 11:02:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1roi5o-00011p-Ab; Mon, 25 Mar 2024 12:02:16 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1roi5n-008P6W-UM; Mon, 25 Mar 2024 12:02:15 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1roi5n-00Dqqm-2g;
	Mon, 25 Mar 2024 12:02:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 25 Mar 2024 12:02:14 +0100
Message-Id: <20240325110214.3301152-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_040217_559410_B2661484 
X-CRM114-Status: GOOD (  12.95  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] net: phy: do not crash on missing read_page()/write_page() ops
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Normally phy_select_page() is only called from within the phy driver.
The exception is the r8169 network driver. It calls phy_select_page()
assuming that its internal phy is supported by the realtek phy driver
which supports this operation. It can happen though that the internal
phy is not yet supported by the realtek phy driver and thus support
falls back to the generic phy driver. return gracefully in this case
instead of crashing barebox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/phy-core.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/net/phy/phy-core.c b/drivers/net/phy/phy-core.c
index ab52de35b5..b12f54ed38 100644
--- a/drivers/net/phy/phy-core.c
+++ b/drivers/net/phy/phy-core.c
@@ -27,6 +27,11 @@ static int phy_read_page(struct phy_device *phydev)
 {
 	struct phy_driver *phydrv = to_phy_driver(phydev->dev.driver);
 
+	if (!phydrv->read_page) {
+		dev_warn_once(&phydev->dev, "read_page callback not available, PHY driver not loaded?\n");
+		return -EOPNOTSUPP;
+	}
+
 	return phydrv->read_page(phydev);
 }
 
@@ -34,6 +39,11 @@ static int phy_write_page(struct phy_device *phydev, int page)
 {
 	struct phy_driver *phydrv = to_phy_driver(phydev->dev.driver);
 
+	if (!phydrv->write_page) {
+		dev_warn_once(&phydev->dev, "write_page callback not available, PHY driver not loaded?\n");
+		return -EOPNOTSUPP;
+	}
+
 	return phydrv->write_page(phydev, page);
 }
 
-- 
2.39.2



