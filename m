Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bwqJQ-000539-OY
 for barebox@lists.infradead.org; Wed, 19 Oct 2016 12:49:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 19 Oct 2016 14:49:18 +0200
Message-Id: <20161019124918.5950-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] mtd: ubi: enable thread earlier
To: Barebox List <barebox@lists.infradead.org>

Since "57cebc4 mtd: ubi: Fix scrubbing during attach" we make sure
that the wear level worker does not start too early. However, now
there are cases when the worker starts too late. When a ubi image is
freshly written a volume may be autoresized. This has to be done
after the wear level worker is started because otherwise the initial
fastmap update will not be able to find any anchor PEBs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/ubi/build.c | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/drivers/mtd/ubi/build.c b/drivers/mtd/ubi/build.c
index 617c63e..dd90e17 100644
--- a/drivers/mtd/ubi/build.c
+++ b/drivers/mtd/ubi/build.c
@@ -622,6 +622,11 @@ int ubi_attach_mtd_dev(struct mtd_info *mtd, int ubi_num,
 		goto out_free;
 	}
 
+	ubi->thread_enabled = 1;
+
+	/* No threading, call ubi_thread directly */
+	ubi_thread(ubi);
+
 	if (ubi->autoresize_vol_id != -1) {
 		err = autoresize(ubi, ubi->autoresize_vol_id);
 		if (err)
@@ -663,15 +668,6 @@ int ubi_attach_mtd_dev(struct mtd_info *mtd, int ubi_num,
 	dev_add_param_int_ro(&ubi->dev, "available_pebs", ubi->avail_pebs, "%d");
 	dev_add_param_int_ro(&ubi->dev, "reserved_pebs", ubi->rsvd_pebs, "%d");
 
-	/*
-	 * The below lock makes sure we do not race with 'ubi_thread()' which
-	 * checks @ubi->thread_enabled. Otherwise we may fail to wake it up.
-	 */
-	ubi->thread_enabled = 1;
-
-	/* No threading, call ubi_thread directly */
-	ubi_thread(ubi);
-
 	ubi_devices[ubi_num] = ubi;
 
 	return ubi_num;
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
