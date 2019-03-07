Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1nxR-0002w7-Lh
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 08:00:55 +0000
Received: by mail-pg1-x544.google.com with SMTP id 125so10393973pgc.12
 for <barebox@lists.infradead.org>; Thu, 07 Mar 2019 00:00:49 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  7 Mar 2019 00:00:17 -0800
Message-Id: <20190307080036.28028-8-andrew.smirnov@gmail.com>
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
Subject: [PATCH 07/26] usb: storage: Make usb_stor_read_10() a standalone
 function
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Move special preparation steps done before the call to
usb_stor_read_10() inside the function itself for clarity and to allow
futher code improvements. No functional change intended.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/storage/usb.c | 41 ++++++++++++++++++++++++---------------
 1 file changed, 25 insertions(+), 16 deletions(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 52d4e24de..e6f8f30c6 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -160,29 +160,36 @@ static int usb_stor_read_capacity(struct us_blk_dev *usb_blkdev,
 	return result ? -EIO : 0;
 }
 
-static int usb_stor_read_10(ccb *srb, struct us_data *us,
-                            unsigned long start, unsigned short blocks)
+static int usb_stor_read_10(struct us_blk_dev *usb_blkdev,
+                            unsigned long start, u8 *data,
+			    unsigned short blocks)
 {
+	struct us_data *us = usb_blkdev->us;
 	struct device_d *dev = &us->pusb_dev->dev;
 	int retries, result;
+	ccb srb;
+
+	srb.lun = usb_blkdev->lun;
+	srb.pdata = data;
+	srb.datalen = blocks * SECTOR_SIZE;
 
 	retries = 2;
 	do {
 		dev_dbg(dev, "SCSI_READ10: start %lx blocks %x\n", start, blocks);
-		memset(&srb->cmd[0], 0, 10);
-		srb->cmdlen = 10;
-		srb->cmd[0] = SCSI_READ10;
-		srb->cmd[2] = (u8)(start >> 24);
-		srb->cmd[3] = (u8)(start >> 16);
-		srb->cmd[4] = (u8)(start >> 8);
-		srb->cmd[5] = (u8)(start >> 0);
-		srb->cmd[7] = (u8)(blocks >> 8);
-		srb->cmd[8] = (u8)(blocks >> 0);
-		result = us->transport(srb, us);
+		memset(&srb.cmd[0], 0, 10);
+		srb.cmdlen = 10;
+		srb.cmd[0] = SCSI_READ10;
+		srb.cmd[2] = (u8)(start >> 24);
+		srb.cmd[3] = (u8)(start >> 16);
+		srb.cmd[4] = (u8)(start >> 8);
+		srb.cmd[5] = (u8)(start >> 0);
+		srb.cmd[7] = (u8)(blocks >> 8);
+		srb.cmd[8] = (u8)(blocks >> 0);
+		result = us->transport(&srb, us);
 		dev_dbg(dev, "SCSI_READ10 returns %d\n", result);
 		if (result == USB_STOR_TRANSPORT_GOOD)
 			return 0;
-		usb_stor_request_sense(srb, us);
+		usb_stor_request_sense(&srb, us);
 	} while (retries--);
 
 	return -EIO;
@@ -283,11 +290,13 @@ static int usb_stor_blk_io(int io_op, struct block_device *disk_dev,
 	while (sector_count > 0) {
 		int result;
 		unsigned n = min(sector_count, US_MAX_IO_BLK);
-		us_ccb.pdata = buffer + (sectors_done * SECTOR_SIZE);
+		u8 *data = buffer + (sectors_done * SECTOR_SIZE);
+		us_ccb.pdata = data;
 		us_ccb.datalen = n * SECTOR_SIZE;
 		if (io_op == io_rd)
-			result = usb_stor_read_10(&us_ccb, us,
-			                          (ulong)sector_start, n);
+			result = usb_stor_read_10(pblk_dev,
+			                          (ulong)sector_start,
+						  data, n);
 		else
 			result = usb_stor_write_10(&us_ccb, us,
 			                           (ulong)sector_start, n);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
