Delivery-date: Wed, 06 Jul 2022 16:22:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o95vL-007nPl-Ol
	for lore@lore.pengutronix.de; Wed, 06 Jul 2022 16:22:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o95vN-0007wK-KN
	for lore@pengutronix.de; Wed, 06 Jul 2022 16:22:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CkkPUgelOfRP1YpdDQEUq1LFJrQ19MSyeo+8wJoPM1o=; b=N367Kf8XYhXo/3X4s/euaHB+wy
	wEghMBTwIN8vZIGAjBkiYRtjw3/DBey3nJtpZoPJpnXHW7gp5j5GNVF7Ys6U1Zb24ESueLtKxPcq1
	xtWpvVpbYb9slXdakPxTy7sB/bcSbzKHmE5YpVF3E3Z/Ovy9DTXZZyTF0Hah9isAhvl8bMfkAKv5s
	nCFfE2yRDhxYetOzs7AgKD5q5grRhVFzNWJIFMW19+iqqGD+XAFDI2fRTak4jo7MQxeG25WC3M8U1
	V7Mr/9QAjIn50WY201x7Yc7Twc1ri2nSI6c6//tE3nm09zhwWrIC+BdlfM9f0P4pwC87Pyev9jUYr
	DJpyAkBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o95u4-00Ab0D-Kd; Wed, 06 Jul 2022 14:21:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o95tu-00AawP-Rr
	for barebox@lists.infradead.org; Wed, 06 Jul 2022 14:21:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1o95tt-0007dJ-Ma
	for barebox@lists.infradead.org; Wed, 06 Jul 2022 16:21:09 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1o95tp-004mEW-FJ
	for barebox@lists.infradead.org; Wed, 06 Jul 2022 16:21:09 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1o95tr-009Wd8-JJ
	for barebox@lists.infradead.org; Wed, 06 Jul 2022 16:21:07 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed,  6 Jul 2022 16:21:02 +0200
Message-Id: <20220706142105.2266956-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220706142105.2266956-1-m.felsch@pengutronix.de>
References: <20220706142105.2266956-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_072111_011515_A1003DA8 
X-CRM114-Status: GOOD (  11.61  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/4] phy: fix deep probe support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Commit 9474a29003 ("phy: Add deep probe support") added the deep probe
support but this commit was missing the of_phy_get_by_phandle() isn't
calling the internal _of_phy_get() helper. Fix this by moving the
of_device_ensure_probed() call into the of_phy_provider_lookup() helper
which gets called by both functions.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/phy/phy-core.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index b298da0000..ef7bd76648 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -220,6 +220,11 @@ static struct phy_provider *of_phy_provider_lookup(struct device_node *node)
 {
 	struct phy_provider *phy_provider;
 	struct device_node *child;
+	int ret;
+
+	ret = of_device_ensure_probed(node);
+	if (ret)
+		return ERR_PTR(ret);
 
 	list_for_each_entry(phy_provider, &phy_provider_list, list) {
 		if (phy_provider->dev->device_node == node)
@@ -255,10 +260,6 @@ static struct phy *_of_phy_get(struct device_node *np, int index)
 	if (ret)
 		return ERR_PTR(-ENODEV);
 
-	ret = of_device_ensure_probed(args.np);
-	if (ret)
-		return ERR_PTR(ret);
-
 	phy_provider = of_phy_provider_lookup(args.np);
 	if (IS_ERR(phy_provider)) {
 		return ERR_CAST(phy_provider);
-- 
2.30.2



