Delivery-date: Wed, 12 Jun 2024 16:10:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHOft-004qm7-08
	for lore@lore.pengutronix.de;
	Wed, 12 Jun 2024 16:10:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHOfs-0007lg-BQ
	for lore@pengutronix.de; Wed, 12 Jun 2024 16:10:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XHuiejzemv0dEbsNMChE8+ZkS83vuBGORsvaZ64L9VE=; b=2WZHd9lilI7/ev60pJV29Z2CPp
	g6Cxqcqsi/Tnd/wR42KUKPk7GpESZZ+DDqCdRHiSurC2WzQSLBaSSxnbIQPRhr9EjP+Wwt8WOzBF5
	OhZC2g8aQNKiNRU0VNkfPbz2IyS45cqwNFcV6t5wF6DJd7fgzN2fbpRReG7doUxyJRZseYKYBtXHR
	BDHuOtsIdP3O1QPrYqKWDW68GFzjGO8dt7MZWJSmAEA27wc+2v6d3ytlwR+/daKifB+l7WORQOWja
	wVSorqzyr6bZWsDsPdHx0NVsYl07yhwpv/vJupDMspH5WKuFgTB87W3iFlyxDET/QhXLqagwUIFhT
	HJ/oRfVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHOfG-0000000CtIl-1zU0;
	Wed, 12 Jun 2024 14:09:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHOfD-0000000CtI4-1QMf
	for barebox@lists.infradead.org;
	Wed, 12 Jun 2024 14:09:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1sHOfA-0007gR-99; Wed, 12 Jun 2024 16:09:20 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1sHOf9-001o6k-Sp; Wed, 12 Jun 2024 16:09:19 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1sHOf9-00G4wN-2j;
	Wed, 12 Jun 2024 16:09:19 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 12 Jun 2024 16:09:18 +0200
Message-Id: <20240612140918.3832186-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_070923_402614_124A4056 
X-CRM114-Status: GOOD (  17.04  )
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
Subject: [PATCH v1] net: phy: Add support for PHY-specific link polling interval and randomization
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Introduce the ability to use PHY-specific link polling intervals. Some
PHYs, such as the TI DP83TG720, require different polling intervals for
link status checks. This is particularly necessary for PHYs that do not
support autonegotiation and need frequent assistance to establish a
link.

For instance, the TI DP83TG720 PHY may need to be reset if a link is not
established within 100 milliseconds. If two identical PHYs are connected
to each other and require the same software assistance, they might reset
at the same frequency and fail to establish a link. To mitigate this, a
randomization mechanism is added to the polling interval.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/phy/dp83tg720.c | 17 +++++++++++++++++
 include/linux/phy.h         |  2 ++
 net/eth.c                   |  9 ++++++++-
 3 files changed, 27 insertions(+), 1 deletion(-)

diff --git a/drivers/net/phy/dp83tg720.c b/drivers/net/phy/dp83tg720.c
index d57985539d..b42438292d 100644
--- a/drivers/net/phy/dp83tg720.c
+++ b/drivers/net/phy/dp83tg720.c
@@ -5,6 +5,7 @@
 #include <common.h>
 #include <linux/mdio.h>
 #include <linux/phy.h>
+#include <stdlib.h>
 
 #define DP83TG720S_PHY_ID			0x2000a284
 
@@ -26,6 +27,8 @@
 /* Power Mode 0 is Normal mode */
 #define DP83TG720S_LPS_CFG3_PWR_MODE_0		BIT(0)
 
+#define DP83TG720S_POLL_TIMEOUT_MS		100
+
 static int dp83tg720_config_rgmii_delay(struct phy_device *phydev)
 {
 	u16 rgmii_delay_mask;
@@ -92,6 +95,12 @@ static int dp83tg720_read_status(struct phy_device *phydev)
 {
 	u16 phy_sts;
 
+	/* Randomize the polling interval to avoid synchronization of multiple
+	 * PHYs. The polling interval is set to 150ms +/- 50ms.
+	 */
+	phydev->polling_interval = (DP83TG720S_POLL_TIMEOUT_MS +
+				    (rand() % 10) * 10) * MSECOND;
+
 	phy_sts = phy_read(phydev, DP83TG720S_MII_REG_10);
 	phydev->link = !!(phy_sts & DP83TG720S_LINK_STATUS);
 	if (!phydev->link) {
@@ -112,12 +121,20 @@ static int dp83tg720_read_status(struct phy_device *phydev)
 	return 0;
 }
 
+static int dp83tg720_probe(struct phy_device *phydev)
+{
+	phydev->polling_interval = DP83TG720S_POLL_TIMEOUT_MS * MSECOND;
+
+	return 0;
+}
+
 static struct phy_driver dp83tg720_driver[] = {
 	{
 		PHY_ID_MATCH_MODEL(DP83TG720S_PHY_ID),
 		.drv.name	= "TI DP83TG720S",
 		.read_status	= dp83tg720_read_status,
 		.config_init	= dp83tg720_phy_init,
+		.probe		= dp83tg720_probe,
 	}
 };
 device_phy_drivers(dp83tg720_driver);
diff --git a/include/linux/phy.h b/include/linux/phy.h
index ef25dec033..ccc1857adc 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -247,6 +247,8 @@ struct phy_device {
 	void (*adjust_link)(struct eth_device *dev);
 
 	struct cdev cdev;
+
+	uint64_t polling_interval;
 };
 #define to_phy_device(d) container_of(d, struct phy_device, dev)
 
diff --git a/net/eth.c b/net/eth.c
index 98567d8d3f..b9e047ebf9 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -197,14 +197,21 @@ int eth_carrier_poll_once(struct eth_device *edev)
  */
 static int eth_carrier_check(struct eth_device *edev, bool may_wait)
 {
+	uint64_t timeout;
+
 	if (!IS_ENABLED(CONFIG_PHYLIB))
 		return 0;
 
 	if (!edev->phydev)
 		return 0;
 
+	if (edev->phydev->polling_interval)
+		timeout = edev->phydev->polling_interval;
+	else
+		timeout = 5 * SECOND;
+
 	if (!edev->last_link_check ||
-	    is_timeout(edev->last_link_check, 5 * SECOND))
+	    is_timeout(edev->last_link_check, timeout))
 		eth_carrier_poll_once(edev);
 
 	if (may_wait && !edev->phydev->link) {
-- 
2.39.2



