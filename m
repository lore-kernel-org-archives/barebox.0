Delivery-date: Tue, 11 Jun 2024 07:13:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGtp4-0044gB-1r
	for lore@lore.pengutronix.de;
	Tue, 11 Jun 2024 07:13:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGtp3-0007zX-Sx
	for lore@pengutronix.de; Tue, 11 Jun 2024 07:13:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eZUFxjg1XtCaA7q2//nzUErglKo/G16IwF/G+kRXr8A=; b=C/ogpGoXzsjaFVHfQLMr+cCpk2
	cqcfi1dOtWlv6PYrk2DxgbHKrXIMo1M0DnOnUdwigbHLmzE9ur7s1ewjCu74n82PAuGeMCbCR2v0w
	zJXlVzDHzRjW0Op6BmLUqYK1rx2uFi4BwVLhQu8YkIv/LxoQfgxpvCcUjLnvBwiFmw+qiRuuMWKjX
	oOl6E9eGqfTncAF4XB8TyZGmrK+NIeeqJjZvpYPD50mUsc8tiPtL48hXC+WFbK7JUGWxb/Cs8bz9X
	0HoiZ0l6xt5y2o0QlgM1h9uzpAt49AeG/2o+oRDnXYXa08klA9CmrmkXl5MNQK/UUdZ2dh20LE8SL
	EBcYdYpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGtoQ-00000007Q4U-3huo;
	Tue, 11 Jun 2024 05:12:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGtoI-00000007Q2E-1z3w
	for barebox@lists.infradead.org;
	Tue, 11 Jun 2024 05:12:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGtoF-0007np-UJ; Tue, 11 Jun 2024 07:12:39 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGtoF-001TFi-Hg; Tue, 11 Jun 2024 07:12:39 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGtoF-00HJc3-1Q;
	Tue, 11 Jun 2024 07:12:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 11 Jun 2024 07:12:34 +0200
Message-Id: <20240611051237.4126918-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240611051237.4126918-1-s.hauer@pengutronix.de>
References: <20240611051237.4126918-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_221242_569527_19B2E6B8 
X-CRM114-Status: GOOD (  11.69  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 1/4] net: use for_each_netdev()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have a define to iterate over all network interfaces, use it on the
remaining places which still iterate over the list manually.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/eth.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/net/eth.c b/net/eth.c
index 98567d8d3f..26a36474f8 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -535,7 +535,7 @@ struct eth_device *of_find_eth_device_by_node(struct device_node *np)
 	 */
 	(void)of_device_ensure_probed(np);
 
-	list_for_each_entry(edev, &netdev_list, list)
+	for_each_netdev(edev)
 		if (edev->parent->of_node == np)
 			return edev;
 	return NULL;
@@ -546,7 +546,7 @@ void eth_open_all(void)
 {
 	struct eth_device *edev;
 
-	list_for_each_entry(edev, &netdev_list, list) {
+	for_each_netdev(edev) {
 		if (edev->global_mode == ETH_MODE_DISABLED)
 			continue;
 		eth_open(edev);
@@ -559,7 +559,7 @@ static int populate_ethaddr(void)
 	bool generated = false;
 	int ret;
 
-	list_for_each_entry(edev, &netdev_list, list) {
+	for_each_netdev(edev) {
 		if (!edev->parent || is_valid_ether_addr(edev->ethaddr))
 			continue;
 
-- 
2.39.2



