Delivery-date: Thu, 20 Jun 2024 14:56:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sKHL9-009GC6-0A
	for lore@lore.pengutronix.de;
	Thu, 20 Jun 2024 14:56:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sKHL8-0007wv-G8
	for lore@pengutronix.de; Thu, 20 Jun 2024 14:56:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fOKHsX8hZDmj/tFc49kUvkQjeFlLv/boZE/Yp6FgWaw=; b=lYzMgZCJ45CWO8yUlxN79K1ovO
	nDzkg+GTs4AqaIMEfYq5wSjyS9CdnMxkg4Ms79eGwBrAs0Rq9Rt7lCz8CKtRI+mozDbFaqL6TNX47
	mBabW2uEOSc4XWzx2agkIivVxEaIhAQAtYuVp8qATMCIeA8LlSLPx1P8s+J/mF/PgTT7JBJwuQX6C
	ouqlOfp11b+4NyfpF4UH4ljcSZIpNI6+kEHn3h/xAqxRY4Xy374RpFq1/hBkkNSuM6aSGEcOt5+6h
	J73g+ClzTOZSDUHYPogfMGnnrG8pG6VBnRiVUAAD91HVbvRfze/pUjfG4keLJlZnrSZZKJZJoC716
	7caGEaAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKHKW-000000051da-1pdp;
	Thu, 20 Jun 2024 12:55:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKHKS-000000051bP-1mIP
	for barebox@lists.infradead.org;
	Thu, 20 Jun 2024 12:55:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sKHKQ-0007qR-Sz; Thu, 20 Jun 2024 14:55:50 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sKHKQ-003hnJ-G2; Thu, 20 Jun 2024 14:55:50 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sKHKQ-001xEF-1G;
	Thu, 20 Jun 2024 14:55:50 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 20 Jun 2024 14:55:48 +0200
Message-Id: <20240620125548.464201-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240620125548.464201-1-a.fatoum@pengutronix.de>
References: <20240620125548.464201-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_055552_485162_61630DB2 
X-CRM114-Status: UNSURE (   8.88  )
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
Subject: [PATCH 2/2] fixup! net: register eth class
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

net: fix crash removing uninitiailized eth_device::list during shutdown

next currently crashes on barebox_shutdown(), because list is no longer
initialized after being replaced by classes.

Fixes: 27ed36df29b1 ("net: register eth class")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/net.h | 2 --
 net/eth.c     | 1 -
 2 files changed, 3 deletions(-)

diff --git a/include/net.h b/include/net.h
index 05d73e543f7e..a04ed5b0ab92 100644
--- a/include/net.h
+++ b/include/net.h
@@ -60,8 +60,6 @@ struct eth_device {
 	struct device *parent;
 	char *nodepath;
 
-	struct list_head list;
-
 	IPaddr_t ipaddr;
 	IPaddr_t netmask;
 	char ethaddr[6];
diff --git a/net/eth.c b/net/eth.c
index ce7d839ed113..7229530c055b 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -545,7 +545,6 @@ void eth_unregister(struct eth_device *edev)
 
 	unregister_device(&edev->dev);
 	slice_exit(&edev->slice);
-	list_del(&edev->list);
 }
 
 void led_trigger_network(enum led_trigger trigger)
-- 
2.39.2



