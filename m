Delivery-date: Mon, 10 Nov 2025 09:18:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIN6N-00HJUN-2b
	for lore@lore.pengutronix.de;
	Mon, 10 Nov 2025 09:18:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIN6N-0005Ai-8b
	for lore@pengutronix.de; Mon, 10 Nov 2025 09:18:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=L6RVxUP73DAG2SMy4H5F64/BfWXhmH3Ad/6nj8kS/f8=; b=IRx51S9FrdrpR4MbAcrDOuqtFf
	K+kUQu8pNFh+/Jnd5vUuStBg/8yEjZwjqAdQTZWa63yPPXLJGBQdEXNr1UchJVY0Co6B2OeXWFAtv
	hDfb7r8Mr33a0gdOC6VgyHWcy7Zy78dwQlUHlI7FZtLkz94Pz4uIJliSaoda1CzBnCFuYgLgCRum6
	MsXuBez8qdDvPlDMY/tuVBRh/gJPV5kzCBO03KjE1kjePQnHCFYnchSpcZZjd5G3ZsF/oQ8aPWd5B
	6AyPeyBIUSwU4+wEJSEB/00oe8zl3zWnrLmxqoGCqtMHypSZgqDIqSzqaCm7GAIlg2MaTO0aCob3y
	r+mJ9/pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIN62-00000004xuu-1hdN;
	Mon, 10 Nov 2025 08:17:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIN60-00000004xuQ-0PlS
	for barebox@lists.infradead.org;
	Mon, 10 Nov 2025 08:17:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vIN5y-00056y-HD; Mon, 10 Nov 2025 09:17:50 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vIN5y-007zPM-18;
	Mon, 10 Nov 2025 09:17:50 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vIN5y-0000000499G-2t5i;
	Mon, 10 Nov 2025 09:17:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 10 Nov 2025 09:17:49 +0100
Message-ID: <20251110081749.988471-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_001752_138905_1AC2A37A 
X-CRM114-Status: GOOD (  10.90  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] dm: fix memory leak
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

a dm_target is allocated in dm_parse_table(), thus must be freed in
dm_destroy(). The destroy op only frees everything related to the
dm_target, but not the dm_target itself.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/block/dm/dm-core.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/block/dm/dm-core.c b/drivers/block/dm/dm-core.c
index 1bc3446cb0..fd7ed0d84e 100644
--- a/drivers/block/dm/dm-core.c
+++ b/drivers/block/dm/dm-core.c
@@ -428,6 +428,7 @@ static int dm_parse_table(struct dm_device *dm, const char *ctable)
 	list_for_each_entry_safe_reverse(ti, tmp, &dm->targets, list) {
 		ti->ops->destroy(ti);
 		list_del(&ti->list);
+		free(ti);
 	}
 
 	free(rowv);
@@ -439,12 +440,13 @@ static int dm_parse_table(struct dm_device *dm, const char *ctable)
 
 void dm_destroy(struct dm_device *dm)
 {
-	struct dm_target *ti;
+	struct dm_target *ti, *tmp;
 
 	blockdevice_unregister(&dm->blk);
 
-	list_for_each_entry_reverse(ti, &dm->targets, list) {
+	list_for_each_entry_safe_reverse(ti, tmp, &dm->targets, list) {
 		ti->ops->destroy(ti);
+		free(ti);
 	}
 
 	unregister_device(&dm->dev);
-- 
2.47.3



