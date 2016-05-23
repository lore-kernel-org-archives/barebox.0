Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b4lEb-0000Wx-Bx
 for barebox@lists.infradead.org; Mon, 23 May 2016 08:29:14 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 5605AA00CC3
 for <barebox@lists.infradead.org>; Mon, 23 May 2016 10:28:23 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 23 May 2016 10:26:08 +0200
Message-Id: <1463992010-31537-21-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 20/62] UBI: Split __wl_get_peb()
To: barebox@lists.infradead.org

From: Richard Weinberger <richard@nod.at>

Make it two functions, wl_get_wle() and wl_get_peb().
wl_get_peb() works exactly like __wl_get_peb() but wl_get_wle()
does not call produce_free_peb().
While refilling the fastmap user pool we cannot release ubi->wl_lock
as produce_free_peb() does.
Hence the fastmap logic uses now wl_get_wle().

Signed-off-by: Richard Weinberger <richard@nod.at>

Conflicts:
	drivers/mtd/ubi/wl.c

Fixed minor conflict.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/wl.c | 63 ++++++++++++++++++++++++++++++++--------------------
 1 file changed, 39 insertions(+), 24 deletions(-)

diff --git a/drivers/mtd/ubi/wl.c b/drivers/mtd/ubi/wl.c
index adbb29b..21838f6 100644
--- a/drivers/mtd/ubi/wl.c
+++ b/drivers/mtd/ubi/wl.c
@@ -462,13 +462,46 @@ out:
 #endif
 
 /**
- * __wl_get_peb - get a physical eraseblock.
+ * wl_get_wle - get a mean wl entry to be used by wl_get_peb() or
+ * refill_wl_user_pool().
+ * @ubi: UBI device description object
+ *
+ * This function returns a a wear leveling entry in case of success and
+ * NULL in case of failure.
+ */
+static struct ubi_wl_entry *wl_get_wle(struct ubi_device *ubi)
+{
+	struct ubi_wl_entry *e;
+
+	e = find_mean_wl_entry(ubi, &ubi->free);
+	if (!e) {
+		ubi_err(ubi, "no free eraseblocks");
+		return NULL;
+	}
+
+	self_check_in_wl_tree(ubi, e, &ubi->free);
+
+	/*
+	 * Move the physical eraseblock to the protection queue where it will
+	 * be protected from being moved for some time.
+	 */
+	rb_erase(&e->u.rb, &ubi->free);
+	ubi->free_count--;
+	dbg_wl("PEB %d EC %d", e->pnum, e->ec);
+
+	return e;
+}
+
+/**
+ * wl_get_peb - get a physical eraseblock.
  * @ubi: UBI device description object
  *
  * This function returns a physical eraseblock in case of success and a
  * negative error code in case of failure.
+ * It is the low level component of ubi_wl_get_peb() in the non-fastmap
+ * case.
  */
-static int __wl_get_peb(struct ubi_device *ubi)
+static int wl_get_peb(struct ubi_device *ubi)
 {
 	int err;
 	struct ubi_wl_entry *e;
@@ -487,27 +520,9 @@ retry:
 		goto retry;
 	}
 
-	e = find_mean_wl_entry(ubi, &ubi->free);
-	if (!e) {
-		ubi_err(ubi, "no free eraseblocks");
-		return -ENOSPC;
-	}
-
-	self_check_in_wl_tree(ubi, e, &ubi->free);
-
-	/*
-	 * Move the physical eraseblock to the protection queue where it will
-	 * be protected from being moved for some time.
-	 */
-	rb_erase(&e->u.rb, &ubi->free);
-	ubi->free_count--;
-	dbg_wl("PEB %d EC %d", e->pnum, e->ec);
-#ifndef CONFIG_MTD_UBI_FASTMAP
-	/* We have to enqueue e only if fastmap is disabled,
-	 * is fastmap enabled prot_queue_add() will be called by
-	 * ubi_wl_get_peb() after removing e from the pool. */
+	e = wl_get_wle(ubi);
 	prot_queue_add(ubi, e);
-#endif
+
 	return e->pnum;
 }
 
@@ -568,7 +583,7 @@ static void refill_wl_user_pool(struct ubi_device *ubi)
 	return_unused_pool_pebs(ubi, pool);
 
 	for (pool->size = 0; pool->size < pool->max_size; pool->size++) {
-		pool->pebs[pool->size] = __wl_get_peb(ubi);
+		pool->pebs[pool->size] = wl_get_peb(ubi);
 		if (pool->pebs[pool->size] < 0)
 			break;
 	}
@@ -646,7 +661,7 @@ int ubi_wl_get_peb(struct ubi_device *ubi)
 {
 	int peb, err;
 
-	peb = __wl_get_peb(ubi);
+	peb = wl_get_peb(ubi);
 
 	if (peb < 0)
 		return peb;
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
