Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1foCiV-0002Lf-Gp
 for barebox@lists.infradead.org; Fri, 10 Aug 2018 19:04:57 +0000
Received: by mail-pf1-x42d.google.com with SMTP id b11-v6so4947768pfo.3
 for <barebox@lists.infradead.org>; Fri, 10 Aug 2018 12:04:48 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 10 Aug 2018 12:04:28 -0700
Message-Id: <20180810190429.10823-6-andrew.smirnov@gmail.com>
In-Reply-To: <20180810190429.10823-1-andrew.smirnov@gmail.com>
References: <20180810190429.10823-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 5/6] ARM: i.MX8MQ: Add code to detect reset reason
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Reset reason bits and their meaning seem to be identical between i.MX7
and i.MX8MQ. Share the definitions for the former and used it for the
latter.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx.c                       | 11 +++++++++++
 arch/arm/mach-imx/imx7.c                      | 11 -----------
 arch/arm/mach-imx/imx8mq.c                    |  6 ++++++
 arch/arm/mach-imx/include/mach/reset-reason.h |  1 +
 4 files changed, 18 insertions(+), 11 deletions(-)

diff --git a/arch/arm/mach-imx/imx.c b/arch/arm/mach-imx/imx.c
index 6fe53f314..ad227663d 100644
--- a/arch/arm/mach-imx/imx.c
+++ b/arch/arm/mach-imx/imx.c
@@ -157,6 +157,17 @@ static int imx_init(void)
 }
 postcore_initcall(imx_init);
 
+const struct imx_reset_reason imx7_reset_reasons[] = {
+	{ IMX_SRC_SRSR_IPP_RESET,       RESET_POR,   0 },
+	{ IMX_SRC_SRSR_WDOG1_RESET,     RESET_WDG,   0 },
+	{ IMX_SRC_SRSR_JTAG_RESET,      RESET_JTAG,  0 },
+	{ IMX_SRC_SRSR_JTAG_SW_RESET,   RESET_JTAG,  0 },
+	{ IMX_SRC_SRSR_WDOG3_RESET,     RESET_WDG,   1 },
+	{ IMX_SRC_SRSR_WDOG4_RESET,     RESET_WDG,   2 },
+	{ IMX_SRC_SRSR_TEMPSENSE_RESET, RESET_THERM, 0 },
+	{ /* sentinel */ }
+};
+
 const struct imx_reset_reason imx_reset_reasons[] = {
 	{ IMX_SRC_SRSR_IPP_RESET,     RESET_POR,  0 },
 	{ IMX_SRC_SRSR_WDOG1_RESET,   RESET_WDG,  0 },
diff --git a/arch/arm/mach-imx/imx7.c b/arch/arm/mach-imx/imx7.c
index e49baf6f7..ca11e8345 100644
--- a/arch/arm/mach-imx/imx7.c
+++ b/arch/arm/mach-imx/imx7.c
@@ -168,17 +168,6 @@ static struct psci_ops imx7_psci_ops = {
 	.cpu_off = imx7_cpu_off,
 };
 
-static const struct imx_reset_reason imx7_reset_reasons[] = {
-	{ IMX_SRC_SRSR_IPP_RESET,       RESET_POR,   0 },
-	{ IMX_SRC_SRSR_WDOG1_RESET,     RESET_WDG,   0 },
-	{ IMX_SRC_SRSR_JTAG_RESET,      RESET_JTAG,  0 },
-	{ IMX_SRC_SRSR_JTAG_SW_RESET,   RESET_JTAG,  0 },
-	{ IMX_SRC_SRSR_WDOG3_RESET,     RESET_WDG,   1 },
-	{ IMX_SRC_SRSR_WDOG4_RESET,     RESET_WDG,   2 },
-	{ IMX_SRC_SRSR_TEMPSENSE_RESET, RESET_THERM, 0 },
-	{ /* sentinel */ }
-};
-
 int imx7_init(void)
 {
 	const char *cputypestr;
diff --git a/arch/arm/mach-imx/imx8mq.c b/arch/arm/mach-imx/imx8mq.c
index 95839f31d..1d0bbcfdb 100644
--- a/arch/arm/mach-imx/imx8mq.c
+++ b/arch/arm/mach-imx/imx8mq.c
@@ -19,6 +19,7 @@
 #include <mach/generic.h>
 #include <mach/revision.h>
 #include <mach/imx8mq.h>
+#include <mach/reset-reason.h>
 
 #include <linux/arm-smccc.h>
 
@@ -47,6 +48,7 @@ core_initcall(imx8mq_init_syscnt_frequency);
 int imx8mq_init(void)
 {
 	void __iomem *anatop = IOMEM(MX8MQ_ANATOP_BASE_ADDR);
+	void __iomem *src = IOMEM(MX8MQ_SRC_BASE_ADDR);
 	uint32_t type = FIELD_GET(DIGPROG_MAJOR,
 				  readl(anatop + MX8MQ_ANATOP_DIGPROG));
 	struct arm_smccc_res res;
@@ -62,6 +64,10 @@ int imx8mq_init(void)
 	};
 
 	imx_set_silicon_revision(cputypestr, imx8mq_cpu_revision());
+	/*
+	 * Reset reasons seem to be identical to that of i.MX7
+	 */
+	imx_set_reset_reason(src + IMX7_SRC_SRSR, imx7_reset_reasons);
 
 	if (IS_ENABLED(CONFIG_ARM_SMCCC) &&
 	    IS_ENABLED(CONFIG_FIRMWARE_IMX8MQ_ATF)) {
diff --git a/arch/arm/mach-imx/include/mach/reset-reason.h b/arch/arm/mach-imx/include/mach/reset-reason.h
index 0f644a8c1..91a817189 100644
--- a/arch/arm/mach-imx/include/mach/reset-reason.h
+++ b/arch/arm/mach-imx/include/mach/reset-reason.h
@@ -33,5 +33,6 @@ struct imx_reset_reason {
 void imx_set_reset_reason(void __iomem *, const struct imx_reset_reason *);
 
 extern const struct imx_reset_reason imx_reset_reasons[];
+extern const struct imx_reset_reason imx7_reset_reasons[];
 
 #endif /* __MACH_RESET_REASON_H__ */
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
