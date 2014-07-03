Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x230.google.com ([2a00:1450:4010:c03::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X2czl-0007fN-E3
 for barebox@lists.infradead.org; Thu, 03 Jul 2014 09:07:58 +0000
Received: by mail-la0-f48.google.com with SMTP id el20so7768651lab.7
 for <barebox@lists.infradead.org>; Thu, 03 Jul 2014 02:07:34 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu,  3 Jul 2014 13:19:38 +0400
Message-Id: <1404379178-24417-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] rtc.h: drop unused U-Boot stuff; fix whitespace
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/rtc.h | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/include/rtc.h b/include/rtc.h
index c71ec4d..c2d8bce 100644
--- a/include/rtc.h
+++ b/include/rtc.h
@@ -31,7 +31,7 @@
  * Note that there are small but significant differences to the
  * common "struct time":
  *
- * 		struct time:		struct rtc_time:
+ *		struct time:		struct rtc_time:
  * tm_mon	0 ... 11		1 ... 12
  * tm_year	years since 1900	years since 0
  */
@@ -48,10 +48,6 @@ struct rtc_time {
 	int tm_isdst;
 };
 
-void rtc_get (struct rtc_time *);
-void rtc_set (struct rtc_time *);
-void rtc_reset (void);
-
 void GregorianDay (struct rtc_time *);
 void to_tm (int, struct rtc_time *);
 unsigned long mktime (unsigned int, unsigned int, unsigned int,
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
