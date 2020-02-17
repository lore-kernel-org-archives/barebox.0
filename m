Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3fni-0008RL-Ln
 for barebox@lists.infradead.org; Mon, 17 Feb 2020 12:47:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Feb 2020 13:46:08 +0100
Message-Id: <20200217124623.14520-28-s.hauer@pengutronix.de>
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
Subject: [PATCH 27/42] Add some CCM defines for i.MX8M
To: Barebox List <barebox@lists.infradead.org>

This adds some clock slice indices and CCGR defines needed for the
lowlevel i.MX8M code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../arm/mach-imx/include/mach/imx8-ccm-regs.h | 25 +++++++++++++++++--
 1 file changed, 23 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/imx8-ccm-regs.h b/arch/arm/mach-imx/include/mach/imx8-ccm-regs.h
index 59d25d797f..66ace0f1c4 100644
--- a/arch/arm/mach-imx/include/mach/imx8-ccm-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx8-ccm-regs.h
@@ -1,13 +1,33 @@
 #ifndef __MACH_IMX8_CCM_REGS_H__
 #define __MACH_IMX8_CCM_REGS_H__
 
-#define IMX8M_CCM_CCGR_UART1		73
+#include <mach/imx8mq-regs.h>
+
+#define IMX8M_CCM_CCGR_DDR1	5
+#define IMX8M_CCM_CCGR_I2C1	23
+#define IMX8M_CCM_CCGR_I2C2	24
+#define IMX8M_CCM_CCGR_I2C3	25
+#define IMX8M_CCM_CCGR_I2C4	26
+#define IMX8M_CCM_CCGR_SCTR	57
+#define IMX8M_CCM_CCGR_UART1	73
+#define IMX8M_CCM_CCGR_UART2 	74
+#define IMX8M_CCM_CCGR_UART3	75
+#define IMX8M_CCM_CCGR_UART4	76
+#define IMX8M_CCM_CCGR_GIC	92
 
 /*
  * Taken from "Table 5-1. Clock Root Table" from i.MX8M Quad
  * Applications Processor Reference Manual
  */
+#define IMX8M_ARM_A53_CLK_ROOT		0
+#define IMX8M_DRAM_SEL_CFG		48
+#define IMX8M_DRAM_ALT_CLK_ROOT		64
+#define IMX8M_DRAM_APB_CLK_ROOT		65
 #define IMX8M_UART1_CLK_ROOT		94
+#define IMX8M_UART2_CLK_ROOT		95
+#define IMX8M_UART3_CLK_ROOT		96
+#define IMX8M_UART4_CLK_ROOT		97
+#define IMX8M_GIC_CLK_ROOT		100
 #define IMX8M_UART1_CLK_ROOT__25M_REF_CLK IMX8M_CCM_TARGET_ROOTn_MUX(0b000)
 
 /* 0 <= n <= 190 */
@@ -17,10 +37,11 @@
 /* 0 <= n <= 120 */
 #define IMX8M_CCM_TARGET_ROOTn(n)	(0x8000 + 128 * (n))
 
+#define IMX8M_CCM_TARGET_ROOTn_POST_DIV(n)	((n) & 0x0000003f)
+#define IMX8M_CCM_TARGET_ROOTn_PRE_DIV(n)	(((n) << 16) & 0x00070000)
 #define IMX8M_CCM_TARGET_ROOTn_MUX(x)		((x) << 24)
 #define IMX8M_CCM_TARGET_ROOTn_ENABLE		BIT(28)
 
-
 #define IMX8M_CCM_CCGR_SETTINGn(n, s)  ((s) << ((n) * 4))
 #define IMX8M_CCM_CCGR_SETTINGn_NOT_NEEDED(n)		IMX8M_CCM_CCGR_SETTINGn(n, 0b00)
 #define IMX8M_CCM_CCGR_SETTINGn_NEEDED_RUN(n)		IMX8M_CCM_CCGR_SETTINGn(n, 0b01)
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
