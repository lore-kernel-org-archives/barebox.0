Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a8RXn-0001LF-Jl
 for barebox@lists.infradead.org; Mon, 14 Dec 2015 11:43:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 14 Dec 2015 12:43:25 +0100
Message-Id: <1450093411-13885-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/7] hwclock command: use format like the Linux tool does
To: Barebox List <barebox@lists.infradead.org>

Print three-letter abbreviations of the days and months.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/hwclock.c |  4 +---
 common/date.c      | 18 ++++++++++++++++++
 include/rtc.h      |  2 ++
 3 files changed, 21 insertions(+), 3 deletions(-)

diff --git a/commands/hwclock.c b/commands/hwclock.c
index a1f5293..49569a9 100644
--- a/commands/hwclock.c
+++ b/commands/hwclock.c
@@ -138,9 +138,7 @@ static int do_hwclock(int argc, char *argv[])
 		snprintf(t, 12, "%lu", time);
 		setenv(env_name, t);
 	} else {
-		printf("%02d:%02d:%02d %02d-%02d-%04d\n",
-			tm.tm_hour, tm.tm_min, tm.tm_sec,
-			tm.tm_mday, tm.tm_mon + 1, tm.tm_year + 1900);
+		printf("%s\n", time_str(&tm));
 	}
 
 	return 0;
diff --git a/common/date.c b/common/date.c
index 6b6b7ab..33fb9ec 100644
--- a/common/date.c
+++ b/common/date.c
@@ -148,3 +148,21 @@ mktime (unsigned int year, unsigned int mon,
 	  )*60 + min /* now have minutes */
 	)*60 + sec; /* finally seconds */
 }
+
+const char *time_str(struct rtc_time *tm)
+{
+	const char *weekdays[] = { "Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun" };
+	const char *months[] = { "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug",
+				 "Sep", "Okt", "Nov", "Dec" };
+	static char buf[128];
+
+	sprintf(buf, "%s %02d %s %4d %02d:%02d:%02d",
+			weekdays[tm->tm_wday - 1],
+			tm->tm_mday,
+			months[tm->tm_mon],
+			tm->tm_year + 1900,
+			tm->tm_hour,
+			tm->tm_min,
+			tm->tm_sec);
+	return buf;
+}
\ No newline at end of file
diff --git a/include/rtc.h b/include/rtc.h
index e2414fb..600dc46 100644
--- a/include/rtc.h
+++ b/include/rtc.h
@@ -55,4 +55,6 @@ unsigned long mktime (unsigned int, unsigned int, unsigned int,
 
 extern struct rtc_device *rtc_lookup(const char *name);
 
+const char *time_str(struct rtc_time *tm);
+
 #endif	/* _RTC_H_ */
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
