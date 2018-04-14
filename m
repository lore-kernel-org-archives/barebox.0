Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f7PKC-0001dE-J1
 for barebox@lists.infradead.org; Sat, 14 Apr 2018 17:50:59 +0000
Received: by mail-pf0-x242.google.com with SMTP id a2so8523437pff.8
 for <barebox@lists.infradead.org>; Sat, 14 Apr 2018 10:50:49 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 14 Apr 2018 10:50:22 -0700
Message-Id: <20180414175024.9962-9-andrew.smirnov@gmail.com>
In-Reply-To: <20180414175024.9962-1-andrew.smirnov@gmail.com>
References: <20180414175024.9962-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 08/10] ARM: VFxxx: Add code to detect reset reason
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx.c                       | 78 +++++++++++++++++----------
 arch/arm/mach-imx/include/mach/reset-reason.h | 11 ++++
 2 files changed, 62 insertions(+), 27 deletions(-)

diff --git a/arch/arm/mach-imx/imx.c b/arch/arm/mach-imx/imx.c
index fb1160de9..e84713766 100644
--- a/arch/arm/mach-imx/imx.c
+++ b/arch/arm/mach-imx/imx.c
@@ -158,6 +158,7 @@ void imx_set_reset_reason(void __iomem *srsr)
 {
 	enum reset_src_type type = RESET_UKWN;
 	const u32 reg = readl(srsr);
+	const bool is_vf610 = cpu_is_vf610();
 
 	/*
 	 * SRSR register captures ALL reset event that occured since
@@ -166,37 +167,60 @@ void imx_set_reset_reason(void __iomem *srsr)
 	 */
 	writel(reg, srsr);
 
-	switch (reg) {
-	case IMX_SRC_SRSR_IPP_RESET: /* FALLTHROUGH */
-	case IMX_SRC_SRSR_IPP_RESET | IMX_SRC_SRSR_WDOG1_RESET:
-		type = RESET_POR;
-		break;
-	case IMX_SRC_SRSR_WDOG3_RESET: /* FALLTHROUGH */
-	case IMX_SRC_SRSR_WDOG4_RESET: /* FALLTHROUGH */
-	case IMX_SRC_SRSR_WDOG1_RESET:
-		type = RESET_WDG;
-		break;
-	case IMX_SRC_SRSR_JTAG_RESET: /* FALLTHROUGH */
-	case IMX_SRC_SRSR_JTAG_SW_RESET:
-		type = RESET_JTAG;
-		break;
-	case IMX_SRC_SRSR_TEMPSENSE_RESET:
-		type = RESET_THERM;
-		break;
-	case IMX_SRC_SRSR_WARM_BOOT:
-		type = RESET_RST;
-		break;
+	if (is_vf610) {
+		/*
+		 * Layout of SRSR on Vybrid is quite different so we
+		 * handle it separately.
+		 */
+		if (reg & VF610_SRC_SRSR_POR_RST) {
+			type = RESET_POR;
+		} else if (reg & VF610_SRC_SRSR_WDOG_xx) {
+			type = RESET_WDG;
+		} else if (reg & VF610_SRC_SRSR_JTAG_RST) {
+			type = RESET_JTAG;
+		} else if (reg & VF610_SRC_SRSR_SW_RST) {
+			type = RESET_RST;
+		} else if (reg & VF610_SRC_SRSR_RESETB) {
+			type = RESET_EXT;
+		}
+	} else {
+		switch (reg) {
+		case IMX_SRC_SRSR_IPP_RESET: /* FALLTHROUGH */
+		case IMX_SRC_SRSR_IPP_RESET | IMX_SRC_SRSR_WDOG1_RESET:
+			type = RESET_POR;
+			break;
+		case IMX_SRC_SRSR_WDOG3_RESET: /* FALLTHROUGH */
+		case IMX_SRC_SRSR_WDOG4_RESET: /* FALLTHROUGH */
+		case IMX_SRC_SRSR_WDOG1_RESET:
+			type = RESET_WDG;
+			break;
+		case IMX_SRC_SRSR_JTAG_RESET: /* FALLTHROUGH */
+		case IMX_SRC_SRSR_JTAG_SW_RESET:
+			type = RESET_JTAG;
+			break;
+		case IMX_SRC_SRSR_TEMPSENSE_RESET:
+			type = RESET_THERM;
+			break;
+		case IMX_SRC_SRSR_WARM_BOOT:
+			type = RESET_RST;
+			break;
+		}
 	}
 
 	reset_source_set(type);
 
-	switch (reg) {
-	case IMX_SRC_SRSR_WDOG3_RESET:
-		reset_source_set_instance(type, 1);
-		break;
-	case IMX_SRC_SRSR_WDOG4_RESET:
-		reset_source_set_instance(type, 2);
-		break;
+	if (is_vf610) {
+		if (reg & VF610_SRC_SRSR_WDOG_M4)
+			reset_source_set_instance(type, 1);
+	} else {
+		switch (reg) {
+		case IMX_SRC_SRSR_WDOG3_RESET:
+			reset_source_set_instance(type, 1);
+			break;
+		case IMX_SRC_SRSR_WDOG4_RESET:
+			reset_source_set_instance(type, 2);
+			break;
+		}
 	}
 
 	pr_info("i.MX reset reason %s (SRSR: 0x%08x)\n",
diff --git a/arch/arm/mach-imx/include/mach/reset-reason.h b/arch/arm/mach-imx/include/mach/reset-reason.h
index a8a9dc682..543fec4a1 100644
--- a/arch/arm/mach-imx/include/mach/reset-reason.h
+++ b/arch/arm/mach-imx/include/mach/reset-reason.h
@@ -14,6 +14,17 @@
 
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
+#define VF610_SRC_SRSR_WDOG_xx		(VF610_SRC_SRSR_WDOG_A5 | \
+					 VF610_SRC_SRSR_WDOG_M4)
+#define VF610_SRC_SRSR_POR_RST		BIT(0)
 
 void imx_set_reset_reason(void __iomem *srsr);
 
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
