Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1nxZ-00036m-CJ
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 08:01:00 +0000
Received: by mail-pg1-x544.google.com with SMTP id h8so10635071pgp.6
 for <barebox@lists.infradead.org>; Thu, 07 Mar 2019 00:00:57 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  7 Mar 2019 00:00:22 -0800
Message-Id: <20190307080036.28028-13-andrew.smirnov@gmail.com>
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
Subject: [PATCH 12/26] usb: storage: Remove unused variables
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Drop a number of variables no longer used in the code.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/storage/usb.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 64142048c..69de9ebf3 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -212,7 +212,6 @@ static int usb_stor_blk_io(int io_op, struct block_device *disk_dev,
 	struct us_blk_dev *pblk_dev = to_usb_mass_storage(disk_dev);
 	struct us_data *us = pblk_dev->us;
 	struct device_d *dev = &us->pusb_dev->dev;
-	ccb us_ccb;
 	unsigned sectors_done;
 
 	if (sector_count == 0)
@@ -232,7 +231,6 @@ static int usb_stor_blk_io(int io_op, struct block_device *disk_dev,
 		return -EINVAL;
 	}
 
-	us_ccb.lun = pblk_dev->lun;
 	usb_disable_asynch(1);
 
 	/* ensure unit ready */
@@ -309,8 +307,6 @@ static struct block_device_ops usb_mass_storage_ops = {
  * Block device routines
  ***********************************************************************/
 
-static unsigned char us_io_buf[512];
-
 static int usb_limit_blk_cnt(unsigned cnt)
 {
 	if (cnt > 0x7fffffff) {
@@ -326,13 +322,9 @@ static int usb_stor_init_blkdev(struct us_blk_dev *pblk_dev)
 {
 	struct us_data *us = pblk_dev->us;
 	struct device_d *dev = &us->pusb_dev->dev;
-	ccb us_ccb;
 	u32 last_lba = 0, block_length = 0;
 	int result = 0;
 
-	us_ccb.pdata = us_io_buf;
-	us_ccb.lun = pblk_dev->lun;
-
 	pblk_dev->blk.num_blocks = 0;
 	usb_disable_asynch(1);
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
