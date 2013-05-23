Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UfW0c-0005fI-3q
 for barebox@lists.infradead.org; Thu, 23 May 2013 13:56:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 23 May 2013 15:56:17 +0200
Message-Id: <1369317377-17153-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369317377-17153-1-git-send-email-s.hauer@pengutronix.de>
References: <1369317377-17153-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] mci: Add support for MMC boot partitions
To: barebox@lists.infradead.org

Some MMC cards support boot partitions. These are special regions
on the MMC card intended to put a bootloader on.

This patch adds support for these partitions, they are accessible
as /dev/diskx.boot[0|1].

Additionally the partitions can be configured bootable using a
device parameter. This can be used to mark the user area or one
of the boot partitions as bootable.

Since this feature is mostly seen on eMMC cards it is made optional
to lower the size impact for boards which do not have eMMC.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/Kconfig    |   3 +
 drivers/mci/mci-core.c | 192 ++++++++++++++++++++++++++++++++++++++-----------
 include/mci.h          |  31 +++++++-
 3 files changed, 183 insertions(+), 43 deletions(-)

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index 9558f28..7f28d13 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -29,6 +29,9 @@ config MCI_WRITE
 	default y
 	select DISK_WRITE
 
+config MCI_MMC_BOOT_PARTITIONS
+	bool "support MMC boot partitions"
+
 comment "--- MCI host drivers ---"
 
 config MCI_MXS
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 90ac2a3..5367b4f 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -388,6 +388,35 @@ static int mci_switch(struct mci *mci, unsigned set, unsigned index,
 	return mci_send_cmd(mci, &cmd, NULL);
 }
 
+static int mci_calc_blk_cnt(uint64_t cap, unsigned shift)
+{
+	unsigned ret = cap >> shift;
+
+	if (ret > 0x7fffffff) {
+		pr_warn("Limiting card size due to 31 bit contraints\n");
+		return 0x7fffffff;
+	}
+
+	return (int)ret;
+}
+
+static void mci_part_add(struct mci *mci, uint64_t size,
+                        unsigned int part_cfg, char *name, int idx, bool ro,
+                        int area_type)
+{
+	struct mci_part *part = &mci->part[mci->nr_parts];
+
+	part->mci = mci;
+	part->size = size;
+	part->blk.cdev.name = name;
+	part->blk.blockbits = SECTOR_SHIFT;
+	part->blk.num_blocks = mci_calc_blk_cnt(size, part->blk.blockbits);
+	part->area_type = area_type;
+	part->part_cfg = part_cfg;
+
+	mci->nr_parts++;
+}
+
 /**
  * Change transfer frequency for an MMC card
  * @param mci MCI instance
@@ -442,6 +471,25 @@ static int mmc_change_freq(struct mci *mci)
 	else
 		mci->card_caps |= MMC_MODE_HS;
 
+	if (mci->ext_csd[EXT_CSD_REV] >= 3 && mci->ext_csd[EXT_CSD_BOOT_MULT]) {
+		int idx;
+		unsigned int part_size;
+
+		for (idx = 0; idx < MMC_NUM_BOOT_PARTITION; idx++) {
+			char *name;
+			part_size = mci->ext_csd[EXT_CSD_BOOT_MULT] << 17;
+
+			name = asprintf("%s.boot%d", mci->cdevname, idx);
+			mci_part_add(mci, part_size,
+					EXT_CSD_PART_CONFIG_ACC_BOOT0 + idx,
+					name, idx, true,
+					MMC_BLK_DATA_AREA_BOOT);
+		}
+
+		mci->ext_csd_part_config = mci->ext_csd[EXT_CSD_PART_CONFIG];
+		mci->bootpart = (mci->ext_csd_part_config >> 3) & 0x7;
+	}
+
 	return 0;
 }
 
@@ -1063,6 +1111,10 @@ static int mci_startup(struct mci *mci)
 	/* we setup the blocklength only one times for all accesses to this media  */
 	err = mci_set_blocklen(mci, mci->read_bl_len);
 
+	mci_part_add(mci, mci->capacity, 0,
+			mci->cdevname, 0, true,
+			MMC_BLK_DATA_AREA_MAIN);
+
 	return err;
 }
 
@@ -1104,6 +1156,36 @@ static int sd_send_if_cond(struct mci *mci)
 	return 0;
 }
 
+static int mci_blk_part_switch(struct mci_part *part)
+{
+	struct mci *mci = part->mci;
+	int ret;
+
+	if (!IS_ENABLED(CONFIG_MCI_MMC_BOOT_PARTITIONS))
+		return 0;
+
+	if (mci->part_curr == part)
+		return 0;
+
+	if (!IS_SD(mci)) {
+		u8 part_config = mci->ext_csd_part_config;
+
+		part_config &= ~EXT_CSD_PART_CONFIG_ACC_MASK;
+		part_config |= part->part_cfg;
+
+		ret = mci_switch(mci, EXT_CSD_CMD_SET_NORMAL,
+				EXT_CSD_PART_CONFIG, part_config);
+		if (ret)
+			return ret;
+
+		mci->ext_csd_part_config = part_config;
+	}
+
+	mci->part_curr = part;
+
+	return 0;
+}
+
 /* ------------------ attach to the blocklayer --------------------------- */
 
 /**
@@ -1119,10 +1201,13 @@ static int sd_send_if_cond(struct mci *mci)
 static int __maybe_unused mci_sd_write(struct block_device *blk,
 				const void *buffer, int block, int num_blocks)
 {
-	struct mci *mci = container_of(blk, struct mci, blk);
+	struct mci_part *part = container_of(blk, struct mci_part, blk);
+	struct mci *mci = part->mci;
 	struct mci_host *host = mci->host;
 	int rc;
 
+	mci_blk_part_switch(part);
+
 	if (host->card_write_protected && host->card_write_protected(host)) {
 		dev_err(mci->mci_dev, "card write protected\n");
 		return -EPERM;
@@ -1165,9 +1250,12 @@ static int __maybe_unused mci_sd_write(struct block_device *blk,
 static int mci_sd_read(struct block_device *blk, void *buffer, int block,
 				int num_blocks)
 {
-	struct mci *mci = container_of(blk, struct mci, blk);
+	struct mci_part *part = container_of(blk, struct mci_part, blk);
+	struct mci *mci = part->mci;
 	int rc;
 
+	mci_blk_part_switch(part);
+
 	dev_dbg(mci->mci_dev, "%s: Read %d block(s), starting at %d\n",
 		__func__, num_blocks, block);
 
@@ -1338,18 +1426,6 @@ static int mci_check_if_already_initialized(struct mci *mci)
 	return 0;
 }
 
-static int mci_calc_blk_cnt(uint64_t cap, unsigned shift)
-{
-	unsigned ret = cap >> shift;
-
-	if (ret > 0x7fffffff) {
-		pr_warn("Limiting card size due to 31 bit contraints\n");
-		return 0x7fffffff;
-	}
-
-	return (int)ret;
-}
-
 static struct block_device_ops mci_ops = {
 	.read = mci_sd_read,
 #ifdef CONFIG_BLOCK_WRITE
@@ -1357,6 +1433,28 @@ static struct block_device_ops mci_ops = {
 #endif
 };
 
+static int mci_set_boot(struct param_d *param, void *priv)
+{
+	struct mci *mci = priv;
+
+	mci->ext_csd_part_config &= ~(7 << 3);
+	mci->ext_csd_part_config |= mci->bootpart << 3;
+
+	return mci_switch(mci, EXT_CSD_CMD_SET_NORMAL,
+			EXT_CSD_PART_CONFIG, mci->ext_csd_part_config);
+}
+
+static const char *mci_boot_names[] = {
+	"disabled",
+	"boot0",
+	"boot1",
+	NULL, /* reserved */
+	NULL, /* reserved */
+	NULL, /* reserved */
+	NULL, /* reserved */
+	"user",
+};
+
 /**
  * Probe an MCI card at the given host interface
  * @param mci MCI device instance
@@ -1365,7 +1463,7 @@ static struct block_device_ops mci_ops = {
 static int mci_card_probe(struct mci *mci)
 {
 	struct mci_host *host = mci->host;
-	int rc, disknum;
+	int i, rc, disknum;
 
 	if (host->card_present && !host->card_present(host)) {
 		dev_err(mci->mci_dev, "no card inserted\n");
@@ -1402,6 +1500,13 @@ static int mci_card_probe(struct mci *mci)
 	if (rc)
 		goto on_error;
 
+	if (host->devname) {
+		mci->cdevname = strdup(host->devname);
+	} else {
+		disknum = cdev_find_free_index("disk");
+		mci->cdevname = asprintf("disk%d", disknum);
+	}
+
 	rc = mci_startup(mci);
 	if (rc) {
 		dev_dbg(mci->mci_dev, "Card's startup fails with %d\n", rc);
@@ -1411,36 +1516,39 @@ static int mci_card_probe(struct mci *mci)
 	dev_dbg(mci->mci_dev, "Card is up and running now, registering as a disk\n");
 	mci->ready_for_use = 1;	/* TODO now or later? */
 
-	/*
-	 * An MMC/SD card acts like an ordinary disk.
-	 * So, re-use the disk driver to gain access to this media
-	 */
-	mci->blk.dev = mci->mci_dev;
-	mci->blk.ops = &mci_ops;
-
-	if (host->devname) {
-		mci->blk.cdev.name = strdup(host->devname);
-	} else {
-		disknum = cdev_find_free_index("disk");
-		mci->blk.cdev.name = asprintf("disk%d", disknum);
-	}
+	for (i = 0; i < mci->nr_parts; i++) {
+		struct mci_part *part = &mci->part[i];
 
-	mci->blk.blockbits = SECTOR_SHIFT;
-	mci->blk.num_blocks = mci_calc_blk_cnt(mci->capacity, mci->blk.blockbits);
-
-	rc = blockdevice_register(&mci->blk);
-	if (rc != 0) {
-		dev_err(mci->mci_dev, "Failed to register MCI/SD blockdevice\n");
-		goto on_error;
-	}
+		/*
+		 * An MMC/SD card acts like an ordinary disk.
+		 * So, re-use the disk driver to gain access to this media
+		 */
+		part->blk.dev = mci->mci_dev;
+		part->blk.ops = &mci_ops;
 
-	dev_info(mci->mci_dev, "registered %s\n", mci->blk.cdev.name);
+		rc = blockdevice_register(&part->blk);
+		if (rc != 0) {
+			dev_err(mci->mci_dev, "Failed to register MCI/SD blockdevice\n");
+			goto on_error;
+		}
+		dev_info(mci->mci_dev, "registered %s\n", part->blk.cdev.name);
+
+		/* create partitions on demand */
+		if (part->area_type == MMC_BLK_DATA_AREA_MAIN) {
+			rc = parse_partition_table(&part->blk);
+			if (rc != 0) {
+				dev_warn(mci->mci_dev, "No partition table found\n");
+				rc = 0; /* it's not a failure */
+			}
+		}
 
-	/* create partitions on demand */
-	rc = parse_partition_table(&mci->blk);
-	if (rc != 0) {
-		dev_warn(mci->mci_dev, "No partition table found\n");
-		rc = 0; /* it's not a failure */
+		if (IS_ENABLED(CONFIG_MCI_MMC_BOOT_PARTITIONS) &&
+				part->area_type == MMC_BLK_DATA_AREA_BOOT &&
+				!mci->param_boot) {
+			mci->param_boot = dev_add_param_enum(mci->mci_dev, "boot",
+					mci_set_boot, NULL, &mci->bootpart,
+					mci_boot_names, ARRAY_SIZE(mci_boot_names), mci);
+		}
 	}
 
 	dev_dbg(mci->mci_dev, "SD Card successfully added\n");
diff --git a/include/mci.h b/include/mci.h
index eca48a5..1735986 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -185,6 +185,8 @@
 /*
  * EXT_CSD field definitions
  */
+#define EXT_CSD_PART_CONFIG_ACC_MASK	(0x7)
+#define EXT_CSD_PART_CONFIG_ACC_BOOT0	(0x1)
 
 #define EXT_CSD_CMD_SET_NORMAL		(1<<0)
 #define EXT_CSD_CMD_SET_SECURE		(1<<1)
@@ -306,10 +308,28 @@ struct mci_host {
 	int (*card_write_protected)(struct mci_host *);
 };
 
+struct mci;
+
+#define MMC_NUM_BOOT_PARTITION	2
+#define MMC_NUM_GP_PARTITION	4
+#define MMC_NUM_PHY_PARTITION	6
+
+struct mci_part {
+	struct block_device	blk;		/**< the blockdevice for the card */
+	struct mci		*mci;
+	uint64_t		size;		/* partition size (in bytes) */
+	unsigned int		part_cfg;	/* partition type */
+	char			*name;
+	unsigned int		area_type;
+#define MMC_BLK_DATA_AREA_MAIN	(1<<0)
+#define MMC_BLK_DATA_AREA_BOOT	(1<<1)
+#define MMC_BLK_DATA_AREA_GP	(1<<2)
+#define MMC_BLK_DATA_AREA_RPMB	(1<<3)
+};
+
 /** MMC/SD and interface instance information */
 struct mci {
 	struct mci_host *host;		/**< the host for this card */
-	struct block_device blk;	/**< the blockdevice for the card */
 	struct device_d *mci_dev;	/**< the device for our disk (mcix) */
 	unsigned version;
 	/** != 0 when a high capacity card is connected (OCR -> OCR_HCS) */
@@ -330,6 +350,15 @@ struct mci {
 	char *ext_csd;
 	int probe;
 	struct param_d *param_probe;
+	struct param_d *param_boot;
+	int bootpart;
+
+	struct mci_part part[MMC_NUM_PHY_PARTITION];
+	int nr_parts;
+	char *cdevname;
+
+	struct mci_part *part_curr;
+	u8 ext_csd_part_config;
 };
 
 int mci_register(struct mci_host*);
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
