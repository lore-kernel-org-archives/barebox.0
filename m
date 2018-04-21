Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x242.google.com ([2607:f8b0:400e:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f9gyg-0006hx-IR
 for barebox@lists.infradead.org; Sat, 21 Apr 2018 01:06:12 +0000
Received: by mail-pg0-x242.google.com with SMTP id f132so4673759pgc.10
 for <barebox@lists.infradead.org>; Fri, 20 Apr 2018 18:06:00 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 20 Apr 2018 18:05:38 -0700
Message-Id: <20180421010538.16488-11-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 10/10] ARM: VFxxx: Record reset reason as a part of startup
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/include/mach/reset-reason.h |  9 +++++++++
 arch/arm/mach-imx/vf610.c                     | 12 ++++++++++++
 2 files changed, 21 insertions(+)

diff --git a/arch/arm/mach-imx/include/mach/reset-reason.h b/arch/arm/mach-imx/include/mach/reset-reason.h
index 96e52486c..4919f68d5 100644
--- a/arch/arm/mach-imx/include/mach/reset-reason.h
+++ b/arch/arm/mach-imx/include/mach/reset-reason.h
@@ -16,6 +16,15 @@
 
 #define IMX6_SRC_SRSR	0x008
 #define IMX7_SRC_SRSR	0x05c
+#define VF610_SRC_SRSR	0x008
+
+
+#define VF610_SRC_SRSR_SW_RST		BIT(18)
+#define VF610_SRC_SRSR_RESETB		BIT(7)
+#define VF610_SRC_SRSR_JTAG_RST		BIT(5)
+#define VF610_SRC_SRSR_WDOG_M4		BIT(4)
+#define VF610_SRC_SRSR_WDOG_A5		BIT(3)
+#define VF610_SRC_SRSR_POR_RST		BIT(0)
 
 struct imx_reset_reason {
 	uint32_t mask;
diff --git a/arch/arm/mach-imx/vf610.c b/arch/arm/mach-imx/vf610.c
index c2d02632f..df8cfcd6b 100644
--- a/arch/arm/mach-imx/vf610.c
+++ b/arch/arm/mach-imx/vf610.c
@@ -18,6 +18,17 @@
 #include <mach/generic.h>
 #include <mach/revision.h>
 #include <mach/vf610.h>
+#include <mach/reset-reason.h>
+
+static const struct imx_reset_reason vf610_reset_reasons[] = {
+	{ VF610_SRC_SRSR_POR_RST,       RESET_POR,   0 },
+	{ VF610_SRC_SRSR_WDOG_A5,       RESET_WDG,   0 },
+	{ VF610_SRC_SRSR_WDOG_M4,       RESET_WDG,   1 },
+	{ VF610_SRC_SRSR_JTAG_RST,      RESET_JTAG,  0 },
+	{ VF610_SRC_SRSR_RESETB,        RESET_EXT,   0 },
+	{ VF610_SRC_SRSR_SW_RST,        RESET_RST,   0 },
+	{ /* sentinel */ }
+};
 
 int vf610_init(void)
 {
@@ -43,5 +54,6 @@ int vf610_init(void)
 	}
 
 	imx_set_silicon_revision(cputypestr, vf610_cpu_revision());
+	imx_set_reset_reason(src + VF610_SRC_SRSR, vf610_reset_reasons);
 	return 0;
 }
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
