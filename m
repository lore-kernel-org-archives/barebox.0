Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UT5lv-0007Ck-E7
 for barebox@lists.infradead.org; Fri, 19 Apr 2013 07:30:16 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Fri, 19 Apr 2013 09:30:10 +0200
Message-Id: <1366356610-16536-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH] ARM i.MX28: make chip reset via reset pin work again
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Since commit:

    2ccd451 ARM i.MX28: change default watchdog reset method

the external reset via the reset pin is broken. That commit overwrites the
HW_CLKCTRL_RESET register with only WDOG_POR_DISABLE set, which results in
disabling the external reset.

This patch sets the EXTERNAL_RESET_ENABLE bit, too. While there clean up the
name of the WDOG_POR_DISABLE define.

Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/arm/mach-mxs/soc-imx28.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-mxs/soc-imx28.c b/arch/arm/mach-mxs/soc-imx28.c
index 8972a3d..bcf4bcc 100644
--- a/arch/arm/mach-mxs/soc-imx28.c
+++ b/arch/arm/mach-mxs/soc-imx28.c
@@ -20,8 +20,9 @@
 #include <io.h>
 
 #define HW_CLKCTRL_RESET 0x1e0
-# define HW_CLKCTRL_RESET_CHIP (1 << 1)
-#define HW_CLKCTRL_WDOG_POR_DISABLE (1 << 5)
+#define HW_CLKCTRL_RESET_CHIP (1 << 1)
+#define HW_CLKCTRL_RESET_EXTERNAL_RESET_ENABLE (1 << 4)
+#define HW_CLKCTRL_RESET_WDOG_POR_DISABLE (1 << 5)
 
 /* Reset the full i.MX28 SoC via a chipset feature */
 void __noreturn reset_cpu(unsigned long addr)
@@ -44,7 +45,9 @@ static int imx28_init(void)
 	 * powered via battery, then a WDT reset powers the chip down instead
 	 * of resetting it. Use a software reset only.
 	 */
-	writel(HW_CLKCTRL_WDOG_POR_DISABLE, IMX_CCM_BASE + HW_CLKCTRL_RESET);
+	writel(HW_CLKCTRL_RESET_WDOG_POR_DISABLE |
+	       HW_CLKCTRL_RESET_EXTERNAL_RESET_ENABLE,
+	       IMX_CCM_BASE + HW_CLKCTRL_RESET);
 
 	return 0;
 }
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
