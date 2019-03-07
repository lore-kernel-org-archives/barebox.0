Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1nxO-0002rc-BQ
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 08:00:51 +0000
Received: by mail-pg1-x543.google.com with SMTP id e17so10645029pgd.2
 for <barebox@lists.infradead.org>; Thu, 07 Mar 2019 00:00:46 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  7 Mar 2019 00:00:14 -0800
Message-Id: <20190307080036.28028-5-andrew.smirnov@gmail.com>
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
Subject: [PATCH 04/26] usb: storage: Make usb_stor_read_capacity() a
 standalone function
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Move special preparation steps done before and after call to
usb_stor_read_capacity() inside the function itself for clarity and to
allow futher code improvements. No functional change intended.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/storage/usb.c | 53 +++++++++++++++++++++++----------------
 1 file changed, 31 insertions(+), 22 deletions(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index db839e39a..f439cd825 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -108,28 +108,39 @@ static int usb_stor_test_unit_ready(ccb *srb, struct us_data *us)
 	return -1;
 }
 
-static int usb_stor_read_capacity(ccb *srb, struct us_data *us)
+static int usb_stor_read_capacity(struct us_blk_dev *usb_blkdev,
+				  u32 *last_lba, u32 *block_length)
 {
+	struct us_data *us = usb_blkdev->us;
 	struct device_d *dev = &us->pusb_dev->dev;
 	int retries, result;
-
-	if (srb->datalen < 8) {
-		dev_dbg(dev, "SCSI_RD_CAPAC: invalid data buffer size\n");
-		return -EINVAL;
-	}
+	ccb srb;
+	u32 *data = xzalloc(8);
 
 	retries = 3;
 	do {
 		dev_dbg(dev, "SCSI_RD_CAPAC\n");
-		memset(&srb->cmd[0], 0, 10);
-		srb->cmdlen = 10;
-		srb->cmd[0] = SCSI_RD_CAPAC;
-		srb->datalen = 8;
-		result = us->transport(srb, us);
+		memset(&srb.cmd[0], 0, 10);
+		srb.cmdlen = 10;
+		srb.lun = usb_blkdev->lun;
+		srb.cmd[0] = SCSI_RD_CAPAC;
+		srb.pdata = (void *)data;
+		srb.datalen = 8;
+		result = us->transport(&srb, us);
 		dev_dbg(dev, "SCSI_RD_CAPAC returns %d\n", result);
-	} while ((result != USB_STOR_TRANSPORT_GOOD) && retries--);
 
-	return (result != USB_STOR_TRANSPORT_GOOD) ? -EIO : 0;
+		if (result == USB_STOR_TRANSPORT_GOOD) {
+			dev_dbg(dev, "Read Capacity returns: 0x%x, 0x%x\n",
+				data[0], data[1]);
+			*last_lba = be32_to_cpu(data[0]);
+			*block_length = be32_to_cpu(data[1]);
+			break;
+		}
+	} while (retries--);
+
+	free(data);
+
+	return result ? -EIO : 0;
 }
 
 static int usb_stor_read_10(ccb *srb, struct us_data *us,
@@ -322,7 +333,7 @@ static int usb_stor_init_blkdev(struct us_blk_dev *pblk_dev)
 	struct us_data *us = pblk_dev->us;
 	struct device_d *dev = &us->pusb_dev->dev;
 	ccb us_ccb;
-	u32 *pcap;
+	u32 last_lba = 0, block_length = 0;
 	int result = 0;
 
 	us_ccb.pdata = us_io_buf;
@@ -356,17 +367,15 @@ static int usb_stor_init_blkdev(struct us_blk_dev *pblk_dev)
 
 	/* read capacity */
 	dev_dbg(dev, "Reading capacity\n");
-	memset(us_ccb.pdata, 0, 8);
-	us_ccb.datalen = sizeof(us_io_buf);
-	if (usb_stor_read_capacity(&us_ccb, us) != 0) {
+
+	result = usb_stor_read_capacity(pblk_dev, &last_lba, &block_length);
+	if (result < 0) {
 		dev_dbg(dev, "Cannot read device capacity\n");
-		result = -EIO;
 		goto Exit;
 	}
-	pcap = (u32 *)us_ccb.pdata;
-	dev_dbg(dev, "Read Capacity returns: 0x%x, 0x%x\n", pcap[0], pcap[1]);
-	pblk_dev->blk.num_blocks = usb_limit_blk_cnt(be32_to_cpu(pcap[0]) + 1);
-	if (be32_to_cpu(pcap[1]) != SECTOR_SIZE)
+
+	pblk_dev->blk.num_blocks = usb_limit_blk_cnt(last_lba + 1);
+	if (block_length != SECTOR_SIZE)
 		pr_warn("Support only %d bytes sectors\n", SECTOR_SIZE);
 	pblk_dev->blk.blockbits = SECTOR_SHIFT;
 	dev_dbg(dev, "Capacity = 0x%x, blockshift = 0x%x\n",
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
