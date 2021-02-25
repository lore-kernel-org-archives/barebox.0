Delivery-date: Thu, 25 Feb 2021 11:47:58 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lFEBa-00073u-Te
	for lore@lore.pengutronix.de; Thu, 25 Feb 2021 11:47:58 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lFEBZ-0002M0-Q5
	for lore@pengutronix.de; Thu, 25 Feb 2021 11:47:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mFAtB4fCN29BTURMjLKxriUnyG9lqlaxNrQ+D7X0HHM=; b=pe02dcD+oVkq9sIOGAD80BDecR
	aCZrVY8TAUMHv94jxk3dj8g1UQpFqFtHPRKjq0AItnXHX0mXG6Zx3FGg7R+a7bmsDcJZPTw6668dK
	IIt04wpZRPgw+wnGExwMNqeeHliigMq3omOXwOEk+YGZjbdD7tPBS90imEH9OlR1b6H8R2xw0Dsbk
	WzcJDFBEPsBj1pROUO0Xn+HQ55oHoZqVz56aWnT0Dh7NK647cs80U/zCcwoDYXVL7vdlQQJSR3DE0
	jZze1gCQQluDuuchv8IVdtkCyoUwTCz5lJ1QHi0KjfcOaX3yYC5zC+Ud2b92cKP0N5JfhMwGFjpiV
	voqC/IXw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lFEA7-0004dF-TX; Thu, 25 Feb 2021 10:46:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lFEA3-0004c4-Jq
 for barebox@lists.infradead.org; Thu, 25 Feb 2021 10:46:24 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lFEA0-00021i-UX; Thu, 25 Feb 2021 11:46:20 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lFEA0-0008GH-KQ; Thu, 25 Feb 2021 11:46:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 25 Feb 2021 11:46:17 +0100
Message-Id: <20210225104618.29874-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210225_054623_686086_AE02A221 
X-CRM114-Status: GOOD (  15.60  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] usb: storage: refactor usb 32-bit capacity read
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

usb_stor_read_capacity uses SCSI Read Capacity 10, which assumes
capacity never exceeds 32-bit, which equals 2TiB max capacity at
512 byte sector size.

In preparation for porting support for SCSI Read Capacity 16 from
Linux, move over all Read Capacity 10 related code into a single
function. Some more refactoring is done to make the function look
more like the Linux implementation. This also makes it easier to spot
the differences in retry/timeout handling, which we might want to
adopt in future.

No functional change intended.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/storage/usb.c | 62 +++++++++++++++++++++------------------
 1 file changed, 33 insertions(+), 29 deletions(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index c264dd4b71e2..122af659820f 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -157,31 +157,49 @@ static int usb_stor_test_unit_ready(struct us_blk_dev *usb_blkdev)
 	return 0;
 }
 
-static int usb_stor_read_capacity(struct us_blk_dev *usb_blkdev,
-				  u32 *last_lba, u32 *block_length)
+static int read_capacity_10(struct us_blk_dev *usb_blkdev)
 {
 	struct device_d *dev = &usb_blkdev->us->pusb_dev->dev;
+	unsigned char cmd[16];
 	const u32 datalen = 8;
-	u32 *data = xzalloc(datalen);
-	u8 cmd[10];
+	__be32 *data = xzalloc(datalen);
 	int ret;
+	sector_t lba;
+	unsigned sector_size;
 
 	memset(cmd, 0, sizeof(cmd));
 	cmd[0] = SCSI_RD_CAPAC;
 
 	ret = usb_stor_transport(usb_blkdev, cmd, sizeof(cmd), data, datalen,
 				 3, USB_STOR_NO_REQUEST_SENSE);
-	if (ret < 0)
-		goto exit;
 
-	dev_dbg(dev, "Read Capacity returns: 0x%x, 0x%x\n",
-		data[0], data[1]);
-	*last_lba = be32_to_cpu(data[0]);
-	*block_length = be32_to_cpu(data[1]);
+	if (ret < 0) {
+		dev_dbg(dev, "Cannot read device capacity\n");
+		return ret;
+	}
 
-exit:
-	free(data);
-	return ret;
+	sector_size = be32_to_cpu(data[1]);
+	lba = be32_to_cpu(data[0]);
+
+	dev_dbg(dev, "LBA (10) = 0x%llx w/ sector size = %u\n",
+		lba, sector_size);
+
+
+	if (lba == U32_MAX) {
+		lba = U32_MAX - 1;
+		dev_warn(dev,
+			 "Limiting device size due to 32 bit constraints\n");
+		/* To support LBA >= U32_MAX, a READ CAPACITY (16) should be issued instead */
+	}
+
+
+	if (sector_size != SECTOR_SIZE)
+		dev_warn(dev, "Support only %d bytes sectors\n", SECTOR_SIZE);
+
+	usb_blkdev->blk.num_blocks = lba + 1;
+	usb_blkdev->blk.blockbits = SECTOR_SHIFT;
+
+	return SECTOR_SIZE;
 }
 
 static int usb_stor_io_10(struct us_blk_dev *usb_blkdev, u8 opcode,
@@ -275,7 +293,6 @@ static int usb_stor_init_blkdev(struct us_blk_dev *pblk_dev)
 {
 	struct us_data *us = pblk_dev->us;
 	struct device_d *dev = &us->pusb_dev->dev;
-	u32 last_lba = 0, block_length = 0;
 	int result;
 
 	/* get device info */
@@ -299,23 +316,10 @@ static int usb_stor_init_blkdev(struct us_blk_dev *pblk_dev)
 	/* read capacity */
 	dev_dbg(dev, "Reading capacity\n");
 
-	result = usb_stor_read_capacity(pblk_dev, &last_lba, &block_length);
-	if (result < 0) {
-		dev_dbg(dev, "Cannot read device capacity\n");
+	result = read_capacity_10(pblk_dev);
+	if (result < 0)
 		return result;
-	}
-
-	if (last_lba == U32_MAX) {
-		last_lba = U32_MAX - 1;
-		dev_warn(dev,
-			 "Limiting device size due to 32 bit constraints\n");
-		/* To support LBA >= U32_MAX, a READ CAPACITY (16) should be issued here */
-	}
 
-	pblk_dev->blk.num_blocks = last_lba + 1;
-	if (block_length != SECTOR_SIZE)
-		pr_warn("Support only %d bytes sectors\n", SECTOR_SIZE);
-	pblk_dev->blk.blockbits = SECTOR_SHIFT;
 	dev_dbg(dev, "Capacity = 0x%llx, blockshift = 0x%x\n",
 		 pblk_dev->blk.num_blocks, pblk_dev->blk.blockbits);
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

