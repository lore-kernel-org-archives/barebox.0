Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x229.google.com ([2a00:1450:4010:c04::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XCDjm-0005SB-7J
 for barebox@lists.infradead.org; Tue, 29 Jul 2014 20:11:06 +0000
Received: by mail-lb0-f169.google.com with SMTP id s7so141440lbd.28
 for <barebox@lists.infradead.org>; Tue, 29 Jul 2014 13:10:43 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 30 Jul 2014 00:10:22 +0400
Message-Id: <1406664625-19653-7-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1406664625-19653-1-git-send-email-antonynpavlov@gmail.com>
References: <1406664625-19653-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v4 6/9] rtc-lib: import rtc_time_to_tm() from linux-3.15
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/rtc/rtc-lib.c | 45 +++++++++++++++++++++++++++++++++++++++++++++
 include/linux/rtc.h   |  1 +
 2 files changed, 46 insertions(+)

diff --git a/drivers/rtc/rtc-lib.c b/drivers/rtc/rtc-lib.c
index 0d6acde..1b23458 100644
--- a/drivers/rtc/rtc-lib.c
+++ b/drivers/rtc/rtc-lib.c
@@ -39,6 +39,51 @@ int rtc_month_days(unsigned int month, unsigned int year)
 EXPORT_SYMBOL(rtc_month_days);
 
 /*
+ * Convert seconds since 01-01-1970 00:00:00 to Gregorian date.
+ */
+void rtc_time_to_tm(unsigned long time, struct rtc_time *tm)
+{
+	unsigned int month, year;
+	int days;
+
+	days = time / 86400;
+	time -= (unsigned int) days * 86400;
+
+	/* day of the week, 1970-01-01 was a Thursday */
+	tm->tm_wday = (days + 4) % 7;
+
+	year = 1970 + days / 365;
+	days -= (year - 1970) * 365
+		+ LEAPS_THRU_END_OF(year - 1)
+		- LEAPS_THRU_END_OF(1970 - 1);
+	if (days < 0) {
+		year -= 1;
+		days += 365 + is_leap_year(year);
+	}
+	tm->tm_year = year - 1900;
+	tm->tm_yday = days + 1;
+
+	for (month = 0; month < 11; month++) {
+		int newdays;
+
+		newdays = days - rtc_month_days(month, year);
+		if (newdays < 0)
+			break;
+		days = newdays;
+	}
+	tm->tm_mon = month;
+	tm->tm_mday = days + 1;
+
+	tm->tm_hour = time / 3600;
+	time -= tm->tm_hour * 3600;
+	tm->tm_min = time / 60;
+	tm->tm_sec = time - tm->tm_min * 60;
+
+	tm->tm_isdst = 0;
+}
+EXPORT_SYMBOL(rtc_time_to_tm);
+
+/*
  * Does the rtc_time represent a valid date/time?
  */
 int rtc_valid_tm(struct rtc_time *tm)
diff --git a/include/linux/rtc.h b/include/linux/rtc.h
index 2e034f6..2dacb14 100644
--- a/include/linux/rtc.h
+++ b/include/linux/rtc.h
@@ -17,6 +17,7 @@
 extern int rtc_month_days(unsigned int month, unsigned int year);
 extern int rtc_valid_tm(struct rtc_time *tm);
 extern int rtc_tm_to_time(struct rtc_time *tm, unsigned long *time);
+extern void rtc_time_to_tm(unsigned long time, struct rtc_time *tm);
 
 struct rtc_class_ops;
 
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
