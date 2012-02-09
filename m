Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RvUEO-0006g9-P8
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 13:40:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  9 Feb 2012 14:39:54 +0100
Message-Id: <1328794798-17699-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1328794798-17699-1-git-send-email-s.hauer@pengutronix.de>
References: <1328794798-17699-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/5] Add a timeout polling loop convenience wrapper
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/clock.h |   19 +++++++++++++++++++
 1 files changed, 19 insertions(+), 0 deletions(-)

diff --git a/include/clock.h b/include/clock.h
index af5b939..123f874 100644
--- a/include/clock.h
+++ b/include/clock.h
@@ -40,4 +40,23 @@ void mdelay(unsigned long msecs);
 #define MSECOND ((uint64_t)(1000 * 1000))
 #define USECOND ((uint64_t)(1000))
 
+/*
+ * Convenience wrapper to implement a typical polling loop with
+ * timeout. returns 0 if the condition became true within the
+ * timeout or -ETIMEDOUT otherwise
+ */
+#define wait_on_timeout(timeout, condition) \
+({								\
+	int __ret = 0;						\
+	uint64_t __to_start = get_time_ns();			\
+								\
+	while (!(condition)) {					\
+		if (is_timeout(__to_start, (timeout))) {	\
+			__ret = -ETIMEDOUT;			\
+			break;					\
+		}						\
+	}							\
+	__ret;							\
+})
+
 #endif /* CLOCK_H */
-- 
1.7.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
