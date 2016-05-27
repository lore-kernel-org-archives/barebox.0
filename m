Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b6CTV-0004yU-Ee
 for barebox@lists.infradead.org; Fri, 27 May 2016 07:46:32 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id AD503A00B43
 for <barebox@lists.infradead.org>; Fri, 27 May 2016 09:46:40 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Fri, 27 May 2016 09:44:33 +0200
Message-Id: <1464335095-35180-41-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1464335095-35180-1-git-send-email-t.remmet@phytec.de>
References: <1464335095-35180-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH v2 40/62] UBI: Fastmap: Introduce ubi_fastmap_init()
To: barebox@lists.infradead.org

From: Richard Weinberger <richard@nod.at>

...and kill another #ifdef in wl.c. :-)

Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/wl.c | 5 +----
 drivers/mtd/ubi/wl.h | 6 ++++++
 2 files changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/ubi/wl.c b/drivers/mtd/ubi/wl.c
index aeb7f68..f9a1680 100644
--- a/drivers/mtd/ubi/wl.c
+++ b/drivers/mtd/ubi/wl.c
@@ -1440,10 +1440,7 @@ int ubi_wl_init(struct ubi_device *ubi, struct ubi_attach_info *ai)
 		ubi_assert(ubi->good_peb_count == found_pebs);
 
 	reserved_pebs = WL_RESERVED_PEBS;
-#ifdef CONFIG_MTD_UBI_FASTMAP
-	/* Reserve enough LEBs to store two fastmaps. */
-	reserved_pebs += (ubi->fm_size / ubi->leb_size) * 2;
-#endif
+	ubi_fastmap_init(ubi, &reserved_pebs);
 
 	if (ubi->avail_pebs < reserved_pebs) {
 		ubi_err(ubi, "no enough physical eraseblocks (%d, need %d)",
diff --git a/drivers/mtd/ubi/wl.h b/drivers/mtd/ubi/wl.h
index 797d25b..0a832b0 100644
--- a/drivers/mtd/ubi/wl.h
+++ b/drivers/mtd/ubi/wl.h
@@ -6,6 +6,11 @@ static int anchor_pebs_avalible(struct rb_root *root);
 static struct ubi_wl_entry *find_anchor_wl_entry(struct rb_root *root);
 static struct ubi_wl_entry *get_peb_for_wl(struct ubi_device *ubi);
 static void ubi_fastmap_close(struct ubi_device *ubi);
+static inline void ubi_fastmap_init(struct ubi_device *ubi, int *count)
+{
+	/* Reserve enough LEBs to store two fastmaps. */
+	*count += (ubi->fm_size / ubi->leb_size) * 2;
+}
 #else /* !CONFIG_MTD_UBI_FASTMAP */
 static struct ubi_wl_entry *get_peb_for_wl(struct ubi_device *ubi);
 static inline int is_fm_block(struct ubi_device *ubi, int pnum)
@@ -13,5 +18,6 @@ static inline int is_fm_block(struct ubi_device *ubi, int pnum)
 	return 0;
 }
 static inline void ubi_fastmap_close(struct ubi_device *ubi) { }
+static inline void ubi_fastmap_init(struct ubi_device *ubi, int *count) { }
 #endif /* CONFIG_MTD_UBI_FASTMAP */
 #endif /* UBI_WL_H */
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
