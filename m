Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1nxV-00030Z-Az
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 08:00:58 +0000
Received: by mail-pf1-x444.google.com with SMTP id i20so10823718pfo.6
 for <barebox@lists.infradead.org>; Thu, 07 Mar 2019 00:00:53 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  7 Mar 2019 00:00:20 -0800
Message-Id: <20190307080036.28028-11-andrew.smirnov@gmail.com>
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
Subject: [PATCH 10/26] usb: storage: Share code for READ(10) and WRITE(10)
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Both usb_stor_read_10() and usb_stor_write_10() do almost exactly the
same thing, so merge them into a signle routine and adjust all of the
users accordingly.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/storage/usb.c | 60 ++++++---------------------------------
 1 file changed, 9 insertions(+), 51 deletions(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index d601e9ca4..e63cc40a6 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -160,12 +160,11 @@ static int usb_stor_read_capacity(struct us_blk_dev *usb_blkdev,
 	return result ? -EIO : 0;
 }
 
-static int usb_stor_read_10(struct us_blk_dev *usb_blkdev,
-                            unsigned long start, u8 *data,
-			    unsigned short blocks)
+static int usb_stor_io_10(struct us_blk_dev *usb_blkdev, u8 cmd,
+			  unsigned long start, u8 *data,
+			  unsigned short blocks)
 {
 	struct us_data *us = usb_blkdev->us;
-	struct device_d *dev = &us->pusb_dev->dev;
 	int retries, result;
 	ccb srb;
 
@@ -175,10 +174,9 @@ static int usb_stor_read_10(struct us_blk_dev *usb_blkdev,
 
 	retries = 2;
 	do {
-		dev_dbg(dev, "SCSI_READ10: start %lx blocks %x\n", start, blocks);
 		memset(&srb.cmd[0], 0, 10);
 		srb.cmdlen = 10;
-		srb.cmd[0] = SCSI_READ10;
+		srb.cmd[0] = cmd;
 		srb.cmd[2] = (u8)(start >> 24);
 		srb.cmd[3] = (u8)(start >> 16);
 		srb.cmd[4] = (u8)(start >> 8);
@@ -186,7 +184,6 @@ static int usb_stor_read_10(struct us_blk_dev *usb_blkdev,
 		srb.cmd[7] = (u8)(blocks >> 8);
 		srb.cmd[8] = (u8)(blocks >> 0);
 		result = us->transport(&srb, us);
-		dev_dbg(dev, "SCSI_READ10 returns %d\n", result);
 		if (result == USB_STOR_TRANSPORT_GOOD)
 			return 0;
 		usb_stor_request_sense(&srb, us);
@@ -195,42 +192,6 @@ static int usb_stor_read_10(struct us_blk_dev *usb_blkdev,
 	return -EIO;
 }
 
-static int usb_stor_write_10(struct us_blk_dev *usb_blkdev,
-                             unsigned long start, u8 *data,
-			     unsigned short blocks)
-{
-	struct us_data *us = usb_blkdev->us;
-	struct device_d *dev = &us->pusb_dev->dev;
-	int retries, result;
-	ccb srb;
-
-	srb.lun = usb_blkdev->lun;
-	srb.pdata = data;
-	srb.datalen = blocks * SECTOR_SIZE;
-
-	retries = 2;
-	do {
-		dev_dbg(dev, "SCSI_WRITE10: start %lx blocks %x\n", start, blocks);
-		memset(&srb.cmd[0], 0, 10);
-		srb.cmdlen = 10;
-		srb.cmd[0] = SCSI_WRITE10;
-		srb.cmd[2] = (u8)(start >> 24);
-		srb.cmd[3] = (u8)(start >> 16);
-		srb.cmd[4] = (u8)(start >> 8);
-		srb.cmd[5] = (u8)(start >> 0);
-		srb.cmd[7] = (u8)(blocks >> 8);
-		srb.cmd[8] = (u8)(blocks >> 0);
-		result = us->transport(&srb, us);
-		dev_dbg(dev, "SCSI_WRITE10 returns %d\n", result);
-		if (result == USB_STOR_TRANSPORT_GOOD)
-			return 0;
-		usb_stor_request_sense(&srb, us);
-	} while (retries--);
-
-	return -EIO;
-}
-
-
 /***********************************************************************
  * Disk driver interface
  ***********************************************************************/
@@ -299,14 +260,11 @@ static int usb_stor_blk_io(int io_op, struct block_device *disk_dev,
 		unsigned n = min(sector_count, US_MAX_IO_BLK);
 		u8 *data = buffer + (sectors_done * SECTOR_SIZE);
 
-		if (io_op == io_rd)
-			result = usb_stor_read_10(pblk_dev,
-			                          (ulong)sector_start,
-						  data, n);
-		else
-			result = usb_stor_write_10(pblk_dev,
-			                           (ulong)sector_start,
-						   data, n);
+		result = usb_stor_io_10(pblk_dev,
+					(io_op == io_rd) ?
+					SCSI_READ10 : SCSI_WRITE10,
+					(ulong)sector_start,
+					data, n);
 		if (result != 0) {
 			dev_dbg(dev, "I/O error at sector %d\n", sector_start);
 			break;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
