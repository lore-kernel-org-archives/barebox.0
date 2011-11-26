Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RUOmL-00010K-2t
 for barebox@lists.infradead.org; Sat, 26 Nov 2011 20:23:22 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1RUOmA-0004ry-4i
 for barebox@lists.infradead.org; Sat, 26 Nov 2011 21:23:06 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1RUOm9-00084s-8x
 for barebox@lists.infradead.org; Sat, 26 Nov 2011 21:23:05 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sat, 26 Nov 2011 21:22:56 +0100
Message-Id: <1322338981-30978-10-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1322338981-30978-1-git-send-email-jbe@pengutronix.de>
References: <1322338981-30978-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 09/14] MACH SAMSUNG/S3C: Rename register macros to reflect the
 MACH they are valid for
To: barebox@lists.infradead.org

Most members of the S3Cxxxx family share similar timer units. But they are
not really register compatible. To reflect this, use a separate name space for
the S3C family.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/mach-samsung/include/mach/s3c-iomap.h |   20 +------------
 arch/arm/mach-samsung/include/mach/s3c-timer.h |   36 ++++++++++++++++++++++++
 arch/arm/mach-samsung/s3c-timer.c              |   17 ++++++-----
 3 files changed, 46 insertions(+), 27 deletions(-)
 create mode 100644 arch/arm/mach-samsung/include/mach/s3c-timer.h

diff --git a/arch/arm/mach-samsung/include/mach/s3c-iomap.h b/arch/arm/mach-samsung/include/mach/s3c-iomap.h
index 7cedf6a..807660a 100644
--- a/arch/arm/mach-samsung/include/mach/s3c-iomap.h
+++ b/arch/arm/mach-samsung/include/mach/s3c-iomap.h
@@ -29,7 +29,7 @@
 #define S3C2410_LCD_BASE		0x4D000000
 #define S3C24X0_NAND_BASE		0x4E000000
 #define S3C24X0_UART_BASE		0x50000000
-#define S3C24X0_TIMER_BASE		0x51000000
+#define S3C_TIMER_BASE			0x51000000
 #define S3C2410_USB_DEVICE_BASE		0x52000140
 #define S3C24X0_WATCHDOG_BASE		0x53000000
 #define S3C2410_I2C_BASE		0x54000000
@@ -40,24 +40,6 @@
 #define S3C2410_SPI_BASE		0x59000000
 #define S3C2410_SDI_BASE		0x5A000000
 
-/* Timer (direct access) */
-#define TCFG0 (S3C24X0_TIMER_BASE + 0x00)
-#define TCFG1 (S3C24X0_TIMER_BASE + 0x04)
-#define TCON (S3C24X0_TIMER_BASE + 0x08)
-#define TCNTB0 (S3C24X0_TIMER_BASE + 0x0c)
-#define TCMPB0 (S3C24X0_TIMER_BASE + 0x10)
-#define TCNTO0 (S3C24X0_TIMER_BASE + 0x14)
-#define TCNTB1 (S3C24X0_TIMER_BASE + 0x18)
-#define TCMPB1 (S3C24X0_TIMER_BASE + 0x1c)
-#define TCNTO1 (S3C24X0_TIMER_BASE + 0x20)
-#define TCNTB2 (S3C24X0_TIMER_BASE + 0x24)
-#define TCMPB2 (S3C24X0_TIMER_BASE + 0x28)
-#define TCNTO2 (S3C24X0_TIMER_BASE + 0x2c)
-#define TCNTB3 (S3C24X0_TIMER_BASE + 0x30)
-#define TCMPB3 (S3C24X0_TIMER_BASE + 0x34)
-#define TCNTO3 (S3C24X0_TIMER_BASE + 0x38)
-#define TCNTB4 (S3C24X0_TIMER_BASE + 0x3c)
-#define TCNTO4 (S3C24X0_TIMER_BASE + 0x40)
 
 /* Watchdog (direct access) */
 #define WTCON (S3C24X0_WATCHDOG_BASE)
diff --git a/arch/arm/mach-samsung/include/mach/s3c-timer.h b/arch/arm/mach-samsung/include/mach/s3c-timer.h
new file mode 100644
index 0000000..5201fc4
--- /dev/null
+++ b/arch/arm/mach-samsung/include/mach/s3c-timer.h
@@ -0,0 +1,36 @@
+/*
+ * Copyright (C) 2011 Juergen Beisert, Pengutronix
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#ifndef __MACH_S3C_TIMER_H
+# define __MACH_S3C_TIMER_H
+
+#define S3C_TCFG0 (S3C_TIMER_BASE + 0x00)
+#define S3C_TCFG1 (S3C_TIMER_BASE + 0x04)
+#define S3C_TCON (S3C_TIMER_BASE + 0x08)
+#define S3C_TCNTB0 (S3C_TIMER_BASE + 0x0c)
+#define S3C_TCMPB0 (S3C_TIMER_BASE + 0x10)
+#define S3C_TCNTO0 (S3C_TIMER_BASE + 0x14)
+#define S3C_TCNTB1 (S3C_TIMER_BASE + 0x18)
+#define S3C_TCMPB1 (S3C_TIMER_BASE + 0x1c)
+#define S3C_TCNTO1 (S3C_TIMER_BASE + 0x20)
+#define S3C_TCNTB2 (S3C_TIMER_BASE + 0x24)
+#define S3C_TCMPB2 (S3C_TIMER_BASE + 0x28)
+#define S3C_TCNTO2 (S3C_TIMER_BASE + 0x2c)
+#define S3C_TCNTB3 (S3C_TIMER_BASE + 0x30)
+#define S3C_TCMPB3 (S3C_TIMER_BASE + 0x34)
+#define S3C_TCNTO3 (S3C_TIMER_BASE + 0x38)
+#define S3C_TCNTB4 (S3C_TIMER_BASE + 0x3c)
+#define S3C_TCNTO4 (S3C_TIMER_BASE + 0x40)
+
+#endif /* __MACH_S3C_TIMER_H */
diff --git a/arch/arm/mach-samsung/s3c-timer.c b/arch/arm/mach-samsung/s3c-timer.c
index 2b0b38a..a3ce4a2 100644
--- a/arch/arm/mach-samsung/s3c-timer.c
+++ b/arch/arm/mach-samsung/s3c-timer.c
@@ -20,11 +20,12 @@
 #include <io.h>
 #include <mach/s3c-iomap.h>
 #include <mach/s3c-generic.h>
+#include <mach/s3c-timer.h>
 
 static uint64_t s3c24xx_clocksource_read(void)
 {
 	/* note: its a down counter */
-	return 0xFFFF - readw(TCNTO4);
+	return 0xFFFF - readw(S3C_TCNTO4);
 }
 
 static struct clocksource cs = {
@@ -37,15 +38,15 @@ static int clocksource_init(void)
 {
 	uint32_t p_clk = s3c_get_pclk();
 
-	writel(0x00000000, TCON);	/* stop all timers */
-	writel(0x00ffffff, TCFG0);	/* PCLK / (255 + 1) for timer 4 */
-	writel(0x00030000, TCFG1);	/* /16 */
+	writel(0x00000000, S3C_TCON);	/* stop all timers */
+	writel(0x00ffffff, S3C_TCFG0);	/* PCLK / (255 + 1) for timer 4 */
+	writel(0x00030000, S3C_TCFG1);	/* /16 */
 
-	writew(0xffff, TCNTB4);		/* reload value is TOP */
+	writew(0xffff, S3C_TCNTB4);	/* reload value is TOP */
 
-	writel(0x00600000, TCON);	/* force a first reload */
-	writel(0x00400000, TCON);
-	writel(0x00500000, TCON);	/* enable timer 4 with auto reload */
+	writel(0x00600000, S3C_TCON);	/* force a first reload */
+	writel(0x00400000, S3C_TCON);
+	writel(0x00500000, S3C_TCON);	/* enable timer 4 with auto reload */
 
 	cs.mult = clocksource_hz2mult(p_clk / ((255 + 1) * 16), cs.shift);
 	init_clock(&cs);
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
