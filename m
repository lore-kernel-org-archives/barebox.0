Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1nxk-0003Mw-9h
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 08:01:29 +0000
Received: by mail-pf1-x443.google.com with SMTP id n74so10823566pfi.9
 for <barebox@lists.infradead.org>; Thu, 07 Mar 2019 00:01:08 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  7 Mar 2019 00:00:33 -0800
Message-Id: <20190307080036.28028-24-andrew.smirnov@gmail.com>
In-Reply-To: <20190307080036.28028-1-andrew.smirnov@gmail.com>
References: <20190307080036.28028-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 23/26] usb: storage: Use simple boolean to speficy read vs.
 write operation
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Use simple boolean to speficy read vs. write operation
usb_stor_blk_io() instead of having a custom anonymous enum.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/storage/usb.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 0ab20f1ac..dc63e8ab4 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -203,11 +203,10 @@ static int usb_stor_io_10(struct us_blk_dev *usb_blkdev, u8 opcode,
 
 #define US_MAX_IO_BLK 32
 
-enum { io_rd, io_wr };
-
 /* Read / write a chunk of sectors on media */
-static int usb_stor_blk_io(int io_op, struct block_device *disk_dev,
-			int sector_start, int sector_count, void *buffer)
+static int usb_stor_blk_io(struct block_device *disk_dev,
+			   int sector_start, int sector_count, void *buffer,
+			   bool read)
 {
 	struct us_blk_dev *pblk_dev = container_of(disk_dev,
 						   struct us_blk_dev,
@@ -225,8 +224,8 @@ static int usb_stor_blk_io(int io_op, struct block_device *disk_dev,
 
 	/* read / write the requested data */
 	dev_dbg(dev, "%s %u block(s), starting from %d\n",
-		 (io_op == io_rd) ? "Read" : "Write",
-		 sector_count, sector_start);
+		read ? "Read" : "Write",
+		sector_count, sector_start);
 	sectors_done = 0;
 	while (sector_count > 0) {
 		int result;
@@ -234,8 +233,7 @@ static int usb_stor_blk_io(int io_op, struct block_device *disk_dev,
 		u8 *data = buffer + (sectors_done * SECTOR_SIZE);
 
 		result = usb_stor_io_10(pblk_dev,
-					(io_op == io_rd) ?
-					SCSI_READ10 : SCSI_WRITE10,
+					read ? SCSI_READ10 : SCSI_WRITE10,
 					(ulong)sector_start,
 					data, n);
 		if (result != 0) {
@@ -256,14 +254,14 @@ static int usb_stor_blk_io(int io_op, struct block_device *disk_dev,
 static int __maybe_unused usb_stor_blk_write(struct block_device *blk,
 				const void *buffer, int block, int num_blocks)
 {
-	return usb_stor_blk_io(io_wr, blk, block, num_blocks, (void *)buffer);
+	return usb_stor_blk_io(blk, block, num_blocks, (void *)buffer, false);
 }
 
 /* Read a chunk of sectors from media */
 static int usb_stor_blk_read(struct block_device *blk, void *buffer, int block,
 				int num_blocks)
 {
-	return usb_stor_blk_io(io_rd, blk, block, num_blocks, buffer);
+	return usb_stor_blk_io(blk, block, num_blocks, buffer, true);
 }
 
 static struct block_device_ops usb_mass_storage_ops = {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
