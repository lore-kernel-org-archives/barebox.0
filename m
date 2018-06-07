Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x242.google.com ([2607:f8b0:400e:c01::242])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQuYQ-0006Bw-Dm
 for barebox@lists.infradead.org; Thu, 07 Jun 2018 13:02:15 +0000
Received: by mail-pl0-x242.google.com with SMTP id w17-v6so6105983pll.9
 for <barebox@lists.infradead.org>; Thu, 07 Jun 2018 06:02:04 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  7 Jun 2018 06:00:48 -0700
Message-Id: <20180607130108.5339-33-andrew.smirnov@gmail.com>
In-Reply-To: <20180607130108.5339-1-andrew.smirnov@gmail.com>
References: <20180607130108.5339-1-andrew.smirnov@gmail.com>
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
Subject: [RESEND v3 32/52] common/clock: Move delay and timeout functions to
 clock.h
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Move delay and timeout functions to clock.h and add necessary
preprocessor code in order to make them availible in PBL. The header
is written such that by providing a pre-define get_time_ns
macro (before the inclusion point of clock.h) user can make use of all
of the timeout/delay functionality without having to have a
functioning clock source.

An example of simple use-case would be using any variant of
readx_poll_timeout with timeout of zero (infinite timeout) by
providing the following trivial definition:

\#define get_time_ns()	0

before <linux/iopoll.h> is included.

More sophisticated use-case would be providing a definition for a very
simplistic get_time_ns() function and using actual timekeeping
functionality such as is_timeout() or udelay().

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/clock.c  | 52 ------------------------------------
 include/clock.h | 70 +++++++++++++++++++++++++++++++++++++++++++------
 2 files changed, 62 insertions(+), 60 deletions(-)

diff --git a/common/clock.c b/common/clock.c
index f98176dd5..c356a88b5 100644
--- a/common/clock.c
+++ b/common/clock.c
@@ -25,7 +25,6 @@
 #include <init.h>
 #include <asm-generic/div64.h>
 #include <clock.h>
-#include <poller.h>
 
 static uint64_t time_ns;
 
@@ -170,57 +169,6 @@ uint32_t clocksource_hz2mult(uint32_t hz, uint32_t shift_constant)
 	return (uint32_t)tmp;
 }
 
-int is_timeout_non_interruptible(uint64_t start_ns, uint64_t time_offset_ns)
-{
-	if ((int64_t)(start_ns + time_offset_ns - get_time_ns()) < 0)
-		return 1;
-	else
-		return 0;
-}
-EXPORT_SYMBOL(is_timeout_non_interruptible);
-
-int is_timeout(uint64_t start_ns, uint64_t time_offset_ns)
-{
-	if (time_offset_ns >= 100 * USECOND)
-		poller_call();
-
-	return is_timeout_non_interruptible(start_ns, time_offset_ns);
-}
-EXPORT_SYMBOL(is_timeout);
-
-void ndelay(unsigned long nsecs)
-{
-	uint64_t start = get_time_ns();
-
-	while(!is_timeout_non_interruptible(start, nsecs));
-}
-EXPORT_SYMBOL(ndelay);
-
-void udelay(unsigned long usecs)
-{
-	uint64_t start = get_time_ns();
-
-	while(!is_timeout(start, usecs * USECOND));
-}
-EXPORT_SYMBOL(udelay);
-
-void mdelay(unsigned long msecs)
-{
-	uint64_t start = get_time_ns();
-
-	while(!is_timeout(start, msecs * MSECOND));
-}
-EXPORT_SYMBOL(mdelay);
-
-void mdelay_non_interruptible(unsigned long msecs)
-{
-	uint64_t start = get_time_ns();
-
-	while (!is_timeout_non_interruptible(start, msecs * MSECOND))
-		;
-}
-EXPORT_SYMBOL(mdelay_non_interruptible);
-
 int init_clock(struct clocksource *cs)
 {
 	if (current_clock && cs->priority <= current_clock->priority)
diff --git a/include/clock.h b/include/clock.h
index 5f2f53ab6..38b335c2c 100644
--- a/include/clock.h
+++ b/include/clock.h
@@ -25,26 +25,80 @@ static inline uint32_t cyc2ns(struct clocksource *cs, uint64_t cycles)
 
 int init_clock(struct clocksource *);
 
+#ifndef get_time_ns
+#define get_time_ns get_time_ns
+
 uint64_t get_time_ns(void);
+#endif
 
 void clocks_calc_mult_shift(uint32_t *mult, uint32_t *shift, uint32_t from, uint32_t to, uint32_t maxsec);
 
 uint32_t clocksource_hz2mult(uint32_t hz, uint32_t shift_constant);
 
-int is_timeout(uint64_t start_ns, uint64_t time_offset_ns);
-int is_timeout_non_interruptible(uint64_t start_ns, uint64_t time_offset_ns);
-
-void ndelay(unsigned long nsecs);
-void udelay(unsigned long usecs);
-void mdelay(unsigned long msecs);
-void mdelay_non_interruptible(unsigned long msecs);
-
 #define SECOND ((uint64_t)(1000 * 1000 * 1000))
 #define MSECOND ((uint64_t)(1000 * 1000))
 #define USECOND ((uint64_t)(1000))
 
 extern uint64_t time_beginning;
 
+static inline int
+is_timeout_non_interruptible(uint64_t start_ns, uint64_t time_offset_ns)
+{
+	if ((int64_t)(start_ns + time_offset_ns - get_time_ns()) < 0)
+		return 1;
+	else
+		return 0;
+}
+
+#if defined(__PBL__)
+/*
+ * Poller infrastructure is not available in PBL, so we just define
+ * is_timeout to be a synonym for is_timeout_non_interruptible
+ */
+static inline int is_timeout(uint64_t start_ns, uint64_t time_offset_ns)
+	__alias(is_timeout_non_interruptible);
+#else
+#include <poller.h>
+
+static inline int is_timeout(uint64_t start_ns, uint64_t time_offset_ns)
+{
+
+	if (time_offset_ns >= 100 * USECOND)
+		poller_call();
+
+	return is_timeout_non_interruptible(start_ns, time_offset_ns);
+}
+#endif
+
+static inline void ndelay(unsigned long nsecs)
+{
+	uint64_t start = get_time_ns();
+
+	while(!is_timeout_non_interruptible(start, nsecs));
+}
+
+static inline void udelay(unsigned long usecs)
+{
+	uint64_t start = get_time_ns();
+
+	while(!is_timeout(start, usecs * USECOND));
+}
+
+static inline void mdelay(unsigned long msecs)
+{
+	uint64_t start = get_time_ns();
+
+	while(!is_timeout(start, msecs * MSECOND));
+}
+
+static inline void mdelay_non_interruptible(unsigned long msecs)
+{
+	uint64_t start = get_time_ns();
+
+	while (!is_timeout_non_interruptible(start, msecs * MSECOND))
+		;
+}
+
 /*
  * Convenience wrapper to implement a typical polling loop with
  * timeout. returns 0 if the condition became true within the
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
