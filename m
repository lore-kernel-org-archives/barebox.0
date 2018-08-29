Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycore.de ([217.6.246.34] helo=root.phytec.de)
 by casper.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuzT2-0004xR-AX
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:21:02 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 4259EA00D05
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 14:20:59 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Aug 2018 14:19:48 +0200
Message-Id: <1535545212-18871-33-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 32/56] UBI: provide an helper to query LEB information
To: barebox@lists.infradead.org

From: Boris Brezillon <boris.brezillon@free-electrons.com>

This is part of our attempt to hide EBA internals from other part of the
implementation in order to easily adapt it to the MLC needs.

Here we are creating an ubi_eba_leb_desc struct to hide the way we keep
track of the LEB to PEB mapping.

Signed-off-by: Boris Brezillon <boris.brezillon@free-electrons.com>
Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/eba.c     | 17 +++++++++++++++++
 drivers/mtd/ubi/fastmap.c |  8 ++++++--
 drivers/mtd/ubi/ubi.h     | 17 +++++++++++++++++
 3 files changed, 40 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/ubi/eba.c b/drivers/mtd/ubi/eba.c
index 704f67dfb6a1..11b85f4a6b03 100644
--- a/drivers/mtd/ubi/eba.c
+++ b/drivers/mtd/ubi/eba.c
@@ -76,6 +76,23 @@ static int ubi_get_compat(const struct ubi_device *ubi, int vol_id)
 }
 
 /**
+ * ubi_eba_get_ldesc - get information about a LEB
+ * @vol: volume description object
+ * @lnum: logical eraseblock number
+ * @ldesc: the LEB descriptor to fill
+ *
+ * Used to query information about a specific LEB.
+ * It is currently only returning the physical position of the LEB, but will be
+ * extended to provide more information.
+ */
+void ubi_eba_get_ldesc(struct ubi_volume *vol, int lnum,
+		       struct ubi_eba_leb_desc *ldesc)
+{
+	ldesc->lnum = lnum;
+	ldesc->pnum = vol->eba_tbl[lnum];
+}
+
+/**
  * ltree_lookup - look up the lock tree.
  * @ubi: UBI device description object
  * @vol_id: volume ID
diff --git a/drivers/mtd/ubi/fastmap.c b/drivers/mtd/ubi/fastmap.c
index d77592bb19ce..b319ae672cf2 100644
--- a/drivers/mtd/ubi/fastmap.c
+++ b/drivers/mtd/ubi/fastmap.c
@@ -1173,8 +1173,12 @@ static int ubi_write_fastmap(struct ubi_device *ubi,
 		fm_pos += sizeof(*feba) + (sizeof(__be32) * vol->reserved_pebs);
 		ubi_assert(fm_pos <= ubi->fm_size);
 
-		for (j = 0; j < vol->reserved_pebs; j++)
-			feba->pnum[j] = cpu_to_be32(vol->eba_tbl[j]);
+		for (j = 0; j < vol->reserved_pebs; j++) {
+			struct ubi_eba_leb_desc ldesc;
+
+			ubi_eba_get_ldesc(vol, j, &ldesc);
+			feba->pnum[j] = cpu_to_be32(ldesc.pnum);
+		}
 
 		feba->reserved_pebs = cpu_to_be32(j);
 		feba->magic = cpu_to_be32(UBI_FM_EBA_MAGIC);
diff --git a/drivers/mtd/ubi/ubi.h b/drivers/mtd/ubi/ubi.h
index 5d39b0d55b01..0d2c5e8f2244 100644
--- a/drivers/mtd/ubi/ubi.h
+++ b/drivers/mtd/ubi/ubi.h
@@ -239,6 +239,21 @@ struct ubi_fm_pool {
 };
 
 /**
+ * struct ubi_eba_leb_desc - EBA logical eraseblock descriptor
+ * @lnum: the logical eraseblock number
+ * @pnum: the physical eraseblock where the LEB can be found
+ *
+ * This structure is here to hide EBA's internal from other part of the
+ * UBI implementation.
+ *
+ * One can query the position of a LEB by calling ubi_eba_get_ldesc().
+ */
+struct ubi_eba_leb_desc {
+	int lnum;
+	int pnum;
+};
+
+/**
  * struct ubi_volume - UBI volume description data structure.
  * @dev: device object to make use of the the Linux device model
  * @cdev: character device object to create character device
@@ -784,6 +799,8 @@ static inline bool ubi_leb_valid(struct ubi_volume *vol, int lnum)
 }
 
 /* eba.c */
+void ubi_eba_get_ldesc(struct ubi_volume *vol, int lnum,
+		       struct ubi_eba_leb_desc *ldesc);
 bool ubi_eba_is_mapped(struct ubi_volume *vol, int lnum);
 int ubi_eba_unmap_leb(struct ubi_device *ubi, struct ubi_volume *vol,
 		      int lnum);
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
