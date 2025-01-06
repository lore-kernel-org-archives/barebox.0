Delivery-date: Mon, 06 Jan 2025 10:19:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUjGP-00HQeV-1s
	for lore@lore.pengutronix.de;
	Mon, 06 Jan 2025 10:19:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUjGP-0003RF-4i
	for lore@pengutronix.de; Mon, 06 Jan 2025 10:19:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e3hWL0QVy9lYxzv7icHEF0+7PiUoBeyf1KgiuEGeApc=; b=dHUTxFrri0k43haGkIa8/ko24y
	Xm3wbtRwaW7gBIAnP23gNfLPeB93hLi5UznZmzr3i0qv9ST1rLhXA3JemxJhHL1N+FabcTRM2e0tI
	stBY3VKcNYDoaZZkwZsSia9cCTtt3Fg5SAn4L4HxjbOKfZjw2kfe3TidZlWsQtWljkcWnSPPcolZE
	SMzPAxAnWTkGDIjMxct1e0mYs2IweJb1UNn5nVODIHL3O4V0LDrLZiRfXNKmRt2f6nFP1vUtxzLYN
	nKFQXB9yJPjmPcx5/YyaDFyrN2tLbVFFMWjd28axR1XewlKNC9o+lTWjQ6pQH/VMj6RPhyTzGUhgo
	xRTJc95g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUjFw-00000000drh-2CFL;
	Mon, 06 Jan 2025 09:18:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUjFt-00000000don-1cwY
	for barebox@lists.infradead.org;
	Mon, 06 Jan 2025 09:18:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUjFs-00030k-1a; Mon, 06 Jan 2025 10:18:36 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUjFr-0078qP-0G;
	Mon, 06 Jan 2025 10:18:35 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUjFr-00EPYv-2T;
	Mon, 06 Jan 2025 10:18:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  6 Jan 2025 10:18:31 +0100
Message-Id: <20250106091835.3434836-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250106091835.3434836-1-a.fatoum@pengutronix.de>
References: <20250106091835.3434836-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_011837_423668_50A5BEE0 
X-CRM114-Status: GOOD (  12.62  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/6] fs: squashfs: delete unreferenced source file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This file was defines two global functions, but was never built.
squashfs_page_actor_init_special(), which it defines is never called
anywhere and squashfs_page_actor_init is defined in page_actor.h as
static inline function.

Therefore, drop this stale file.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/squashfs/page_actor.c | 99 ----------------------------------------
 1 file changed, 99 deletions(-)
 delete mode 100644 fs/squashfs/page_actor.c

diff --git a/fs/squashfs/page_actor.c b/fs/squashfs/page_actor.c
deleted file mode 100644
index 4eb730857c99..000000000000
--- a/fs/squashfs/page_actor.c
+++ /dev/null
@@ -1,99 +0,0 @@
-/*
- * Copyright (c) 2013
- * Phillip Lougher <phillip@squashfs.org.uk>
- *
- * This work is licensed under the terms of the GNU GPL, version 2. See
- * the COPYING file in the top-level directory.
- */
-
-#include <linux/kernel.h>
-#include <linux/pagemap.h>
-#include "page_actor.h"
-
-/*
- * This file contains implementations of page_actor for decompressing into
- * an intermediate buffer, and for decompressing directly into the
- * page cache.
- *
- * Calling code should avoid sleeping between calls to squashfs_first_page()
- * and squashfs_finish_page().
- */
-
-/* Implementation of page_actor for decompressing into intermediate buffer */
-static void *cache_first_page(struct squashfs_page_actor *actor)
-{
-	actor->next_page = 1;
-	return actor->buffer[0];
-}
-
-static void *cache_next_page(struct squashfs_page_actor *actor)
-{
-	if (actor->next_page == actor->pages)
-		return NULL;
-
-	return actor->buffer[actor->next_page++];
-}
-
-static void cache_finish_page(struct squashfs_page_actor *actor)
-{
-	/* empty */
-}
-
-struct squashfs_page_actor *squashfs_page_actor_init(void **buffer,
-	int pages, int length)
-{
-	struct squashfs_page_actor *actor = kmalloc(sizeof(*actor), GFP_KERNEL);
-
-	if (actor == NULL)
-		return NULL;
-
-	actor->length = length ? : pages * PAGE_CACHE_SIZE;
-	actor->buffer = buffer;
-	actor->pages = pages;
-	actor->next_page = 0;
-	actor->squashfs_first_page = cache_first_page;
-	actor->squashfs_next_page = cache_next_page;
-	actor->squashfs_finish_page = cache_finish_page;
-	return actor;
-}
-
-/* Implementation of page_actor for decompressing directly into page cache. */
-static void *direct_first_page(struct squashfs_page_actor *actor)
-{
-	actor->next_page = 1;
-	return actor->pageaddr = kmap_atomic(actor->page[0]);
-}
-
-static void *direct_next_page(struct squashfs_page_actor *actor)
-{
-	if (actor->pageaddr)
-		kunmap_atomic(actor->pageaddr);
-
-	return actor->pageaddr = actor->next_page == actor->pages ? NULL :
-		kmap_atomic(actor->page[actor->next_page++]);
-}
-
-static void direct_finish_page(struct squashfs_page_actor *actor)
-{
-	if (actor->pageaddr)
-		kunmap_atomic(actor->pageaddr);
-}
-
-struct squashfs_page_actor *squashfs_page_actor_init_special(struct page **page,
-	int pages, int length)
-{
-	struct squashfs_page_actor *actor = kmalloc(sizeof(*actor), GFP_KERNEL);
-
-	if (actor == NULL)
-		return NULL;
-
-	actor->length = length ? : pages * PAGE_CACHE_SIZE;
-	actor->page = page;
-	actor->pages = pages;
-	actor->next_page = 0;
-	actor->pageaddr = NULL;
-	actor->squashfs_first_page = direct_first_page;
-	actor->squashfs_next_page = direct_next_page;
-	actor->squashfs_finish_page = direct_finish_page;
-	return actor;
-}
-- 
2.39.5



