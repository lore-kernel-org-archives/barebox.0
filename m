Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UTCQT-0007aw-2H
 for barebox@lists.infradead.org; Fri, 19 Apr 2013 14:36:33 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Fri, 19 Apr 2013 16:36:29 +0200
Message-Id: <1366382189-15575-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH v2] ARM i.MX28: make chip reset via reset pin work again
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Since commit:

    2ccd451 ARM i.MX28: change default watchdog reset method

the external reset via the reset pin is broken. That commit overwrites the
HW_CLKCTRL_RESET register with only WDOG_POR_DISABLE set, which results in
disabling the external reset.

This patch uses read-modify-write to set the WDOG_POR_DISABLE, leaving the
WDOG_POR_DISABLE untouched.

Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
changes since v1:
* use r-m-w to change HW_CLKCTRL_RESET register (thanks jbe)

 arch/arm/mach-mxs/soc-imx28.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-mxs/soc-imx28.c b/arch/arm/mach-mxs/soc-imx28.c
index 8972a3d..ed931af 100644
--- a/arch/arm/mach-mxs/soc-imx28.c
+++ b/arch/arm/mach-mxs/soc-imx28.c
@@ -39,12 +39,16 @@ EXPORT_SYMBOL(reset_cpu);
 
 static int imx28_init(void)
 {
+	u32 reg;
+
 	/*
 	 * The default setting for the WDT is to do a POR. If the SoC is only
 	 * powered via battery, then a WDT reset powers the chip down instead
 	 * of resetting it. Use a software reset only.
 	 */
-	writel(HW_CLKCTRL_WDOG_POR_DISABLE, IMX_CCM_BASE + HW_CLKCTRL_RESET);
+	reg = readl(IMX_CCM_BASE + HW_CLKCTRL_RESET) |
+		HW_CLKCTRL_WDOG_POR_DISABLE;
+	writel(reg, IMX_CCM_BASE + HW_CLKCTRL_RESET);
 
 	return 0;
 }
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
