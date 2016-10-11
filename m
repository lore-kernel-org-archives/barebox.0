Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1btqoY-0005NH-OG
 for barebox@lists.infradead.org; Tue, 11 Oct 2016 06:45:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 11 Oct 2016 08:45:00 +0200
Message-Id: <20161011064500.1864-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] mtd: ubi: Fix scrubbing during attach
To: Barebox List <barebox@lists.infradead.org>

ensure_wear_leveling() is called at the end of ubi_wl_init() and may
come to the decision to scrub some blocks. In the Kernel this is done
in a separate thread, but in barebox we do this synchronously. The
problem is that during ubi_wl_init() the EBA system is not yet
initialized (ubi_eba_init() is not yet called), so the wear level worker
hits a NULL pointer deref when the fastmap needs to be updated and
ubi_write_fastmap() accesses vol->eba_tbl.

Solve this by honoring the ubi->thread_enabled flag which is only set
to true when UBI is sufficiently initialized. This means we now can
have multiple works queued, so we can no longer simply do one work when
queued, but instead have to continue to do work until all work is done.
The best place to do so is a ubi_thread() function which behaves similar
to the Kernel function with the same name, but is called synchronously
in barebox. To make sure that the initially queued works are done, the
call to (no-op) wake_up_process() at the end of ubi_attach_mtd_dev()
is replaced with a call to ubi_thread().

While at it also honor the ubi->ro_mode flag to make sure we do not do
any wear leveling work on readonly UBI devices.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/ubi/build.c |  4 +++-
 drivers/mtd/ubi/ubi.h   |  2 +-
 drivers/mtd/ubi/wl.c    | 25 ++++++++++++++++++++++++-
 3 files changed, 28 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/ubi/build.c b/drivers/mtd/ubi/build.c
index 5953e36..617c63e 100644
--- a/drivers/mtd/ubi/build.c
+++ b/drivers/mtd/ubi/build.c
@@ -668,7 +668,9 @@ int ubi_attach_mtd_dev(struct mtd_info *mtd, int ubi_num,
 	 * checks @ubi->thread_enabled. Otherwise we may fail to wake it up.
 	 */
 	ubi->thread_enabled = 1;
-	wake_up_process(ubi->bgt_thread);
+
+	/* No threading, call ubi_thread directly */
+	ubi_thread(ubi);
 
 	ubi_devices[ubi_num] = ubi;
 
diff --git a/drivers/mtd/ubi/ubi.h b/drivers/mtd/ubi/ubi.h
index 89e3347..1f0ad38 100644
--- a/drivers/mtd/ubi/ubi.h
+++ b/drivers/mtd/ubi/ubi.h
@@ -788,7 +788,7 @@ int ubi_wl_flush(struct ubi_device *ubi, int vol_id, int lnum);
 int ubi_wl_scrub_peb(struct ubi_device *ubi, int pnum);
 int ubi_wl_init(struct ubi_device *ubi, struct ubi_attach_info *ai);
 void ubi_wl_close(struct ubi_device *ubi);
-int ubi_thread(void *u);
+int ubi_thread(struct ubi_device *ubi);
 struct ubi_wl_entry *ubi_wl_get_fm_peb(struct ubi_device *ubi, int anchor);
 int ubi_wl_put_fm_peb(struct ubi_device *ubi, struct ubi_wl_entry *used_e,
 		      int lnum, int torture);
diff --git a/drivers/mtd/ubi/wl.c b/drivers/mtd/ubi/wl.c
index f24c219..a368bf9 100644
--- a/drivers/mtd/ubi/wl.c
+++ b/drivers/mtd/ubi/wl.c
@@ -523,7 +523,7 @@ static void __schedule_ubi_work(struct ubi_device *ubi, struct ubi_work *wrk)
 	ubi->works_count += 1;
 
 	/* No threading in barebox, so do work synchronously */
-	do_work(ubi);
+	ubi_thread(ubi);
 }
 
 /**
@@ -1329,6 +1329,29 @@ static void tree_destroy(struct ubi_device *ubi, struct rb_root *root)
 }
 
 /**
+ * ubi_thread - UBI background thread.
+ * @ubi: UBI device description object
+ *
+ * for barebox this is no thread, instead it's called synchronously from
+ * __schedule_ubi_work(). This is the place that makes sure all pending
+ * work is done.
+ */
+int ubi_thread(struct ubi_device *ubi)
+{
+	while (!list_empty(&ubi->works)) {
+		if (!ubi->thread_enabled)
+			return 0;
+
+		if (ubi->ro_mode)
+			return 0;
+
+		do_work(ubi);
+	}
+
+	return 0;
+}
+
+/**
  * shutdown_work - shutdown all pending works.
  * @ubi: UBI device description object
  */
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
