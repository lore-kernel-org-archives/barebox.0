Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuzSv-0005UU-6Z
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:21:03 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 89E8AA00DF0
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 14:21:01 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Aug 2018 14:19:57 +0200
Message-Id: <1535545212-18871-42-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 41/56] UBI: Fix typos
To: barebox@lists.infradead.org

From: "Andrew F. Davis" <afd@ti.com>

Signed-off-by: Andrew F. Davis <afd@ti.com>
Signed-off-by: Jiri Kosina <jkosina@suse.cz>
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/Kconfig | 2 +-
 drivers/mtd/ubi/io.c    | 2 +-
 drivers/mtd/ubi/ubi.h   | 3 +--
 3 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/ubi/Kconfig b/drivers/mtd/ubi/Kconfig
index 4c497931f192..9a344082b7bb 100644
--- a/drivers/mtd/ubi/Kconfig
+++ b/drivers/mtd/ubi/Kconfig
@@ -2,7 +2,7 @@ menuconfig MTD_UBI
 	tristate "Enable UBI - Unsorted block images"
 	select CRC32
 	help
-	  UBI is a software layer above MTD layer which admits of LVM-like
+	  UBI is a software layer above MTD layer which admits use of LVM-like
 	  logical volumes on top of MTD devices, hides some complexities of
 	  flash chips like wear and bad blocks and provides some other useful
 	  capabilities. Please, consult the MTD web site for more details
diff --git a/drivers/mtd/ubi/io.c b/drivers/mtd/ubi/io.c
index 4c2731c4172a..d0ea23b124f2 100644
--- a/drivers/mtd/ubi/io.c
+++ b/drivers/mtd/ubi/io.c
@@ -41,7 +41,7 @@
  * About minimal I/O units. In general, UBI assumes flash device model where
  * there is only one minimal I/O unit size. E.g., in case of NOR flash it is 1,
  * in case of NAND flash it is a NAND page, etc. This is reported by MTD in the
- * @ubi->mtd->writesize field. But as an exception, UBI admits of using another
+ * @ubi->mtd->writesize field. But as an exception, UBI admits use of another
  * (smaller) minimal I/O unit size for EC and VID headers to make it possible
  * to do different optimizations.
  *
diff --git a/drivers/mtd/ubi/ubi.h b/drivers/mtd/ubi/ubi.h
index 4f1ba745ccc9..a5096934e2de 100644
--- a/drivers/mtd/ubi/ubi.h
+++ b/drivers/mtd/ubi/ubi.h
@@ -493,8 +493,7 @@ struct ubi_debug_info {
  * @vid_hdr_aloffset: starting offset of the VID header aligned to
  *                    @hdrs_min_io_size
  * @vid_hdr_shift: contains @vid_hdr_offset - @vid_hdr_aloffset
- * @bad_allowed: whether the MTD device admits of bad physical eraseblocks or
- *               not
+ * @bad_allowed: whether the MTD device admits bad physical eraseblocks or not
  * @nor_flash: non-zero if working on top of NOR flash
  * @max_write_size: maximum amount of bytes the underlying flash can write at a
  *                  time (MTD write buffer size)
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
