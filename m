Delivery-date: Fri, 25 Jun 2021 16:03:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwmQp-0006T2-Ni
	for lore@lore.pengutronix.de; Fri, 25 Jun 2021 16:03:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwmQo-00061W-Rk
	for lore@pengutronix.de; Fri, 25 Jun 2021 16:03:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FT2xspWrLEIj+rPfe7T9NcTGakls0rjXoYqsiVXCYZs=; b=DTUvqgHQ7GVnmu
	9CblKmLTOWSFXG/1wH/DJmp0WBHvecUbn9N1IT6ZKyVOK7JY+abU70CPkjD0yRnnm9xW3MSFZZ3p5
	5xhNSyaTZM20iNnnxwpNLoq1UOyXNkEiSD8z0wugithYGzhW+EssIKkFsu+QREqo34Ou46n1dffum
	1R3QOrM3akWm3SP71ix76QCBZRjRRj4kylFp18Lrp84p6evnIWt4TqMGUZzA/hgADc5Nlmd1VbELr
	kY2YPjZBk8Tv0kfxhZXTIs3DqCFyKF4zwiERGKOCe34UFj8Pg4rAtqcESwCdjSgK4ie2GCw1H2Y/f
	gLUz39NnYlnVvB3SlMFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwmPS-001obw-LS; Fri, 25 Jun 2021 14:02:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwmPL-001oaq-FF
 for barebox@lists.infradead.org; Fri, 25 Jun 2021 14:02:12 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwmPI-0005p7-2v; Fri, 25 Jun 2021 16:02:08 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwmPH-0000r4-R5; Fri, 25 Jun 2021 16:02:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 25 Jun 2021 16:02:05 +0200
Message-Id: <20210625140206.2000-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210625_070211_546600_C56F8ECD 
X-CRM114-Status: GOOD (  11.12  )
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
Subject: [PATCH 1/2] of: refuse to delete root node of live tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The root node of the live tree should never be deleted, so refuse to do
so and print an error message. Deleting the live tree was possible with
the oftree -f command which was removed in c39c70bac5 ("commands: oftree:
kill oftree -f"). As this no longer exists we also do not need the
of_set_root_node(NULL) part anymore.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 5756f8b60a..551b41fc9e 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2441,6 +2441,11 @@ void of_delete_node(struct device_node *node)
 	if (!node)
 		return;
 
+	if (node == root_node) {
+		pr_err("Won't delete root device node\n");
+		return;
+	}
+
 	list_for_each_entry_safe(p, pt, &node->properties, list)
 		of_delete_property(p);
 
@@ -2459,9 +2464,6 @@ void of_delete_node(struct device_node *node)
 	free(node->name);
 	free(node->full_name);
 	free(node);
-
-	if (node == root_node)
-		of_set_root_node(NULL);
 }
 
 struct device_node *of_get_stdoutpath(void)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

