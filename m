Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTLlE-0001xS-Gz
 for barebox@lists.infradead.org; Wed, 22 May 2019 07:34:05 +0000
Received: by mail-pg1-x544.google.com with SMTP id n2so858276pgp.11
 for <barebox@lists.infradead.org>; Wed, 22 May 2019 00:34:04 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 22 May 2019 00:33:48 -0700
Message-Id: <20190522073349.9004-2-andrew.smirnov@gmail.com>
In-Reply-To: <20190522073349.9004-1-andrew.smirnov@gmail.com>
References: <20190522073349.9004-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/3] usb: storage: Default to a single LUN
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

For loop below is:

	for (lun=0; lun<=us->max_lun; lun++)
	    ...

so we need to set max_lun to 0 in order to default to having only one
LUN. Otherwise, we end up assuming the device has 2 valid LUNs.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/storage/usb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index fda24d616..79561ee6f 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -439,7 +439,7 @@ static int usb_stor_scan(struct usb_device *usbdev, struct us_data *us)
 	int num_devs = 0;
 
 	/* obtain the max LUN */
-	us->max_lun = 1;
+	us->max_lun = 0;
 	if (us->protocol == US_PR_BULK)
 		us->max_lun = usb_stor_Bulk_max_lun(us);
 
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
