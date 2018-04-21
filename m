Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f9gyV-0006ff-U8
 for barebox@lists.infradead.org; Sat, 21 Apr 2018 01:06:03 +0000
Received: by mail-pf0-x243.google.com with SMTP id g14so4986139pfh.3
 for <barebox@lists.infradead.org>; Fri, 20 Apr 2018 18:05:49 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 20 Apr 2018 18:05:30 -0700
Message-Id: <20180421010538.16488-3-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 02/10] ARM: i.MX: Add infrastructure to record SoC reset
 reason
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx.c                       | 33 +++++++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/reset-reason.h | 25 ++++++++++++++++++++
 2 files changed, 58 insertions(+)
 create mode 100644 arch/arm/mach-imx/include/mach/reset-reason.h

diff --git a/arch/arm/mach-imx/imx.c b/arch/arm/mach-imx/imx.c
index 9400105c6..29dad9a41 100644
--- a/arch/arm/mach-imx/imx.c
+++ b/arch/arm/mach-imx/imx.c
@@ -14,8 +14,10 @@
 #include <common.h>
 #include <of.h>
 #include <init.h>
+#include <io.h>
 #include <mach/revision.h>
 #include <mach/generic.h>
+#include <mach/reset-reason.h>
 
 static int __imx_silicon_revision = IMX_CHIP_REV_UNKNOWN;
 
@@ -147,3 +149,34 @@ static int imx_init(void)
 	return ret;
 }
 postcore_initcall(imx_init);
+
+void imx_set_reset_reason(void __iomem *srsr,
+			  const struct imx_reset_reason *reasons)
+{
+	enum reset_src_type type = RESET_UKWN;
+	const u32 reg = readl(srsr);
+	int i, instance = 0;
+
+	/*
+	 * SRSR register captures ALL reset event that occured since
+	 * POR, so we need to clear it to make sure we only caputre
+	 * the latest one.
+	 */
+	writel(reg, srsr);
+
+	for (i = 0; reasons[i].mask; i++) {
+		if (reg & reasons[i].mask) {
+			type     = reasons[i].type;
+			instance = reasons[i].instance;
+			break;
+		}
+	}
+
+	/*
+	 * Report this with above default priority in order to make
+	 * sure we'll always override info from watchdog driver.
+	 */
+	reset_source_set_priority(type,
+				  RESET_SOURCE_DEFAULT_PRIORITY + 1);
+	reset_source_set_instance(type, instance);
+}
diff --git a/arch/arm/mach-imx/include/mach/reset-reason.h b/arch/arm/mach-imx/include/mach/reset-reason.h
new file mode 100644
index 000000000..39afc4b28
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/reset-reason.h
@@ -0,0 +1,25 @@
+#ifndef __MACH_RESET_REASON_H__
+#define __MACH_RESET_REASON_H__
+
+#include <reset_source.h>
+
+#define IMX_SRC_SRSR_IPP_RESET		BIT(0)
+#define IMX_SRC_SRSR_CSU_RESET		BIT(1)
+#define IMX_SRC_SRSR_IPP_USER_RESET	BIT(3)
+#define IMX_SRC_SRSR_WDOG1_RESET	BIT(4)
+#define IMX_SRC_SRSR_JTAG_RESET		BIT(5)
+#define IMX_SRC_SRSR_JTAG_SW_RESET	BIT(6)
+#define IMX_SRC_SRSR_WDOG3_RESET	BIT(7)
+#define IMX_SRC_SRSR_WDOG4_RESET	BIT(8)
+#define IMX_SRC_SRSR_TEMPSENSE_RESET	BIT(9)
+#define IMX_SRC_SRSR_WARM_BOOT		BIT(16)
+
+struct imx_reset_reason {
+	uint32_t mask;
+	enum reset_src_type type;
+	int instance;
+};
+
+void imx_set_reset_reason(void __iomem *, const struct imx_reset_reason *);
+
+#endif /* __MACH_RESET_REASON_H__ */
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
