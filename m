Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuzSu-0005fL-Qx
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:21:01 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id CBCF2A00CD8
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 14:20:58 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Aug 2018 14:19:46 +0200
Message-Id: <1535545212-18871-31-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1535545212-18871-1-git-send-email-t.remmet@phytec.de>
References: <1535545212-18871-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 30/56] UBI: add an helper to check lnum validity
To: barebox@lists.infradead.org

From: Boris Brezillon <boris.brezillon@free-electrons.com>

ubi_leb_valid() is here to replace the
lnum < 0 || lnum >= vol->reserved_pebs checks.

Signed-off-by: Boris Brezillon <boris.brezillon@free-electrons.com>
Signed-off-by: Richard Weinberger <richard@nod.at>
[Fixed conflicts due missing cdev]
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/kapi.c | 12 ++++++------
 drivers/mtd/ubi/ubi.h  |  5 +++++
 2 files changed, 11 insertions(+), 6 deletions(-)

diff --git a/drivers/mtd/ubi/kapi.c b/drivers/mtd/ubi/kapi.c
index 9ec9962a5966..a7be941908fc 100644
--- a/drivers/mtd/ubi/kapi.c
+++ b/drivers/mtd/ubi/kapi.c
@@ -413,7 +413,7 @@ int ubi_leb_write(struct ubi_volume_desc *desc, int lnum, const void *buf,
 	if (desc->mode == UBI_READONLY || vol->vol_type == UBI_STATIC_VOLUME)
 		return -EROFS;
 
-	if (lnum < 0 || lnum >= vol->reserved_pebs || offset < 0 || len < 0 ||
+	if (!ubi_leb_valid(vol, lnum) || offset < 0 || len < 0 ||
 	    offset + len > vol->usable_leb_size ||
 	    offset & (ubi->min_io_size - 1) || len & (ubi->min_io_size - 1))
 		return -EINVAL;
@@ -458,7 +458,7 @@ int ubi_leb_change(struct ubi_volume_desc *desc, int lnum, const void *buf,
 	if (desc->mode == UBI_READONLY || vol->vol_type == UBI_STATIC_VOLUME)
 		return -EROFS;
 
-	if (lnum < 0 || lnum >= vol->reserved_pebs || len < 0 ||
+	if (!ubi_leb_valid(vol, lnum) || len < 0 ||
 	    len > vol->usable_leb_size || len & (ubi->min_io_size - 1))
 		return -EINVAL;
 
@@ -495,7 +495,7 @@ int ubi_leb_erase(struct ubi_volume_desc *desc, int lnum)
 	if (desc->mode == UBI_READONLY || vol->vol_type == UBI_STATIC_VOLUME)
 		return -EROFS;
 
-	if (lnum < 0 || lnum >= vol->reserved_pebs)
+	if (!ubi_leb_valid(vol, lnum))
 		return -EINVAL;
 
 	if (vol->upd_marker)
@@ -555,7 +555,7 @@ int ubi_leb_unmap(struct ubi_volume_desc *desc, int lnum)
 	if (desc->mode == UBI_READONLY || vol->vol_type == UBI_STATIC_VOLUME)
 		return -EROFS;
 
-	if (lnum < 0 || lnum >= vol->reserved_pebs)
+	if (!ubi_leb_valid(vol, lnum))
 		return -EINVAL;
 
 	if (vol->upd_marker)
@@ -591,7 +591,7 @@ int ubi_leb_map(struct ubi_volume_desc *desc, int lnum)
 	if (desc->mode == UBI_READONLY || vol->vol_type == UBI_STATIC_VOLUME)
 		return -EROFS;
 
-	if (lnum < 0 || lnum >= vol->reserved_pebs)
+	if (!ubi_leb_valid(vol, lnum))
 		return -EINVAL;
 
 	if (vol->upd_marker)
@@ -626,7 +626,7 @@ int ubi_is_mapped(struct ubi_volume_desc *desc, int lnum)
 
 	dbg_gen("test LEB %d:%d", vol->vol_id, lnum);
 
-	if (lnum < 0 || lnum >= vol->reserved_pebs)
+	if (!ubi_leb_valid(vol, lnum))
 		return -EINVAL;
 
 	if (vol->upd_marker)
diff --git a/drivers/mtd/ubi/ubi.h b/drivers/mtd/ubi/ubi.h
index d8e895ae47d7..4ef692fc7275 100644
--- a/drivers/mtd/ubi/ubi.h
+++ b/drivers/mtd/ubi/ubi.h
@@ -778,6 +778,11 @@ int ubi_check_volume(struct ubi_device *ubi, int vol_id);
 void ubi_update_reserved(struct ubi_device *ubi);
 void ubi_calculate_reserved(struct ubi_device *ubi);
 
+static inline bool ubi_leb_valid(struct ubi_volume *vol, int lnum)
+{
+	return lnum >= 0 && lnum < vol->reserved_pebs;
+}
+
 /* eba.c */
 int ubi_eba_unmap_leb(struct ubi_device *ubi, struct ubi_volume *vol,
 		      int lnum);
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
