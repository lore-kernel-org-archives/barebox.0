Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.com ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b4lEN-0000Js-II
 for barebox@lists.infradead.org; Mon, 23 May 2016 08:28:57 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 0F6F4A00CD9
 for <barebox@lists.infradead.org>; Mon, 23 May 2016 10:28:25 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 23 May 2016 10:26:26 +0200
Message-Id: <1463992010-31537-39-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 38/62] UBI: Add accessor functions for WL data structures
To: barebox@lists.infradead.org

From: Richard Weinberger <richard@nod.at>

Fastmap need access to various WL data structures as
fastmap tightly depends on WL.
To make the access less invasive add accessor functions.

Signed-off-by: Richard Weinberger <richard@nod.at>

Conflicts:
	drivers/mtd/ubi/ubi.h

Fixed minor conflict.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/ubi.h | 37 +++++++++++++++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/drivers/mtd/ubi/ubi.h b/drivers/mtd/ubi/ubi.h
index 2ed28f7..8b5416c 100644
--- a/drivers/mtd/ubi/ubi.h
+++ b/drivers/mtd/ubi/ubi.h
@@ -848,6 +848,43 @@ static inline int ubi_update_fastmap(struct ubi_device *ubi) { return 0; }
 #endif
 
 /*
+ * ubi_for_each_free_peb - walk the UBI free RB tree.
+ * @ubi: UBI device description object
+ * @e: a pointer to a ubi_wl_entry to use as cursor
+ * @pos: a pointer to RB-tree entry type to use as a loop counter
+ */
+#define ubi_for_each_free_peb(ubi, e, tmp_rb)	\
+	ubi_rb_for_each_entry((tmp_rb), (e), &(ubi)->free, u.rb)
+
+/*
+ * ubi_for_each_used_peb - walk the UBI used RB tree.
+ * @ubi: UBI device description object
+ * @e: a pointer to a ubi_wl_entry to use as cursor
+ * @pos: a pointer to RB-tree entry type to use as a loop counter
+ */
+#define ubi_for_each_used_peb(ubi, e, tmp_rb)	\
+	ubi_rb_for_each_entry((tmp_rb), (e), &(ubi)->used, u.rb)
+
+/*
+ * ubi_for_each_scub_peb - walk the UBI scub RB tree.
+ * @ubi: UBI device description object
+ * @e: a pointer to a ubi_wl_entry to use as cursor
+ * @pos: a pointer to RB-tree entry type to use as a loop counter
+ */
+#define ubi_for_each_scrub_peb(ubi, e, tmp_rb)	\
+	ubi_rb_for_each_entry((tmp_rb), (e), &(ubi)->scrub, u.rb)
+
+/*
+ * ubi_for_each_protected_peb - walk the UBI protection queue.
+ * @ubi: UBI device description object
+ * @i: a integer used as counter
+ * @e: a pointer to a ubi_wl_entry to use as cursor
+ */
+#define ubi_for_each_protected_peb(ubi, i, e)	\
+	for ((i) = 0; (i) < UBI_PROT_QUEUE_LEN; (i)++)	\
+		list_for_each_entry((e), &(ubi->pq[(i)]), u.list)
+
+/*
  * ubi_rb_for_each_entry - walk an RB-tree.
  * @rb: a pointer to type 'struct rb_node' to use as a loop counter
  * @pos: a pointer to RB-tree entry type to use as a loop counter
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
