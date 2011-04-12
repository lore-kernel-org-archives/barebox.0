Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9YnL-0005qn-Kc
	for barebox@lists.infradead.org; Tue, 12 Apr 2011 08:17:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 12 Apr 2011 10:17:52 +0200
Message-Id: <1302596272-21635-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302596272-21635-1-git-send-email-s.hauer@pengutronix.de>
References: <1302596272-21635-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/3] ata: guessing disk sizes is only needed on X86
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ata/disk_drive.c |    5 ++++-
 1 files changed, 4 insertions(+), 1 deletions(-)

diff --git a/drivers/ata/disk_drive.c b/drivers/ata/disk_drive.c
index f526b1e..d17fbcb 100644
--- a/drivers/ata/disk_drive.c
+++ b/drivers/ata/disk_drive.c
@@ -60,6 +60,7 @@ struct partition_entry {
  * @param table partition table
  * @return size in sectors
  */
+#ifdef CONFIG_X86
 static unsigned long disk_guess_size(struct device_d *dev, struct partition_entry *table)
 {
 	int part_order[4] = {0, 1, 2, 3};
@@ -83,6 +84,7 @@ static unsigned long disk_guess_size(struct device_d *dev, struct partition_entr
 #endif
 	return size;
 }
+#endif
 
 /**
  * Register partitions found on the drive
@@ -186,6 +188,7 @@ static int disk_probe(struct device_d *dev)
 #endif
 		atablk->blk.cdev.name = asprintf("disk%d", dev->id);
 
+#ifdef CONFIG_X86
 	/* On x86, BIOS based disks are coming without a valid .size field */
 	if (dev->size == 0) {
 		/* guess the size of this drive if not otherwise given */
@@ -193,7 +196,7 @@ static int disk_probe(struct device_d *dev)
 			(struct partition_entry*)&sector[446]) * SECTOR_SIZE;
 		dev_info(dev, "Drive size guessed to %u kiB\n", dev->size / 1024);
 	}
-
+#endif
 	atablk->blk.num_blocks = dev->size / SECTOR_SIZE;
 	atablk->blk.ops = &ataops;
 	atablk->blk.blockbits = 9;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
