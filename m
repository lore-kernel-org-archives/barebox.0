Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x233.google.com ([2607:f8b0:400e:c03::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aH3uw-000770-SK
 for barebox@lists.infradead.org; Thu, 07 Jan 2016 06:19:28 +0000
Received: by mail-pa0-x233.google.com with SMTP id yy13so157987193pab.3
 for <barebox@lists.infradead.org>; Wed, 06 Jan 2016 22:19:06 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 Jan 2016 22:17:34 -0800
Message-Id: <1452147455-26524-5-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1452147455-26524-1-git-send-email-andrew.smirnov@gmail.com>
References: <1452147455-26524-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 5/6] common/date.c: Fix off-by-one error
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

As per http://pubs.opengroup.org/onlinepubs/007908775/xsh/time.h.html
'tm_wday' is zero indexed with zero representing Sunday, this is also
corroborated by the code in rtc_time_to_tm() which used 4 to represent
Thursday.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/date.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/date.c b/common/date.c
index 2f23463..129192e 100644
--- a/common/date.c
+++ b/common/date.c
@@ -151,13 +151,13 @@ mktime (unsigned int year, unsigned int mon,

 const char *time_str(struct rtc_time *tm)
 {
-	const char *weekdays[] = { "Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun" };
+	const char *weekdays[] = { "Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat" };
 	const char *months[] = { "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug",
 				 "Sep", "Oct", "Nov", "Dec" };
 	static char buf[128];

 	sprintf(buf, "%s %02d %s %4d %02d:%02d:%02d",
-			weekdays[tm->tm_wday - 1],
+			weekdays[tm->tm_wday],
 			tm->tm_mday,
 			months[tm->tm_mon],
 			tm->tm_year + 1900,
--
2.5.0

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
