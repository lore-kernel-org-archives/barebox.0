Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3foR-0003xZ-HY
 for barebox@lists.infradead.org; Mon, 17 Feb 2020 12:47:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Feb 2020 13:46:07 +0100
Message-Id: <20200217124623.14520-27-s.hauer@pengutronix.de>
In-Reply-To: <20200217124623.14520-1-s.hauer@pengutronix.de>
References: <20200217124623.14520-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 26/42] ARM: i.MX: Add SoC namespace to imx7/8m CCM defines
To: Barebox List <barebox@lists.infradead.org>

The CCM defines used on i.MX7 and i.MX8M do not have any SoC namespace.
Add it to make clear where they are supposed to be used. Since it looks
confusing to call i.MX7 specific defines on i.MX8M and vice versa,
duplicate them for both SoCs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../boards/freescale-mx7-sabresd/lowlevel.c   | 12 +++----
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c     | 12 +++----
 arch/arm/boards/phytec-som-imx8mq/lowlevel.c  | 12 +++----
 arch/arm/boards/zii-imx7d-dev/lowlevel.c      | 12 +++----
 arch/arm/boards/zii-imx8mq-dev/lowlevel.c     | 12 +++----
 .../arm/mach-imx/include/mach/imx7-ccm-regs.h | 33 ++++++++++++++-----
 .../arm/mach-imx/include/mach/imx8-ccm-regs.h | 25 +++++++++++---
 7 files changed, 74 insertions(+), 44 deletions(-)

diff --git a/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c b/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c
index edd965e4ec..995bf6cca9 100644
--- a/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c
+++ b/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c
@@ -17,12 +17,12 @@ static inline void setup_uart(void)
 {
 	void __iomem *ccm   = IOMEM(MX7_CCM_BASE_ADDR);
 
-	writel(CCM_CCGR_SETTINGn_NEEDED(0),
-	       ccm + CCM_CCGRn_CLR(CCM_CCGR_UART1));
-	writel(CCM_TARGET_ROOTn_ENABLE | UART1_CLK_ROOT__OSC_24M,
-	       ccm + CCM_TARGET_ROOTn(UART1_CLK_ROOT));
-	writel(CCM_CCGR_SETTINGn_NEEDED(0),
-	       ccm + CCM_CCGRn_SET(CCM_CCGR_UART1));
+	writel(IMX7_CCM_CCGR_SETTINGn_NEEDED(0),
+	       ccm + IMX7_CCM_CCGRn_CLR(IMX7_CCM_CCGR_UART1));
+	writel(IMX7_CCM_TARGET_ROOTn_ENABLE | IMX7_UART1_CLK_ROOT__OSC_24M,
+	       ccm + IMX7_CCM_TARGET_ROOTn(IMX7_UART1_CLK_ROOT));
+	writel(IMX7_CCM_CCGR_SETTINGn_NEEDED(0),
+	       ccm + IMX7_CCM_CCGRn_SET(IMX7_CCM_CCGR_UART1));
 
 	imx7_setup_pad(MX7D_PAD_UART1_TX_DATA__UART1_DCE_TX);
 
diff --git a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
index a501f03722..0f4b27a9af 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
@@ -27,12 +27,12 @@ static void setup_uart(void)
 {
 	void __iomem *ccm   = IOMEM(MX8MQ_CCM_BASE_ADDR);
 
-	writel(CCM_CCGR_SETTINGn_NEEDED(0),
-	       ccm + CCM_CCGRn_CLR(CCM_CCGR_UART1));
-	writel(CCM_TARGET_ROOTn_ENABLE | UART1_CLK_ROOT__25M_REF_CLK,
-	       ccm + CCM_TARGET_ROOTn(UART1_CLK_ROOT));
-	writel(CCM_CCGR_SETTINGn_NEEDED(0),
-	       ccm + CCM_CCGRn_SET(CCM_CCGR_UART1));
+	writel(IMX8M_CCM_CCGR_SETTINGn_NEEDED(0),
+	       ccm + IMX8M_CCM_CCGRn_CLR(IMX8M_CCM_CCGR_UART1));
+	writel(IMX8M_CCM_TARGET_ROOTn_ENABLE | IMX8M_UART1_CLK_ROOT__25M_REF_CLK,
+	       ccm + IMX8M_CCM_TARGET_ROOTn(IMX8M_UART1_CLK_ROOT));
+	writel(IMX8M_CCM_CCGR_SETTINGn_NEEDED(0),
+	       ccm + IMX8M_CCM_CCGRn_SET(IMX8M_CCM_CCGR_UART1));
 
 	imx8mq_setup_pad(IMX8MQ_PAD_UART1_TXD__UART1_TX | UART_PAD_CTRL);
 
diff --git a/arch/arm/boards/phytec-som-imx8mq/lowlevel.c b/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
index f14366a27b..0abe0a6bc2 100644
--- a/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
@@ -30,12 +30,12 @@ static void setup_uart(void)
 {
 	void __iomem *ccm   = IOMEM(MX8MQ_CCM_BASE_ADDR);
 
-	writel(CCM_CCGR_SETTINGn_NEEDED(0),
-	       ccm + CCM_CCGRn_CLR(CCM_CCGR_UART1));
-	writel(CCM_TARGET_ROOTn_ENABLE | UART1_CLK_ROOT__25M_REF_CLK,
-	       ccm + CCM_TARGET_ROOTn(UART1_CLK_ROOT));
-	writel(CCM_CCGR_SETTINGn_NEEDED(0),
-	       ccm + CCM_CCGRn_SET(CCM_CCGR_UART1));
+	writel(IMX8M_CCM_CCGR_SETTINGn_NEEDED(0),
+	       ccm + IMX8M_CCM_CCGRn_CLR(IMX8M_CCM_CCGR_UART1));
+	writel(IMX8M_CCM_TARGET_ROOTn_ENABLE | IMX8M_UART1_CLK_ROOT__25M_REF_CLK,
+	       ccm + IMX8M_CCM_TARGET_ROOTn(IMX8M_UART1_CLK_ROOT));
+	writel(IMX8M_CCM_CCGR_SETTINGn_NEEDED(0),
+	       ccm + IMX8M_CCM_CCGRn_SET(IMX8M_CCM_CCGR_UART1));
 
 	imx8mq_setup_pad(IMX8MQ_PAD_UART1_TXD__UART1_TX | UART_PAD_CTRL);
 
diff --git a/arch/arm/boards/zii-imx7d-dev/lowlevel.c b/arch/arm/boards/zii-imx7d-dev/lowlevel.c
index 83d01446b9..83fb646fd6 100644
--- a/arch/arm/boards/zii-imx7d-dev/lowlevel.c
+++ b/arch/arm/boards/zii-imx7d-dev/lowlevel.c
@@ -25,12 +25,12 @@ static inline void setup_uart(void)
 {
 	void __iomem *ccm   = IOMEM(MX7_CCM_BASE_ADDR);
 
-	writel(CCM_CCGR_SETTINGn_NEEDED(0),
-	       ccm + CCM_CCGRn_CLR(CCM_CCGR_UART2));
-	writel(CCM_TARGET_ROOTn_ENABLE | UART2_CLK_ROOT__OSC_24M,
-	       ccm + CCM_TARGET_ROOTn(UART2_CLK_ROOT));
-	writel(CCM_CCGR_SETTINGn_NEEDED(0),
-	       ccm + CCM_CCGRn_SET(CCM_CCGR_UART2));
+	writel(IMX7_CCM_CCGR_SETTINGn_NEEDED(0),
+	       ccm + IMX7_CCM_CCGRn_CLR(IMX7_CCM_CCGR_UART2));
+	writel(IMX7_CCM_TARGET_ROOTn_ENABLE | IMX7_UART2_CLK_ROOT__OSC_24M,
+	       ccm + IMX7_CCM_TARGET_ROOTn(IMX7_UART2_CLK_ROOT));
+	writel(IMX7_CCM_CCGR_SETTINGn_NEEDED(0),
+	       ccm + IMX7_CCM_CCGRn_SET(IMX7_CCM_CCGR_UART2));
 
 	imx7_setup_pad(MX7D_PAD_UART2_TX_DATA__UART2_DCE_TX);
 
diff --git a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
index 482d70cb01..0bb141fbf2 100644
--- a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
+++ b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
@@ -29,12 +29,12 @@ static void setup_uart(void)
 {
 	void __iomem *ccm   = IOMEM(MX8MQ_CCM_BASE_ADDR);
 
-	writel(CCM_CCGR_SETTINGn_NEEDED(0),
-	       ccm + CCM_CCGRn_CLR(CCM_CCGR_UART1));
-	writel(CCM_TARGET_ROOTn_ENABLE | UART1_CLK_ROOT__25M_REF_CLK,
-	       ccm + CCM_TARGET_ROOTn(UART1_CLK_ROOT));
-	writel(CCM_CCGR_SETTINGn_NEEDED(0),
-	       ccm + CCM_CCGRn_SET(CCM_CCGR_UART1));
+	writel(IMX8M_CCM_CCGR_SETTINGn_NEEDED(0),
+	       ccm + IMX8M_CCM_CCGRn_CLR(IMX8M_CCM_CCGR_UART1));
+	writel(IMX8M_CCM_TARGET_ROOTn_ENABLE | IMX8M_UART1_CLK_ROOT__25M_REF_CLK,
+	       ccm + IMX8M_CCM_TARGET_ROOTn(IMX8M_UART1_CLK_ROOT));
+	writel(IMX8M_CCM_CCGR_SETTINGn_NEEDED(0),
+	       ccm + IMX8M_CCM_CCGRn_SET(IMX8M_CCM_CCGR_UART1));
 
 	imx8mq_setup_pad(IMX8MQ_PAD_UART1_TXD__UART1_TX | UART_PAD_CTRL);
 
diff --git a/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h b/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h
index 43b9425df2..b78adf9f1c 100644
--- a/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h
@@ -1,21 +1,36 @@
 #ifndef __MACH_IMX7_CCM_REGS_H__
 #define __MACH_IMX7_CCM_REGS_H__
 
-#include "ccm.h"
+#define IMX7_CCM_CCGR_UART1		148
+#define IMX7_CCM_CCGR_UART2		149
 
-#define CCM_CCGR_UART1		148
-#define CCM_CCGR_UART2		149
-
-#define CLOCK_ROOT_INDEX(x)	(((x) - 0x8000) / 128)
+#define IMX7_CLOCK_ROOT_INDEX(x)	(((x) - 0x8000) / 128)
 
 /*
  * Taken from "Table 5-11. Clock Root Table" from i.MX7 Dual Processor
  * Reference Manual
  */
-#define UART1_CLK_ROOT		CLOCK_ROOT_INDEX(0xaf80)
-#define UART1_CLK_ROOT__OSC_24M CCM_TARGET_ROOTn_MUX(0b000)
+#define IMX7_UART1_CLK_ROOT		IMX7_CLOCK_ROOT_INDEX(0xaf80)
+#define IMX7_UART1_CLK_ROOT__OSC_24M IMX7_CCM_TARGET_ROOTn_MUX(0b000)
+
+#define IMX7_UART2_CLK_ROOT		IMX7_CLOCK_ROOT_INDEX(0xb000)
+#define IMX7_UART2_CLK_ROOT__OSC_24M IMX7_CCM_TARGET_ROOTn_MUX(0b000)
+
+/* 0 <= n <= 190 */
+#define IMX7_CCM_CCGRn_SET(n)	(0x4004 + 16 * (n))
+#define IMX7_CCM_CCGRn_CLR(n)	(0x4008 + 16 * (n))
+
+/* 0 <= n <= 120 */
+#define IMX7_CCM_TARGET_ROOTn(n)	(0x8000 + 128 * (n))
+
+#define IMX7_CCM_TARGET_ROOTn_MUX(x)		((x) << 24)
+#define IMX7_CCM_TARGET_ROOTn_ENABLE		BIT(28)
+
 
-#define UART2_CLK_ROOT		CLOCK_ROOT_INDEX(0xb000)
-#define UART2_CLK_ROOT__OSC_24M CCM_TARGET_ROOTn_MUX(0b000)
+#define IMX7_CCM_CCGR_SETTINGn(n, s)  ((s) << ((n) * 4))
+#define IMX7_CCM_CCGR_SETTINGn_NOT_NEEDED(n)		IMX7_CCM_CCGR_SETTINGn(n, 0b00)
+#define IMX7_CCM_CCGR_SETTINGn_NEEDED_RUN(n)		IMX7_CCM_CCGR_SETTINGn(n, 0b01)
+#define IMX7_CCM_CCGR_SETTINGn_NEEDED_RUN_WAIT(n)	IMX7_CCM_CCGR_SETTINGn(n, 0b10)
+#define IMX7_CCM_CCGR_SETTINGn_NEEDED(n)		IMX7_CCM_CCGR_SETTINGn(n, 0b11)
 
 #endif
diff --git a/arch/arm/mach-imx/include/mach/imx8-ccm-regs.h b/arch/arm/mach-imx/include/mach/imx8-ccm-regs.h
index 93b584ebe2..59d25d797f 100644
--- a/arch/arm/mach-imx/include/mach/imx8-ccm-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx8-ccm-regs.h
@@ -1,15 +1,30 @@
 #ifndef __MACH_IMX8_CCM_REGS_H__
 #define __MACH_IMX8_CCM_REGS_H__
 
-#include "ccm.h"
-
-#define CCM_CCGR_UART1		73
+#define IMX8M_CCM_CCGR_UART1		73
 
 /*
  * Taken from "Table 5-1. Clock Root Table" from i.MX8M Quad
  * Applications Processor Reference Manual
  */
-#define UART1_CLK_ROOT		94
-#define UART1_CLK_ROOT__25M_REF_CLK CCM_TARGET_ROOTn_MUX(0b000)
+#define IMX8M_UART1_CLK_ROOT		94
+#define IMX8M_UART1_CLK_ROOT__25M_REF_CLK IMX8M_CCM_TARGET_ROOTn_MUX(0b000)
+
+/* 0 <= n <= 190 */
+#define IMX8M_CCM_CCGRn_SET(n)	(0x4004 + 16 * (n))
+#define IMX8M_CCM_CCGRn_CLR(n)	(0x4008 + 16 * (n))
+
+/* 0 <= n <= 120 */
+#define IMX8M_CCM_TARGET_ROOTn(n)	(0x8000 + 128 * (n))
+
+#define IMX8M_CCM_TARGET_ROOTn_MUX(x)		((x) << 24)
+#define IMX8M_CCM_TARGET_ROOTn_ENABLE		BIT(28)
+
+
+#define IMX8M_CCM_CCGR_SETTINGn(n, s)  ((s) << ((n) * 4))
+#define IMX8M_CCM_CCGR_SETTINGn_NOT_NEEDED(n)		IMX8M_CCM_CCGR_SETTINGn(n, 0b00)
+#define IMX8M_CCM_CCGR_SETTINGn_NEEDED_RUN(n)		IMX8M_CCM_CCGR_SETTINGn(n, 0b01)
+#define IMX8M_CCM_CCGR_SETTINGn_NEEDED_RUN_WAIT(n)	IMX8M_CCM_CCGR_SETTINGn(n, 0b10)
+#define IMX8M_CCM_CCGR_SETTINGn_NEEDED(n)		IMX8M_CCM_CCGR_SETTINGn(n, 0b11)
 
 #endif
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
