Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P8Bj8-0000sU-ML
	for barebox@lists.infradead.org; Tue, 19 Oct 2010 12:55:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Oct 2010 14:55:09 +0200
Message-Id: <1287492930-15716-22-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
References: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 21/42] i.MX remove wdog registers from header files
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clocksource.c             |   23 +++++++++++++++++++----
 arch/arm/mach-imx/include/mach/imx1-regs.h  |    8 --------
 arch/arm/mach-imx/include/mach/imx21-regs.h |    8 --------
 arch/arm/mach-imx/include/mach/imx27-regs.h |    8 --------
 arch/arm/mach-imx/include/mach/imx31-regs.h |   10 ----------
 arch/arm/mach-imx/include/mach/imx35-regs.h |   10 ----------
 arch/arm/mach-imx/include/mach/imx51-regs.h |    7 -------
 7 files changed, 19 insertions(+), 55 deletions(-)

diff --git a/arch/arm/mach-imx/clocksource.c b/arch/arm/mach-imx/clocksource.c
index e492890..4cb923f 100644
--- a/arch/arm/mach-imx/clocksource.c
+++ b/arch/arm/mach-imx/clocksource.c
@@ -101,19 +101,34 @@ static int clocksource_init (void)
 core_initcall(clocksource_init);
 
 /*
+ * Watchdog Registers
+ */
+#ifdef CONFIG_ARCH_IMX1
+#define WDOG_WCR	0x00 /* Watchdog Control Register */
+#define WDOG_WSR	0x02 /* Watchdog Service Register */
+#define WDOG_WSTR	0x04 /* Watchdog Status Register  */
+#define WDOG_WCR_WDE	(1 << 0)
+#else
+#define WDOG_WCR	0x00 /* Watchdog Control Register */
+#define WDOG_WSR	0x02 /* Watchdog Service Register */
+#define WDOG_WSTR	0x04 /* Watchdog Status Register  */
+#define WDOG_WCR_WDE	(1 << 2)
+#endif
+
+/*
  * Reset the cpu by setting up the watchdog timer and let it time out
  */
 void __noreturn reset_cpu (unsigned long ignored)
 {
 	/* Disable watchdog and set Time-Out field to 0 */
-	WCR = 0x0000;
+	writew(0x0, IMX_WDT_BASE + WDOG_WCR);
 
 	/* Write Service Sequence */
-	WSR = 0x5555;
-	WSR = 0xAAAA;
+	writew(0x5555, IMX_WDT_BASE + WDOG_WSR);
+	writew(0xaaaa, IMX_WDT_BASE + WDOG_WSR);
 
 	/* Enable watchdog */
-	WCR = WCR_WDE;
+	writew(WDOG_WCR_WDE, IMX_WDT_BASE + WDOG_WCR);
 
 	while (1);
 	/*NOTREACHED*/
diff --git a/arch/arm/mach-imx/include/mach/imx1-regs.h b/arch/arm/mach-imx/include/mach/imx1-regs.h
index 0d6fd92..f940cdb 100644
--- a/arch/arm/mach-imx/include/mach/imx1-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx1-regs.h
@@ -40,14 +40,6 @@
 #define IMX_AITC_BASE              (0x23000 + IMX_IO_BASE)
 #define IMX_CSI_BASE               (0x24000 + IMX_IO_BASE)
 
-/* Watchdog Registers*/
-#define WCR  __REG(IMX_WDT_BASE + 0x00) /* Watchdog Control Register */
-#define WSR  __REG(IMX_WDT_BASE + 0x04) /* Watchdog Service Register */
-#define WSTR __REG(IMX_WDT_BASE + 0x08) /* Watchdog Status Register  */
-
-/* important definition of some bits of WCR */
-#define WCR_WDE 0x01
-
 /* SYSCTRL Registers */
 #define SIDR   __REG(IMX_SYSCTRL_BASE + 0x4) /* Silicon ID Register		    */
 #define FMCR   __REG(IMX_SYSCTRL_BASE + 0x8) /* Function Multiplex Control Register */
diff --git a/arch/arm/mach-imx/include/mach/imx21-regs.h b/arch/arm/mach-imx/include/mach/imx21-regs.h
index 6d64b81..a2c4d03 100644
--- a/arch/arm/mach-imx/include/mach/imx21-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx21-regs.h
@@ -72,14 +72,6 @@
 #define CS5L __REG(IMX_EIM_BASE + 0x2C) /* Chip Select 5 Lower Register    */
 #define EIM  __REG(IMX_EIM_BASE + 0x30) /* EIM Configuration Register      */
 
-/* Watchdog Registers*/
-#define WCR  __REG16(IMX_WDT_BASE + 0x00) /* Watchdog Control Register */
-#define WSR  __REG16(IMX_WDT_BASE + 0x02) /* Watchdog Service Register */
-#define WRSR __REG16(IMX_WDT_BASE + 0x04) /* Watchdog Reset Status Register  */
-
-/* important definition of some bits of WCR */
-#define WCR_WDE 0x04
-
 /* PLL registers */
 #define CSCR		__REG(IMX_PLL_BASE + 0x00) /* Clock Source Control Register       */
 #define MPCTL0		__REG(IMX_PLL_BASE + 0x04) /* MCU PLL Control Register 0          */
diff --git a/arch/arm/mach-imx/include/mach/imx27-regs.h b/arch/arm/mach-imx/include/mach/imx27-regs.h
index f4354ba..0fa954d 100644
--- a/arch/arm/mach-imx/include/mach/imx27-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx27-regs.h
@@ -82,14 +82,6 @@
 
 #include "esdctl.h"
 
-/* Watchdog Registers*/
-#define WCR  __REG16(IMX_WDT_BASE + 0x00) /* Watchdog Control Register */
-#define WSR  __REG16(IMX_WDT_BASE + 0x02) /* Watchdog Service Register */
-#define WSTR __REG16(IMX_WDT_BASE + 0x04) /* Watchdog Status Register  */
-
-/* important definition of some bits of WCR */
-#define WCR_WDE 0x04
-
 /* PLL registers */
 #define CSCR		__REG(IMX_PLL_BASE + 0x00) /* Clock Source Control Register       */
 #define MPCTL0		__REG(IMX_PLL_BASE + 0x04) /* MCU PLL Control Register 0          */
diff --git a/arch/arm/mach-imx/include/mach/imx31-regs.h b/arch/arm/mach-imx/include/mach/imx31-regs.h
index d2304ec..536bf0d 100644
--- a/arch/arm/mach-imx/include/mach/imx31-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx31-regs.h
@@ -120,16 +120,6 @@
 #endif
 
 /*
- * Watchdog Registers
- */
-#define WCR  __REG16(IMX_WDT_BASE + 0x00) /* Watchdog Control Register */
-#define WSR  __REG16(IMX_WDT_BASE + 0x02) /* Watchdog Service Register */
-#define WSTR __REG16(IMX_WDT_BASE + 0x04) /* Watchdog Status Register  */
-
-/* important definition of some bits of WCR */
-#define WCR_WDE 0x04
-
-/*
  * Clock Controller Module (CCM)
  */
 #define IMX_CCM_BASE	0x53f80000
diff --git a/arch/arm/mach-imx/include/mach/imx35-regs.h b/arch/arm/mach-imx/include/mach/imx35-regs.h
index b2b360a..b0f6b82 100644
--- a/arch/arm/mach-imx/include/mach/imx35-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx35-regs.h
@@ -135,15 +135,5 @@
 #define TSTAT_CAPT     (1<<1)  /* Capture event */
 #define TSTAT_COMP     (1)     /* Compare event */
 
-/*
- * Watchdog Registers
- */
-#define WCR  __REG16(IMX_WDT_BASE + 0x00) /* Watchdog Control Register */
-#define WSR  __REG16(IMX_WDT_BASE + 0x02) /* Watchdog Service Register */
-#define WSTR __REG16(IMX_WDT_BASE + 0x04) /* Watchdog Status Register  */
-
-/* important definition of some bits of WCR */
-#define WCR_WDE 0x04
-
 #endif /* __ASM_ARCH_MX35_REGS_H */
 
diff --git a/arch/arm/mach-imx/include/mach/imx51-regs.h b/arch/arm/mach-imx/include/mach/imx51-regs.h
index f99285c..1719a78 100644
--- a/arch/arm/mach-imx/include/mach/imx51-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx51-regs.h
@@ -24,13 +24,6 @@
 #define TSTAT_CAPT	(1<<1)	/* Capture event */
 #define TSTAT_COMP	(1)	/* Compare event */
 
-#define WCR	__REG16(IMX_WDT_BASE + 0x00) /* Watchdog Control Register */
-#define WSR	__REG16(IMX_WDT_BASE + 0x02) /* Watchdog Service Register */
-#define WSTR	__REG16(IMX_WDT_BASE + 0x04) /* Watchdog Status Register  */
-
-/* important definition of some bits of WCR */
-#define WCR_WDE 0x04
-
 #define MX51_IROM_BASE_ADDR	0x0
 
 /*
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
