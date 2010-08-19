Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 70.mail-out.ovh.net ([91.121.185.63])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OlvGG-0004mJ-6K
	for barebox@lists.infradead.org; Thu, 19 Aug 2010 02:53:50 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 19 Aug 2010 04:48:28 +0200
Message-Id: <1282186110-32738-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20100819024811.GG454@game.jcrosoft.org>
References: <20100819024811.GG454@game.jcrosoft.org>
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
Subject: [PATCH 4/6] at91: rename clocksource.c -> at91sam926x_time.c
To: barebox@lists.infradead.org

preparation to move the rm9200 to the same api as other at91

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/Makefile           |    8 ++--
 arch/arm/mach-at91/at91sam926x_time.c |   85 +++++++++++++++++++++++++++++++++
 arch/arm/mach-at91/clocksource.c      |   85 ---------------------------------
 3 files changed, 89 insertions(+), 89 deletions(-)
 create mode 100644 arch/arm/mach-at91/at91sam926x_time.c
 delete mode 100644 arch/arm/mach-at91/clocksource.c

diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 65a2657..d711f6a 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -1,8 +1,8 @@
-obj-y += clock.o clocksource.o gpio.o
+obj-y += clock.o gpio.o
 
 obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += lowlevel_init.o
 
 # CPU-specific support
-obj-$(CONFIG_ARCH_AT91SAM9260) += at91sam9260.o at91sam9260_devices.o sam9_smc.o
-obj-$(CONFIG_ARCH_AT91SAM9261) += at91sam9261.o at91sam9261_devices.o sam9_smc.o
-obj-$(CONFIG_ARCH_AT91SAM9263) += at91sam9263.o at91sam9263_devices.o sam9_smc.o
+obj-$(CONFIG_ARCH_AT91SAM9260) += at91sam9260.o at91sam926x_time.o at91sam9260_devices.o sam9_smc.o
+obj-$(CONFIG_ARCH_AT91SAM9261) += at91sam9261.o at91sam926x_time.o at91sam9261_devices.o sam9_smc.o
+obj-$(CONFIG_ARCH_AT91SAM9263) += at91sam9263.o at91sam926x_time.o at91sam9263_devices.o sam9_smc.o
diff --git a/arch/arm/mach-at91/at91sam926x_time.c b/arch/arm/mach-at91/at91sam926x_time.c
new file mode 100644
index 0000000..84df1a1
--- /dev/null
+++ b/arch/arm/mach-at91/at91sam926x_time.c
@@ -0,0 +1,85 @@
+/*
+ * (C) Copyright 2002
+ * Sysgo Real-Time Solutions, GmbH <www.elinos.com>
+ * Marius Groeger <mgroeger@sysgo.de>
+ *
+ * (C) Copyright 2002
+ * Sysgo Real-Time Solutions, GmbH <www.elinos.com>
+ * Alex Zuepke <azu@sysgo.de>
+ *
+ * (C) Copyright 2002
+ * Gary Jennejohn, DENX Software Engineering, <gj@denx.de>
+ *
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
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <common.h>
+#include <init.h>
+#include <clock.h>
+#include <asm/hardware.h>
+#include <mach/at91_pit.h>
+#include <mach/at91_pmc.h>
+#include <mach/at91_rstc.h>
+#include <mach/io.h>
+#include <asm/io.h>
+
+uint64_t at91sam9_clocksource_read(void)
+{
+	return at91_sys_read(AT91_PIT_PIIR);
+}
+
+static struct clocksource cs = {
+	.read	= at91sam9_clocksource_read,
+	.mask	= 0xffffffff,
+	.shift	= 10,
+};
+
+static int clocksource_init (void)
+{
+	/*
+	 * Enable PITC Clock
+	 * The clock is already enabled for system controller in boot
+	 */
+	at91_sys_write(AT91_PMC_PCER, 1 << AT91_ID_SYS);
+
+	/* Enable PITC */
+	at91_sys_write(AT91_PIT_MR, 0xfffff | AT91_PIT_PITEN);
+
+	cs.mult = clocksource_hz2mult(1000000 * 6, cs.shift);
+
+	init_clock(&cs);
+
+	return 0;
+}
+
+core_initcall(clocksource_init);
+
+/*
+ * Reset the cpu through the reset controller
+ */
+void __noreturn reset_cpu (unsigned long ignored)
+{
+	at91_sys_write(AT91_RSTC_CR, AT91_RSTC_KEY |
+				     AT91_RSTC_PROCRST |
+				     AT91_RSTC_PERRST);
+
+	/* Not reached */
+	while (1);
+}
+EXPORT_SYMBOL(reset_cpu);
diff --git a/arch/arm/mach-at91/clocksource.c b/arch/arm/mach-at91/clocksource.c
deleted file mode 100644
index 84df1a1..0000000
--- a/arch/arm/mach-at91/clocksource.c
+++ /dev/null
@@ -1,85 +0,0 @@
-/*
- * (C) Copyright 2002
- * Sysgo Real-Time Solutions, GmbH <www.elinos.com>
- * Marius Groeger <mgroeger@sysgo.de>
- *
- * (C) Copyright 2002
- * Sysgo Real-Time Solutions, GmbH <www.elinos.com>
- * Alex Zuepke <azu@sysgo.de>
- *
- * (C) Copyright 2002
- * Gary Jennejohn, DENX Software Engineering, <gj@denx.de>
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
- */
-
-#include <common.h>
-#include <init.h>
-#include <clock.h>
-#include <asm/hardware.h>
-#include <mach/at91_pit.h>
-#include <mach/at91_pmc.h>
-#include <mach/at91_rstc.h>
-#include <mach/io.h>
-#include <asm/io.h>
-
-uint64_t at91sam9_clocksource_read(void)
-{
-	return at91_sys_read(AT91_PIT_PIIR);
-}
-
-static struct clocksource cs = {
-	.read	= at91sam9_clocksource_read,
-	.mask	= 0xffffffff,
-	.shift	= 10,
-};
-
-static int clocksource_init (void)
-{
-	/*
-	 * Enable PITC Clock
-	 * The clock is already enabled for system controller in boot
-	 */
-	at91_sys_write(AT91_PMC_PCER, 1 << AT91_ID_SYS);
-
-	/* Enable PITC */
-	at91_sys_write(AT91_PIT_MR, 0xfffff | AT91_PIT_PITEN);
-
-	cs.mult = clocksource_hz2mult(1000000 * 6, cs.shift);
-
-	init_clock(&cs);
-
-	return 0;
-}
-
-core_initcall(clocksource_init);
-
-/*
- * Reset the cpu through the reset controller
- */
-void __noreturn reset_cpu (unsigned long ignored)
-{
-	at91_sys_write(AT91_RSTC_CR, AT91_RSTC_KEY |
-				     AT91_RSTC_PROCRST |
-				     AT91_RSTC_PERRST);
-
-	/* Not reached */
-	while (1);
-}
-EXPORT_SYMBOL(reset_cpu);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
