Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f9gyV-0006fn-U6
 for barebox@lists.infradead.org; Sat, 21 Apr 2018 01:06:03 +0000
Received: by mail-pf0-x243.google.com with SMTP id f15so4986849pfn.0
 for <barebox@lists.infradead.org>; Fri, 20 Apr 2018 18:05:52 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 20 Apr 2018 18:05:32 -0700
Message-Id: <20180421010538.16488-5-andrew.smirnov@gmail.com>
In-Reply-To: <20180421010538.16488-1-andrew.smirnov@gmail.com>
References: <20180421010538.16488-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 04/10] ARM: i.MX7: Record reset reason as a part of startup
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx7.c                      | 14 ++++++++++++++
 arch/arm/mach-imx/include/mach/reset-reason.h |  1 +
 2 files changed, 15 insertions(+)

diff --git a/arch/arm/mach-imx/imx7.c b/arch/arm/mach-imx/imx7.c
index 4eef99c87..5ad91c2d7 100644
--- a/arch/arm/mach-imx/imx7.c
+++ b/arch/arm/mach-imx/imx7.c
@@ -19,6 +19,7 @@
 #include <mach/imx7.h>
 #include <mach/generic.h>
 #include <mach/revision.h>
+#include <mach/reset-reason.h>
 #include <mach/imx7-regs.h>
 
 void imx7_init_lowlevel(void)
@@ -167,10 +168,22 @@ static struct psci_ops imx7_psci_ops = {
 	.cpu_off = imx7_cpu_off,
 };
 
+static const struct imx_reset_reason imx7_reset_reasons[] = {
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
 int imx7_init(void)
 {
 	const char *cputypestr;
 	u32 imx7_silicon_revision;
+	void __iomem *src = IOMEM(MX7_SRC_BASE_ADDR);
 
 	imx7_init_lowlevel();
 
@@ -197,6 +210,7 @@ int imx7_init(void)
 	}
 
 	imx_set_silicon_revision(cputypestr, imx7_silicon_revision);
+	imx_set_reset_reason(src + IMX7_SRC_SRSR, imx7_reset_reasons);
 
 	return 0;
 }
diff --git a/arch/arm/mach-imx/include/mach/reset-reason.h b/arch/arm/mach-imx/include/mach/reset-reason.h
index f2544a303..96e52486c 100644
--- a/arch/arm/mach-imx/include/mach/reset-reason.h
+++ b/arch/arm/mach-imx/include/mach/reset-reason.h
@@ -15,6 +15,7 @@
 #define IMX_SRC_SRSR_WARM_BOOT		BIT(16)
 
 #define IMX6_SRC_SRSR	0x008
+#define IMX7_SRC_SRSR	0x05c
 
 struct imx_reset_reason {
 	uint32_t mask;
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
