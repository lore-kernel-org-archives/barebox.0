Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.microcatalog.org.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b4lEF-0000Jv-IE
 for barebox@lists.infradead.org; Mon, 23 May 2016 08:28:53 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 191EDA00CB8
 for <barebox@lists.infradead.org>; Mon, 23 May 2016 10:28:22 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 23 May 2016 10:25:59 +0200
Message-Id: <1463992010-31537-12-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 11/62] UBI: extend UBI layer debug/messaging capabilities -
 cosmetics
To: barebox@lists.infradead.org

From: Tanya Brokhman <tlinder@codeaurora.org>

Some cosmetic fixes to the patch "UBI: Extend UBI layer debug/messaging
capabilities".

Signed-off-by: Tanya Brokhman <tlinder@codeaurora.org>
Signed-off-by: Artem Bityutskiy <artem.bityutskiy@linux.intel.com>

Conflicts:
	drivers/mtd/ubi/build.c
	drivers/mtd/ubi/cdev.c
	drivers/mtd/ubi/io.c
	drivers/mtd/ubi/wl.c

Reworked it for barebox.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/build.c | 2 +-
 drivers/mtd/ubi/vtbl.c  | 7 +++----
 drivers/mtd/ubi/wl.c    | 5 +----
 3 files changed, 5 insertions(+), 9 deletions(-)

diff --git a/drivers/mtd/ubi/build.c b/drivers/mtd/ubi/build.c
index ae9afa7..2295c67 100644
--- a/drivers/mtd/ubi/build.c
+++ b/drivers/mtd/ubi/build.c
@@ -556,7 +556,7 @@ int ubi_attach_mtd_dev(struct mtd_info *mtd, int ubi_num,
 
 		/* Make sure ubi_num is not busy */
 		if (ubi_devices[ubi_num]) {
-			ubi_err(ubi, "ubi%d already exists", ubi_num);
+			ubi_err(ubi, "already exists");
 			return -EEXIST;
 		}
 	}
diff --git a/drivers/mtd/ubi/vtbl.c b/drivers/mtd/ubi/vtbl.c
index bc443fb..0bc824e 100644
--- a/drivers/mtd/ubi/vtbl.c
+++ b/drivers/mtd/ubi/vtbl.c
@@ -644,14 +644,13 @@ static int init_volumes(struct ubi_device *ubi,
 
 /**
  * check_av - check volume attaching information.
- * @ubi: UBI device description object
  * @vol: UBI volume description object
  * @av: volume attaching information
  *
  * This function returns zero if the volume attaching information is consistent
  * to the data read from the volume tabla, and %-EINVAL if not.
  */
-static int check_av(const struct ubi_device *ubi, const struct ubi_volume *vol,
+static int check_av(const struct ubi_volume *vol,
 		    const struct ubi_ainf_volume *av)
 {
 	int err;
@@ -679,7 +678,7 @@ static int check_av(const struct ubi_device *ubi, const struct ubi_volume *vol,
 	return 0;
 
 bad:
-	ubi_err(ubi, "bad attaching information, error %d", err);
+	ubi_err(vol->ubi, "bad attaching information, error %d", err);
 	ubi_dump_av(av);
 	ubi_dump_vol_info(vol);
 	return -EINVAL;
@@ -740,7 +739,7 @@ static int check_attaching_info(const struct ubi_device *ubi,
 			ubi_msg(ubi, "finish volume %d removal", av->vol_id);
 			ubi_remove_av(ai, av);
 		} else if (av) {
-			err = check_av(ubi, vol, av);
+			err = check_av(vol, av);
 			if (err)
 				return err;
 		}
diff --git a/drivers/mtd/ubi/wl.c b/drivers/mtd/ubi/wl.c
index dcc012c..aaa882e 100644
--- a/drivers/mtd/ubi/wl.c
+++ b/drivers/mtd/ubi/wl.c
@@ -439,11 +439,8 @@ struct ubi_wl_entry *ubi_wl_get_fm_peb(struct ubi_device *ubi, int anchor)
 {
 	struct ubi_wl_entry *e = NULL;
 
-	if (!ubi->free.rb_node || (ubi->free_count - ubi->beb_rsvd_pebs < 1)) {
-		ubi_warn(ubi, "Can't get peb for fastmap:anchor=%d, free_cnt=%d, reserved=%d",
-			 anchor, ubi->free_count, ubi->beb_rsvd_pebs);
+	if (!ubi->free.rb_node || (ubi->free_count - ubi->beb_rsvd_pebs < 1))
 		goto out;
-	}
 
 	if (anchor)
 		e = find_anchor_wl_entry(&ubi->free);
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
