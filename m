Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTLlG-0001xt-4b
 for barebox@lists.infradead.org; Wed, 22 May 2019 07:34:07 +0000
Received: by mail-pf1-x441.google.com with SMTP id c6so849574pfa.10
 for <barebox@lists.infradead.org>; Wed, 22 May 2019 00:34:05 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 22 May 2019 00:33:49 -0700
Message-Id: <20190522073349.9004-3-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/3] usb: storage: Fix TEST_UNIT_READY command size
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

TEST_UNIT_READY is 6 bytes long instead of 12. Fix it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/storage/usb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 79561ee6f..63d624e91 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -142,7 +142,7 @@ exit:
 
 static int usb_stor_test_unit_ready(struct us_blk_dev *usb_blkdev)
 {
-	u8 cmd[12];
+	u8 cmd[6];
 	int ret;
 
 	memset(cmd, 0, sizeof(cmd));
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
