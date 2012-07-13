Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Spl7A-0002en-VO
 for barebox@lists.infradead.org; Fri, 13 Jul 2012 19:01:46 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1Spl72-0008Er-RL
 for barebox@lists.infradead.org; Fri, 13 Jul 2012 21:01:12 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1Spl72-0005L3-N9
 for barebox@lists.infradead.org; Fri, 13 Jul 2012 21:01:12 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 13 Jul 2012 21:01:04 +0200
Message-Id: <1342206070-29698-13-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1342206070-29698-1-git-send-email-jbe@pengutronix.de>
References: <1342206070-29698-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 12/18] ARM/Samsung: add S3C6410 SoC iomap
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/mach-samsung/include/mach/s3c-iomap.h     |    3 ++
 arch/arm/mach-samsung/include/mach/s3c64xx-iomap.h |   44 ++++++++++++++++++++
 2 files changed, 47 insertions(+)
 create mode 100644 arch/arm/mach-samsung/include/mach/s3c64xx-iomap.h

diff --git a/arch/arm/mach-samsung/include/mach/s3c-iomap.h b/arch/arm/mach-samsung/include/mach/s3c-iomap.h
index d34ace4..09a6891 100644
--- a/arch/arm/mach-samsung/include/mach/s3c-iomap.h
+++ b/arch/arm/mach-samsung/include/mach/s3c-iomap.h
@@ -22,6 +22,9 @@
 #ifdef CONFIG_ARCH_S3C24xx
 # include <mach/s3c24xx-iomap.h>
 #endif
+#ifdef CONFIG_ARCH_S3C64xx
+# include <mach/s3c64xx-iomap.h>
+#endif
 #ifdef CONFIG_ARCH_S5PCxx
 # include <mach/s5pcxx-iomap.h>
 #endif
diff --git a/arch/arm/mach-samsung/include/mach/s3c64xx-iomap.h b/arch/arm/mach-samsung/include/mach/s3c64xx-iomap.h
new file mode 100644
index 0000000..267cd4f
--- /dev/null
+++ b/arch/arm/mach-samsung/include/mach/s3c64xx-iomap.h
@@ -0,0 +1,44 @@
+/*
+ * Copyright (C) 2012 Juergen Beisert
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
+/* S3C64xx device base addresses */
+# define S3C_SROM_SFR			0x70000000
+# define S3C_DRAMC			0x7e001000
+# define S3C_WATCHDOG_BASE		0x7e004000
+# define S3C_CLOCK_POWER_BASE		0x7e00f000
+# define S3C_UART_BASE			0x7f005000
+# define S3C_TIMER_BASE			0x7f006000
+# define S3C_GPIO_BASE			0x7f008000
+
+# define S3C_UART1_BASE (S3C_UART_BASE)
+# define S3C_UART1_SIZE 0x400
+# define S3C_UART2_BASE (S3C_UART_BASE + 0x400)
+# define S3C_UART2_SIZE 0x400
+# define S3C_UART3_BASE (S3C_UART_BASE + 0x800)
+# define S3C_UART3_SIZE 0x400
+# define S3C_UART4_BASE (S3C_UART_BASE + 0xc00)
+# define S3C_UART4_SIZE 0x400
+
+# define S3C_SDRAM_BASE 0x50000000
+# define S3C_SDRAM_END (S3C_SDRAM_BASE + 0x10000000)
+
+# define S3C_SROM_BW (S3C_SROM_SFR)
+# define S3C_SROM_BC0 (S3C_SROM_SFR + 4)
+
+# define S3C_CS0_BASE 0x10000000
+# define S3C_CS1_BASE 0x18000000
+# define S3C_CS2_BASE 0x20000000
+# define S3C_CS3_BASE 0x28000000
+# define S3C_CS4_BASE 0x30000000
+# define S3C_CS5_BASE 0x38000000
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
