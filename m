Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og112.obsmtp.com ([64.18.0.24])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RpfZm-0004iM-LP
 for barebox@lists.infradead.org; Tue, 24 Jan 2012 12:34:15 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Tue, 24 Jan 2012 12:33:56 +0000
Message-Id: <1327408443-3519-3-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1327408443-3519-1-git-send-email-renaud.barbier@ge.com>
References: <1327408443-3519-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 2/9] Define clock source shift and mask.
To: barebox@lists.infradead.org

* Define clock source shift and mask in mach/clock_config.h.
* Rename ppc/lib/time.c to ppc/lib/time-mpc5200.c.
* Update lib/Makefile to reflect change.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/lib/Makefile                             |    2 +-
 arch/ppc/lib/time-mpc5200.c                       |   75 +++++++++++++++++++++
 arch/ppc/lib/time.c                               |   74 --------------------
 arch/ppc/mach-mpc5xxx/include/mach/clock_config.h |    7 ++
 4 files changed, 83 insertions(+), 75 deletions(-)
 create mode 100644 arch/ppc/lib/time-mpc5200.c
 delete mode 100644 arch/ppc/lib/time.c
 create mode 100644 arch/ppc/mach-mpc5xxx/include/mach/clock_config.h

diff --git a/arch/ppc/lib/Makefile b/arch/ppc/lib/Makefile
index b611ddf..2af000a 100644
--- a/arch/ppc/lib/Makefile
+++ b/arch/ppc/lib/Makefile
@@ -4,7 +4,7 @@ obj-y += extable.o
 obj-y += kgdb.o
 obj-y += ppcstring.o
 obj-y += ticks.o
-obj-y += time.o
+obj-$(CONFIG_MPC5200) += time-mpc5200.o
 obj-y += misc.o
 obj-$(CONFIG_CMD_BOOTM) += ppclinux.o
 obj-y += board_data.o
diff --git a/arch/ppc/lib/time-mpc5200.c b/arch/ppc/lib/time-mpc5200.c
new file mode 100644
index 0000000..11f08a7
--- /dev/null
+++ b/arch/ppc/lib/time-mpc5200.c
@@ -0,0 +1,75 @@
+/*
+ * (C) Copyright 2000, 2001
+ * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
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
+#include <clock.h>
+#include <init.h>
+#include <mach/clocks.h>
+#include <mach/clock_config.h>
+#include <asm/common.h>
+
+/* ------------------------------------------------------------------------- */
+
+static int init_timebase (void)
+{
+#if defined(CONFIG_5xx) || defined(CONFIG_8xx)
+	volatile immap_t *immap = (immap_t *) CFG_IMMR;
+
+	/* unlock */
+	immap->im_sitk.sitk_tbk = KAPWR_KEY;
+#endif
+
+	/* reset */
+	asm ("li 3,0 ; mttbu 3 ; mttbl 3 ;");
+
+#if defined(CONFIG_5xx) || defined(CONFIG_8xx)
+	/* enable */
+	immap->im_sit.sit_tbscr |= TBSCR_TBE;
+#endif
+	return (0);
+}
+/* ------------------------------------------------------------------------- */
+
+uint64_t ppc_clocksource_read(void)
+{
+	return get_ticks();
+}
+
+static struct clocksource cs = {
+	.read	= ppc_clocksource_read,
+	.mask	= CLOCKSOURCE_MASK(CONFIG_CLOCKSOURCE_MASK),
+	.shift	= CONFIG_CLOCKSOURCE_SHIFT,
+};
+
+static int clocksource_init (void)
+{
+	init_timebase();
+
+	cs.mult = clocksource_hz2mult(get_timebase_clock(), cs.shift);
+
+	init_clock(&cs);
+
+	return 0;
+}
+
+core_initcall(clocksource_init);
diff --git a/arch/ppc/lib/time.c b/arch/ppc/lib/time.c
deleted file mode 100644
index 04c71df..0000000
--- a/arch/ppc/lib/time.c
+++ /dev/null
@@ -1,74 +0,0 @@
-/*
- * (C) Copyright 2000, 2001
- * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
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
-#include <clock.h>
-#include <init.h>
-#include <mach/clocks.h>
-#include <asm/common.h>
-
-/* ------------------------------------------------------------------------- */
-
-static int init_timebase (void)
-{
-#if defined(CONFIG_5xx) || defined(CONFIG_8xx)
-	volatile immap_t *immap = (immap_t *) CFG_IMMR;
-
-	/* unlock */
-	immap->im_sitk.sitk_tbk = KAPWR_KEY;
-#endif
-
-	/* reset */
-	asm ("li 3,0 ; mttbu 3 ; mttbl 3 ;");
-
-#if defined(CONFIG_5xx) || defined(CONFIG_8xx)
-	/* enable */
-	immap->im_sit.sit_tbscr |= TBSCR_TBE;
-#endif
-	return (0);
-}
-/* ------------------------------------------------------------------------- */
-
-uint64_t ppc_clocksource_read(void)
-{
-	return get_ticks();
-}
-
-static struct clocksource cs = {
-	.read	= ppc_clocksource_read,
-	.mask	= CLOCKSOURCE_MASK(32),
-	.shift	= 15,
-};
-
-static int clocksource_init (void)
-{
-	init_timebase();
-
-	cs.mult = clocksource_hz2mult(get_timebase_clock(), cs.shift);
-
-	init_clock(&cs);
-
-	return 0;
-}
-
-core_initcall(clocksource_init);
diff --git a/arch/ppc/mach-mpc5xxx/include/mach/clock_config.h b/arch/ppc/mach-mpc5xxx/include/mach/clock_config.h
new file mode 100644
index 0000000..ee39199
--- /dev/null
+++ b/arch/ppc/mach-mpc5xxx/include/mach/clock_config.h
@@ -0,0 +1,7 @@
+#ifndef __ASM_ARCH_CLOCK_CONFIG_H
+#define __ASM_ARCH_CLOCK_CONFIG_H
+
+#define CONFIG_CLOCKSOURCE_MASK     32
+#define CONFIG_CLOCKSOURCE_SHIFT    15
+
+#endif /* __ASM_ARCH_CLOCK_CONFIG_H */
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
