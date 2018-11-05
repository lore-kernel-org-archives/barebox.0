Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gJh9z-0000Ox-23
 for barebox@lists.infradead.org; Mon, 05 Nov 2018 15:51:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Nov 2018 16:51:06 +0100
Message-Id: <20181105155113.3434-16-s.hauer@pengutronix.de>
In-Reply-To: <20181105155113.3434-1-s.hauer@pengutronix.de>
References: <20181105155113.3434-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 15/22] ARM: at91rm9200 timer: Make system timer defines SoC
 specific
To: Barebox List <barebox@lists.infradead.org>

- rename at91_st.h to at91rm9200_st.h
- rename prefix from AT91_ to AT91RM9200_
- remove register offset from System timer defines

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-at91/at91rm9200_time.c          | 14 +++---
 arch/arm/mach-at91/include/mach/at91_st.h     | 49 -------------------
 .../mach-at91/include/mach/at91rm9200_st.h    | 49 +++++++++++++++++++
 3 files changed, 57 insertions(+), 55 deletions(-)
 delete mode 100644 arch/arm/mach-at91/include/mach/at91_st.h
 create mode 100644 arch/arm/mach-at91/include/mach/at91rm9200_st.h

diff --git a/arch/arm/mach-at91/at91rm9200_time.c b/arch/arm/mach-at91/at91rm9200_time.c
index 259fdd508d..ef85502f5e 100644
--- a/arch/arm/mach-at91/at91rm9200_time.c
+++ b/arch/arm/mach-at91/at91rm9200_time.c
@@ -30,10 +30,12 @@
 #include <clock.h>
 #include <restart.h>
 #include <mach/hardware.h>
-#include <mach/at91_st.h>
+#include <mach/at91rm9200_st.h>
 #include <mach/io.h>
 #include <io.h>
 
+static void __iomem *st = IOMEM(AT91RM9200_BASE_ST);
+
 /*
  * The ST_CRTR is updated asynchronously to the master clock ... but
  * the updates as seen by the CPU don't seem to be strictly monotonic.
@@ -43,9 +45,9 @@ uint64_t at91rm9200_clocksource_read(void)
 {
 	unsigned long x1, x2;
 
-	x1 = at91_sys_read(AT91_ST_CRTR);
+	x1 = readl(st + AT91RM9200_ST_CRTR);
 	do {
-		x2 = at91_sys_read(AT91_ST_CRTR);
+		x2 = readl(st + AT91RM9200_ST_CRTR);
 		if (x1 == x2)
 			break;
 		x1 = x2;
@@ -65,7 +67,7 @@ static int clocksource_init (void)
 	 * directly for the clocksource and all clockevents, after adjusting
 	 * its prescaler from the 1 Hz default.
 	 */
-	at91_sys_write(AT91_ST_RTMR, 1);
+	writel(1, st + AT91RM9200_ST_RTMR);
 
 	cs.mult = clocksource_hz2mult(AT91_SLOW_CLOCK, cs.shift);
 
@@ -81,8 +83,8 @@ static void __noreturn at91rm9200_restart_soc(struct restart_handler *rst)
 	/*
 	 * Perform a hardware reset with the use of the Watchdog timer.
 	 */
-	at91_sys_write(AT91_ST_WDMR, AT91_ST_RSTEN | AT91_ST_EXTEN | 1);
-	at91_sys_write(AT91_ST_CR, AT91_ST_WDRST);
+	writel(AT91RM9200_ST_RSTEN | AT91RM9200_ST_EXTEN | 1, st + AT91RM9200_ST_WDMR);
+	writel(AT91RM9200_ST_WDRST, st + AT91RM9200_ST_CR);
 
 	/* Not reached */
 	hang();
diff --git a/arch/arm/mach-at91/include/mach/at91_st.h b/arch/arm/mach-at91/include/mach/at91_st.h
deleted file mode 100644
index 8847173e41..0000000000
--- a/arch/arm/mach-at91/include/mach/at91_st.h
+++ /dev/null
@@ -1,49 +0,0 @@
-/*
- * arch/arm/mach-at91/include/mach/at91_st.h
- *
- * Copyright (C) 2005 Ivan Kokshaysky
- * Copyright (C) SAN People
- *
- * System Timer (ST) - System peripherals registers.
- * Based on AT91RM9200 datasheet revision E.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- */
-
-#ifndef AT91_ST_H
-#define AT91_ST_H
-
-#define	AT91_ST_CR		(AT91_ST + 0x00)	/* Control Register */
-#define 	AT91_ST_WDRST		(1 << 0)		/* Watchdog Timer Restart */
-
-#define	AT91_ST_PIMR		(AT91_ST + 0x04)	/* Period Interval Mode Register */
-#define		AT91_ST_PIV		(0xffff <<  0)		/* Period Interval Value */
-
-#define	AT91_ST_WDMR		(AT91_ST + 0x08)	/* Watchdog Mode Register */
-#define		AT91_ST_WDV		(0xffff <<  0)		/* Watchdog Counter Value */
-#define		AT91_ST_RSTEN		(1	<< 16)		/* Reset Enable */
-#define		AT91_ST_EXTEN		(1	<< 17)		/* External Signal Assertion Enable */
-
-#define	AT91_ST_RTMR		(AT91_ST + 0x0c)	/* Real-time Mode Register */
-#define		AT91_ST_RTPRES		(0xffff <<  0)		/* Real-time Prescalar Value */
-
-#define	AT91_ST_SR		(AT91_ST + 0x10)	/* Status Register */
-#define		AT91_ST_PITS		(1 << 0)		/* Period Interval Timer Status */
-#define		AT91_ST_WDOVF		(1 << 1) 		/* Watchdog Overflow */
-#define		AT91_ST_RTTINC		(1 << 2) 		/* Real-time Timer Increment */
-#define		AT91_ST_ALMS		(1 << 3) 		/* Alarm Status */
-
-#define	AT91_ST_IER		(AT91_ST + 0x14)	/* Interrupt Enable Register */
-#define	AT91_ST_IDR		(AT91_ST + 0x18)	/* Interrupt Disable Register */
-#define	AT91_ST_IMR		(AT91_ST + 0x1c)	/* Interrupt Mask Register */
-
-#define	AT91_ST_RTAR		(AT91_ST + 0x20)	/* Real-time Alarm Register */
-#define		AT91_ST_ALMV		(0xfffff << 0)		/* Alarm Value */
-
-#define	AT91_ST_CRTR		(AT91_ST + 0x24)	/* Current Real-time Register */
-#define		AT91_ST_CRTV		(0xfffff << 0)		/* Current Real-Time Value */
-
-#endif
diff --git a/arch/arm/mach-at91/include/mach/at91rm9200_st.h b/arch/arm/mach-at91/include/mach/at91rm9200_st.h
new file mode 100644
index 0000000000..bd676a7081
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/at91rm9200_st.h
@@ -0,0 +1,49 @@
+/*
+ * arch/arm/mach-at91/include/mach/at91_st.h
+ *
+ * Copyright (C) 2005 Ivan Kokshaysky
+ * Copyright (C) SAN People
+ *
+ * System Timer (ST) - System peripherals registers.
+ * Based on AT91RM9200 datasheet revision E.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
+#ifndef AT91RM9200_ST_H
+#define AT91RM9200_ST_H
+
+#define	AT91RM9200_ST_CR		(0x00)	/* Control Register */
+#define 	AT91RM9200_ST_WDRST		(1 << 0)		/* Watchdog Timer Restart */
+
+#define	AT91RM9200_ST_PIMR		(0x04)	/* Period Interval Mode Register */
+#define		AT91RM9200_ST_PIV		(0xffff <<  0)		/* Period Interval Value */
+
+#define	AT91RM9200_ST_WDMR		(0x08)	/* Watchdog Mode Register */
+#define		AT91RM9200_ST_WDV		(0xffff <<  0)		/* Watchdog Counter Value */
+#define		AT91RM9200_ST_RSTEN		(1	<< 16)		/* Reset Enable */
+#define		AT91RM9200_ST_EXTEN		(1	<< 17)		/* External Signal Assertion Enable */
+
+#define	AT91RM9200_ST_RTMR		(0x0c)	/* Real-time Mode Register */
+#define		AT91RM9200_ST_RTPRES		(0xffff <<  0)		/* Real-time Prescalar Value */
+
+#define	AT91RM9200_ST_SR		(0x10)	/* Status Register */
+#define		AT91RM9200_ST_PITS		(1 << 0)		/* Period Interval Timer Status */
+#define		AT91RM9200_ST_WDOVF		(1 << 1) 		/* Watchdog Overflow */
+#define		AT91RM9200_ST_RTTINC		(1 << 2) 		/* Real-time Timer Increment */
+#define		AT91RM9200_ST_ALMS		(1 << 3) 		/* Alarm Status */
+
+#define	AT91RM9200_ST_IER		(0x14)	/* Interrupt Enable Register */
+#define	AT91RM9200_ST_IDR		(0x18)	/* Interrupt Disable Register */
+#define	AT91RM9200_ST_IMR		(0x1c)	/* Interrupt Mask Register */
+
+#define	AT91RM9200_ST_RTAR		(0x20)	/* Real-time Alarm Register */
+#define		AT91RM9200_ST_ALMV		(0xfffff << 0)		/* Alarm Value */
+
+#define	AT91RM9200_ST_CRTR		(0x24)	/* Current Real-time Register */
+#define		AT91RM9200_ST_CRTV		(0xfffff << 0)		/* Current Real-Time Value */
+
+#endif
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
