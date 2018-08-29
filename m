Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuzSq-0005UW-4y
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:20:53 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 0CF46A00CDD
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 14:20:59 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Aug 2018 14:19:47 +0200
Message-Id: <1535545212-18871-32-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 31/56] UBI: provide an helper to check whether a LEB is mapped
 or not
To: barebox@lists.infradead.org

From: Boris Brezillon <boris.brezillon@free-electrons.com>

This is part of the process of hiding UBI EBA's internal to other part of
the UBI implementation, so that we can add new information to the EBA
table without having to patch different places in the UBI code.

Signed-off-by: Boris Brezillon <boris.brezillon@free-electrons.com>
Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/eba.c  | 12 ++++++++++++
 drivers/mtd/ubi/kapi.c |  4 ++--
 drivers/mtd/ubi/ubi.h  |  1 +
 3 files changed, 15 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/ubi/eba.c b/drivers/mtd/ubi/eba.c
index fd8368286825..704f67dfb6a1 100644
--- a/drivers/mtd/ubi/eba.c
+++ b/drivers/mtd/ubi/eba.c
@@ -280,6 +280,18 @@ static void leb_write_unlock(struct ubi_device *ubi, int vol_id, int lnum)
 }
 
 /**
+ * ubi_eba_is_mapped - check if a LEB is mapped.
+ * @vol: volume description object
+ * @lnum: logical eraseblock number
+ *
+ * This function returns true if the LEB is mapped, false otherwise.
+ */
+bool ubi_eba_is_mapped(struct ubi_volume *vol, int lnum)
+{
+	return vol->eba_tbl[lnum] >= 0;
+}
+
+/**
  * ubi_eba_unmap_leb - un-map logical eraseblock.
  * @ubi: UBI device description object
  * @vol: volume description object
diff --git a/drivers/mtd/ubi/kapi.c b/drivers/mtd/ubi/kapi.c
index a7be941908fc..e1cab763ebd2 100644
--- a/drivers/mtd/ubi/kapi.c
+++ b/drivers/mtd/ubi/kapi.c
@@ -597,7 +597,7 @@ int ubi_leb_map(struct ubi_volume_desc *desc, int lnum)
 	if (vol->upd_marker)
 		return -EBADF;
 
-	if (vol->eba_tbl[lnum] >= 0)
+	if (ubi_eba_is_mapped(vol, lnum))
 		return -EBADMSG;
 
 	return ubi_eba_write_leb(ubi, vol, lnum, NULL, 0, 0);
@@ -632,7 +632,7 @@ int ubi_is_mapped(struct ubi_volume_desc *desc, int lnum)
 	if (vol->upd_marker)
 		return -EBADF;
 
-	return vol->eba_tbl[lnum] >= 0;
+	return ubi_eba_is_mapped(vol, lnum);
 }
 EXPORT_SYMBOL_GPL(ubi_is_mapped);
 
diff --git a/drivers/mtd/ubi/ubi.h b/drivers/mtd/ubi/ubi.h
index 4ef692fc7275..5d39b0d55b01 100644
--- a/drivers/mtd/ubi/ubi.h
+++ b/drivers/mtd/ubi/ubi.h
@@ -784,6 +784,7 @@ static inline bool ubi_leb_valid(struct ubi_volume *vol, int lnum)
 }
 
 /* eba.c */
+bool ubi_eba_is_mapped(struct ubi_volume *vol, int lnum);
 int ubi_eba_unmap_leb(struct ubi_device *ubi, struct ubi_volume *vol,
 		      int lnum);
 int ubi_eba_read_leb(struct ubi_device *ubi, struct ubi_volume *vol, int lnum,
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
