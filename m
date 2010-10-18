Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P7t1D-0000gs-Kx
	for barebox@lists.infradead.org; Mon, 18 Oct 2010 16:57:04 +0000
Received: from gallifrey.ext.pengutronix.de
	([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1P7t1B-0001q6-Pv
	for barebox@lists.infradead.org; Mon, 18 Oct 2010 18:57:01 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 18 Oct 2010 18:57:00 +0200
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201010181857.00515.jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] S3C24xx: Move register definitions into their user
To: barebox@lists.infradead.org

From: Juergen Beisert <juergen@kreuzholzen.de>
Subject: [PATCH] S3C24xx: Move register definitions into their user

Follow the other architectures and drivers defining their used registers only
locally.

Signed-off-by: Juergen Beisert <juergen@kreuzholzen.de>

---
 arch/arm/mach-s3c24xx/generic.c                    |   29 ++++++++++++++++++
 arch/arm/mach-s3c24xx/include/mach/s3c24x0-iomap.h |   33 ---------------------
 2 files changed, 29 insertions(+), 33 deletions(-)

Index: barebox-2010.10.0/arch/arm/mach-s3c24xx/generic.c
===================================================================
--- barebox-2010.10.0.orig/arch/arm/mach-s3c24xx/generic.c
+++ barebox-2010.10.0/arch/arm/mach-s3c24xx/generic.c
@@ -29,6 +29,35 @@
 #include <asm/io.h>
 #include <mach/s3c24x0-iomap.h>
 
+#define LOCKTIME (S3C24X0_CLOCK_POWER_BASE)
+#define MPLLCON (S3C24X0_CLOCK_POWER_BASE + 0x4)
+#define UPLLCON (S3C24X0_CLOCK_POWER_BASE + 0x8)
+#define CLKCON (S3C24X0_CLOCK_POWER_BASE + 0xc)
+#define CLKSLOW (S3C24X0_CLOCK_POWER_BASE + 0x10)
+#define CLKDIVN (S3C24X0_CLOCK_POWER_BASE + 0x14)
+
+#define TCFG0 (S3C24X0_TIMER_BASE + 0x00)
+#define TCFG1 (S3C24X0_TIMER_BASE + 0x04)
+#define TCON (S3C24X0_TIMER_BASE + 0x08)
+#define TCNTB0 (S3C24X0_TIMER_BASE + 0x0c)
+#define TCMPB0 (S3C24X0_TIMER_BASE + 0x10)
+#define TCNTO0 (S3C24X0_TIMER_BASE + 0x14)
+#define TCNTB1 (S3C24X0_TIMER_BASE + 0x18)
+#define TCMPB1 (S3C24X0_TIMER_BASE + 0x1c)
+#define TCNTO1 (S3C24X0_TIMER_BASE + 0x20)
+#define TCNTB2 (S3C24X0_TIMER_BASE + 0x24)
+#define TCMPB2 (S3C24X0_TIMER_BASE + 0x28)
+#define TCNTO2 (S3C24X0_TIMER_BASE + 0x2c)
+#define TCNTB3 (S3C24X0_TIMER_BASE + 0x30)
+#define TCMPB3 (S3C24X0_TIMER_BASE + 0x34)
+#define TCNTO3 (S3C24X0_TIMER_BASE + 0x38)
+#define TCNTB4 (S3C24X0_TIMER_BASE + 0x3c)
+#define TCNTO4 (S3C24X0_TIMER_BASE + 0x40)
+
+#define WTCON (S3C24X0_WATCHDOG_BASE)
+#define WTDAT (S3C24X0_WATCHDOG_BASE + 0x04)
+#define WTCNT (S3C24X0_WATCHDOG_BASE + 0x08)
+
 /**
  * Calculate the current M-PLL clock.
  * @return Current frequency in Hz
Index: barebox-2010.10.0/arch/arm/mach-s3c24xx/include/mach/s3c24x0-iomap.h
===================================================================
--- barebox-2010.10.0.orig/arch/arm/mach-s3c24xx/include/mach/s3c24x0-iomap.h
+++ barebox-2010.10.0/arch/arm/mach-s3c24xx/include/mach/s3c24x0-iomap.h
@@ -40,39 +40,6 @@
 #define S3C2410_SPI_BASE		0x59000000
 #define S3C2410_SDI_BASE		0x5A000000
 
-/* Clock control (direct access) */
-
-#define LOCKTIME (S3C24X0_CLOCK_POWER_BASE)
-#define MPLLCON (S3C24X0_CLOCK_POWER_BASE + 0x4)
-#define UPLLCON (S3C24X0_CLOCK_POWER_BASE + 0x8)
-#define CLKCON (S3C24X0_CLOCK_POWER_BASE + 0xc)
-#define CLKSLOW (S3C24X0_CLOCK_POWER_BASE + 0x10)
-#define CLKDIVN (S3C24X0_CLOCK_POWER_BASE + 0x14)
-
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
-
-/* Watchdog (direct access) */
-#define WTCON (S3C24X0_WATCHDOG_BASE)
-#define WTDAT (S3C24X0_WATCHDOG_BASE + 0x04)
-#define WTCNT (S3C24X0_WATCHDOG_BASE + 0x08)
-
 /*
  * if we are booting from NAND, its internal SRAM occures at
  * a different address than without this feature

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
