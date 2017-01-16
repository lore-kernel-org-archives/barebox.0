Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cT4su-0002kK-0c
 for barebox@lists.infradead.org; Mon, 16 Jan 2017 10:51:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 13/23] mci: Allow to partition eMMC boot partitions
Date: Mon, 16 Jan 2017 11:50:58 +0100
Message-Id: <20170116105108.13617-14-s.hauer@pengutronix.de>
In-Reply-To: <20170116105108.13617-1-s.hauer@pengutronix.de>
References: <20170116105108.13617-1-s.hauer@pengutronix.de>
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
To: Barebox List <barebox@lists.infradead.org>

So far the eMMC boot partitions cannot be partitioned from the
device tree. Since they are often 4MiB in size they are big enough
to hold a barebox image and the environment. Add partition parsing
to the boot partitions to allow this usecase.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c | 78 +++++++++++++++++++++++++++++++++++---------------
 include/mci.h          |  1 +
 2 files changed, 56 insertions(+), 23 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 4e176f7b3..055a5e2b0 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -436,6 +436,7 @@ static void mci_part_add(struct mci *mci, uint64_t size,
 	part->blk.num_blocks = mci_calc_blk_cnt(size, part->blk.blockbits);
 	part->area_type = area_type;
 	part->part_cfg = part_cfg;
+	part->idx = idx;
 
 	if (area_type == MMC_BLK_DATA_AREA_MAIN)
 		part->blk.cdev.device_node = mci->host->hw_dev->device_node;
@@ -1573,6 +1574,59 @@ static const char *mci_boot_names[] = {
 	"user",
 };
 
+static int mci_register_partition(struct mci_part *part)
+{
+	struct mci *mci = part->mci;
+	struct mci_host *host = mci->host;
+	const char *partnodename = NULL;
+	struct device_node *np;
+	int rc;
+
+	/*
+	 * An MMC/SD card acts like an ordinary disk.
+	 * So, re-use the disk driver to gain access to this media
+	 */
+	part->blk.dev = &mci->dev;
+	part->blk.ops = &mci_ops;
+
+	rc = blockdevice_register(&part->blk);
+	if (rc != 0) {
+		dev_err(&mci->dev, "Failed to register MCI/SD blockdevice\n");
+		return rc;
+	}
+	dev_info(&mci->dev, "registered %s\n", part->blk.cdev.name);
+
+	np = host->hw_dev->device_node;
+
+	/* create partitions on demand */
+	switch (part->area_type) {
+	case MMC_BLK_DATA_AREA_BOOT:
+		if (part->idx == 0)
+			partnodename = "boot0-partitions";
+		else
+			partnodename = "boot1-partitions";
+
+		np = of_get_child_by_name(host->hw_dev->device_node,
+					  partnodename);
+		break;
+	case MMC_BLK_DATA_AREA_MAIN:
+		break;
+	default:
+		return 0;
+	}
+
+	rc = parse_partition_table(&part->blk);
+	if (rc != 0) {
+		dev_warn(&mci->dev, "No partition table found\n");
+		rc = 0; /* it's not a failure */
+	}
+
+	if (np)
+		of_parse_partitions(&part->blk.cdev, np);
+
+	return 0;
+}
+
 /**
  * Probe an MCI card at the given host interface
  * @param mci MCI device instance
@@ -1647,29 +1701,7 @@ static int mci_card_probe(struct mci *mci)
 	for (i = 0; i < mci->nr_parts; i++) {
 		struct mci_part *part = &mci->part[i];
 
-		/*
-		 * An MMC/SD card acts like an ordinary disk.
-		 * So, re-use the disk driver to gain access to this media
-		 */
-		part->blk.dev = &mci->dev;
-		part->blk.ops = &mci_ops;
-
-		rc = blockdevice_register(&part->blk);
-		if (rc != 0) {
-			dev_err(&mci->dev, "Failed to register MCI/SD blockdevice\n");
-			goto on_error;
-		}
-		dev_info(&mci->dev, "registered %s\n", part->blk.cdev.name);
-
-		/* create partitions on demand */
-		if (part->area_type == MMC_BLK_DATA_AREA_MAIN) {
-			rc = parse_partition_table(&part->blk);
-			if (rc != 0) {
-				dev_warn(&mci->dev, "No partition table found\n");
-				rc = 0; /* it's not a failure */
-			}
-			of_parse_partitions(&part->blk.cdev, host->hw_dev->device_node);
-		}
+		rc = mci_register_partition(part);
 
 		if (IS_ENABLED(CONFIG_MCI_MMC_BOOT_PARTITIONS) &&
 				part->area_type == MMC_BLK_DATA_AREA_BOOT &&
diff --git a/include/mci.h b/include/mci.h
index 0370547b0..cc4712cfa 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -433,6 +433,7 @@ struct mci_part {
 	uint64_t		size;		/* partition size (in bytes) */
 	unsigned int		part_cfg;	/* partition type */
 	char			*name;
+	int			idx;
 	unsigned int		area_type;
 #define MMC_BLK_DATA_AREA_MAIN	(1<<0)
 #define MMC_BLK_DATA_AREA_BOOT	(1<<1)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
