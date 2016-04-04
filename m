Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x230.google.com ([2607:f8b0:400e:c00::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1amszC-0007Nk-8O
 for barebox@lists.infradead.org; Mon, 04 Apr 2016 01:07:23 +0000
Received: by mail-pf0-x230.google.com with SMTP id n1so27451267pfn.2
 for <barebox@lists.infradead.org>; Sun, 03 Apr 2016 18:07:01 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun,  3 Apr 2016 18:06:31 -0700
Message-Id: <1459731993-14807-1-git-send-email-andrew.smirnov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/3] rtc: abracon: Check obtianed time for validity
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Check obtianed time for validity before returning it to the caller
the same way other RTC drivers do.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/rtc/rtc-abracon.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/rtc/rtc-abracon.c b/drivers/rtc/rtc-abracon.c
index b3af990..02de2f1 100644
--- a/drivers/rtc/rtc-abracon.c
+++ b/drivers/rtc/rtc-abracon.c
@@ -59,7 +59,7 @@ static int abracon_get_time(struct rtc_device *rtcdev, struct rtc_time *t)
 	t->tm_mon = bcd2bin(cp[5]);
 	t->tm_year = bcd2bin(cp[6]) + 100;
 
-	return 0;
+	return rtc_valid_tm(t);
 }
 
 static int abracon_set_time(struct rtc_device *rtcdev, struct rtc_time *t)
@@ -123,4 +123,4 @@ static int __init abracon_init(void)
 {
 	return i2c_driver_register(&abracon_driver);
 }
-device_initcall(abracon_init);
\ No newline at end of file
+device_initcall(abracon_init);
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
