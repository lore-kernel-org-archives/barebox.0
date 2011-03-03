Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PvHU5-0003NB-E3
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 22:59:07 +0000
Received: by mail-ww0-f49.google.com with SMTP id 40so1440130wwj.18
	for <barebox@lists.infradead.org>; Thu, 03 Mar 2011 14:59:01 -0800 (PST)
From: franck.jullien@gmail.com
Date: Thu,  3 Mar 2011 23:58:20 +0100
Message-Id: <4d701d33.9009d80a.2cd3.5e76@mx.google.com>
In-Reply-To: <n>
References: <n>
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
Subject: [PATCH 06/54] Add arch/nios2/cpu-nios2/interrupts.c
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

Add arch/nios2/cpu-nios2/interrupts.c

---
 arch/nios2/cpu-nios2/interrupts.c |  140 +++++++++++++++++++++++++++++++++++++
 1 files changed, 140 insertions(+), 0 deletions(-)
 create mode 100644 arch/nios2/cpu-nios2/interrupts.c

diff --git a/arch/nios2/cpu-nios2/interrupts.c b/arch/nios2/cpu-nios2/interrupts.c
new file mode 100644
index 0000000..1c166fa
--- /dev/null
+++ b/arch/nios2/cpu-nios2/interrupts.c
@@ -0,0 +1,140 @@
+/*
+ * (C) Copyright 2000-2002
+ * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
+ *
+ * (C) Copyright 2004, Psyent Corporation <www.psyent.com>
+ * Scott McNutt <smcnutt@psyent.com>
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
+#include <nios2.h>
+#include <asm/nios2-io.h>
+#include <asm/types.h>
+#include <asm/io.h>
+#include <asm/ptrace.h>
+#include <common.h>
+#include <command.h>
+#include <watchdog.h>
+
+/****************************************************************************/
+
+struct	irq_action {
+	interrupt_handler_t *handler;
+	void *arg;
+	int count;
+};
+
+static struct irq_action vecs[32];
+
+/****************************************************************************/
+
+int disable_interrupts (void)
+{
+	int val = rdctl (CTL_STATUS);
+	wrctl (CTL_STATUS, val & ~STATUS_IE);
+	return (val & STATUS_IE);
+}
+
+void enable_interrupts( void )
+{
+	int val = rdctl (CTL_STATUS);
+	wrctl (CTL_STATUS, val | STATUS_IE);
+}
+
+void external_interrupt (struct pt_regs *regs)
+{
+
+	unsigned irqs;
+	struct irq_action *act;
+
+	/* Evaluate only irqs that are both enabled AND pending */
+	irqs = rdctl (CTL_IENABLE) & rdctl (CTL_IPENDING);
+	act = vecs;
+
+	/* Assume (as does the Nios2 HAL) that bit 0 is highest
+	 * priority. NOTE: There is ALWAYS a handler assigned
+	 * (the default if no other).
+	 */
+	while (irqs) {
+		if (irqs & 1) {
+			act->handler (act->arg);
+			act->count++;
+		}
+		irqs >>=1;
+		act++;
+	}
+
+}
+
+static void def_hdlr (void *arg)
+{
+	unsigned irqs = rdctl (CTL_IENABLE);
+
+	/* Disable the individual interrupt -- with gratuitous
+	 * warning.
+	 */
+	irqs &= ~(1 << (int)arg);
+	wrctl (CTL_IENABLE, irqs);
+	printf ("WARNING: Disabling unhandled interrupt: %d\n",
+			(int)arg);
+}
+
+/*************************************************************************/
+void irq_install_handler (int irq, interrupt_handler_t *hdlr, void *arg)
+{
+
+	int flag;
+	struct irq_action *act;
+	unsigned ena = rdctl (CTL_IENABLE);
+
+	if ((irq < 0) || (irq > 31))
+		return;
+	act = &vecs[irq];
+
+	flag = disable_interrupts ();
+	if (hdlr) {
+		act->handler = hdlr;
+		act->arg = arg;
+		ena |= (1 << irq);		/* enable */
+	} else {
+		act->handler = def_hdlr;
+		act->arg = (void *)irq;
+		ena &= ~(1 << irq);		/* disable */
+	}
+	wrctl (CTL_IENABLE, ena);
+	if (flag) enable_interrupts ();
+}
+
+
+int interrupt_init (void)
+{
+	int i;
+
+	/* Assign the default handler to all */
+	for (i = 0; i < 32; i++) {
+		vecs[i].handler = def_hdlr;
+		vecs[i].arg = (void *)i;
+		vecs[i].count = 0;
+	}
+
+	enable_interrupts ();
+	return (0);
+}
+
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
