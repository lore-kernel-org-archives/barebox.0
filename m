Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1nxh-0003J7-R4
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 08:01:26 +0000
Received: by mail-pg1-x541.google.com with SMTP id j3so10625730pgm.11
 for <barebox@lists.infradead.org>; Thu, 07 Mar 2019 00:01:05 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  7 Mar 2019 00:00:31 -0800
Message-Id: <20190307080036.28028-22-andrew.smirnov@gmail.com>
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
Subject: [PATCH 21/26] usb: storage: Drop unnecessary check in
 usb_stor_blk_io()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Checking that sector_count is zero, shouldn't be necessary since block
layer won't call this function if there's no data to be read. Drop it.

Checking that blockbits is eqal to SECTOR_SHIFT isn't necessary, since
that field is filled by the driver and is not changed outsied of
it. We know it is going to be SECTOR_SHIFT. Drop it.

Checking sector_start > (ulong)-1 doesn't make sense at all since
sector start is 'int' and it can't possibly be greater that
ULONG_MAX. Drop it.

Checking for sector_start >= pblk_dev->blk.num_blocks isn't necessary
either, since we shouldn't receive request for invalid read from block
layer. Drop it.

Ditto for sector_count > INT_MAX and sector_start + sector_count >
pblk_dev->blk.num_blocks.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/storage/usb.c | 27 ---------------------------
 1 file changed, 27 deletions(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index b86e72a6f..29e3792aa 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -216,23 +216,6 @@ static int usb_stor_blk_io(int io_op, struct block_device *disk_dev,
 	struct device_d *dev = &us->pusb_dev->dev;
 	unsigned sectors_done;
 
-	if (sector_count == 0)
-		return 0;
-
-	/* check for unsupported block size */
-	if (pblk_dev->blk.blockbits != SECTOR_SHIFT) {
-		dev_dbg(dev, "%s: unsupported block shift %d\n",
-			 __func__, pblk_dev->blk.blockbits);
-		return -EINVAL;
-	}
-
-	/* check for invalid sector_start */
-	if (sector_start >= pblk_dev->blk.num_blocks || sector_start > (ulong)-1) {
-		dev_dbg(dev, "%s: start sector %d too large\n",
-			 __func__, sector_start);
-		return -EINVAL;
-	}
-
 	/* ensure unit ready */
 	dev_dbg(dev, "Testing for unit ready\n");
 	if (usb_stor_test_unit_ready(pblk_dev)) {
@@ -240,16 +223,6 @@ static int usb_stor_blk_io(int io_op, struct block_device *disk_dev,
 		return -EIO;
 	}
 
-	/* possibly limit the amount of I/O data */
-	if (sector_count > INT_MAX) {
-		sector_count = INT_MAX;
-		dev_dbg(dev, "Restricting I/O to %u blocks\n", sector_count);
-	}
-	if (sector_start + sector_count > pblk_dev->blk.num_blocks) {
-		sector_count = pblk_dev->blk.num_blocks - sector_start;
-		dev_dbg(dev, "Restricting I/O to %u blocks\n", sector_count);
-	}
-
 	/* read / write the requested data */
 	dev_dbg(dev, "%s %u block(s), starting from %d\n",
 		 (io_op == io_rd) ? "Read" : "Write",
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
