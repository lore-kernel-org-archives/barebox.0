Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1nxn-0003S8-P7
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 08:01:33 +0000
Received: by mail-pg1-x544.google.com with SMTP id l11so10631553pgq.10
 for <barebox@lists.infradead.org>; Thu, 07 Mar 2019 00:01:11 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  7 Mar 2019 00:00:36 -0800
Message-Id: <20190307080036.28028-27-andrew.smirnov@gmail.com>
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
Subject: [PATCH 26/26] usb: storage: Inline usb_limit_blk_cnt()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Usb_limit_blk_cnt() has only one user so we may as well inline it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/storage/usb.c | 18 +++++++-----------
 1 file changed, 7 insertions(+), 11 deletions(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 335f8033b..fda24d616 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -269,16 +269,6 @@ static struct block_device_ops usb_mass_storage_ops = {
  * Block device routines
  ***********************************************************************/
 
-static int usb_limit_blk_cnt(unsigned cnt)
-{
-	if (cnt > 0x7fffffff) {
-		pr_warn("Limiting device size due to 31 bit contraints\n");
-		return 0x7fffffff;
-	}
-
-	return (int)cnt;
-}
-
 /* Prepare a disk device */
 static int usb_stor_init_blkdev(struct us_blk_dev *pblk_dev)
 {
@@ -314,7 +304,13 @@ static int usb_stor_init_blkdev(struct us_blk_dev *pblk_dev)
 		return result;
 	}
 
-	pblk_dev->blk.num_blocks = usb_limit_blk_cnt(last_lba + 1);
+	if (last_lba > INT_MAX - 1) {
+		last_lba = INT_MAX - 1;
+		dev_warn(dev,
+			 "Limiting device size due to 31 bit contraints\n");
+	}
+
+	pblk_dev->blk.num_blocks = last_lba + 1;
 	if (block_length != SECTOR_SIZE)
 		pr_warn("Support only %d bytes sectors\n", SECTOR_SIZE);
 	pblk_dev->blk.blockbits = SECTOR_SHIFT;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
