Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P7t3y-0000kB-SJ
	for barebox@lists.infradead.org; Mon, 18 Oct 2010 16:59:56 +0000
Received: from gallifrey.ext.pengutronix.de
	([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1P7t3w-00021V-KM
	for barebox@lists.infradead.org; Mon, 18 Oct 2010 18:59:53 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 18 Oct 2010 18:59:51 +0200
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201010181859.51317.jbe@pengutronix.de>
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
Subject: [RFC] S3C24xx: Enable only the clocks of used units
To: barebox@lists.infradead.org

From: Juergen Beisert <juergen@kreuzholzen.de>
Subject: [RFC] S3C24xx: Enable only the clocks of used units

This patch disables most of the processor's clocks and enable them on demand
only.

Signed-off-by: Juergen Beisert <juergen@kreuzholzen.de>

---
 arch/arm/mach-s3c24xx/generic.c                     |   22 +++++++++
 arch/arm/mach-s3c24xx/include/mach/s3c24x0-clocks.h |   46 ++++++++++++++++++++
 arch/arm/mach-s3c24xx/lowlevel-init.S               |   12 ++++-
 drivers/mtd/nand/nand_s3c2410.c                     |    3 +
 drivers/serial/serial_s3c24x0.c                     |    3 +
 5 files changed, 84 insertions(+), 2 deletions(-)

Index: barebox-2010.10.0/arch/arm/mach-s3c24xx/generic.c
===================================================================
--- barebox-2010.10.0.orig/arch/arm/mach-s3c24xx/generic.c
+++ barebox-2010.10.0/arch/arm/mach-s3c24xx/generic.c
@@ -28,6 +28,7 @@
 #include <clock.h>
 #include <asm/io.h>
 #include <mach/s3c24x0-iomap.h>
+#include <mach/s3c24x0-clocks.h>
 
 #define LOCKTIME (S3C24X0_CLOCK_POWER_BASE)
 #define MPLLCON (S3C24X0_CLOCK_POWER_BASE + 0x4)
@@ -202,6 +203,25 @@ unsigned s3c24x0_get_memory_size(void)
 }
 
 /**
+ * Enable or disable unit's clock
+ * @param unit Unit to manipulate (refer CLK_* macros)
+ * @param state 1 for enable, 0 for disable
+ */
+void s3c244x_mod_clock(unsigned unit, int state)
+{
+	uint32_t clkcon;
+
+	clkcon = readl(CLKCON);
+
+	if (state != 0)
+		clkcon |= unit;
+	else
+		clkcon &= ~unit;
+
+	writel(clkcon, CLKCON);
+}
+
+/**
  * Show the user the current clock settings
  */
 int s3c24xx_dump_clocks(void)
@@ -236,6 +256,8 @@ static int clocksource_init (void)
 {
 	unsigned p_clk = s3c24xx_get_pclk();
 
+	s3c244x_mod_clock(CLK_PWMTIMER, 1);
+
 	writel(0x00000000, TCON);	/* stop all timers */
 	writel(0x00ffffff, TCFG0);	/* PCLK / (255 + 1) for timer 4 */
 	writel(0x00030000, TCFG1);	/* /16 */
Index: barebox-2010.10.0/arch/arm/mach-s3c24xx/include/mach/s3c24x0-clocks.h
===================================================================
--- /dev/null
+++ barebox-2010.10.0/arch/arm/mach-s3c24xx/include/mach/s3c24x0-clocks.h
@@ -0,0 +1,46 @@
+/*
+ * Copyright (C) 2010 Juergen Beisert
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
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#ifndef _MACH_CLOCKS_H_
+# define _MACH_CLOCKS_H_
+
+/* Bits in register CLKCON to control unit's clock */
+#define CLK_AC97 (1 << 20)
+#define CLK_CAMERA (1 << 19)
+#define CLK_SPI (1 << 18)
+#define CLK_IIS (1 << 17)
+#define CLK_IIC (1 << 16)
+#define CLK_ADC (1 << 15)
+#define CLK_RTC (1 << 14)
+#define CLK_GPIO (1 << 13)
+#define CLK_UART2 (1 << 12)
+#define CLK_UART1 (1 << 11)
+#define CLK_UART0 (1 << 10)
+#define CLK_SDI (1 << 9)
+#define CLK_PWMTIMER (1 << 8)
+#define CLK_USBDEV (1 << 7)
+#define CLK_USBHOST (1 << 6)
+#define CLK_LCDC (1 << 5)
+#define CLK_NAND (1 << 4)
+
+#ifndef __ASSEMBLY__
+void s3c244x_mod_clock(unsigned, int);
+#endif
+
+#endif /* _MACH_CLOCKS_H_ */
Index: barebox-2010.10.0/arch/arm/mach-s3c24xx/lowlevel-init.S
===================================================================
--- barebox-2010.10.0.orig/arch/arm/mach-s3c24xx/lowlevel-init.S
+++ barebox-2010.10.0/arch/arm/mach-s3c24xx/lowlevel-init.S
@@ -20,6 +20,7 @@
 
 #include <config.h>
 #include <mach/s3c24x0-iomap.h>
+#include <mach/s3c24x0-clocks.h>
 
 	.section ".text_bare_init.s3c24x0_disable_wd","ax"
 
@@ -83,8 +84,15 @@ s3c24x0_pll_init:
 	mov r1, #BOARD_SPECIFIC_CLKDIVN
 	str r1, [r0, #20]
 
-	/* enable all devices on this chip */
-	mov r1, #0xFFFFFFF0
+	/*
+	 * Disable the clocks for most devices on this chip.
+	 * They will be enabled again on demand
+	 */
+#ifdef CONFIG_S3C24XX_NAND_BOOT
+	ldr r1, =0x6010 /* (CLK_RTC | CLK_GPIO | CLK_NAND) */
+#else
+	mov r1, #0x6000 /* (CLK_RTC | CLK_GPIO) */
+#endif
 	str r1, [r0, #12]
 
 	/* ??????? */
Index: barebox-2010.10.0/drivers/mtd/nand/nand_s3c2410.c
===================================================================
--- barebox-2010.10.0.orig/drivers/mtd/nand/nand_s3c2410.c
+++ barebox-2010.10.0/drivers/mtd/nand/nand_s3c2410.c
@@ -32,6 +32,7 @@
 #include <linux/mtd/nand.h>
 #include <mach/s3c24xx-generic.h>
 #include <mach/s3c24x0-iomap.h>
+#include <mach/s3c24x0-clocks.h>
 #include <mach/s3c24x0-nand.h>
 #include <asm/io.h>
 #include <asm-generic/errno.h>
@@ -358,6 +359,8 @@ static int s3c24x0_nand_probe(struct dev
 	if (!host)
 		return -ENOMEM;
 
+	s3c244x_mod_clock(CLK_NAND, 1);
+
 	host->dev = dev;
 	host->base = dev->map_base;
 
Index: barebox-2010.10.0/drivers/serial/serial_s3c24x0.c
===================================================================
--- barebox-2010.10.0.orig/drivers/serial/serial_s3c24x0.c
+++ barebox-2010.10.0/drivers/serial/serial_s3c24x0.c
@@ -27,6 +27,7 @@
 #include <asm/io.h>
 #include <mach/s3c24xx-generic.h>
 #include <mach/s3c24x0-iomap.h>
+#include <mach/s3c24x0-clocks.h>
 
 /* Note: Offsets are for little endian access */
 #define ULCON 0x00		/* line control */
@@ -123,6 +124,8 @@ static int s3c24x0_serial_probe(struct d
 
 	cdev = malloc(sizeof(struct console_device));
 
+	s3c244x_mod_clock(CLK_UART0 | CLK_UART1 | CLK_UART2, 1);
+
 	dev->type_data = cdev;
 	cdev->dev = dev;
 	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
