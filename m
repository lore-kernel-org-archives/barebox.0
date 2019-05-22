Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTLlE-0001xR-Bb
 for barebox@lists.infradead.org; Wed, 22 May 2019 07:34:05 +0000
Received: by mail-pl1-x641.google.com with SMTP id r18so629721pls.13
 for <barebox@lists.infradead.org>; Wed, 22 May 2019 00:34:03 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 22 May 2019 00:33:47 -0700
Message-Id: <20190522073349.9004-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/3] usb: storage: Zero CDB out before sending it
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Since cbw.Length can be less that sizeof(cbw.CDB), add code to zero
the whole struct out to avoid sending random stack data as a part of
payload. There's no known case where this causes a problem, but it's a
reasonable thing to do anyway.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/storage/transport.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/usb/storage/transport.c b/drivers/usb/storage/transport.c
index 48ccee207..5186508ba 100644
--- a/drivers/usb/storage/transport.c
+++ b/drivers/usb/storage/transport.c
@@ -115,6 +115,7 @@ int usb_stor_Bulk_transport(struct us_blk_dev *usb_blkdev,
 	cbw.Length = cmdlen;
 
 	/* copy the command payload */
+	memset(cbw.CDB, 0, sizeof(cbw.CDB));
 	memcpy(cbw.CDB, cmd, cbw.Length);
 
 	/* send it to out endpoint */
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
