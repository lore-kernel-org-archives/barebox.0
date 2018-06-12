Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x241.google.com ([2607:f8b0:400e:c01::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSqIg-0001d6-Ah
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 20:54:27 +0000
Received: by mail-pl0-x241.google.com with SMTP id c23-v6so159893plz.12
 for <barebox@lists.infradead.org>; Tue, 12 Jun 2018 13:53:50 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Jun 2018 13:52:35 -0700
Message-Id: <20180612205310.25745-20-andrew.smirnov@gmail.com>
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
Subject: [PATCH v5 19/54] clocksource: armv8-timer: Convert explicit assembly
 into helpers
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Move inline assembly related to querying counter value as well as
getting and setting counter frequency register into asm/system.h as
well as converting it inot helper functions. This is done to make the
code availible to other parts of the system.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/include/asm/system.h     | 24 ++++++++++++++++++++++++
 drivers/clocksource/armv8-timer.c | 13 ++-----------
 2 files changed, 26 insertions(+), 11 deletions(-)

diff --git a/arch/arm/include/asm/system.h b/arch/arm/include/asm/system.h
index 57c76186b..5cf828ea3 100644
--- a/arch/arm/include/asm/system.h
+++ b/arch/arm/include/asm/system.h
@@ -77,6 +77,30 @@ static inline unsigned long read_mpidr(void)
 
 	return val;
 }
+
+static inline void set_cntfrq(unsigned long cntfrq)
+{
+	asm volatile("msr cntfrq_el0, %0" : : "r" (cntfrq) : "memory");
+}
+
+static inline unsigned long get_cntfrq(void)
+{
+	unsigned long cntfrq;
+
+	asm volatile("mrs %0, cntfrq_el0" : "=r" (cntfrq));
+	return cntfrq;
+}
+
+static inline unsigned long get_cntpct(void)
+{
+	unsigned long cntpct;
+
+	isb();
+	asm volatile("mrs %0, cntpct_el0" : "=r" (cntpct));
+
+	return cntpct;
+}
+
 #endif
 static inline unsigned int get_cr(void)
 {
diff --git a/drivers/clocksource/armv8-timer.c b/drivers/clocksource/armv8-timer.c
index 57b0b694c..c5306dcd2 100644
--- a/drivers/clocksource/armv8-timer.c
+++ b/drivers/clocksource/armv8-timer.c
@@ -22,12 +22,7 @@
 
 uint64_t armv8_clocksource_read(void)
 {
-	unsigned long cntpct;
-
-	isb();
-	asm volatile("mrs %0, cntpct_el0" : "=r" (cntpct));
-
-	return cntpct;
+	return get_cntpct();
 }
 
 static struct clocksource cs = {
@@ -38,11 +33,7 @@ static struct clocksource cs = {
 
 static int armv8_timer_probe(struct device_d *dev)
 {
-	unsigned long cntfrq;
-
-	asm volatile("mrs %0, cntfrq_el0" : "=r" (cntfrq));
-
-	cs.mult = clocksource_hz2mult(cntfrq, cs.shift);
+	cs.mult = clocksource_hz2mult(get_cntfrq(), cs.shift);
 
 	return init_clock(&cs);
 }
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
