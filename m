Delivery-date: Fri, 25 Jun 2021 16:03:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwmQq-0006TP-5m
	for lore@lore.pengutronix.de; Fri, 25 Jun 2021 16:03:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwmQp-00061X-8P
	for lore@pengutronix.de; Fri, 25 Jun 2021 16:03:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UQ7XRhmLP3h8VPUhJqap2iRRKveCV4K+o7/EZC0viy0=; b=up8UjKS3t7xji0
	b2IeXl8D2P0CluWKXOdmveXLdLcHDymR6eVEhLog9vcaLCO5mWl4bckxDGl9/k14ujDrskfD0tOe8
	vNrVYeUfWCFfH7K6b7o4ghUPHnf+MyEYospOhUID5t2DYUnqeCgxNti5o9ZQJklvkS4lkFCBd8xWp
	wq4xp9yDLevUrdowmIWknXQKVIJyYBVQoAoEZlaWaHMWTvFeIulBwNfWAICP47dYMrG8m4FuVkt1/
	PEJxJCGqhz3ivgjNDdTXaT9CXH9kPVQU1+71K9zKFwUIjtCUnvwclDTPTZZhnUcDCnnClwgocUXVB
	kMVDOGiJS+d2eOZ9NLQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwmPQ-001obm-8u; Fri, 25 Jun 2021 14:02:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwmPL-001oat-EZ
 for barebox@lists.infradead.org; Fri, 25 Jun 2021 14:02:12 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwmPI-0005pU-GY; Fri, 25 Jun 2021 16:02:08 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwmPI-0000rE-7R; Fri, 25 Jun 2021 16:02:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 25 Jun 2021 16:02:06 +0200
Message-Id: <20210625140206.2000-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210625140206.2000-1-s.hauer@pengutronix.de>
References: <20210625140206.2000-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210625_070211_527408_E2C6722B 
X-CRM114-Status: GOOD (  12.08  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] of: Fix deep-probe triggering when removing nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

During deletion of device nodes of_find_device_by_node() is called in
order to set the device_node pointer of the device corresponding to
the to-be-deleted node to NULL. This is not necessary anymore as the
live tree should not be deleted.
This fixes problems with deep-probe support. of_find_device_by_node()
calls of_device_ensure_probed(), but this may only be called on the
live tree, not on arbitrary nodes that shall be deleted.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 551b41fc9e..9a8fdc81e8 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2436,7 +2436,6 @@ void of_delete_node(struct device_node *node)
 {
 	struct device_node *n, *nt;
 	struct property *p, *pt;
-	struct device_d *dev;
 
 	if (!node)
 		return;
@@ -2457,10 +2456,6 @@ void of_delete_node(struct device_node *node)
 		list_del(&node->list);
 	}
 
-	dev = of_find_device_by_node(node);
-	if (dev)
-		dev->device_node = NULL;
-
 	free(node->name);
 	free(node->full_name);
 	free(node);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

