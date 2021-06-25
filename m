Delivery-date: Fri, 25 Jun 2021 09:52:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwgdC-00083E-Vz
	for lore@lore.pengutronix.de; Fri, 25 Jun 2021 09:52:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwgd8-00077S-FP
	for lore@pengutronix.de; Fri, 25 Jun 2021 09:52:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AwBeoZDBH7OU9jK+IMA+BFigaPwWYvQ1t2kfOxH4DrM=; b=ags/56G4wGUwje
	6AhnaLwnwbMamCQGvAlu7G27RAtmbBlPQZ2LnxWUzuzbfrE2KYsADmD8OLw0XWeCgFbG/598sfbfR
	DW9JxMK9JPJKK6UgSqIBkD1lnBY/dXXXceRrBs/ZVOV/NTTqIvFFtWPrqjOLQp/3W9lePOr81h+mO
	VWe4IGlizNDW1OrV9G3d6y1fcLElUM0eopMD538q8BUXj4lmvDH3gmFiFyXkUrdYaefngcPvXWG4F
	RXZzuqGOhMPTxcE6W8lZNf8iyoaZ+mHuTzDfxu5ojaq1hfXVLuo5HNTbF7yMh90fgzjpV9zjVkKqK
	p44ZwzAE5hGXSfMHHSRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwgbQ-0008B1-OI; Fri, 25 Jun 2021 07:50:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwgE4-00HZDK-1q
 for barebox@lists.infradead.org; Fri, 25 Jun 2021 07:26:09 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwgDe-0002Qa-F7; Fri, 25 Jun 2021 09:25:42 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwgDd-0000d8-BY; Fri, 25 Jun 2021 09:25:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 25 Jun 2021 09:25:26 +0200
Message-Id: <20210625072540.32717-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210625072540.32717-1-s.hauer@pengutronix.de>
References: <20210625072540.32717-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210625_002608_154445_A0858B1F 
X-CRM114-Status: GOOD (  11.76  )
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
Cc: Marco Felsch <m.felsch@pengutronix.de>
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
Subject: [PATCH 05/19] of: base: move clock init from of_probe() to
 barebox_register_of()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Marco Felsch <m.felsch@pengutronix.de>

This is required for the new deep-probe mechanism. Barebox deep-probe
calls of_probe() very late and so clock drivers using the old
CLK_OF_DECLARE_DRIVER() mechanism are added very late. This would break
the deep-probe approach.

Move of_clk_init() and call it right before of_probe() should have no
impact because of_clk_init() depends only on an unflatten dtb.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Link: https://lore.pengutronix.de/20201021115813.31645-6-m.felsch@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index d0d955f464..723b1fae47 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1707,8 +1707,10 @@ int barebox_register_of(struct device_node *root)
 	of_set_root_node(root);
 	of_fix_tree(root);
 
-	if (IS_ENABLED(CONFIG_OFDEVICE))
+	if (IS_ENABLED(CONFIG_OFDEVICE)) {
+		of_clk_init(root, NULL);
 		return of_probe();
+	}
 
 	return 0;
 }
@@ -2354,7 +2356,6 @@ int of_probe(void)
 
 	of_platform_device_create_root(root_node);
 
-	of_clk_init(root_node, NULL);
 	of_platform_populate(root_node, of_default_bus_match_table, NULL);
 
 	return 0;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

