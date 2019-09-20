Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBHCB-0003tD-Pe
 for barebox@lists.infradead.org; Fri, 20 Sep 2019 11:35:30 +0000
From: Stefan Riedmueller <s.riedmueller@phytec.de>
Date: Fri, 20 Sep 2019 13:35:19 +0200
Message-Id: <1568979319-254499-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: [PATCH v2] mtd: ubi: Max out wear-leveling threshold
To: barebox@lists.infradead.org

Due to the recursive ubi_thread implementation in the barebox, a large
amount of wear-leveling can lead to a stack overflow.

This was observed during extensive ubi stress tests with the linux
kernel and periodic power cycles. We found that if the wear-leveling
threshold is exceeded and a large amount of erase blocks need
wear-leveling the stack can overflow.

The hardware used to observe this was a phyCORE-i.MX 6 with 1GB NAND flash.

As the kernel is perfectly capable of handling wear-leveling we can
disable wear-leveling in the barebox by maxing out the threshold and
removing its Kconfig option.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
Changes in v2:
 - Remove threshold config completely instead of just maxing out the default
---
 drivers/mtd/ubi/Kconfig | 17 -----------------
 drivers/mtd/ubi/build.c |  2 +-
 drivers/mtd/ubi/ubi.h   | 11 +++++++++++
 drivers/mtd/ubi/wl.c    |  8 --------
 4 files changed, 12 insertions(+), 26 deletions(-)

diff --git a/drivers/mtd/ubi/Kconfig b/drivers/mtd/ubi/Kconfig
index 9a344082b7bb..ed2f13d14c30 100644
--- a/drivers/mtd/ubi/Kconfig
+++ b/drivers/mtd/ubi/Kconfig
@@ -10,23 +10,6 @@ menuconfig MTD_UBI
 
 if MTD_UBI
 
-config MTD_UBI_WL_THRESHOLD
-	int "UBI wear-leveling threshold"
-	default 4096
-	range 2 65536
-	help
-	  This parameter defines the maximum difference between the highest
-	  erase counter value and the lowest erase counter value of eraseblocks
-	  of UBI devices. When this threshold is exceeded, UBI starts performing
-	  wear leveling by means of moving data from eraseblock with low erase
-	  counter to eraseblocks with high erase counter.
-
-	  The default value should be OK for SLC NAND flashes, NOR flashes and
-	  other flashes which have eraseblock life-cycle 100000 or more.
-	  However, in case of MLC NAND flashes which typically have eraseblock
-	  life-cycle less than 10000, the threshold should be lessened (e.g.,
-	  to 128 or 256, although it does not have to be power of 2).
-
 config MTD_UBI_BEB_LIMIT
 	int "Maximum expected bad eraseblock count per 1024 eraseblocks"
 	default 20
diff --git a/drivers/mtd/ubi/build.c b/drivers/mtd/ubi/build.c
index 493c778c3fdb..604fe87e53b6 100644
--- a/drivers/mtd/ubi/build.c
+++ b/drivers/mtd/ubi/build.c
@@ -655,7 +655,7 @@ int ubi_attach_mtd_dev(struct mtd_info *mtd, int ubi_num,
 		ubi->vol_count - UBI_INT_VOL_COUNT, UBI_INT_VOL_COUNT,
 		ubi->vtbl_slots);
 	ubi_msg(ubi, "max/mean erase counter: %d/%d, WL threshold: %d, image sequence number: %u",
-		ubi->max_ec, ubi->mean_ec, CONFIG_MTD_UBI_WL_THRESHOLD,
+		ubi->max_ec, ubi->mean_ec, UBI_WL_THRESHOLD,
 		ubi->image_seq);
 	ubi_msg(ubi, "available PEBs: %d, total reserved PEBs: %d, PEBs reserved for bad PEB handling: %d",
 		ubi->avail_pebs, ubi->rsvd_pebs, ubi->beb_rsvd_pebs);
diff --git a/drivers/mtd/ubi/ubi.h b/drivers/mtd/ubi/ubi.h
index 922c1a3c8b49..7d07bbf19720 100644
--- a/drivers/mtd/ubi/ubi.h
+++ b/drivers/mtd/ubi/ubi.h
@@ -69,6 +69,17 @@
  */
 #define UBI_PROT_QUEUE_LEN 10
 
+/*
+ * Maximum difference between two erase counters. If this threshold is
+ * exceeded, the WL sub-system starts moving data from used physical
+ * eraseblocks with low erase counter to free physical eraseblocks with high
+ * erase counter.
+ * Extensive wear-leveling in the barebox can lead to stack overflows. Thus
+ * disable it by setting the threshold to the OS's max configurable value and
+ * leave wear-leveling to the OS.
+ */
+#define UBI_WL_THRESHOLD 65536
+
 /* The volume ID/LEB number/erase counter is unknown */
 #define UBI_UNKNOWN -1
 
diff --git a/drivers/mtd/ubi/wl.c b/drivers/mtd/ubi/wl.c
index cf90ecfb2385..013ba3e1ffc7 100644
--- a/drivers/mtd/ubi/wl.c
+++ b/drivers/mtd/ubi/wl.c
@@ -101,14 +101,6 @@
 #define WL_RESERVED_PEBS 1
 
 /*
- * Maximum difference between two erase counters. If this threshold is
- * exceeded, the WL sub-system starts moving data from used physical
- * eraseblocks with low erase counter to free physical eraseblocks with high
- * erase counter.
- */
-#define UBI_WL_THRESHOLD CONFIG_MTD_UBI_WL_THRESHOLD
-
-/*
  * When a physical eraseblock is moved, the WL sub-system has to pick the target
  * physical eraseblock to move to. The simplest way would be just to pick the
  * one with the highest erase counter. But in certain workloads this could lead
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
