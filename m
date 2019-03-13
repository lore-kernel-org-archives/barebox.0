Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3v5I-0004Ry-7p
 for barebox@lists.infradead.org; Wed, 13 Mar 2019 04:01:41 +0000
Received: by mail-pf1-x444.google.com with SMTP id y124so409546pfy.7
 for <barebox@lists.infradead.org>; Tue, 12 Mar 2019 21:01:37 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Mar 2019 20:31:47 -0700
Message-Id: <20190313033147.20507-2-andrew.smirnov@gmail.com>
In-Reply-To: <20190313033147.20507-1-andrew.smirnov@gmail.com>
References: <20190313033147.20507-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/2] ARM: i.MX8MQ: Don't use cpu_is_mx8mq() at core_initcall
 level
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Since __imx_cpu_type won't be initialized until
imx_init()@postcore_initcall is executed cpu_is_mx8mq() will only work
correctly at core_initcall level so long as imx_cpu_type does not
resolve into __imx_cpu_type. This is currently the case and
imx8mq_init_syscnt_frequency() works as expected, but it probably
won't be in the future.

To avoid this problem introduce imx8mq_cpu_lowlevel_init() and do
system counter frequency initialization there. Also convert all of the
i.MX8MQ boards to use this new function.

Fixes: 5691aed9a ("ARM: i.MX8MQ: Check CPU type in imx8mq_init_syscnt_frequency()")
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c    |  2 +-
 arch/arm/boards/phytec-som-imx8mq/lowlevel.c |  2 +-
 arch/arm/boards/zii-imx8mq-dev/lowlevel.c    |  2 +-
 arch/arm/mach-imx/cpu_init.c                 |  9 ++++++++
 arch/arm/mach-imx/imx8mq.c                   | 22 --------------------
 arch/arm/mach-imx/include/mach/generic.h     |  1 +
 6 files changed, 13 insertions(+), 25 deletions(-)

diff --git a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
index ffbe14836..6451e5d41 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
@@ -89,7 +89,7 @@ static void nxp_imx8mq_evk_sram_setup(void)
  */
 ENTRY_FUNCTION(start_nxp_imx8mq_evk, r0, r1, r2)
 {
-	arm_cpu_lowlevel_init();
+	imx8mq_cpu_lowlevel_init();
 
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
diff --git a/arch/arm/boards/phytec-som-imx8mq/lowlevel.c b/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
index cfee13f3e..e42e7a6fc 100644
--- a/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
@@ -83,7 +83,7 @@ static void phytec_imx8mq_som_sram_setup(void)
  */
 ENTRY_FUNCTION(start_phytec_phycore_imx8mq, r0, r1, r2)
 {
-	arm_cpu_lowlevel_init();
+	imx8mq_cpu_lowlevel_init();
 
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
diff --git a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
index 059e4c9ef..0fd2ddfca 100644
--- a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
+++ b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
@@ -145,7 +145,7 @@ ENTRY_FUNCTION(start_zii_imx8mq_dev, r0, r1, r2)
 	unsigned int system_type;
 	void *fdt;
 
-	arm_cpu_lowlevel_init();
+	imx8mq_cpu_lowlevel_init();
 
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
diff --git a/arch/arm/mach-imx/cpu_init.c b/arch/arm/mach-imx/cpu_init.c
index ba45a1aef..7a980cf91 100644
--- a/arch/arm/mach-imx/cpu_init.c
+++ b/arch/arm/mach-imx/cpu_init.c
@@ -18,6 +18,7 @@
 #include <linux/bitops.h>
 #include <mach/generic.h>
 #include <mach/imx7-regs.h>
+#include <mach/imx8mq-regs.h>
 #include <common.h>
 #include <io.h>
 #include <asm/syscounter.h>
@@ -66,4 +67,12 @@ void vf610_cpu_lowlevel_init(void)
 {
 	arm_cpu_lowlevel_init();
 }
+#else
+void imx8mq_cpu_lowlevel_init(void)
+{
+	arm_cpu_lowlevel_init();
+
+	if (current_el() == 3)
+		imx_cpu_timer_init(IOMEM(MX8MQ_SYSCNT_CTRL_BASE_ADDR));
+}
 #endif
diff --git a/arch/arm/mach-imx/imx8mq.c b/arch/arm/mach-imx/imx8mq.c
index 3f6b433a5..089344528 100644
--- a/arch/arm/mach-imx/imx8mq.c
+++ b/arch/arm/mach-imx/imx8mq.c
@@ -27,28 +27,6 @@
 #define FSL_SIP_BUILDINFO			0xC2000003
 #define FSL_SIP_BUILDINFO_GET_COMMITHASH	0x00
 
-static int imx8mq_init_syscnt_frequency(void)
-{
-	if (!cpu_is_mx8mq())
-		return 0;
-
-	if (current_el() == 3) {
-		void __iomem *syscnt = IOMEM(MX8MQ_SYSCNT_CTRL_BASE_ADDR);
-		/*
-		 * Update with accurate clock frequency
-		 */
-		set_cntfrq(syscnt_get_cntfrq(syscnt));
-		syscnt_enable(syscnt);
-	}
-
-	return 0;
-}
-/*
- * This call needs to happen before timer driver gets probed and
- * requests its update frequency via cntfrq_el0
- */
-core_initcall(imx8mq_init_syscnt_frequency);
-
 int imx8mq_init(void)
 {
 	void __iomem *anatop = IOMEM(MX8MQ_ANATOP_BASE_ADDR);
diff --git a/arch/arm/mach-imx/include/mach/generic.h b/arch/arm/mach-imx/include/mach/generic.h
index be58da4da..ac066e3f1 100644
--- a/arch/arm/mach-imx/include/mach/generic.h
+++ b/arch/arm/mach-imx/include/mach/generic.h
@@ -58,6 +58,7 @@ void imx6_cpu_lowlevel_init(void);
 void imx6ul_cpu_lowlevel_init(void);
 void imx7_cpu_lowlevel_init(void);
 void vf610_cpu_lowlevel_init(void);
+void imx8mq_cpu_lowlevel_init(void);
 
 /* There's a off-by-one betweem the gpio bank number and the gpiochip */
 /* range e.g. GPIO_1_5 is gpio 5 under linux */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
