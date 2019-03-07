Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1nxN-0002qF-3U
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 08:00:51 +0000
Received: by mail-pg1-x542.google.com with SMTP id 196so10636370pgf.13
 for <barebox@lists.infradead.org>; Thu, 07 Mar 2019 00:00:44 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  7 Mar 2019 00:00:13 -0800
Message-Id: <20190307080036.28028-4-andrew.smirnov@gmail.com>
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
Subject: [PATCH 03/26] usb: storage: Don't use "unsigned long" for 32-bit
 values
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Unsignled long will expand to 64-bit unsigned integer on 64-bit
CPUs. This will break current code using it to read out two 32-bit
values returned by READ_CAPACITY. Fix the proble by using "u32"
explicitly.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/storage/usb.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 89a80c483..db839e39a 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -322,7 +322,7 @@ static int usb_stor_init_blkdev(struct us_blk_dev *pblk_dev)
 	struct us_data *us = pblk_dev->us;
 	struct device_d *dev = &us->pusb_dev->dev;
 	ccb us_ccb;
-	unsigned long *pcap;
+	u32 *pcap;
 	int result = 0;
 
 	us_ccb.pdata = us_io_buf;
@@ -363,8 +363,8 @@ static int usb_stor_init_blkdev(struct us_blk_dev *pblk_dev)
 		result = -EIO;
 		goto Exit;
 	}
-	pcap = (unsigned long *)us_ccb.pdata;
-	dev_dbg(dev, "Read Capacity returns: 0x%lx, 0x%lx\n", pcap[0], pcap[1]);
+	pcap = (u32 *)us_ccb.pdata;
+	dev_dbg(dev, "Read Capacity returns: 0x%x, 0x%x\n", pcap[0], pcap[1]);
 	pblk_dev->blk.num_blocks = usb_limit_blk_cnt(be32_to_cpu(pcap[0]) + 1);
 	if (be32_to_cpu(pcap[1]) != SECTOR_SIZE)
 		pr_warn("Support only %d bytes sectors\n", SECTOR_SIZE);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
