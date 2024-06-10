Delivery-date: Mon, 10 Jun 2024 09:51:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGZoq-003Zrp-38
	for lore@lore.pengutronix.de;
	Mon, 10 Jun 2024 09:51:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGZoq-0003a9-An
	for lore@pengutronix.de; Mon, 10 Jun 2024 09:51:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HTE9sCbFrdMjJBnka2xFCUMuDOb68UavsYHQ85UR09k=; b=dhwzuE7injlIIg8lw+uMZXSrSt
	p5NC3HoGfQqGtYHD/Je1Vf/XW8oP9QLfuYngTMUgFRGho8VsL9U29hbxJr0E/r/RzXTHhQc7YAfaT
	thSv2Lct6tpGRx4Ckj4nQ76oLWOkzxVHFEG4YjmFhcG4ecfDS/84NMI4/RUyYruv1nxRsRcS8cYpj
	eD53abPsQj4VlTqlWquCjaL4o4+PTQbXsUYNyHn93TzOLkbE1fOq3AxLwtFpPN62aHZeNM0ZnRCT3
	X5BdXedKBvE+42z0XtW+1bcvn6NgkUrJY2xc9Y1BKg7YO8NkfbfewEf1N39Ce4vqEfZIiT+YQf4nG
	J15Od1lA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGZoG-0000000482z-3Byg;
	Mon, 10 Jun 2024 07:51:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGZo6-0000000480B-3AXc
	for barebox@lists.infradead.org;
	Mon, 10 Jun 2024 07:51:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGZo2-0003Jj-Tu; Mon, 10 Jun 2024 09:51:06 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGZo2-001Fel-HY; Mon, 10 Jun 2024 09:51:06 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGZo2-003PNM-1P;
	Mon, 10 Jun 2024 09:51:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 10 Jun 2024 09:51:02 +0200
Message-Id: <20240610075105.812496-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240610075105.812496-1-s.hauer@pengutronix.de>
References: <20240610075105.812496-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_005110_842190_AAC35994 
X-CRM114-Status: GOOD (  11.42  )
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
Subject: [PATCH 2/5] net: ifup: use accessor to set network device ip/netmask
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have accessors to set a network devices ip/netmask. Use them
instead of accessing the struct members directly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/ifup.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/ifup.c b/net/ifup.c
index 5b92ee794d..2e1a5529a8 100644
--- a/net/ifup.c
+++ b/net/ifup.c
@@ -133,8 +133,8 @@ static int source_env_network(struct eth_device *edev)
 		memcpy(edev->ethaddr, ethaddr, 6);
 
 	if (mode == ETH_MODE_STATIC) {
-		edev->ipaddr = ipaddr;
-		edev->netmask = netmask;
+		net_set_ip(edev, ipaddr);
+		net_set_netmask(edev, netmask);
 		if (gateway)
 			net_set_gateway(gateway);
 		if (serverip)
-- 
2.39.2



