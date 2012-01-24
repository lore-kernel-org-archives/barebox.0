Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og107.obsmtp.com ([64.18.0.184])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RpfZq-0004j3-KB
 for barebox@lists.infradead.org; Tue, 24 Jan 2012 12:34:21 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Tue, 24 Jan 2012 12:34:01 +0000
Message-Id: <1327408443-3519-8-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 7/9] Add-ons to the PPC library to support the mpc8xxx.
To: barebox@lists.infradead.org

* Added suport for the mpc8xxx clock source.
* Call functions in board_init_r to initialize the mpc85xx.
* Added reloc.S (used in mpc85xx/start.S)

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/lib/Makefile    |    2 +
 arch/ppc/lib/board.c     |   24 ++++++++++++++++-
 arch/ppc/lib/reloc.S     |   50 ++++++++++++++++++++++++++++++++++++
 arch/ppc/lib/time-8xxx.c |   64 ++++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 139 insertions(+), 1 deletions(-)
 create mode 100644 arch/ppc/lib/reloc.S
 create mode 100644 arch/ppc/lib/time-8xxx.c

diff --git a/arch/ppc/lib/Makefile b/arch/ppc/lib/Makefile
index 2af000a..8d65760 100644
--- a/arch/ppc/lib/Makefile
+++ b/arch/ppc/lib/Makefile
@@ -5,9 +5,11 @@ obj-y += kgdb.o
 obj-y += ppcstring.o
 obj-y += ticks.o
 obj-$(CONFIG_MPC5200) += time-mpc5200.o
+obj-$(CONFIG_ARCH_MPC8XXX) += time-8xxx.o
 obj-y += misc.o
 obj-$(CONFIG_CMD_BOOTM) += ppclinux.o
 obj-y += board_data.o
 obj-$(CONFIG_MODULES) += module.o
 obj-y += crtsavres.o
+obj-y += reloc.o
 
diff --git a/arch/ppc/lib/board.c b/arch/ppc/lib/board.c
index a840c75..8ef2397 100644
--- a/arch/ppc/lib/board.c
+++ b/arch/ppc/lib/board.c
@@ -29,6 +29,10 @@
 #include <init.h>
 #include <net.h>
 #include <asm-generic/memory_layout.h>
+#include <asm/common.h>
+#include <asm/global_data.h>
+
+DECLARE_GLOBAL_DATA_PTR;
 
 /************************************************************************
  *
@@ -40,12 +44,16 @@
  ************************************************************************
  */
 
-void board_init_r (ulong end_of_ram)
+void board_init_r (ulong dest_addr)
 {
 	unsigned long malloc_end;
 
 	asm ("sync ; isync");
 
+#ifdef CONFIG_MPC85xx
+	_text_base = dest_addr;
+#endif
+
 	/*
 	 * FIXME: 128k stack size. Is this enough? should
 	 *        it be configurable?
@@ -62,6 +70,20 @@ void board_init_r (ulong end_of_ram)
 	 */
 	trap_init (0);
 
+#if defined(CONFIG_BOARD_EARLY_INIT_R)
+	board_early_init_r ();
+#endif
+
+#ifdef CONFIG_ARCH_MPC8XXX
+	cpu_init_r();
+#endif
+	/*
+	 * Enable Interrupts
+	 */
+#ifdef CONFIG_USE_IRQ
+	interrupt_init ();
+#endif
+
 	/* Initialization complete - start the monitor */
 
 	start_barebox();
diff --git a/arch/ppc/lib/reloc.S b/arch/ppc/lib/reloc.S
new file mode 100644
index 0000000..b1840fc
--- /dev/null
+++ b/arch/ppc/lib/reloc.S
@@ -0,0 +1,50 @@
+/*
+ * Copyright (C) 2009 Wolfgang Denk <wd@denx.de>
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
+
+#include <asm/ppc_asm.tmpl>
+
+	.file	"reloc.S"
+
+	.text
+#ifndef CONFIG_NAND_SPL
+	/*
+	 * Function: relocate entries for one exception vector
+	 */
+	.globl trap_reloc
+	.type	trap_reloc, @function
+trap_reloc:
+	lwz	r0, 0(r7)		/* hdlr ...		*/
+	add	r0, r0, r3		/*  ... += dest_addr	*/
+	stw	r0, 0(r7)
+
+	lwz	r0, 4(r7)		/* int_return ...	*/
+	add	r0, r0, r3		/*  ... += dest_addr	*/
+	stw	r0, 4(r7)
+
+	lwz	r0, 8(r7)		/* transfer_to_handler ...*/
+	add	r0, r0, r3		/*  ... += dest_addr	*/
+	stw	r0, 8(r7)
+
+	blr
+	.size	trap_reloc, .-trap_reloc
+#endif
diff --git a/arch/ppc/lib/time-8xxx.c b/arch/ppc/lib/time-8xxx.c
new file mode 100644
index 0000000..662217d
--- /dev/null
+++ b/arch/ppc/lib/time-8xxx.c
@@ -0,0 +1,64 @@
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
+	/* reset */
+	asm ("li 3,0 ; mttbu 3 ; mttbl 3 ;");
+
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
+};
+
+static int clocksource_init (void)
+{
+	init_timebase();
+
+    clocks_calc_mult_shift(&cs.mult, &cs.shift, get_timebase_clock(),
+                           1000000000L, 10);
+
+	init_clock(&cs);
+
+	return 0;
+}
+
+core_initcall(clocksource_init);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
