Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.eu ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b4lEO-0000K8-Lb
 for barebox@lists.infradead.org; Mon, 23 May 2016 08:28:59 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 414C4A00CDC
 for <barebox@lists.infradead.org>; Mon, 23 May 2016 10:28:25 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 23 May 2016 10:26:29 +0200
Message-Id: <1463992010-31537-42-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 41/62] UBI: Fastmap: Introduce may_reserve_for_fm()
To: barebox@lists.infradead.org

From: Richard Weinberger <richard@nod.at>

...and kill another #ifdef.

Signed-off-by: Richard Weinberger <richard@nod.at>
---
 drivers/mtd/ubi/fastmap-wl.c | 19 +++++++++++++++++++
 drivers/mtd/ubi/wl.c         |  7 +------
 drivers/mtd/ubi/wl.h         |  8 ++++++++
 3 files changed, 28 insertions(+), 6 deletions(-)

diff --git a/drivers/mtd/ubi/fastmap-wl.c b/drivers/mtd/ubi/fastmap-wl.c
index 64c2a05..920fd54 100644
--- a/drivers/mtd/ubi/fastmap-wl.c
+++ b/drivers/mtd/ubi/fastmap-wl.c
@@ -312,3 +312,22 @@ static void ubi_fastmap_close(struct ubi_device *ubi)
 	}
 	kfree(ubi->fm);
 }
+
+/**
+ * may_reserve_for_fm - tests whether a PEB shall be reserved for fastmap.
+ * See find_mean_wl_entry()
+ *
+ * @ubi: UBI device description object
+ * @e: physical eraseblock to return
+ * @root: RB tree to test against.
+ */
+static struct ubi_wl_entry *may_reserve_for_fm(struct ubi_device *ubi,
+					   struct ubi_wl_entry *e,
+					   struct rb_root *root) {
+	if (e && !ubi->fm_disabled && !ubi->fm &&
+	    e->pnum < UBI_FM_MAX_START)
+		e = rb_entry(rb_next(root->rb_node),
+			     struct ubi_wl_entry, u.rb);
+
+	return e;
+}
diff --git a/drivers/mtd/ubi/wl.c b/drivers/mtd/ubi/wl.c
index f9a1680..ae9def6 100644
--- a/drivers/mtd/ubi/wl.c
+++ b/drivers/mtd/ubi/wl.c
@@ -346,15 +346,10 @@ static struct ubi_wl_entry *find_mean_wl_entry(struct ubi_device *ubi,
 	if (last->ec - first->ec < WL_FREE_MAX_DIFF) {
 		e = rb_entry(root->rb_node, struct ubi_wl_entry, u.rb);
 
-#ifdef CONFIG_MTD_UBI_FASTMAP
 		/* If no fastmap has been written and this WL entry can be used
 		 * as anchor PEB, hold it back and return the second best
 		 * WL entry such that fastmap can use the anchor PEB later. */
-		if (e && !ubi->fm_disabled && !ubi->fm &&
-		    e->pnum < UBI_FM_MAX_START)
-			e = rb_entry(rb_next(root->rb_node),
-				     struct ubi_wl_entry, u.rb);
-#endif
+		e = may_reserve_for_fm(ubi, e, root);
 	} else
 		e = find_wl_entry(ubi, root, WL_FREE_MAX_DIFF/2);
 
diff --git a/drivers/mtd/ubi/wl.h b/drivers/mtd/ubi/wl.h
index 0a832b0..0df78be 100644
--- a/drivers/mtd/ubi/wl.h
+++ b/drivers/mtd/ubi/wl.h
@@ -11,6 +11,9 @@ static inline void ubi_fastmap_init(struct ubi_device *ubi, int *count)
 	/* Reserve enough LEBs to store two fastmaps. */
 	*count += (ubi->fm_size / ubi->leb_size) * 2;
 }
+static struct ubi_wl_entry *may_reserve_for_fm(struct ubi_device *ubi,
+					       struct ubi_wl_entry *e,
+					       struct rb_root *root);
 #else /* !CONFIG_MTD_UBI_FASTMAP */
 static struct ubi_wl_entry *get_peb_for_wl(struct ubi_device *ubi);
 static inline int is_fm_block(struct ubi_device *ubi, int pnum)
@@ -19,5 +22,10 @@ static inline int is_fm_block(struct ubi_device *ubi, int pnum)
 }
 static inline void ubi_fastmap_close(struct ubi_device *ubi) { }
 static inline void ubi_fastmap_init(struct ubi_device *ubi, int *count) { }
+static struct ubi_wl_entry *may_reserve_for_fm(struct ubi_device *ubi,
+					       struct ubi_wl_entry *e,
+					       struct rb_root *root) {
+	return e;
+}
 #endif /* CONFIG_MTD_UBI_FASTMAP */
 #endif /* UBI_WL_H */
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
