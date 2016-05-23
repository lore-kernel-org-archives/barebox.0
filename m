Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b4lEM-0000K7-VE
 for barebox@lists.infradead.org; Mon, 23 May 2016 08:29:03 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 00213A00CD8
 for <barebox@lists.infradead.org>; Mon, 23 May 2016 10:28:24 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 23 May 2016 10:26:25 +0200
Message-Id: <1463992010-31537-38-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1463992010-31537-1-git-send-email-t.remmet@phytec.de>
References: <1463992010-31537-1-git-send-email-t.remmet@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 37/62] UBI: Move fastmap specific functions out of wl.c
To: barebox@lists.infradead.org

From: Richard Weinberger <richard@nod.at>

Fastmap is tightly connected to the WL sub-system, many fastmap-specific
functionslive in wl.c.
To get rid of most #ifdefs in wl.c move this functions into a new file
and include it into wl.c

Signed-off-by: Richard Weinberger <richard@nod.at>

Conflicts:
	drivers/mtd/ubi/wl.c

Reworked this for barebox.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/fastmap-wl.c | 314 +++++++++++++++++++++++++++
 drivers/mtd/ubi/wl.c         | 498 ++++++++-----------------------------------
 drivers/mtd/ubi/wl.h         |  17 ++
 3 files changed, 418 insertions(+), 411 deletions(-)
 create mode 100644 drivers/mtd/ubi/fastmap-wl.c
 create mode 100644 drivers/mtd/ubi/wl.h

diff --git a/drivers/mtd/ubi/fastmap-wl.c b/drivers/mtd/ubi/fastmap-wl.c
new file mode 100644
index 0000000..64c2a05
--- /dev/null
+++ b/drivers/mtd/ubi/fastmap-wl.c
@@ -0,0 +1,314 @@
+/*
+ * Copyright (c) 2012 Linutronix GmbH
+ * Copyright (c) 2014 sigma star gmbh
+ * Author: Richard Weinberger <richard@nod.at>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; version 2.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See
+ * the GNU General Public License for more details.
+ *
+ */
+
+/**
+ *  is_fm_block - returns 1 if a PEB is currently used in a fastmap.
+ *  @ubi: UBI device description object
+ *  @pnum: the to be checked PEB
+ */
+static int is_fm_block(struct ubi_device *ubi, int pnum)
+{
+	int i;
+
+	if (!ubi->fm)
+		return 0;
+
+	for (i = 0; i < ubi->fm->used_blocks; i++)
+		if (ubi->fm->e[i]->pnum == pnum)
+			return 1;
+
+	return 0;
+}
+
+/**
+ * find_anchor_wl_entry - find wear-leveling entry to used as anchor PEB.
+ * @root: the RB-tree where to look for
+ */
+static struct ubi_wl_entry *find_anchor_wl_entry(struct rb_root *root)
+{
+	struct rb_node *p;
+	struct ubi_wl_entry *e, *victim = NULL;
+	int max_ec = UBI_MAX_ERASECOUNTER;
+
+	ubi_rb_for_each_entry(p, e, root, u.rb) {
+		if (e->pnum < UBI_FM_MAX_START && e->ec < max_ec) {
+			victim = e;
+			max_ec = e->ec;
+		}
+	}
+
+	return victim;
+}
+
+/**
+ * return_unused_pool_pebs - returns unused PEB to the free tree.
+ * @ubi: UBI device description object
+ * @pool: fastmap pool description object
+ */
+static void return_unused_pool_pebs(struct ubi_device *ubi,
+				    struct ubi_fm_pool *pool)
+{
+	int i;
+	struct ubi_wl_entry *e;
+
+	for (i = pool->used; i < pool->size; i++) {
+		e = ubi->lookuptbl[pool->pebs[i]];
+		wl_tree_add(e, &ubi->free);
+		ubi->free_count++;
+	}
+}
+
+static int anchor_pebs_avalible(struct rb_root *root)
+{
+	struct rb_node *p;
+	struct ubi_wl_entry *e;
+
+	ubi_rb_for_each_entry(p, e, root, u.rb)
+		if (e->pnum < UBI_FM_MAX_START)
+			return 1;
+
+	return 0;
+}
+
+/**
+ * ubi_wl_get_fm_peb - find a physical erase block with a given maximal number.
+ * @ubi: UBI device description object
+ * @anchor: This PEB will be used as anchor PEB by fastmap
+ *
+ * The function returns a physical erase block with a given maximal number
+ * and removes it from the wl subsystem.
+ * Must be called with wl_lock held!
+ */
+struct ubi_wl_entry *ubi_wl_get_fm_peb(struct ubi_device *ubi, int anchor)
+{
+	struct ubi_wl_entry *e = NULL;
+
+	if (!ubi->free.rb_node || (ubi->free_count - ubi->beb_rsvd_pebs < 1))
+		goto out;
+
+	if (anchor)
+		e = find_anchor_wl_entry(&ubi->free);
+	else
+		e = find_mean_wl_entry(ubi, &ubi->free);
+
+	if (!e)
+		goto out;
+
+	self_check_in_wl_tree(ubi, e, &ubi->free);
+
+	/* remove it from the free list,
+	 * the wl subsystem does no longer know this erase block */
+	rb_erase(&e->u.rb, &ubi->free);
+	ubi->free_count--;
+out:
+	return e;
+}
+
+/**
+ * ubi_refill_pools - refills all fastmap PEB pools.
+ * @ubi: UBI device description object
+ */
+void ubi_refill_pools(struct ubi_device *ubi)
+{
+	struct ubi_fm_pool *wl_pool = &ubi->fm_wl_pool;
+	struct ubi_fm_pool *pool = &ubi->fm_pool;
+	struct ubi_wl_entry *e;
+	int enough;
+
+	return_unused_pool_pebs(ubi, wl_pool);
+	return_unused_pool_pebs(ubi, pool);
+
+	wl_pool->size = 0;
+	pool->size = 0;
+
+	for (;;) {
+		enough = 0;
+		if (pool->size < pool->max_size) {
+			if (!ubi->free.rb_node)
+				break;
+
+			e = wl_get_wle(ubi);
+			if (!e)
+				break;
+
+			pool->pebs[pool->size] = e->pnum;
+			pool->size++;
+		} else
+			enough++;
+
+		if (wl_pool->size < wl_pool->max_size) {
+			if (!ubi->free.rb_node ||
+			   (ubi->free_count - ubi->beb_rsvd_pebs < 5))
+				break;
+
+			e = find_wl_entry(ubi, &ubi->free, WL_FREE_MAX_DIFF);
+			self_check_in_wl_tree(ubi, e, &ubi->free);
+			rb_erase(&e->u.rb, &ubi->free);
+			ubi->free_count--;
+
+			wl_pool->pebs[wl_pool->size] = e->pnum;
+			wl_pool->size++;
+		} else
+			enough++;
+
+		if (enough == 2)
+			break;
+	}
+
+	wl_pool->used = 0;
+	pool->used = 0;
+}
+
+/**
+ * ubi_wl_get_peb - get a physical eraseblock.
+ * @ubi: UBI device description object
+ *
+ * This function returns a physical eraseblock in case of success and a
+ * negative error code in case of failure.
+ * Returns with ubi->fm_eba_sem held in read mode!
+ */
+int ubi_wl_get_peb(struct ubi_device *ubi)
+{
+	int ret;
+	struct ubi_fm_pool *pool = &ubi->fm_pool;
+	struct ubi_fm_pool *wl_pool = &ubi->fm_wl_pool;
+
+	/* We check here also for the WL pool because at this point we can
+	 * refill the WL pool synchronous. */
+	if (!pool->size || !wl_pool->size || pool->used == pool->size ||
+		wl_pool->used == wl_pool->size) {
+		ret = ubi_update_fastmap(ubi);
+		if (ret) {
+			ubi_msg(ubi, "Unable to write a new fastmap: %i", ret);
+			return -ENOSPC;
+		}
+	}
+
+	if (!pool->size) {
+		ubi_err(ubi, "Unable to get a free PEB from user WL pool");
+		ret = -ENOSPC;
+	} else {
+		ret = pool->pebs[pool->used++];
+		prot_queue_add(ubi, ubi->lookuptbl[ret]);
+	}
+
+	return ret;
+}
+
+/* get_peb_for_wl - returns a PEB to be used internally by the WL sub-system.
+ *
+ * @ubi: UBI device description object
+ */
+static struct ubi_wl_entry *get_peb_for_wl(struct ubi_device *ubi)
+{
+	struct ubi_fm_pool *pool = &ubi->fm_wl_pool;
+	int pnum;
+
+	if (pool->used == pool->size || !pool->size) {
+		ubi_update_fastmap(ubi);
+		if (pool->used == pool->size || !pool->size)
+			BUG();
+	}
+
+	pnum = pool->pebs[pool->used++];
+
+	return ubi->lookuptbl[pnum];
+}
+
+/**
+ * ubi_ensure_anchor_pebs - schedule wear-leveling to produce an anchor PEB.
+ * @ubi: UBI device description object
+ */
+int ubi_ensure_anchor_pebs(struct ubi_device *ubi)
+{
+	struct ubi_work *wrk;
+
+	if (ubi->wl_scheduled)
+		return 0;
+
+	ubi->wl_scheduled = 1;
+
+	wrk = kmalloc(sizeof(struct ubi_work), GFP_NOFS);
+	if (!wrk) {
+		ubi->wl_scheduled = 0;
+		return -ENOMEM;
+	}
+
+	wrk->anchor = 1;
+	wrk->func = &wear_leveling_worker;
+	schedule_ubi_work(ubi, wrk);
+	return 0;
+}
+
+/**
+ * ubi_wl_put_fm_peb - returns a PEB used in a fastmap to the wear-leveling
+ * sub-system.
+ * see: ubi_wl_put_peb()
+ *
+ * @ubi: UBI device description object
+ * @fm_e: physical eraseblock to return
+ * @lnum: the last used logical eraseblock number for the PEB
+ * @torture: if this physical eraseblock has to be tortured
+ */
+int ubi_wl_put_fm_peb(struct ubi_device *ubi, struct ubi_wl_entry *fm_e,
+		      int lnum, int torture)
+{
+	struct ubi_wl_entry *e;
+	int vol_id, pnum = fm_e->pnum;
+
+	dbg_wl("PEB %d", pnum);
+
+	ubi_assert(pnum >= 0);
+	ubi_assert(pnum < ubi->peb_count);
+
+	e = ubi->lookuptbl[pnum];
+
+	/* This can happen if we recovered from a fastmap the very
+	 * first time and writing now a new one. In this case the wl system
+	 * has never seen any PEB used by the original fastmap.
+	 */
+	if (!e) {
+		e = fm_e;
+		ubi_assert(e->ec >= 0);
+		ubi->lookuptbl[pnum] = e;
+	}
+
+	vol_id = lnum ? UBI_FM_DATA_VOLUME_ID : UBI_FM_SB_VOLUME_ID;
+	return schedule_erase(ubi, e, vol_id, lnum, torture);
+}
+
+/**
+ * ubi_is_erase_work - checks whether a work is erase work.
+ * @wrk: The work object to be checked
+ */
+int ubi_is_erase_work(struct ubi_work *wrk)
+{
+	return wrk->func == erase_worker;
+}
+
+static void ubi_fastmap_close(struct ubi_device *ubi)
+{
+	int i;
+
+	return_unused_pool_pebs(ubi, &ubi->fm_pool);
+	return_unused_pool_pebs(ubi, &ubi->fm_wl_pool);
+
+	if (ubi->fm) {
+		for (i = 0; i < ubi->fm->used_blocks; i++)
+			kfree(ubi->fm->e[i]);
+	}
+	kfree(ubi->fm);
+}
diff --git a/drivers/mtd/ubi/wl.c b/drivers/mtd/ubi/wl.c
index a7ca153..aeb7f68 100644
--- a/drivers/mtd/ubi/wl.c
+++ b/drivers/mtd/ubi/wl.c
@@ -95,6 +95,7 @@
  */
 
 #include "ubi.h"
+#include "wl.h"
 
 /* Number of physical eraseblocks reserved for wear-leveling purposes */
 #define WL_RESERVED_PEBS 1
@@ -132,32 +133,6 @@ static int self_check_in_wl_tree(const struct ubi_device *ubi,
 static int self_check_in_pq(const struct ubi_device *ubi,
 			    struct ubi_wl_entry *e);
 
-#ifdef CONFIG_MTD_UBI_FASTMAP
-/**
- *  ubi_ubi_is_fm_block - returns 1 if a PEB is currently used in a fastmap.
- *  @ubi: UBI device description object
- *  @pnum: the to be checked PEB
- */
-static int ubi_is_fm_block(struct ubi_device *ubi, int pnum)
-{
-	int i;
-
-	if (!ubi->fm)
-		return 0;
-
-	for (i = 0; i < ubi->fm->used_blocks; i++)
-		if (ubi->fm->e[i]->pnum == pnum)
-			return 1;
-
-	return 0;
-}
-#else
-static int ubi_is_fm_block(struct ubi_device *ubi, int pnum)
-{
-	return 0;
-}
-#endif
-
 /**
  * wl_tree_add - add a wear-leveling entry to a WL RB-tree.
  * @e: the wear-leveling entry to add
@@ -246,29 +221,6 @@ static int do_work(struct ubi_device *ubi)
 
 	return err;
 }
-
-/**
- * produce_free_peb - produce a free physical eraseblock.
- * @ubi: UBI device description object
- *
- * This function tries to make a free PEB by means of synchronous execution of
- * pending works. This may be needed if, for example the background thread is
- * disabled. Returns zero in case of success and a negative error code in case
- * of failure.
- */
-static int produce_free_peb(struct ubi_device *ubi)
-{
-	int err;
-
-	while (!ubi->free.rb_node) {
-		dbg_wl("do one work synchronously");
-		err = do_work(ubi);
-		if (err)
-			return err;
-	}
-
-	return 0;
-}
 #endif
 
 /**
@@ -409,76 +361,8 @@ static struct ubi_wl_entry *find_mean_wl_entry(struct ubi_device *ubi,
 	return e;
 }
 
-#ifdef CONFIG_MTD_UBI_FASTMAP
-/**
- * find_anchor_wl_entry - find wear-leveling entry to used as anchor PEB.
- * @root: the RB-tree where to look for
- */
-static struct ubi_wl_entry *find_anchor_wl_entry(struct rb_root *root)
-{
-	struct rb_node *p;
-	struct ubi_wl_entry *e, *victim = NULL;
-	int max_ec = UBI_MAX_ERASECOUNTER;
-
-	ubi_rb_for_each_entry(p, e, root, u.rb) {
-		if (e->pnum < UBI_FM_MAX_START && e->ec < max_ec) {
-			victim = e;
-			max_ec = e->ec;
-		}
-	}
-
-	return victim;
-}
-
-static int anchor_pebs_avalible(struct rb_root *root)
-{
-	struct rb_node *p;
-	struct ubi_wl_entry *e;
-
-	ubi_rb_for_each_entry(p, e, root, u.rb)
-		if (e->pnum < UBI_FM_MAX_START)
-			return 1;
-
-	return 0;
-}
-
-/**
- * ubi_wl_get_fm_peb - find a physical erase block with a given maximal number.
- * @ubi: UBI device description object
- * @anchor: This PEB will be used as anchor PEB by fastmap
- *
- * The function returns a physical erase block with a given maximal number
- * and removes it from the wl subsystem.
- * Must be called with wl_lock held!
- */
-struct ubi_wl_entry *ubi_wl_get_fm_peb(struct ubi_device *ubi, int anchor)
-{
-	struct ubi_wl_entry *e = NULL;
-
-	if (!ubi->free.rb_node || (ubi->free_count - ubi->beb_rsvd_pebs < 1))
-		goto out;
-
-	if (anchor)
-		e = find_anchor_wl_entry(&ubi->free);
-	else
-		e = find_mean_wl_entry(ubi, &ubi->free);
-
-	if (!e)
-		goto out;
-
-	self_check_in_wl_tree(ubi, e, &ubi->free);
-
-	/* remove it from the free list,
-	 * the wl subsystem does no longer know this erase block */
-	rb_erase(&e->u.rb, &ubi->free);
-	ubi->free_count--;
-out:
-	return e;
-}
-#endif
-
 /**
- * wl_get_wle - get a mean wl entry to be used by wl_get_peb() or
+ * wl_get_wle - get a mean wl entry to be used by ubi_wl_get_peb() or
  * refill_wl_user_pool().
  * @ubi: UBI device description object
  *
@@ -508,202 +392,6 @@ static struct ubi_wl_entry *wl_get_wle(struct ubi_device *ubi)
 	return e;
 }
 
-#ifndef CONFIG_MTD_UBI_FASTMAP
-/**
- * wl_get_peb - get a physical eraseblock.
- * @ubi: UBI device description object
- *
- * This function returns a physical eraseblock in case of success and a
- * negative error code in case of failure.
- * It is the low level component of ubi_wl_get_peb() in the non-fastmap
- * case.
- */
-static int wl_get_peb(struct ubi_device *ubi)
-{
-	int err;
-	struct ubi_wl_entry *e;
-
-retry:
-	if (!ubi->free.rb_node) {
-		if (ubi->works_count == 0) {
-			ubi_err(ubi, "no free eraseblocks");
-			ubi_assert(list_empty(&ubi->works));
-			return -ENOSPC;
-		}
-
-		err = produce_free_peb(ubi);
-		if (err < 0)
-			return err;
-		goto retry;
-	}
-
-	e = wl_get_wle(ubi);
-	prot_queue_add(ubi, e);
-
-	return e->pnum;
-}
-#endif
-
-#ifdef CONFIG_MTD_UBI_FASTMAP
-/**
- * return_unused_pool_pebs - returns unused PEB to the free tree.
- * @ubi: UBI device description object
- * @pool: fastmap pool description object
- */
-static void return_unused_pool_pebs(struct ubi_device *ubi,
-				    struct ubi_fm_pool *pool)
-{
-	int i;
-	struct ubi_wl_entry *e;
-
-	for (i = pool->used; i < pool->size; i++) {
-		e = ubi->lookuptbl[pool->pebs[i]];
-		wl_tree_add(e, &ubi->free);
-		ubi->free_count++;
-	}
-}
-
-/**
- * ubi_refill_pools - refills all fastmap PEB pools.
- * @ubi: UBI device description object
- */
-void ubi_refill_pools(struct ubi_device *ubi)
-{
-	struct ubi_fm_pool *wl_pool = &ubi->fm_wl_pool;
-	struct ubi_fm_pool *pool = &ubi->fm_pool;
-	struct ubi_wl_entry *e;
-	int enough;
-
-	return_unused_pool_pebs(ubi, wl_pool);
-	return_unused_pool_pebs(ubi, pool);
-
-	wl_pool->size = 0;
-	pool->size = 0;
-
-	for (;;) {
-		enough = 0;
-		if (pool->size < pool->max_size) {
-			if (!ubi->free.rb_node ||
-			   (ubi->free_count - ubi->beb_rsvd_pebs < 5))
-				break;
-
-			e = wl_get_wle(ubi);
-			if (!e)
-				break;
-
-			pool->pebs[pool->size] = e->pnum;
-			pool->size++;
-		} else
-			enough++;
-
-		if (wl_pool->size < wl_pool->max_size) {
-			if (!ubi->free.rb_node ||
-			   (ubi->free_count - ubi->beb_rsvd_pebs < 5))
-				break;
-
-			e = find_wl_entry(ubi, &ubi->free, WL_FREE_MAX_DIFF);
-			self_check_in_wl_tree(ubi, e, &ubi->free);
-			rb_erase(&e->u.rb, &ubi->free);
-			ubi->free_count--;
-
-			wl_pool->pebs[wl_pool->size] = e->pnum;
-			wl_pool->size++;
-		} else
-			enough++;
-
-		if (enough == 2)
-			break;
-	}
-
-	wl_pool->used = 0;
-	pool->used = 0;
-
-}
-
-/* ubi_wl_get_peb - works exaclty like __wl_get_peb but keeps track of
- * the fastmap pool.
- */
-int ubi_wl_get_peb(struct ubi_device *ubi)
-{
-	int ret;
-	struct ubi_fm_pool *pool = &ubi->fm_pool;
-	struct ubi_fm_pool *wl_pool = &ubi->fm_wl_pool;
-
-	/* We check here also for the WL pool because at this point we can
-	 * refill the WL pool synchronous. */
-	if (pool->used == pool->size || wl_pool->used == wl_pool->size) {
-		ret = ubi_update_fastmap(ubi);
-		if (ret) {
-			ubi_msg(ubi, "Unable to write a new fastmap: %i", ret);
-			return -ENOSPC;
-		}
-	}
-
-	/* we got not a single free PEB */
-	if (!pool->size)
-		ret = -ENOSPC;
-	else {
-		ret = pool->pebs[pool->used++];
-		prot_queue_add(ubi, ubi->lookuptbl[ret]);
-	}
-
-	return ret;
-}
-
-/* get_peb_for_wl - returns a PEB to be used internally by the WL sub-system.
- *
- * @ubi: UBI device description object
- */
-static struct ubi_wl_entry *get_peb_for_wl(struct ubi_device *ubi)
-{
-	struct ubi_fm_pool *pool = &ubi->fm_wl_pool;
-	int pnum;
-
-	if (pool->used == pool->size || !pool->size) {
-		ubi_update_fastmap(ubi);
-		if (pool->used == pool->size || !pool->size)
-			BUG();
-	}
-
-	pnum = pool->pebs[pool->used++];
-
-	return ubi->lookuptbl[pnum];
-}
-#else
-static struct ubi_wl_entry *get_peb_for_wl(struct ubi_device *ubi)
-{
-	struct ubi_wl_entry *e;
-
-	e = find_wl_entry(ubi, &ubi->free, WL_FREE_MAX_DIFF);
-	self_check_in_wl_tree(ubi, e, &ubi->free);
-	ubi->free_count--;
-	ubi_assert(ubi->free_count >= 0);
-	rb_erase(&e->u.rb, &ubi->free);
-
-	return e;
-}
-
-int ubi_wl_get_peb(struct ubi_device *ubi)
-{
-	int peb, err;
-
-	peb = wl_get_peb(ubi);
-
-	if (peb < 0)
-		return peb;
-
-	err = ubi_self_check_all_ff(ubi, peb, ubi->vid_hdr_aloffset,
-				    ubi->peb_size - ubi->vid_hdr_aloffset);
-	if (err) {
-		ubi_err(ubi, "new PEB %d does not contain all 0xFF bytes",
-			peb);
-		return err;
-	}
-
-	return peb;
-}
-#endif
-
 /**
  * prot_queue_del - remove a physical eraseblock from the protection queue.
  * @ubi: UBI device description object
@@ -860,17 +548,6 @@ static void schedule_ubi_work(struct ubi_device *ubi, struct ubi_work *wrk)
 static int erase_worker(struct ubi_device *ubi, struct ubi_work *wl_wrk,
 			int shutdown);
 
-#ifdef CONFIG_MTD_UBI_FASTMAP
-/**
- * ubi_is_erase_work - checks whether a work is erase work.
- * @wrk: The work object to be checked
- */
-int ubi_is_erase_work(struct ubi_work *wrk)
-{
-	return wrk->func == erase_worker;
-}
-#endif
-
 /**
  * schedule_erase - schedule an erase work.
  * @ubi: UBI device description object
@@ -888,7 +565,7 @@ static int schedule_erase(struct ubi_device *ubi, struct ubi_wl_entry *e,
 	struct ubi_work *wl_wrk;
 
 	ubi_assert(e);
-	ubi_assert(!ubi_is_fm_block(ubi, e->pnum));
+	ubi_assert(!is_fm_block(ubi, e->pnum));
 
 	dbg_wl("schedule erasure of PEB %d, EC %d, torture %d",
 	       e->pnum, e->ec, torture);
@@ -935,45 +612,6 @@ static int do_sync_erase(struct ubi_device *ubi, struct ubi_wl_entry *e,
 	return erase_worker(ubi, wl_wrk, 0);
 }
 
-#ifdef CONFIG_MTD_UBI_FASTMAP
-/**
- * ubi_wl_put_fm_peb - returns a PEB used in a fastmap to the wear-leveling
- * sub-system.
- * see: ubi_wl_put_peb()
- *
- * @ubi: UBI device description object
- * @fm_e: physical eraseblock to return
- * @lnum: the last used logical eraseblock number for the PEB
- * @torture: if this physical eraseblock has to be tortured
- */
-int ubi_wl_put_fm_peb(struct ubi_device *ubi, struct ubi_wl_entry *fm_e,
-		      int lnum, int torture)
-{
-	struct ubi_wl_entry *e;
-	int vol_id, pnum = fm_e->pnum;
-
-	dbg_wl("PEB %d", pnum);
-
-	ubi_assert(pnum >= 0);
-	ubi_assert(pnum < ubi->peb_count);
-
-	e = ubi->lookuptbl[pnum];
-
-	/* This can happen if we recovered from a fastmap the very
-	 * first time and writing now a new one. In this case the wl system
-	 * has never seen any PEB used by the original fastmap.
-	 */
-	if (!e) {
-		e = fm_e;
-		ubi_assert(e->ec >= 0);
-		ubi->lookuptbl[pnum] = e;
-	}
-
-	vol_id = lnum ? UBI_FM_DATA_VOLUME_ID : UBI_FM_SB_VOLUME_ID;
-	return schedule_erase(ubi, e, vol_id, lnum, torture);
-}
-#endif
-
 /**
  * wear_leveling_worker - wear-leveling worker function.
  * @ubi: UBI device description object
@@ -1338,33 +976,6 @@ out_unlock:
 	return err;
 }
 
-#ifdef CONFIG_MTD_UBI_FASTMAP
-/**
- * ubi_ensure_anchor_pebs - schedule wear-leveling to produce an anchor PEB.
- * @ubi: UBI device description object
- */
-int ubi_ensure_anchor_pebs(struct ubi_device *ubi)
-{
-	struct ubi_work *wrk;
-
-	if (ubi->wl_scheduled)
-		return 0;
-
-	ubi->wl_scheduled = 1;
-
-	wrk = kmalloc(sizeof(struct ubi_work), GFP_NOFS);
-	if (!wrk) {
-		ubi->wl_scheduled = 0;
-		return -ENOMEM;
-	}
-
-	wrk->anchor = 1;
-	wrk->func = &wear_leveling_worker;
-	schedule_ubi_work(ubi, wrk);
-	return 0;
-}
-#endif
-
 /**
  * erase_worker - physical eraseblock erase worker function.
  * @ubi: UBI device description object
@@ -1396,7 +1007,7 @@ static int erase_worker(struct ubi_device *ubi, struct ubi_work *wl_wrk,
 	dbg_wl("erase PEB %d EC %d LEB %d:%d",
 	       pnum, e->ec, wl_wrk->vol_id, wl_wrk->lnum);
 
-	ubi_assert(!ubi_is_fm_block(ubi, e->pnum));
+	ubi_assert(!is_fm_block(ubi, e->pnum));
 
 	err = sync_erase(ubi, e, wl_wrk->torture);
 	if (!err) {
@@ -1761,7 +1372,7 @@ int ubi_wl_init(struct ubi_device *ubi, struct ubi_attach_info *ai)
 
 		e->pnum = aeb->pnum;
 		e->ec = aeb->ec;
-		ubi_assert(!ubi_is_fm_block(ubi, e->pnum));
+		ubi_assert(!is_fm_block(ubi, e->pnum));
 		ubi->lookuptbl[e->pnum] = e;
 		if (schedule_erase(ubi, e, aeb->vol_id, aeb->lnum, 0)) {
 			wl_entry_destroy(ubi, e);
@@ -1780,7 +1391,7 @@ int ubi_wl_init(struct ubi_device *ubi, struct ubi_attach_info *ai)
 		e->pnum = aeb->pnum;
 		e->ec = aeb->ec;
 		ubi_assert(e->ec >= 0);
-		ubi_assert(!ubi_is_fm_block(ubi, e->pnum));
+		ubi_assert(!is_fm_block(ubi, e->pnum));
 
 		wl_tree_add(e, &ubi->free);
 		ubi->free_count++;
@@ -1878,22 +1489,6 @@ static void protection_queue_destroy(struct ubi_device *ubi)
 	}
 }
 
-static void ubi_fastmap_close(struct ubi_device *ubi)
-{
-#ifdef CONFIG_MTD_UBI_FASTMAP
-	int i;
-
-	return_unused_pool_pebs(ubi, &ubi->fm_pool);
-	return_unused_pool_pebs(ubi, &ubi->fm_wl_pool);
-
-	if (ubi->fm) {
-		for (i = 0; i < ubi->fm->used_blocks; i++)
-			kfree(ubi->fm->e[i]);
-	}
-	kfree(ubi->fm);
-#endif
-}
-
 /**
  * ubi_wl_close - close the wear-leveling sub-system.
  * @ubi: UBI device description object
@@ -2006,3 +1601,84 @@ static int self_check_in_pq(const struct ubi_device *ubi,
 	dump_stack();
 	return -EINVAL;
 }
+#ifndef CONFIG_MTD_UBI_FASTMAP
+static struct ubi_wl_entry *get_peb_for_wl(struct ubi_device *ubi)
+{
+	struct ubi_wl_entry *e;
+
+	e = find_wl_entry(ubi, &ubi->free, WL_FREE_MAX_DIFF);
+	self_check_in_wl_tree(ubi, e, &ubi->free);
+	ubi->free_count--;
+	ubi_assert(ubi->free_count >= 0);
+	rb_erase(&e->u.rb, &ubi->free);
+
+	return e;
+}
+
+/**
+ * produce_free_peb - produce a free physical eraseblock.
+ * @ubi: UBI device description object
+ *
+ * This function tries to make a free PEB by means of synchronous execution of
+ * pending works. This may be needed if, for example the background thread is
+ * disabled. Returns zero in case of success and a negative error code in case
+ * of failure.
+ */
+static int produce_free_peb(struct ubi_device *ubi)
+{
+	int err;
+
+	while (!ubi->free.rb_node && ubi->works_count) {
+
+		dbg_wl("do one work synchronously");
+		err = do_work(ubi);
+
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+
+/**
+ * ubi_wl_get_peb - get a physical eraseblock.
+ * @ubi: UBI device description object
+ *
+ * This function returns a physical eraseblock in case of success and a
+ * negative error code in case of failure.
+ * Returns with ubi->fm_eba_sem held in read mode!
+ */
+int ubi_wl_get_peb(struct ubi_device *ubi)
+{
+	int err;
+	struct ubi_wl_entry *e;
+
+	if (!ubi->free.rb_node) {
+		if (ubi->works_count == 0) {
+			ubi_err(ubi, "no free eraseblocks");
+			ubi_assert(list_empty(&ubi->works));
+			return -ENOSPC;
+		}
+
+		err = produce_free_peb(ubi);
+		if (err < 0) {
+			return err;
+		}
+
+	}
+	e = wl_get_wle(ubi);
+	prot_queue_add(ubi, e);
+
+	err = ubi_self_check_all_ff(ubi, e->pnum, ubi->vid_hdr_aloffset,
+				    ubi->peb_size - ubi->vid_hdr_aloffset);
+	if (err) {
+		ubi_err(ubi, "new PEB %d does not contain all 0xFF bytes", e->pnum);
+		return err;
+	}
+
+	return e->pnum;
+}
+#else
+#include "fastmap-wl.c"
+#endif
+
diff --git a/drivers/mtd/ubi/wl.h b/drivers/mtd/ubi/wl.h
new file mode 100644
index 0000000..797d25b
--- /dev/null
+++ b/drivers/mtd/ubi/wl.h
@@ -0,0 +1,17 @@
+#ifndef UBI_WL_H
+#define UBI_WL_H
+#ifdef CONFIG_MTD_UBI_FASTMAP
+static int is_fm_block(struct ubi_device *ubi, int pnum);
+static int anchor_pebs_avalible(struct rb_root *root);
+static struct ubi_wl_entry *find_anchor_wl_entry(struct rb_root *root);
+static struct ubi_wl_entry *get_peb_for_wl(struct ubi_device *ubi);
+static void ubi_fastmap_close(struct ubi_device *ubi);
+#else /* !CONFIG_MTD_UBI_FASTMAP */
+static struct ubi_wl_entry *get_peb_for_wl(struct ubi_device *ubi);
+static inline int is_fm_block(struct ubi_device *ubi, int pnum)
+{
+	return 0;
+}
+static inline void ubi_fastmap_close(struct ubi_device *ubi) { }
+#endif /* CONFIG_MTD_UBI_FASTMAP */
+#endif /* UBI_WL_H */
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
