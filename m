Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3vfp-0004gK-G5
 for barebox@lists.infradead.org; Wed, 13 Mar 2019 04:39:26 +0000
Received: by mail-pg1-x543.google.com with SMTP id h11so618985pgl.0
 for <barebox@lists.infradead.org>; Tue, 12 Mar 2019 21:39:24 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Mar 2019 20:31:46 -0700
Message-Id: <20190313033147.20507-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/2] ARM: i.MX7: Make sure CNTFRQ is initialized early enough
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

We need to make sure that CNTFRQ is initialized before corresponding
clocksource driver tries to use it, otherwise we'll end up crashing
due to division by zero.

We can't convert imx7_timer_init() to be an initcall since it is an
i.MX7 specific task, but CPU type information won't be availible until
after imx_init() gets executed at postcore_initcall() level. To solve
this move all of the necessary code to be a part of
imx7_cpu_lowlevel_init().

Note, that original code both hardcoded frequency value to 8MHz as
well as tried to write it to the first element of the frequency mode
table which appears to be read-only on i.MX7. So while we are at it,
simplify the code by adding set_cntfrq() implementation for ARMv7 and
copy the code we already using for i.MX8MQ.

Fixes: dece70752 ("clocksource: Enable architected timer support for CPU_V7")
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/include/asm/system.h |  5 +++++
 arch/arm/mach-imx/cpu_init.c  | 13 +++++++++++++
 arch/arm/mach-imx/imx7.c      | 35 -----------------------------------
 3 files changed, 18 insertions(+), 35 deletions(-)

diff --git a/arch/arm/include/asm/system.h b/arch/arm/include/asm/system.h
index e55b19a13..ef9cb98bf 100644
--- a/arch/arm/include/asm/system.h
+++ b/arch/arm/include/asm/system.h
@@ -127,6 +127,11 @@ static inline unsigned long get_cntpct(void)
 	return cntpct;
 }
 #else
+static inline void set_cntfrq(unsigned long cntfrq)
+{
+	asm("mcr p15, 0, %0, c14, c0, 0" : : "r" (cntfrq));
+}
+
 static inline unsigned int get_cntfrq(void)
 {
 	unsigned int val;
diff --git a/arch/arm/mach-imx/cpu_init.c b/arch/arm/mach-imx/cpu_init.c
index f0d009dfd..ba45a1aef 100644
--- a/arch/arm/mach-imx/cpu_init.c
+++ b/arch/arm/mach-imx/cpu_init.c
@@ -15,7 +15,19 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/errata.h>
 #include <linux/types.h>
+#include <linux/bitops.h>
 #include <mach/generic.h>
+#include <mach/imx7-regs.h>
+#include <common.h>
+#include <io.h>
+#include <asm/syscounter.h>
+#include <asm/system.h>
+
+static inline void imx_cpu_timer_init(void __iomem *syscnt)
+{
+	set_cntfrq(syscnt_get_cntfrq(syscnt));
+	syscnt_enable(syscnt);
+}
 
 #ifdef CONFIG_CPU_32
 void imx5_cpu_lowlevel_init(void)
@@ -47,6 +59,7 @@ void imx6ul_cpu_lowlevel_init(void)
 void imx7_cpu_lowlevel_init(void)
 {
 	arm_cpu_lowlevel_init();
+	imx_cpu_timer_init(IOMEM(MX7_SYSCNT_CTRL_BASE_ADDR));
 }
 
 void vf610_cpu_lowlevel_init(void)
diff --git a/arch/arm/mach-imx/imx7.c b/arch/arm/mach-imx/imx7.c
index ff2a828c7..d875bf44f 100644
--- a/arch/arm/mach-imx/imx7.c
+++ b/arch/arm/mach-imx/imx7.c
@@ -57,39 +57,6 @@ void imx7_init_lowlevel(void)
 	writel(0, aips3 + 0x50);
 }
 
-#define SC_CNTCR	0x0
-#define SC_CNTSR	0x4
-#define SC_CNTCV1	0x8
-#define SC_CNTCV2	0xc
-#define SC_CNTFID0	0x20
-#define SC_CNTFID1	0x24
-#define SC_CNTFID2	0x28
-#define SC_counterid	0xfcc
-
-#define SC_CNTCR_ENABLE         (1 << 0)
-#define SC_CNTCR_HDBG           (1 << 1)
-#define SC_CNTCR_FREQ0          (1 << 8)
-#define SC_CNTCR_FREQ1          (1 << 9)
-
-static int imx7_timer_init(void)
-{
-	void __iomem *sctr = IOMEM(MX7_SYSCNT_CTRL_BASE_ADDR);
-	unsigned long val, freq;
-
-	freq = 8000000;
-	asm("mcr p15, 0, %0, c14, c0, 0" : : "r" (freq));
-
-	writel(freq, sctr + SC_CNTFID0);
-
-	/* Enable system counter */
-	val = readl(sctr + SC_CNTCR);
-	val &= ~(SC_CNTCR_FREQ0 | SC_CNTCR_FREQ1);
-	val |= SC_CNTCR_FREQ0 | SC_CNTCR_ENABLE | SC_CNTCR_HDBG;
-	writel(val, sctr + SC_CNTCR);
-
-	return 0;
-}
-
 #define CSU_NUM_REGS               64
 #define CSU_INIT_SEC_LEVEL0        0x00FF00FF
 
@@ -186,8 +153,6 @@ int imx7_init(void)
 
 	imx7_init_csu();
 
-	imx7_timer_init();
-
 	imx7_boot_save_loc();
 
 	psci_set_ops(&imx7_psci_ops);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
