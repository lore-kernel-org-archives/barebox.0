Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1nxK-0002pR-R0
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 08:00:45 +0000
Received: by mail-pg1-x544.google.com with SMTP id l11so10630634pgq.10
 for <barebox@lists.infradead.org>; Thu, 07 Mar 2019 00:00:42 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  7 Mar 2019 00:00:11 -0800
Message-Id: <20190307080036.28028-2-andrew.smirnov@gmail.com>
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
Subject: [PATCH 01/26] usb: storage: Simplify memory allocation in
 usb_stor_probe()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Replace explicit malloc() + OOM check and memset() with a single call
to xzalloc().

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/storage/usb.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 8218bb2a7..d25e19473 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -541,10 +541,7 @@ static int usb_stor_probe(struct usb_device *usbdev,
 	US_DEBUGP("Selected interface %d\n", (int)intf->desc.bInterfaceNumber);
 
 	/* allocate us_data structure */
-	us = (struct us_data *)malloc(sizeof(struct us_data));
-	if (!us)
-		return -ENOMEM;
-	memset(us, 0, sizeof(struct us_data));
+	us = xzalloc(sizeof(*us));
 
 	/* initialize the us_data structure */
 	us->pusb_dev = usbdev;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
