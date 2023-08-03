Delivery-date: Thu, 03 Aug 2023 10:52:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRU4j-004ooA-HJ
	for lore@lore.pengutronix.de; Thu, 03 Aug 2023 10:52:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRU4h-000899-5X
	for lore@pengutronix.de; Thu, 03 Aug 2023 10:52:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3cutzLnJt5KD2frwCzkhB6Lq/tzV/rHaxv+uAgcqX78=; b=frGLHenwIWwC8o
	wd2OvKayx6P1l+Ws900dVUiczfj1GC5wASW5yPo5xv1IiPRO7+l2CV/tFkLlifKfe0xyVFFdizhv9
	t7Dh5aCVvqUqRjnJhlCTXA3K01AxmJmqL0sfcMcSOc2HyGY2P69qNVMTFznBNRpsANNOZUroD+pvl
	orLUg7dou4QFq1o7ptXRbhweSsYhzDKo7BE4UAwsne4J7Sr3gtNuV6sboLhqRQxUU9tV4ugIQSpdU
	wCNCnWEPMEkvouwV6WRyKjxnINgol2I3j7dNeHAxZNx6ysP3QAnm0xfR/vigTxjvlCvfH/kthj6ki
	uYcr+MApBB5Jzbw7Yfkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRU3c-0074pg-0k;
	Thu, 03 Aug 2023 08:51:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRU3Z-0074p1-1d
	for barebox@lists.infradead.org;
	Thu, 03 Aug 2023 08:51:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qRU3Y-000811-2H; Thu, 03 Aug 2023 10:51:40 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRU3X-000ngl-5F; Thu, 03 Aug 2023 10:51:39 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRU3W-00GPvH-8d; Thu, 03 Aug 2023 10:51:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  3 Aug 2023 10:51:34 +0200
Message-Id: <20230803085134.3912884-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230803_015141_540211_098EF632 
X-CRM114-Status: GOOD (  17.19  )
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
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] of: never fixup internal live tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Calling of_fix_tree() on the internal live tree has undesired side
effects, so refrain from doing so.

One of the side effects is that some parts of barebox store pointers
to properties in the live tree which might become invalid when during
of_fixup these properties are deleted or updated.

The other is that it's unexpected that the live tree is modified
after a dry run boot with the live tree.

This changes of_get_fixed_tree() to always call of_fix_tree() on
a copy of the device tree and not on the device tree itself. To
emphasize this make the device tree argument to of_get_fixed_tree()
const.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/oftree.c | 19 ++++++++++---------
 include/of.h    |  2 +-
 2 files changed, 11 insertions(+), 10 deletions(-)

diff --git a/common/oftree.c b/common/oftree.c
index 3e85070d11..51eebd36bd 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -416,26 +416,27 @@ void of_fix_tree(struct device_node *node)
  * It increases the size of the tree and applies the registered
  * fixups.
  */
-struct fdt_header *of_get_fixed_tree(struct device_node *node)
+struct fdt_header *of_get_fixed_tree(const struct device_node *node)
 {
 	struct fdt_header *fdt = NULL;
-	struct device_node *freenp = NULL;
+	struct device_node *np;
 
 	if (!node) {
 		node = of_get_root_node();
 		if (!node)
 			return NULL;
-
-		freenp = node = of_dup(node);
-		if (!node)
-			return NULL;
 	}
 
-	of_fix_tree(node);
+	np = of_dup(node);
+
+	if (!np)
+		return NULL;
+
+	of_fix_tree(np);
 
-	fdt = of_flatten_dtb(node);
+	fdt = of_flatten_dtb(np);
 
-	of_delete_node(freenp);
+	of_delete_node(np);
 
 	return fdt;
 }
diff --git a/include/of.h b/include/of.h
index 92a15f5c4a..0deb327971 100644
--- a/include/of.h
+++ b/include/of.h
@@ -75,7 +75,7 @@ int of_add_initrd(struct device_node *root, resource_size_t start,
 
 struct fdt_header *fdt_get_tree(void);
 
-struct fdt_header *of_get_fixed_tree(struct device_node *node);
+struct fdt_header *of_get_fixed_tree(const struct device_node *node);
 
 /* Helper to read a big number; size is in cells (not bytes) */
 static inline u64 of_read_number(const __be32 *cell, int size)
-- 
2.39.2



