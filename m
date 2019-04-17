Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hGheG-0006Xj-AA
 for barebox@lists.infradead.org; Wed, 17 Apr 2019 10:18:37 +0000
Received: by mail-wr1-x444.google.com with SMTP id s15so31153128wra.12
 for <barebox@lists.infradead.org>; Wed, 17 Apr 2019 03:18:35 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Wed, 17 Apr 2019 13:18:15 +0300
Message-Id: <20190417101815.29318-1-pmamonov@gmail.com>
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
Subject: [PATCH] usb: storage: fix capacity detection on 64 bit systems
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org, Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 drivers/usb/storage/usb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 8218bb2a71..18f69f8478 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -316,7 +316,7 @@ static int usb_stor_init_blkdev(struct us_blk_dev *pblk_dev)
 {
 	struct us_data *us = pblk_dev->us;
 	ccb us_ccb;
-	unsigned long *pcap;
+	u32 *pcap;
 	int result = 0;
 
 	us_ccb.pdata = us_io_buf;
@@ -357,7 +357,7 @@ static int usb_stor_init_blkdev(struct us_blk_dev *pblk_dev)
 		result = -EIO;
 		goto Exit;
 	}
-	pcap = (unsigned long *)us_ccb.pdata;
+	pcap = (u32 *)us_ccb.pdata;
 	US_DEBUGP("Read Capacity returns: 0x%lx, 0x%lx\n", pcap[0], pcap[1]);
 	pblk_dev->blk.num_blocks = usb_limit_blk_cnt(be32_to_cpu(pcap[0]) + 1);
 	if (be32_to_cpu(pcap[1]) != SECTOR_SIZE)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
