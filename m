Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lC6Y7-0007Oh-TD
 for barebox@lists.infradead.org; Tue, 16 Feb 2021 20:02:22 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 16 Feb 2021 21:02:03 +0100
Message-Id: <20210216200208.5275-4-a.fatoum@pengutronix.de>
In-Reply-To: <20210216200208.5275-1-a.fatoum@pengutronix.de>
References: <20210216200208.5275-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/8] block: use 64-bit types for sector offset and count on
 all platforms
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

barebox' use of int for the sector offset puts an upper bound of 1TB on
the size of supported block devices, which is already exceeded by common
place USB mass storage. Increasing the sizes involved to 64 bit
like Linux does won't magically add missing driver support, but it gives
us at least a fighting chance. Do so.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/board/hostfile.c |  4 ++--
 common/block.c                | 35 +++++++++++++++++-----------------
 common/partitions.c           |  2 +-
 drivers/ata/ahci.c            | 12 ++++++------
 drivers/ata/disk_ata_drive.c  | 10 +++++-----
 drivers/ata/disk_bios_drive.c | 16 ++++++++--------
 drivers/ata/ide-sff.c         | 12 ++++++------
 drivers/block/efi-block-io.c  |  8 ++++----
 drivers/mci/mci-core.c        | 36 +++++++++++++++++------------------
 drivers/nvme/host/core.c      | 12 ++++++------
 drivers/usb/storage/usb.c     | 18 +++++++++---------
 include/ata_drive.h           |  4 ++--
 include/block.h               | 15 ++++++++-------
 include/linux/types.h         |  5 -----
 14 files changed, 93 insertions(+), 96 deletions(-)

diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index 4a5a324d588a..4fdf2b317d57 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -72,14 +72,14 @@ static struct cdev_operations hf_cdev_ops = {
 	.write = hf_cdev_write,
 };
 
-static int hf_blk_read(struct block_device *blk, void *buf, int block, int num_blocks)
+static int hf_blk_read(struct block_device *blk, void *buf, sector_t block, blkcnt_t num_blocks)
 {
 	ssize_t ret = hf_read(container_of(blk, struct hf_priv, blk), buf,
 			      num_blocks << SECTOR_SHIFT, block << SECTOR_SHIFT, 0);
 	return ret > 0 ? 0 : ret;
 }
 
-static int hf_blk_write(struct block_device *blk, const void *buf, int block, int num_blocks)
+static int hf_blk_write(struct block_device *blk, const void *buf, sector_t block, blkcnt_t num_blocks)
 {
 	ssize_t ret = hf_write(container_of(blk, struct hf_priv, blk), buf,
 			       num_blocks << SECTOR_SHIFT, block << SECTOR_SHIFT, 0);
diff --git a/common/block.c b/common/block.c
index 6371010a905b..1d386edcfd49 100644
--- a/common/block.c
+++ b/common/block.c
@@ -18,7 +18,7 @@ LIST_HEAD(block_device_list);
 /* a chunk of contiguous data */
 struct chunk {
 	void *data; /* data buffer */
-	int block_start; /* first block in this chunk */
+	sector_t block_start; /* first block in this chunk */
 	int dirty; /* need to write back to device */
 	int num; /* number of chunk, debugging only */
 	struct list_head list;
@@ -28,7 +28,7 @@ struct chunk {
 
 static int writebuffer_io_len(struct block_device *blk, struct chunk *chunk)
 {
-	return min(blk->rdbufsize, blk->num_blocks - chunk->block_start);
+	return min_t(blkcnt_t, blk->rdbufsize, blk->num_blocks - chunk->block_start);
 }
 
 /*
@@ -64,14 +64,14 @@ static int writebuffer_flush(struct block_device *blk)
  * get the chunk containing a given block. Will return NULL if the
  * block is not cached, the chunk otherwise.
  */
-static struct chunk *chunk_get_cached(struct block_device *blk, int block)
+static struct chunk *chunk_get_cached(struct block_device *blk, sector_t block)
 {
 	struct chunk *chunk;
 
 	list_for_each_entry(chunk, &blk->buffered_blocks, list) {
 		if (block >= chunk->block_start &&
 				block < chunk->block_start + blk->rdbufsize) {
-			dev_dbg(blk->dev, "%s: found %d in %d\n", __func__,
+			dev_dbg(blk->dev, "%s: found %llu in %d\n", __func__,
 				block, chunk->num);
 			/*
 			 * move most recently used entry to the head of the list
@@ -88,7 +88,7 @@ static struct chunk *chunk_get_cached(struct block_device *blk, int block)
  * Get the data pointer for a given block. Will return NULL if
  * the block is not cached, the data pointer otherwise.
  */
-static void *block_get_cached(struct block_device *blk, int block)
+static void *block_get_cached(struct block_device *blk, sector_t block)
 {
 	struct chunk *chunk;
 
@@ -135,7 +135,7 @@ static struct chunk *get_chunk(struct block_device *blk)
  * not cached already. By definition block_get_cached() for
  * the same block will succeed after this call.
  */
-static int block_cache(struct block_device *blk, int block)
+static int block_cache(struct block_device *blk, sector_t block)
 {
 	struct chunk *chunk;
 	int ret;
@@ -146,7 +146,7 @@ static int block_cache(struct block_device *blk, int block)
 
 	chunk->block_start = block & ~blk->blkmask;
 
-	dev_dbg(blk->dev, "%s: %d to %d\n", __func__, chunk->block_start,
+	dev_dbg(blk->dev, "%s: %llu to %d\n", __func__, chunk->block_start,
 		chunk->num);
 
 	if (chunk->block_start * BLOCKSIZE(blk) >= blk->discard_start &&
@@ -172,7 +172,7 @@ static int block_cache(struct block_device *blk, int block)
  * Get the data for a block, either from the cache or from
  * the device.
  */
-static void *block_get(struct block_device *blk, int block)
+static void *block_get(struct block_device *blk, sector_t block)
 {
 	void *outdata;
 	int ret;
@@ -200,9 +200,9 @@ static ssize_t block_op_read(struct cdev *cdev, void *buf, size_t count,
 {
 	struct block_device *blk = cdev->priv;
 	unsigned long mask = BLOCKSIZE(blk) - 1;
-	unsigned long block = offset >> blk->blockbits;
+	sector_t block = offset >> blk->blockbits;
 	size_t icount = count;
-	int blocks;
+	blkcnt_t blocks;
 
 	if (offset & mask) {
 		size_t now = BLOCKSIZE(blk) - (offset & mask);
@@ -252,7 +252,7 @@ static ssize_t block_op_read(struct cdev *cdev, void *buf, size_t count,
  * Put data into a block. This only overwrites the data in the
  * cache and marks the corresponding chunk as dirty.
  */
-static int block_put(struct block_device *blk, const void *buf, int block)
+static int block_put(struct block_device *blk, const void *buf, sector_t block)
 {
 	struct chunk *chunk;
 	void *data;
@@ -277,9 +277,10 @@ static ssize_t block_op_write(struct cdev *cdev, const void *buf, size_t count,
 {
 	struct block_device *blk = cdev->priv;
 	unsigned long mask = BLOCKSIZE(blk) - 1;
-	unsigned long block = offset >> blk->blockbits;
+	sector_t block = offset >> blk->blockbits;
 	size_t icount = count;
-	int blocks, ret;
+	blkcnt_t blocks;
+	int ret;
 
 	if (offset & mask) {
 		size_t now = BLOCKSIZE(blk) - (offset & mask);
@@ -419,24 +420,24 @@ int blockdevice_unregister(struct block_device *blk)
 	return 0;
 }
 
-int block_read(struct block_device *blk, void *buf, int block, int num_blocks)
+int block_read(struct block_device *blk, void *buf, sector_t block, blkcnt_t num_blocks)
 {
 	int ret;
 
 	ret = cdev_read(&blk->cdev, buf,
 			num_blocks << blk->blockbits,
-			(loff_t)block << blk->blockbits, 0);
+			block << blk->blockbits, 0);
 
 	return ret < 0 ? ret : 0;
 }
 
-int block_write(struct block_device *blk, void *buf, int block, int num_blocks)
+int block_write(struct block_device *blk, void *buf, sector_t block, blkcnt_t num_blocks)
 {
 	int ret;
 
 	ret = cdev_write(&blk->cdev, buf,
 			num_blocks << blk->blockbits,
-			(loff_t)block << blk->blockbits, 0);
+			block << blk->blockbits, 0);
 
 	return ret < 0 ? ret : 0;
 }
diff --git a/common/partitions.c b/common/partitions.c
index 01697f87d0ed..1f0c544c6067 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -124,7 +124,7 @@ int parse_partition_table(struct block_device *blk)
 
 	rc = block_read(blk, buf, 0, 2);
 	if (rc != 0) {
-		dev_err(blk->dev, "Cannot read MBR/partition table\n");
+		dev_err(blk->dev, "Cannot read MBR/partition table: %pe\n", ERR_PTR(rc));
 		goto on_error;
 	}
 
diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index 049a36bb44c0..6d251f248a2d 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -215,7 +215,7 @@ static int ahci_read_id(struct ata_port *ata, void *buf)
 }
 
 static int ahci_rw(struct ata_port *ata, void *rbuf, const void *wbuf,
-		unsigned int block, int num_blocks)
+		sector_t block, blkcnt_t num_blocks)
 {
 	struct ahci_port *ahci = container_of(ata, struct ahci_port, ata);
 	u8 fis[20];
@@ -237,7 +237,7 @@ static int ahci_rw(struct ata_port *ata, void *rbuf, const void *wbuf,
 	while (num_blocks) {
 		int now;
 
-		now = min(MAX_SATA_BLOCKS_READ_WRITE, num_blocks);
+		now = min_t(blkcnt_t, MAX_SATA_BLOCKS_READ_WRITE, num_blocks);
 
 		fis[4] = (block >> 0) & 0xff;
 		fis[5] = (block >> 8) & 0xff;
@@ -270,14 +270,14 @@ static int ahci_rw(struct ata_port *ata, void *rbuf, const void *wbuf,
 	return 0;
 }
 
-static int ahci_read(struct ata_port *ata, void *buf, unsigned int block,
-		int num_blocks)
+static int ahci_read(struct ata_port *ata, void *buf, sector_t block,
+		blkcnt_t num_blocks)
 {
 	return ahci_rw(ata, buf, NULL, block, num_blocks);
 }
 
-static int ahci_write(struct ata_port *ata, const void *buf, unsigned int block,
-		int num_blocks)
+static int ahci_write(struct ata_port *ata, const void *buf, sector_t block,
+		blkcnt_t num_blocks)
 {
 	return ahci_rw(ata, NULL, buf, block, num_blocks);
 }
diff --git a/drivers/ata/disk_ata_drive.c b/drivers/ata/disk_ata_drive.c
index 11f7151e5187..3d9503fe7ea1 100644
--- a/drivers/ata/disk_ata_drive.c
+++ b/drivers/ata/disk_ata_drive.c
@@ -26,7 +26,7 @@
 #include <disks.h>
 #include <dma.h>
 
-static uint64_t ata_id_n_sectors(uint16_t *id)
+static blkcnt_t ata_id_n_sectors(uint16_t *id)
 {
 	if (ata_id_has_lba(id)) {
 		if (ata_id_has_lba48(id))
@@ -75,7 +75,7 @@ static void __maybe_unused ata_dump_id(uint16_t *id)
 	unsigned char serial[ATA_ID_SERNO_LEN + 1];
 	unsigned char firmware[ATA_ID_FW_REV_LEN + 1];
 	unsigned char product[ATA_ID_PROD_LEN + 1];
-	uint64_t n_sectors;
+	sector_t n_sectors;
 
 	/* Serial number */
 	ata_id_c_string(id, serial, ATA_ID_SERNO, sizeof(serial));
@@ -165,8 +165,8 @@ static void ata_fix_endianess(uint16_t *buf, unsigned wds)
  * @note Due to 'block' is of type 'int' only small disks can be handled!
  * @todo Optimize the read loop
  */
-static int ata_read(struct block_device *blk, void *buffer, int block,
-				int num_blocks)
+static int ata_read(struct block_device *blk, void *buffer, sector_t block,
+				blkcnt_t num_blocks)
 {
 	struct ata_port *port = container_of(blk, struct ata_port, blk);
 
@@ -187,7 +187,7 @@ static int ata_read(struct block_device *blk, void *buffer, int block,
  * @todo Optimize the write loop
  */
 static int __maybe_unused ata_write(struct block_device *blk,
-				const void *buffer, int block, int num_blocks)
+				const void *buffer, sector_t block, blkcnt_t num_blocks)
 {
 	struct ata_port *port = container_of(blk, struct ata_port, blk);
 
diff --git a/drivers/ata/disk_bios_drive.c b/drivers/ata/disk_bios_drive.c
index 363af3c6dd08..8f522eeba65b 100644
--- a/drivers/ata/disk_bios_drive.c
+++ b/drivers/ata/disk_bios_drive.c
@@ -115,7 +115,7 @@ static struct DAPS bios_daps __attribute__((aligned(16)));
  * @param buffer Buffer to read from or write to (in the low memory area)
  * @return 0 on success, anything else on failure
  */
-static int biosdisk_bios_call(struct media_access *media, int cmd, uint64_t sector_start, unsigned sector_count, void *buffer)
+static int biosdisk_bios_call(struct media_access *media, int cmd, sector_t sector_start, blkcnt_t sector_count, void *buffer)
 {
 	int rc;
 
@@ -150,12 +150,12 @@ static int biosdisk_bios_call(struct media_access *media, int cmd, uint64_t sect
  *
  * @note Due to 'block' is of type 'int' only small disks can be handled!
  */
-static int biosdisk_read(struct block_device *blk, void *buffer, int block,
-				int num_blocks)
+static int biosdisk_read(struct block_device *blk, void *buffer, sector_t block,
+				blkcnt_t num_blocks)
 {
 	int rc;
-	uint64_t sector_start = block;
-	unsigned sector_count = num_blocks;
+	sector_t sector_start = block;
+	blkcnt_t sector_count = num_blocks;
 	struct media_access *media = to_media_access(blk);
 
 	while (sector_count >= SECTORS_AT_ONCE) {
@@ -191,11 +191,11 @@ static int biosdisk_read(struct block_device *blk, void *buffer, int block,
  * @note Due to 'block' is of type 'int' only small disks can be handled!
  */
 static int __maybe_unused biosdisk_write(struct block_device *blk,
-				const void *buffer, int block, int num_blocks)
+				const void *buffer, sector_t block, blkcnt_t num_blocks)
 {
 	int rc;
-	uint64_t sector_start = block;
-	unsigned sector_count = num_blocks;
+	sector_t sector_start = block;
+	blkcnt_t sector_count = num_blocks;
 	struct media_access *media = to_media_access(blk);
 
 	while (sector_count >= SECTORS_AT_ONCE) {
diff --git a/drivers/ata/ide-sff.c b/drivers/ata/ide-sff.c
index b7c8847266f9..a735c8c32c02 100644
--- a/drivers/ata/ide-sff.c
+++ b/drivers/ata/ide-sff.c
@@ -138,7 +138,7 @@ static int ata_wait_ready(struct ide_port *ide, unsigned timeout)
  * @param num Sector number
  */
 static int ata_set_lba_sector(struct ata_port *port, unsigned drive,
-				uint64_t num)
+				sector_t num)
 {
 	struct ide_port *ide = to_ata_drive_access(port);
 
@@ -324,11 +324,11 @@ static int ide_reset(struct ata_port *port)
  * @note Due to 'block' is of type 'int' only small disks can be handled!
  * @todo Optimize the read loop
  */
-static int ide_read(struct ata_port *port, void *buffer, unsigned int block,
-				int num_blocks)
+static int ide_read(struct ata_port *port, void *buffer, sector_t block,
+				blkcnt_t num_blocks)
 {
 	int rc;
-	uint64_t sector = block;
+	sector_t sector = block;
 	struct ide_port *ide = to_ata_drive_access(port);
 
 	while (num_blocks) {
@@ -372,10 +372,10 @@ static int ide_read(struct ata_port *port, void *buffer, unsigned int block,
  * @todo Optimize the write loop
  */
 static int __maybe_unused ide_write(struct ata_port *port,
-				const void *buffer, unsigned int block, int num_blocks)
+				const void *buffer, sector_t block, blkcnt_t num_blocks)
 {
 	int rc;
-	uint64_t sector = block;
+	sector_t sector = block;
 	struct ide_port *ide = to_ata_drive_access(port);
 
 	while (num_blocks) {
diff --git a/drivers/block/efi-block-io.c b/drivers/block/efi-block-io.c
index 30db486876a8..4768c219edd2 100644
--- a/drivers/block/efi-block-io.c
+++ b/drivers/block/efi-block-io.c
@@ -28,7 +28,7 @@ struct efi_block_io_media{
 	bool write_caching;
 	u32 block_size;
 	u32 io_align;
-	u64 last_block;
+	sector_t last_block;
 	u64 lowest_aligned_lba; /* added in Revision 2 */
 	u32 logical_blocks_per_physical_block; /* added in Revision 2 */
 	u32 optimal_transfer_length_granularity; /* added in Revision 3 */
@@ -53,8 +53,8 @@ struct efi_bio_priv {
 	u32 media_id;
 };
 
-static int efi_bio_read(struct block_device *blk, void *buffer, int block,
-		int num_blocks)
+static int efi_bio_read(struct block_device *blk, void *buffer, sector_t block,
+		blkcnt_t num_blocks)
 {
 	struct efi_bio_priv *priv = container_of(blk, struct efi_bio_priv, blk);
 	efi_status_t efiret;
@@ -69,7 +69,7 @@ static int efi_bio_read(struct block_device *blk, void *buffer, int block,
 }
 
 static int efi_bio_write(struct block_device *blk,
-		const void *buffer, int block, int num_blocks)
+		const void *buffer, sector_t block, blkcnt_t num_blocks)
 {
 	struct efi_bio_priv *priv = container_of(blk, struct efi_bio_priv, blk);
 	efi_status_t efiret;
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 002bfeb1cfc2..017f25d35fd6 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -398,16 +398,16 @@ int mci_switch(struct mci *mci, unsigned index, unsigned value)
 	return mci_send_cmd(mci, &cmd, NULL);
 }
 
-static int mci_calc_blk_cnt(uint64_t cap, unsigned shift)
+static blkcnt_t mci_calc_blk_cnt(blkcnt_t cap, unsigned shift)
 {
-	unsigned ret = cap >> shift;
+	blkcnt_t ret = cap >> shift;
 
 	if (ret > 0x7fffffff) {
 		pr_warn("Limiting card size due to 31 bit contraints\n");
 		return 0x7fffffff;
 	}
 
-	return (int)ret;
+	return ret;
 }
 
 static void mci_part_add(struct mci *mci, uint64_t size,
@@ -1342,14 +1342,14 @@ static int mci_blk_part_switch(struct mci_part *part)
  * This routine expects the buffer has the correct size to read all data!
  */
 static int __maybe_unused mci_sd_write(struct block_device *blk,
-				const void *buffer, int block, int num_blocks)
+				const void *buffer, sector_t block, blkcnt_t num_blocks)
 {
 	struct mci_part *part = container_of(blk, struct mci_part, blk);
 	struct mci *mci = part->mci;
 	struct mci_host *host = mci->host;
 	int rc;
-	unsigned max_req_block = num_blocks;
-	int write_block;
+	blkcnt_t max_req_block = num_blocks;
+	blkcnt_t write_block;
 
 	if (mci->host->max_req_size)
 		max_req_block = mci->host->max_req_size / mci->write_bl_len;
@@ -1361,7 +1361,7 @@ static int __maybe_unused mci_sd_write(struct block_device *blk,
 		return -EPERM;
 	}
 
-	dev_dbg(&mci->dev, "%s: Write %d block(s), starting at %d\n",
+	dev_dbg(&mci->dev, "%s: Write %llu block(s), starting at %llu\n",
 		__func__, num_blocks, block);
 
 	if (mci->write_bl_len != SECTOR_SIZE) {
@@ -1372,15 +1372,15 @@ static int __maybe_unused mci_sd_write(struct block_device *blk,
 
 	/* size of the block number field in the MMC/SD command is 32 bit only */
 	if (block > MAX_BUFFER_NUMBER) {
-		dev_dbg(&mci->dev, "Cannot handle block number %d. Too large!\n", block);
+		dev_dbg(&mci->dev, "Cannot handle block number %llu. Too large!\n", block);
 		return -EINVAL;
 	}
 
 	while (num_blocks) {
-		write_block = min_t(int, num_blocks, max_req_block);
+		write_block = min(num_blocks, max_req_block);
 		rc = mci_block_write(mci, buffer, block, write_block);
 		if (rc != 0) {
-			dev_dbg(&mci->dev, "Writing block %d failed with %d\n", block, rc);
+			dev_dbg(&mci->dev, "Writing block %llu failed with %d\n", block, rc);
 			return rc;
 		}
 		num_blocks -= write_block;
@@ -1401,13 +1401,13 @@ static int __maybe_unused mci_sd_write(struct block_device *blk,
  *
  * This routine expects the buffer has the correct size to store all data!
  */
-static int mci_sd_read(struct block_device *blk, void *buffer, int block,
-				int num_blocks)
+static int mci_sd_read(struct block_device *blk, void *buffer, sector_t block,
+				blkcnt_t num_blocks)
 {
 	struct mci_part *part = container_of(blk, struct mci_part, blk);
 	struct mci *mci = part->mci;
-	unsigned max_req_block = num_blocks;
-	int read_block;
+	blkcnt_t max_req_block = num_blocks;
+	blkcnt_t read_block;
 	int rc;
 
 	if (mci->host->max_req_size)
@@ -1415,7 +1415,7 @@ static int mci_sd_read(struct block_device *blk, void *buffer, int block,
 
 	mci_blk_part_switch(part);
 
-	dev_dbg(&mci->dev, "%s: Read %d block(s), starting at %d\n",
+	dev_dbg(&mci->dev, "%s: Read %llu block(s), starting at %llu\n",
 		__func__, num_blocks, block);
 
 	if (mci->read_bl_len != SECTOR_SIZE) {
@@ -1425,15 +1425,15 @@ static int mci_sd_read(struct block_device *blk, void *buffer, int block,
 	}
 
 	if (block > MAX_BUFFER_NUMBER) {
-		dev_err(&mci->dev, "Cannot handle block number %d. Too large!\n", block);
+		dev_err(&mci->dev, "Cannot handle block number %llu. Too large!\n", block);
 		return -EINVAL;
 	}
 
 	while (num_blocks) {
-		read_block = min_t(int, num_blocks, max_req_block);
+		read_block = min(num_blocks, max_req_block);
 		rc = mci_read_block(mci, buffer, block, read_block);
 		if (rc != 0) {
-			dev_dbg(&mci->dev, "Reading block %d failed with %d\n", block, rc);
+			dev_dbg(&mci->dev, "Reading block %llu failed with %d\n", block, rc);
 			return rc;
 		}
 		num_blocks -= read_block;
diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 257679fae834..a27a409cf5e4 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -222,7 +222,7 @@ static void __nvme_revalidate_disk(struct block_device *blk,
 }
 
 static void nvme_setup_rw(struct nvme_ns *ns, struct nvme_command *cmnd,
-			  int block, int num_block)
+			  sector_t block, blkcnt_t num_block)
 {
 	cmnd->rw.nsid = cpu_to_le32(ns->head->ns_id);
 	cmnd->rw.slba = cpu_to_le64(nvme_block_nr(ns, block));
@@ -239,7 +239,7 @@ static void nvme_setup_flush(struct nvme_ns *ns, struct nvme_command *cmnd)
 }
 
 static int nvme_submit_sync_rw(struct nvme_ns *ns, struct nvme_command *cmnd,
-			       void *buffer, int block, int num_blocks)
+			       void *buffer, sector_t block, blkcnt_t num_blocks)
 {
 	/*
 	 * ns->ctrl->max_hw_sectors is in units of 512 bytes, so we
@@ -251,7 +251,7 @@ static int nvme_submit_sync_rw(struct nvme_ns *ns, struct nvme_command *cmnd,
 
 	if (num_blocks > max_hw_sectors) {
 		while (num_blocks) {
-			const int chunk = min_t(int, num_blocks,
+			const u32 chunk = min_t(blkcnt_t, num_blocks,
 						max_hw_sectors);
 
 			ret = nvme_submit_sync_rw(ns, cmnd, buffer, block,
@@ -275,7 +275,7 @@ static int nvme_submit_sync_rw(struct nvme_ns *ns, struct nvme_command *cmnd,
 
 	if (ret) {
 		dev_err(ns->ctrl->dev,
-			"I/O failed: block: %d, num blocks: %d, status code type: %xh, status code %02xh\n",
+			"I/O failed: block: %llu, num blocks: %llu, status code type: %xh, status code %02xh\n",
 			block, num_blocks, (ret >> 8) & 0xf,
 			ret & 0xff);
 		return -EIO;
@@ -286,7 +286,7 @@ static int nvme_submit_sync_rw(struct nvme_ns *ns, struct nvme_command *cmnd,
 
 
 static int nvme_block_device_read(struct block_device *blk, void *buffer,
-				  int block, int num_blocks)
+				  sector_t block, blkcnt_t num_blocks)
 {
 	struct nvme_ns *ns = to_nvme_ns(blk);
 	struct nvme_command cmnd = { };
@@ -298,7 +298,7 @@ static int nvme_block_device_read(struct block_device *blk, void *buffer,
 
 static int __maybe_unused
 nvme_block_device_write(struct block_device *blk, const void *buffer,
-			int block, int num_blocks)
+			sector_t block, blkcnt_t num_blocks)
 {
 	struct nvme_ns *ns = to_nvme_ns(blk);
 	struct nvme_command cmnd = { };
diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index e0ef4f5ef3b6..4a46bc14fd66 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -185,7 +185,7 @@ exit:
 }
 
 static int usb_stor_io_10(struct us_blk_dev *usb_blkdev, u8 opcode,
-			  u32 start, u8 *data, u16 blocks)
+			  sector_t start, u8 *data, u16 blocks)
 {
 	u8 cmd[10];
 
@@ -206,7 +206,7 @@ static int usb_stor_io_10(struct us_blk_dev *usb_blkdev, u8 opcode,
 
 /* Read / write a chunk of sectors on media */
 static int usb_stor_blk_io(struct block_device *disk_dev,
-			   int sector_start, int sector_count, void *buffer,
+			   sector_t sector_start, blkcnt_t sector_count, void *buffer,
 			   bool read)
 {
 	struct us_blk_dev *pblk_dev = container_of(disk_dev,
@@ -223,18 +223,18 @@ static int usb_stor_blk_io(struct block_device *disk_dev,
 	}
 
 	/* read / write the requested data */
-	dev_dbg(dev, "%s %u block(s), starting from %d\n",
+	dev_dbg(dev, "%s %llu block(s), starting from %llu\n",
 		read ? "Read" : "Write",
 		sector_count, sector_start);
 
 	while (sector_count > 0) {
-		unsigned n = min(sector_count, US_MAX_IO_BLK);
+		u16 n = min_t(blkcnt_t, sector_count, US_MAX_IO_BLK);
 
 		if (usb_stor_io_10(pblk_dev,
 				   read ? SCSI_READ10 : SCSI_WRITE10,
 				   sector_start,
 				   buffer, n)) {
-			dev_dbg(dev, "I/O error at sector %d\n", sector_start);
+			dev_dbg(dev, "I/O error at sector %llu\n", sector_start);
 			break;
 		}
 		sector_start += n;
@@ -247,14 +247,14 @@ static int usb_stor_blk_io(struct block_device *disk_dev,
 
 /* Write a chunk of sectors to media */
 static int __maybe_unused usb_stor_blk_write(struct block_device *blk,
-				const void *buffer, int block, int num_blocks)
+				const void *buffer, sector_t block, blkcnt_t num_blocks)
 {
 	return usb_stor_blk_io(blk, block, num_blocks, (void *)buffer, false);
 }
 
 /* Read a chunk of sectors from media */
-static int usb_stor_blk_read(struct block_device *blk, void *buffer, int block,
-				int num_blocks)
+static int usb_stor_blk_read(struct block_device *blk, void *buffer, sector_t block,
+				blkcnt_t num_blocks)
 {
 	return usb_stor_blk_io(blk, block, num_blocks, buffer, true);
 }
@@ -315,7 +315,7 @@ static int usb_stor_init_blkdev(struct us_blk_dev *pblk_dev)
 	if (block_length != SECTOR_SIZE)
 		pr_warn("Support only %d bytes sectors\n", SECTOR_SIZE);
 	pblk_dev->blk.blockbits = SECTOR_SHIFT;
-	dev_dbg(dev, "Capacity = 0x%x, blockshift = 0x%x\n",
+	dev_dbg(dev, "Capacity = 0x%llx, blockshift = 0x%x\n",
 		 pblk_dev->blk.num_blocks, pblk_dev->blk.blockbits);
 
 	return 0;
diff --git a/include/ata_drive.h b/include/ata_drive.h
index eae74db8554d..6b8915c9cbdb 100644
--- a/include/ata_drive.h
+++ b/include/ata_drive.h
@@ -115,8 +115,8 @@ struct ata_port;
 
 struct ata_port_operations {
 	int (*init)(struct ata_port *port);
-	int (*read)(struct ata_port *port, void *buf, unsigned int block, int num_blocks);
-	int (*write)(struct ata_port *port, const void *buf, unsigned int block, int num_blocks);
+	int (*read)(struct ata_port *port, void *buf, sector_t block, blkcnt_t num_blocks);
+	int (*write)(struct ata_port *port, const void *buf, sector_t block, blkcnt_t num_blocks);
 	int (*read_id)(struct ata_port *port, void *buf);
 	int (*reset)(struct ata_port *port);
 };
diff --git a/include/block.h b/include/block.h
index a1de266194a6..d3a154bf73c0 100644
--- a/include/block.h
+++ b/include/block.h
@@ -4,12 +4,13 @@
 
 #include <driver.h>
 #include <linux/list.h>
+#include <linux/types.h>
 
 struct block_device;
 
 struct block_device_ops {
-	int (*read)(struct block_device *, void *buf, int block, int num_blocks);
-	int (*write)(struct block_device *, const void *buf, int block, int num_blocks);
+	int (*read)(struct block_device *, void *buf, sector_t block, blkcnt_t num_blocks);
+	int (*write)(struct block_device *, const void *buf, sector_t block, blkcnt_t num_blocks);
 	int (*flush)(struct block_device *);
 };
 
@@ -20,12 +21,12 @@ struct block_device {
 	struct list_head list;
 	struct block_device_ops *ops;
 	int blockbits;
-	int num_blocks;
+	blkcnt_t num_blocks;
 	int rdbufsize;
 	int blkmask;
 
-	loff_t discard_start;
-	loff_t discard_size;
+	sector_t discard_start;
+	blkcnt_t discard_size;
 
 	struct list_head buffered_blocks;
 	struct list_head idle_blocks;
@@ -40,8 +41,8 @@ extern struct list_head block_device_list;
 int blockdevice_register(struct block_device *blk);
 int blockdevice_unregister(struct block_device *blk);
 
-int block_read(struct block_device *blk, void *buf, int block, int num_blocks);
-int block_write(struct block_device *blk, void *buf, int block, int num_blocks);
+int block_read(struct block_device *blk, void *buf, sector_t block, blkcnt_t num_blocks);
+int block_write(struct block_device *blk, void *buf, sector_t block, blkcnt_t num_blocks);
 
 static inline int block_flush(struct block_device *blk)
 {
diff --git a/include/linux/types.h b/include/linux/types.h
index fa7684e31e36..5716a4c92fac 100644
--- a/include/linux/types.h
+++ b/include/linux/types.h
@@ -166,13 +166,8 @@ typedef __u32 __bitwise __wsum;
  *
  * blkcnt_t is the type of the inode's block count.
  */
-#ifdef CONFIG_LBDAF
 typedef u64 sector_t;
 typedef u64 blkcnt_t;
-#else
-typedef unsigned long sector_t;
-typedef unsigned long blkcnt_t;
-#endif
 
 /*
  * The type of an index into the pagecache.
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
