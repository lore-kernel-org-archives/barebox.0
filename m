Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1nxl-0003Oo-Ih
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 08:01:32 +0000
Received: by mail-pg1-x544.google.com with SMTP id h8so10635478pgp.6
 for <barebox@lists.infradead.org>; Thu, 07 Mar 2019 00:01:09 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  7 Mar 2019 00:00:34 -0800
Message-Id: <20190307080036.28028-25-andrew.smirnov@gmail.com>
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
Subject: [PATCH 24/26] usb: storage: Simplify I/O loop in usb_stor_blk_io()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Simplify I/O loop a bit, by re-arranging things and dropping
"sectors_done", "result" and "data" local variables.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/storage/usb.c | 20 +++++++-------------
 1 file changed, 7 insertions(+), 13 deletions(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index dc63e8ab4..7df8a52b6 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -213,7 +213,6 @@ static int usb_stor_blk_io(struct block_device *disk_dev,
 						   blk);
 	struct us_data *us = pblk_dev->us;
 	struct device_d *dev = &us->pusb_dev->dev;
-	unsigned sectors_done;
 
 	/* ensure unit ready */
 	dev_dbg(dev, "Testing for unit ready\n");
@@ -226,28 +225,23 @@ static int usb_stor_blk_io(struct block_device *disk_dev,
 	dev_dbg(dev, "%s %u block(s), starting from %d\n",
 		read ? "Read" : "Write",
 		sector_count, sector_start);
-	sectors_done = 0;
+
 	while (sector_count > 0) {
-		int result;
 		unsigned n = min(sector_count, US_MAX_IO_BLK);
-		u8 *data = buffer + (sectors_done * SECTOR_SIZE);
 
-		result = usb_stor_io_10(pblk_dev,
-					read ? SCSI_READ10 : SCSI_WRITE10,
-					(ulong)sector_start,
-					data, n);
-		if (result != 0) {
+		if (usb_stor_io_10(pblk_dev,
+				   read ? SCSI_READ10 : SCSI_WRITE10,
+				   sector_start,
+				   buffer, n)) {
 			dev_dbg(dev, "I/O error at sector %d\n", sector_start);
 			break;
 		}
 		sector_start += n;
 		sector_count -= n;
-		sectors_done += n;
+		buffer += n * SECTOR_SIZE;
 	}
 
-	dev_dbg(dev, "Successful I/O of %d blocks\n", sectors_done);
-
-	return (sector_count != 0) ? -EIO : 0;
+	return sector_count ? -EIO : 0;
 }
 
 /* Write a chunk of sectors to media */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
