Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RhgJS-0002mZ-3C
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 11:44:23 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1RhgJA-0002oB-4c
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 12:44:04 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1RhgJA-0002TE-1N
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 12:44:04 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon,  2 Jan 2012 12:43:56 +0100
Message-Id: <1325504642-9324-9-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1325504642-9324-1-git-send-email-jbe@pengutronix.de>
References: <1325504642-9324-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 08/14] MACH SAMSUNG/S3C: Separate the clocksource for the S3C
 family
To: barebox@lists.infradead.org

This patch just move the clocksource functions out of the generic.c source file
to handle it on a per CPU base later on.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/mach-samsung/Makefile    |    2 +-
 arch/arm/mach-samsung/generic.c   |   33 ----------------------
 arch/arm/mach-samsung/s3c-timer.c |   55 +++++++++++++++++++++++++++++++++++++
 3 files changed, 56 insertions(+), 34 deletions(-)
 create mode 100644 arch/arm/mach-samsung/s3c-timer.c

diff --git a/arch/arm/mach-samsung/Makefile b/arch/arm/mach-samsung/Makefile
index c590180..2ba5c3f 100644
--- a/arch/arm/mach-samsung/Makefile
+++ b/arch/arm/mach-samsung/Makefile
@@ -1,3 +1,3 @@
-obj-y += generic.o
+obj-y += s3c-timer.o generic.o
 obj-$(CONFIG_ARCH_S3C24xx) += gpio-s3c24x0.o s3c24xx-clocks.o
 obj-$(CONFIG_S3C24XX_LOW_LEVEL_INIT) += lowlevel-init.o
diff --git a/arch/arm/mach-samsung/generic.c b/arch/arm/mach-samsung/generic.c
index 3f6e801..83222e1 100644
--- a/arch/arm/mach-samsung/generic.c
+++ b/arch/arm/mach-samsung/generic.c
@@ -76,39 +76,6 @@ uint32_t s3c24x0_get_memory_size(void)
 	return size;
 }
 
-static uint64_t s3c24xx_clocksource_read(void)
-{
-	/* note: its a down counter */
-	return 0xFFFF - readw(TCNTO4);
-}
-
-static struct clocksource cs = {
-	.read	= s3c24xx_clocksource_read,
-	.mask	= CLOCKSOURCE_MASK(16),
-	.shift	= 10,
-};
-
-static int clocksource_init (void)
-{
-	uint32_t p_clk = s3c_get_pclk();
-
-	writel(0x00000000, TCON);	/* stop all timers */
-	writel(0x00ffffff, TCFG0);	/* PCLK / (255 + 1) for timer 4 */
-	writel(0x00030000, TCFG1);	/* /16 */
-
-	writew(0xffff, TCNTB4);		/* reload value is TOP */
-
-	writel(0x00600000, TCON);	/* force a first reload */
-	writel(0x00400000, TCON);
-	writel(0x00500000, TCON);	/* enable timer 4 with auto reload */
-
-	cs.mult = clocksource_hz2mult(p_clk / ((255 + 1) * 16), cs.shift);
-	init_clock(&cs);
-
-	return 0;
-}
-core_initcall(clocksource_init);
-
 void __noreturn reset_cpu(unsigned long addr)
 {
 	/* Disable watchdog */
diff --git a/arch/arm/mach-samsung/s3c-timer.c b/arch/arm/mach-samsung/s3c-timer.c
new file mode 100644
index 0000000..2b0b38a
--- /dev/null
+++ b/arch/arm/mach-samsung/s3c-timer.c
@@ -0,0 +1,55 @@
+/*
+ * See file CREDITS for list of people who contributed to this
+ * project.
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
+#include <config.h>
+#include <common.h>
+#include <init.h>
+#include <clock.h>
+#include <io.h>
+#include <mach/s3c-iomap.h>
+#include <mach/s3c-generic.h>
+
+static uint64_t s3c24xx_clocksource_read(void)
+{
+	/* note: its a down counter */
+	return 0xFFFF - readw(TCNTO4);
+}
+
+static struct clocksource cs = {
+	.read	= s3c24xx_clocksource_read,
+	.mask	= CLOCKSOURCE_MASK(16),
+	.shift	= 10,
+};
+
+static int clocksource_init(void)
+{
+	uint32_t p_clk = s3c_get_pclk();
+
+	writel(0x00000000, TCON);	/* stop all timers */
+	writel(0x00ffffff, TCFG0);	/* PCLK / (255 + 1) for timer 4 */
+	writel(0x00030000, TCFG1);	/* /16 */
+
+	writew(0xffff, TCNTB4);		/* reload value is TOP */
+
+	writel(0x00600000, TCON);	/* force a first reload */
+	writel(0x00400000, TCON);
+	writel(0x00500000, TCON);	/* enable timer 4 with auto reload */
+
+	cs.mult = clocksource_hz2mult(p_clk / ((255 + 1) * 16), cs.shift);
+	init_clock(&cs);
+
+	return 0;
+}
+core_initcall(clocksource_init);
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
