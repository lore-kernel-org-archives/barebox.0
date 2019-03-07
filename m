Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1nxi-0003Kf-OV
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 08:01:22 +0000
Received: by mail-pf1-x444.google.com with SMTP id i20so10824158pfo.6
 for <barebox@lists.infradead.org>; Thu, 07 Mar 2019 00:01:06 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  7 Mar 2019 00:00:32 -0800
Message-Id: <20190307080036.28028-23-andrew.smirnov@gmail.com>
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
Subject: [PATCH 22/26] usb: storage: Drop needless macro
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

There's only user of the to_usb_mass_storage() so we may as well
inline it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/storage/usb.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 29e3792aa..0ab20f1ac 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -203,15 +203,15 @@ static int usb_stor_io_10(struct us_blk_dev *usb_blkdev, u8 opcode,
 
 #define US_MAX_IO_BLK 32
 
-#define to_usb_mass_storage(x) container_of((x), struct us_blk_dev, blk)
-
 enum { io_rd, io_wr };
 
 /* Read / write a chunk of sectors on media */
 static int usb_stor_blk_io(int io_op, struct block_device *disk_dev,
 			int sector_start, int sector_count, void *buffer)
 {
-	struct us_blk_dev *pblk_dev = to_usb_mass_storage(disk_dev);
+	struct us_blk_dev *pblk_dev = container_of(disk_dev,
+						   struct us_blk_dev,
+						   blk);
 	struct us_data *us = pblk_dev->us;
 	struct device_d *dev = &us->pusb_dev->dev;
 	unsigned sectors_done;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
