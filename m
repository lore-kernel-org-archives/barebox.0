Delivery-date: Thu, 25 Feb 2021 11:48:04 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lFEBg-00074G-OI
	for lore@lore.pengutronix.de; Thu, 25 Feb 2021 11:48:04 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lFEBf-0002Mt-KG
	for lore@pengutronix.de; Thu, 25 Feb 2021 11:48:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BdIq11i3OT7YPb+vhFOZmpE0N9vSPP5ys/y+COrO4yM=; b=VjHNWcP7xoskjP3VX6ZbgsrIR
	giqD3T4qDYSk5o4ObFjt/L+7+9W73lkn8ykYbwEbq0YJnZxgw5HIEumn4hCnkXaOPbjR0xLW9gCum
	mN7MbFvVb9qK4coTGv72craOVMSC94GfzOmiO04G4hvN6vYloyqF4fNMrmaff9te/GU6CPlSoVBa8
	x03L5ex1hod/gFoD7LLv7s6D25QIYkJcvkd71EfHnKPzE4b6CXzjmumt02WUcOFs/eBWMOiL6gvBc
	mtno+4OKCFyjjWTwc1HSG1U8hhuBKWjdLoiKS+yz0nskwRHoTPMQ87TbyiDadOqAejL3/GkrSnXfU
	2R/nukcFg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lFEA9-0004dY-MC; Thu, 25 Feb 2021 10:46:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lFEA3-0004c6-Il
 for barebox@lists.infradead.org; Thu, 25 Feb 2021 10:46:24 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lFEA1-00021j-0M; Thu, 25 Feb 2021 11:46:21 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lFEA0-0008GQ-Lp; Thu, 25 Feb 2021 11:46:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 25 Feb 2021 11:46:18 +0100
Message-Id: <20210225104618.29874-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210225104618.29874-1-a.fatoum@pengutronix.de>
References: <20210225104618.29874-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210225_054623_653783_B5AAC3C7 
X-CRM114-Status: GOOD (  18.47  )
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
Subject: [PATCH 2/2] usb: storage: add support for drivers larger than 2TiB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Consumer USB disks usually have emulated 512 byte sectors at the
USB/SCSI level, which means SCSI Read/Write/Capacity 10 can only
handle up to 2TiB USB disks. Add support for the optional 16 byte
command variants to handle disks larger than that.

Disks smaller than 2 TiB should not be affected.

Tested with 2 different 4TiB disks as well as one 2TiB disk.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/storage/usb.c | 94 +++++++++++++++++++++++++++++++++------
 include/scsi.h            |  5 +++
 2 files changed, 85 insertions(+), 14 deletions(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 122af659820f..b417640186a2 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -157,6 +157,47 @@ static int usb_stor_test_unit_ready(struct us_blk_dev *usb_blkdev)
 	return 0;
 }
 
+static int read_capacity_16(struct us_blk_dev *usb_blkdev)
+{
+	struct device_d *dev = &usb_blkdev->us->pusb_dev->dev;
+	unsigned char cmd[16];
+	const u8 datalen = 32;
+	u8 *data = xzalloc(datalen);
+	int ret;
+	sector_t lba;
+	unsigned sector_size;
+
+	memset(cmd, 0, 16);
+	cmd[0] = SERVICE_ACTION_IN_16;
+	cmd[1] = SAI_READ_CAPACITY_16;
+	cmd[13] = datalen;
+
+	ret = usb_stor_transport(usb_blkdev, cmd, sizeof(cmd), data, datalen,
+				 3, USB_STOR_NO_REQUEST_SENSE);
+
+	if (ret < 0) {
+		dev_warn(dev, "Read Capacity(16) failed\n");
+		return ret;
+	}
+
+	/* Note this is logical, not physical sector size */
+	sector_size = be32_to_cpup((u32 *)&data[8]);
+	lba = be64_to_cpup((u64 *)&data[0]);
+
+	dev_dbg(dev, "LBA (16) = 0x%llx w/ sector size = %u\n",
+		lba, sector_size);
+
+	if ((data[12] & 1) == 1) {
+		dev_warn(dev, "Protection unsupported\n");
+		return -ENOTSUPP;
+	}
+
+	usb_blkdev->blk.blockbits = SECTOR_SHIFT;
+	usb_blkdev->blk.num_blocks = lba + 1;
+
+	return sector_size;
+}
+
 static int read_capacity_10(struct us_blk_dev *usb_blkdev)
 {
 	struct device_d *dev = &usb_blkdev->us->pusb_dev->dev;
@@ -174,7 +215,7 @@ static int read_capacity_10(struct us_blk_dev *usb_blkdev)
 				 3, USB_STOR_NO_REQUEST_SENSE);
 
 	if (ret < 0) {
-		dev_dbg(dev, "Cannot read device capacity\n");
+		dev_warn(dev, "Read Capacity(10) failed\n");
 		return ret;
 	}
 
@@ -184,15 +225,6 @@ static int read_capacity_10(struct us_blk_dev *usb_blkdev)
 	dev_dbg(dev, "LBA (10) = 0x%llx w/ sector size = %u\n",
 		lba, sector_size);
 
-
-	if (lba == U32_MAX) {
-		lba = U32_MAX - 1;
-		dev_warn(dev,
-			 "Limiting device size due to 32 bit constraints\n");
-		/* To support LBA >= U32_MAX, a READ CAPACITY (16) should be issued instead */
-	}
-
-
 	if (sector_size != SECTOR_SIZE)
 		dev_warn(dev, "Support only %d bytes sectors\n", SECTOR_SIZE);
 
@@ -202,6 +234,20 @@ static int read_capacity_10(struct us_blk_dev *usb_blkdev)
 	return SECTOR_SIZE;
 }
 
+static int usb_stor_io_16(struct us_blk_dev *usb_blkdev, u8 opcode,
+			  sector_t start, u8 *data, u16 blocks)
+{
+	u8 cmd[16];
+
+	memset(cmd, 0, sizeof(cmd));
+	cmd[0] = opcode;
+	put_unaligned_be64(start, &cmd[2]);
+	put_unaligned_be32(blocks, &cmd[10]);
+
+	return usb_stor_transport(usb_blkdev, cmd, sizeof(cmd), data,
+				  blocks * SECTOR_SIZE, 10, 0);
+}
+
 static int usb_stor_io_10(struct us_blk_dev *usb_blkdev, u8 opcode,
 			  sector_t start, u8 *data, u16 blocks)
 {
@@ -232,6 +278,7 @@ static int usb_stor_blk_io(struct block_device *disk_dev,
 						   blk);
 	struct us_data *us = pblk_dev->us;
 	struct device_d *dev = &us->pusb_dev->dev;
+	int result;
 
 	/* ensure unit ready */
 	dev_dbg(dev, "Testing for unit ready\n");
@@ -248,13 +295,24 @@ static int usb_stor_blk_io(struct block_device *disk_dev,
 	while (sector_count > 0) {
 		u16 n = min_t(blkcnt_t, sector_count, US_MAX_IO_BLK);
 
-		if (usb_stor_io_10(pblk_dev,
-				   read ? SCSI_READ10 : SCSI_WRITE10,
-				   sector_start,
-				   buffer, n)) {
+		if (disk_dev->num_blocks > 0xffffffff) {
+			result = usb_stor_io_16(pblk_dev,
+						read ? SCSI_READ16 : SCSI_WRITE16,
+						sector_start,
+						buffer, n);
+		} else {
+
+			result = usb_stor_io_10(pblk_dev,
+						read ? SCSI_READ10 : SCSI_WRITE10,
+						sector_start,
+						buffer, n);
+		}
+
+		if (result) {
 			dev_dbg(dev, "I/O error at sector %llu\n", sector_start);
 			break;
 		}
+
 		sector_start += n;
 		sector_count -= n;
 		buffer += n * SECTOR_SIZE;
@@ -320,6 +378,14 @@ static int usb_stor_init_blkdev(struct us_blk_dev *pblk_dev)
 	if (result < 0)
 		return result;
 
+	if (pblk_dev->blk.num_blocks > 0xffffffff) {
+		result = read_capacity_16(pblk_dev);
+		if (result < 0) {
+			dev_notice(dev, "Using 0xffffffff as device size\n");
+			pblk_dev->blk.num_blocks = 1 + (sector_t) 0xffffffff;
+		}
+	}
+
 	dev_dbg(dev, "Capacity = 0x%llx, blockshift = 0x%x\n",
 		 pblk_dev->blk.num_blocks, pblk_dev->blk.blockbits);
 
diff --git a/include/scsi.h b/include/scsi.h
index e2397489ead9..f84513b813e9 100644
--- a/include/scsi.h
+++ b/include/scsi.h
@@ -109,6 +109,7 @@
 #define SCSI_MED_REMOVL	0x1E		/* Prevent/Allow medium Removal (O) */
 #define SCSI_READ6	0x08		/* Read 6-byte (MANDATORY) */
 #define SCSI_READ10	0x28		/* Read 10-byte (MANDATORY) */
+#define SCSI_READ16	0x88		/* Read 16-byte (O) */
 #define SCSI_RD_CAPAC	0x25		/* Read Capacity (MANDATORY) */
 #define SCSI_RD_DEFECT	0x37		/* Read Defect Data (O) */
 #define SCSI_READ_LONG	0x3E		/* Read Long (O) */
@@ -128,10 +129,14 @@
 #define SCSI_VERIFY	0x2F		/* Verify (O) */
 #define SCSI_WRITE6	0x0A		/* Write 6-Byte (MANDATORY) */
 #define SCSI_WRITE10	0x2A		/* Write 10-Byte (MANDATORY) */
+#define SCSI_WRITE16	0x8A		/* Write 16-Byte (O) */
 #define SCSI_WRT_VERIFY	0x2E		/* Write and Verify (O) */
 #define SCSI_WRITE_LONG	0x3F		/* Write Long (O) */
 #define SCSI_WRITE_SAME	0x41		/* Write Same (O) */
 
+#define SERVICE_ACTION_IN_16	0x9e
+/* values for service action in */
+#define	SAI_READ_CAPACITY_16	0x10
 
 /****************************************************************************
  * decleration of functions which have to reside in the LowLevel Part Driver
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

