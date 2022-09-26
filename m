Delivery-date: Mon, 26 Sep 2022 10:19:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ocjL4-00F9ki-I0
	for lore@lore.pengutronix.de; Mon, 26 Sep 2022 10:19:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ocjL2-0001g6-JI
	for lore@pengutronix.de; Mon, 26 Sep 2022 10:19:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FOvxyRhuHJ/BHmMYKzHpAmOSKsUNYEg5ntcOM3RLlEY=; b=vExlfEQt6FX+NYSyng/bxd/NGC
	TKYH4VnbwfOxAjJwyOEEVEYgtJD8aXu6A/oYyCmdWXTfI4jsbB2Fda8zbzHIDt2xciV2+g9AG8k8h
	g3Fa9Vx07iOP7w52o2Zex4yEvuKv36KTJ5gf3rqAYQMZ6pRZpQWXHZwIvvIAdQxmCQ2cCGZXGbc+M
	gXhUx3WTLoQV/Rt8R/p/8/nEKkrVFKydCQIqOGccgOI19aKWVJ3H8fbE889Z+yGzlZT60Mjxg/YBb
	pzUrDpXKh8XJmbb0di3mXkDYOxAhyHjVBBM8QREiKZI/zYKNV9Xe4gsLxNCSvVDPCWWnpGACOhaBh
	ZYlFpBHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocjJd-0034PR-I8; Mon, 26 Sep 2022 08:18:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocjJE-00347f-3n
	for barebox@lists.infradead.org; Mon, 26 Sep 2022 08:17:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1ocjJB-0001Dh-5B; Mon, 26 Sep 2022 10:17:45 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1ocjJB-002zkA-SK; Mon, 26 Sep 2022 10:17:44 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1ocjJ9-000K2V-5a; Mon, 26 Sep 2022 10:17:43 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 26 Sep 2022 10:17:37 +0200
Message-Id: <20220926081740.76968-5-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220926081740.76968-1-o.rempel@pengutronix.de>
References: <20220926081740.76968-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_011748_173898_84FB4577 
X-CRM114-Status: GOOD (  18.09  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 5/8] ARM: boards: skov-imx6: rework switch detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The KSZ8873 switch supports two ways of communication over MDIO bus:
1. Standard MDIO opcodes to talk with the switch PHYs only.
2. Not standard MDIO opcodes to talk with complete switch management and
   PHYs.

Previous switch detection board code was using option 1. over FEC. Now,
with the switch driver we are using option 2. with GPIO bitbang MDIO
bus, since FEC do not support special opcodes.

To avoid duplicating switch driver functionality, we will let do switch
detection and validation to the switch driver and the board code should
only test if switch driver was probed.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/skov-imx6/board.c | 27 ++++++++++-----------------
 1 file changed, 10 insertions(+), 17 deletions(-)

diff --git a/arch/arm/boards/skov-imx6/board.c b/arch/arm/boards/skov-imx6/board.c
index 140689c87b..3c51b76735 100644
--- a/arch/arm/boards/skov-imx6/board.c
+++ b/arch/arm/boards/skov-imx6/board.c
@@ -133,9 +133,6 @@ copy_mac_from_eth0:
 	return eth_of_fixup_node_from_eth_device(root, node_path, ethname);
 }
 
-#define SKOV_GPIO_MDIO_BUS	0
-#define SKOV_LAN1_PHY_ADDR	1
-
 #define MAX_V_GPIO 8
 
 struct board_description {
@@ -547,29 +544,25 @@ static void skov_init_board(const struct board_description *variant)
 
 static int skov_switch_test(void)
 {
-	struct phy_device *phydev;
+	struct device_d *sw_dev;
 	struct device_d *eth0;
-	struct mii_bus *mii;
 	int ret;
 
 	if (skov_board_no < 0)
 		return 0;
 
-	/* On this boards, we have only one MDIO bus. So, it is enough to take
-	 * the first one.
-	 */
-	mii = mdiobus_get_bus(SKOV_GPIO_MDIO_BUS);
-	/* We can't read the switch ID, but we get get ID of the first PHY,
-	 * which is enough to test if the switch is attached.
+	/* Driver should be able to detect if device do actually
+	 * exist. So, we need only to detect if driver is actually
+	 * probed.
 	 */
-	phydev = get_phy_device(mii, SKOV_LAN1_PHY_ADDR);
-	if (IS_ERR(phydev))
-		goto no_switch;
-
-	if (phydev->phy_id != PHY_ID_KSZ886X)
+	sw_dev = of_find_device_by_node_path("/mdio/switch@0");
+	if (!sw_dev) {
+		pr_err("switch@0 device was not created!\n");
 		goto no_switch;
+	}
 
-	return 0;
+	if (dev_is_probed(sw_dev))
+		return 0;
 
 no_switch:
 	skov_have_switch = false;
-- 
2.30.2



