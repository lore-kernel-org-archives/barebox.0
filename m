Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1nxg-0003I7-VD
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 08:01:22 +0000
Received: by mail-pf1-x441.google.com with SMTP id d25so10822795pfn.8
 for <barebox@lists.infradead.org>; Thu, 07 Mar 2019 00:01:04 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  7 Mar 2019 00:00:30 -0800
Message-Id: <20190307080036.28028-21-andrew.smirnov@gmail.com>
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
Subject: [PATCH 20/26] usb: Drop usb_disable_asynch()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

There are no users of usb_control_msg() in the codebase that pass
timeout of 0, so it doesn't look like usb_disable_asynch() has any
effect on USB operation. Drop that function and remove all of its uses
to simplify things.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/core/usb.c    | 24 +++---------------------
 drivers/usb/storage/usb.c | 16 ++++------------
 include/usb/usb.h         |  1 -
 3 files changed, 7 insertions(+), 34 deletions(-)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 7b008435f..d29cd1328 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -63,7 +63,6 @@
 
 static int dev_count;
 static int dev_index;
-static int asynch_allowed;
 
 static LIST_HEAD(host_list);
 LIST_HEAD(usb_device_list);
@@ -98,7 +97,6 @@ int usb_register_host(struct usb_host *host)
 	list_add_tail(&host->list, &host_list);
 	host->busnum = host_busnum++;
 	host->sem = 0;
-	asynch_allowed = 1;
 	return 0;
 }
 
@@ -559,16 +557,6 @@ void usb_rescan(void)
 	pr_info("%d USB Device(s) found\n", dev_count);
 }
 
-/*
- * disables the asynch behaviour of the control message. This is used for data
- * transfers that uses the exclusiv access to the control and bulk messages.
- */
-void usb_disable_asynch(int disable)
-{
-	asynch_allowed = !disable;
-}
-
-
 /*-------------------------------------------------------------------
  * Message wrappers.
  *
@@ -597,10 +585,9 @@ int usb_submit_int_msg(struct usb_device *dev, unsigned long pipe,
 /*
  * submits a control message and waits for completion (at least timeout * 1ms)
  * If timeout is 0, we don't wait for completion (used as example to set and
- * clear keyboards LEDs). For data transfers, (storage transfers) we don't
- * allow control messages with 0 timeout, by previously resetting the flag
- * asynch_allowed (usb_disable_asynch(1)).
- * returns the transfered length if OK or -1 if error. The transfered length
+ * clear keyboards LEDs).
+ *
+ * Returns the transfered length if OK or -1 if error. The transfered length
  * and the current status are stored in the dev->act_len and dev->status.
  */
 int usb_control_msg(struct usb_device *dev, unsigned int pipe,
@@ -612,11 +599,6 @@ int usb_control_msg(struct usb_device *dev, unsigned int pipe,
 	int ret;
 	struct devrequest *setup_packet = dev->setup_packet;
 
-	if ((timeout == 0) && (!asynch_allowed)) {
-		/* request for a asynch control pipe is not allowed */
-		return -1;
-	}
-
 	ret = usb_host_acquire(host);
 	if (ret)
 		return ret;
diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 06ec1eb4e..b86e72a6f 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -233,13 +233,10 @@ static int usb_stor_blk_io(int io_op, struct block_device *disk_dev,
 		return -EINVAL;
 	}
 
-	usb_disable_asynch(1);
-
 	/* ensure unit ready */
 	dev_dbg(dev, "Testing for unit ready\n");
 	if (usb_stor_test_unit_ready(pblk_dev)) {
 		dev_dbg(dev, "Device NOT ready\n");
-		usb_disable_asynch(0);
 		return -EIO;
 	}
 
@@ -277,8 +274,6 @@ static int usb_stor_blk_io(int io_op, struct block_device *disk_dev,
 		sectors_done += n;
 	}
 
-	usb_disable_asynch(0);
-
 	dev_dbg(dev, "Successful I/O of %d blocks\n", sectors_done);
 
 	return (sector_count != 0) ? -EIO : 0;
@@ -328,7 +323,6 @@ static int usb_stor_init_blkdev(struct us_blk_dev *pblk_dev)
 	int result = 0;
 
 	pblk_dev->blk.num_blocks = 0;
-	usb_disable_asynch(1);
 
 	/* get device info */
 	dev_dbg(dev, "Reading device info\n");
@@ -336,7 +330,7 @@ static int usb_stor_init_blkdev(struct us_blk_dev *pblk_dev)
 	result = usb_stor_inquiry(pblk_dev);
 	if (result) {
 		dev_dbg(dev, "Cannot read device info\n");
-		goto Exit;
+		return result;
 	}
 
 	/* ensure unit ready */
@@ -345,7 +339,7 @@ static int usb_stor_init_blkdev(struct us_blk_dev *pblk_dev)
 	result = usb_stor_test_unit_ready(pblk_dev);
 	if (result) {
 		dev_dbg(dev, "Device NOT ready\n");
-		goto Exit;
+		return result;
 	}
 
 	/* read capacity */
@@ -354,7 +348,7 @@ static int usb_stor_init_blkdev(struct us_blk_dev *pblk_dev)
 	result = usb_stor_read_capacity(pblk_dev, &last_lba, &block_length);
 	if (result < 0) {
 		dev_dbg(dev, "Cannot read device capacity\n");
-		goto Exit;
+		return result;
 	}
 
 	pblk_dev->blk.num_blocks = usb_limit_blk_cnt(last_lba + 1);
@@ -364,9 +358,7 @@ static int usb_stor_init_blkdev(struct us_blk_dev *pblk_dev)
 	dev_dbg(dev, "Capacity = 0x%x, blockshift = 0x%x\n",
 		 pblk_dev->blk.num_blocks, pblk_dev->blk.blockbits);
 
-Exit:
-	usb_disable_asynch(0);
-	return result;
+	return 0;
 }
 
 /* Create and register a disk device for the specified LUN */
diff --git a/include/usb/usb.h b/include/usb/usb.h
index eb2eeb8db..4698308df 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -172,7 +172,6 @@ int usb_bulk_msg(struct usb_device *dev, unsigned int pipe,
 			void *data, int len, int *actual_length, int timeout);
 int usb_submit_int_msg(struct usb_device *dev, unsigned long pipe,
 			void *buffer, int transfer_len, int interval);
-void usb_disable_asynch(int disable);
 int usb_maxpacket(struct usb_device *dev, unsigned long pipe);
 int usb_get_configuration_no(struct usb_device *dev, unsigned char *buffer,
 				int cfgno);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
