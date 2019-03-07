Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1nxf-0003G2-GJ
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 08:01:18 +0000
Received: by mail-pg1-x544.google.com with SMTP id b2so10624672pgl.9
 for <barebox@lists.infradead.org>; Thu, 07 Mar 2019 00:01:03 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  7 Mar 2019 00:00:29 -0800
Message-Id: <20190307080036.28028-20-andrew.smirnov@gmail.com>
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
Subject: [PATCH 19/26] usb: storage: Use put_unaligned_be* helpers
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Replace explicit endianness casts with put_unaligned_be* helpers.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/storage/usb.c | 18 +++++++-----------
 1 file changed, 7 insertions(+), 11 deletions(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 5a5d075ec..06ec1eb4e 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -26,6 +26,8 @@
 #include <usb/usb.h>
 #include <usb/usb_defs.h>
 
+#include <asm/unaligned.h>
+
 #include "usb.h"
 #include "transport.h"
 
@@ -111,13 +113,12 @@ static int usb_stor_inquiry(struct us_blk_dev *usb_blkdev)
 	struct device_d *dev = &usb_blkdev->us->pusb_dev->dev;
 	int ret;
 	u8 cmd[6];
-	const u32 datalen = 36;
+	const u16 datalen = 36;
 	u8 *data = xzalloc(datalen);
 
 	memset(cmd, 0, sizeof(cmd));
 	cmd[0] = SCSI_INQUIRY;
-	cmd[3] = (u8)(datalen >> 8);
-	cmd[4] = (u8)(datalen >> 0);
+	put_unaligned_be16(datalen, &cmd[3]);
 
 	ret = usb_stor_transport(usb_blkdev, cmd, sizeof(cmd), data, datalen,
 				 3, USB_STOR_NO_REQUEST_SENSE);
@@ -183,19 +184,14 @@ exit:
 }
 
 static int usb_stor_io_10(struct us_blk_dev *usb_blkdev, u8 opcode,
-			  unsigned long start, u8 *data,
-			  unsigned short blocks)
+			  u32 start, u8 *data, u16 blocks)
 {
 	u8 cmd[10];
 
 	memset(cmd, 0, sizeof(cmd));
 	cmd[0] = opcode;
-	cmd[2] = (u8)(start >> 24);
-	cmd[3] = (u8)(start >> 16);
-	cmd[4] = (u8)(start >> 8);
-	cmd[5] = (u8)(start >> 0);
-	cmd[7] = (u8)(blocks >> 8);
-	cmd[8] = (u8)(blocks >> 0);
+	put_unaligned_be32(start, &cmd[2]);
+	put_unaligned_be16(blocks, &cmd[7]);
 
 	return usb_stor_transport(usb_blkdev, cmd, sizeof(cmd), data,
 				  blocks * SECTOR_SIZE, 2, 0);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
