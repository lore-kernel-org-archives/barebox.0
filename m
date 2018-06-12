Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSqIz-0001Co-8r
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 20:54:18 +0000
Received: by mail-pf0-x243.google.com with SMTP id z24-v6so154076pfe.7
 for <barebox@lists.infradead.org>; Tue, 12 Jun 2018 13:54:07 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Jun 2018 13:52:48 -0700
Message-Id: <20180612205310.25745-33-andrew.smirnov@gmail.com>
In-Reply-To: <20180612205310.25745-1-andrew.smirnov@gmail.com>
References: <20180612205310.25745-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v5 32/54] common/clock: Move delay and timeout functions to
 lib/
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Move delay and timeout functions to lib/ in order to share them with
PBL. Currently only the most trivial implementation of get_time_ns()
usefull to implement never-expiring timeouts is provided. More work is
needed to allow board specific overrides.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/clock.c | 52 ------------------------------------
 lib/Makefile   |  1 +
 lib/clock.c    | 72 ++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 73 insertions(+), 52 deletions(-)
 create mode 100644 lib/clock.c

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
diff --git a/lib/Makefile b/lib/Makefile
index a7498288a..09c250a1c 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -65,3 +65,4 @@ obj-y			+= int_sqrt.o
 obj-y			+= parseopt.o
 obj-y			+= clz_ctz.o
 obj-$(CONFIG_CRC_CCITT) += crc-ccitt.o
+obj-pbl-y		+= clock.o
\ No newline at end of file
diff --git a/lib/clock.c b/lib/clock.c
new file mode 100644
index 000000000..b7cc49fa6
--- /dev/null
+++ b/lib/clock.c
@@ -0,0 +1,72 @@
+#include <common.h>
+#include <asm-generic/div64.h>
+#include <poller.h>
+
+int is_timeout_non_interruptible(uint64_t start_ns, uint64_t time_offset_ns)
+{
+	if ((int64_t)(start_ns + time_offset_ns - get_time_ns()) < 0)
+		return 1;
+	else
+		return 0;
+}
+EXPORT_SYMBOL(is_timeout_non_interruptible);
+
+#if defined(__PBL__)
+/*
+ * Poller infrastructure is not available in PBL, so we just define
+ * is_timeout to be a synonym for is_timeout_non_interruptible
+ */
+int is_timeout(uint64_t start_ns, uint64_t time_offset_ns)
+	__alias(is_timeout_non_interruptible);
+#else
+#include <poller.h>
+
+int is_timeout(uint64_t start_ns, uint64_t time_offset_ns)
+{
+
+	if (time_offset_ns >= 100 * USECOND)
+		poller_call();
+
+	return is_timeout_non_interruptible(start_ns, time_offset_ns);
+}
+#endif
+EXPORT_SYMBOL(is_timeout);
+
+void ndelay(unsigned long nsecs)
+{
+	uint64_t start = get_time_ns();
+
+	while(!is_timeout_non_interruptible(start, nsecs));
+}
+EXPORT_SYMBOL(ndelay);
+
+void udelay(unsigned long usecs)
+{
+	uint64_t start = get_time_ns();
+
+	while(!is_timeout(start, usecs * USECOND));
+}
+EXPORT_SYMBOL(udelay);
+
+void mdelay(unsigned long msecs)
+{
+	uint64_t start = get_time_ns();
+
+	while(!is_timeout(start, msecs * MSECOND));
+}
+EXPORT_SYMBOL(mdelay);
+
+void mdelay_non_interruptible(unsigned long msecs)
+{
+	uint64_t start = get_time_ns();
+
+	while (!is_timeout_non_interruptible(start, msecs * MSECOND))
+		;
+}
+EXPORT_SYMBOL(mdelay_non_interruptible);
+
+__weak uint64_t get_time_ns(void)
+{
+	return 0;
+}
+EXPORT_SYMBOL(get_time_ns);
\ No newline at end of file
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
