Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RSS5S-0005tA-7p
 for barebox@lists.infradead.org; Mon, 21 Nov 2011 11:31:03 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1RSS5M-0006Dp-QB
 for barebox@lists.infradead.org; Mon, 21 Nov 2011 12:30:52 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 21 Nov 2011 12:30:09 +0100
References: <1321435467-19148-1-git-send-email-jbe@pengutronix.de>
 <20111117161706.GN27267@pengutronix.de>
 <201111211105.30369.jbe@pengutronix.de>
In-Reply-To: <201111211105.30369.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201111211230.10444.jbe@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 08/13] DISK: Add common partition handling for disk like
 media
To: barebox@lists.infradead.org

Next try. Now only local vars are used.

diff --git a/common/partitions.c b/common/partitions.c
index f3e0f6f..6310988 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -42,14 +42,13 @@ struct partition_desc {
 	struct partition parts[8];
 };
 
-static struct partition_desc pdesc;
-
-static void add_one_partition_entry(struct partition *p)
+static void add_one_partition_entry(struct partition *p,
+						struct partition_desc *pdesc)
 {
-	if (pdesc.used_entries >= 8)
+	if (pdesc->used_entries >= 8)
 		return;	/* ignore */
-	pdesc.parts[pdesc.used_entries] = *p;
-	pdesc.used_entries++;
+	pdesc->parts[pdesc->used_entries] = *p;
+	pdesc->used_entries++;
 }
 
 /**
@@ -125,12 +124,14 @@ static int read_dos_partition_table(struct block_device *blk, uint8_t *sector_bu
 /**
  * Check if a DOS like partition describes this block device
  * @param blk Block device to register to
+ * @param pd Where to store the partition information
  * @return 0 on success, -EINVAL if no partition table was found
  *
  * It seems at least on ARM this routine canot use temp. stack space for the
  * sector. So, keep the malloc/free.
  */
-static int __maybe_unused try_dos_partition(struct block_device *blk)
+static int __maybe_unused try_dos_partition(struct block_device *blk,
+						struct partition_desc *pd)
 {
 	int part_order[4] = {0, 1, 2, 3};
 	uint8_t *buffer;
@@ -163,7 +164,7 @@ static int __maybe_unused try_dos_partition(struct block_device *blk)
 			continue;
 
 		if (pentry.first_sec != 0)
-			add_one_partition_entry(&pentry);
+			add_one_partition_entry(&pentry, pd);
 		else {
 			dev_dbg(blk->dev, "Skipping empty partition %d\n", i);
 		}
@@ -204,12 +205,13 @@ static int register_one_partition(struct block_device *blk,
  */
 int parse_partition_table(struct block_device *blk)
 {
+	struct partition_desc pdesc = { .used_entries = 0, };
 	int i;
 	int rc = 0;
 
 #ifdef CONFIG_PARTITION_DISK_DOS
 	if (pdesc.used_entries == 0)
-		try_dos_partition(blk);
+		try_dos_partition(blk, &pdesc);
 #endif
 
 	if (pdesc.used_entries != 0) {


-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
