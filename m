Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pwycc-0003kw-Rf
	for barebox@lists.infradead.org; Tue, 08 Mar 2011 15:14:52 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1Pwycb-0000ss-0l
	for barebox@lists.infradead.org; Tue, 08 Mar 2011 16:14:49 +0100
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1Pwyca-0005O1-Vw
	for barebox@lists.infradead.org; Tue, 08 Mar 2011 16:14:48 +0100
Date: Tue, 8 Mar 2011 16:14:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110308151448.GW29521@pengutronix.de>
References: <1299583492-29504-1-git-send-email-s.hauer@pengutronix.de>
	<1299583492-29504-3-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1299583492-29504-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 2/3] ARM: Add stack unwinding support
To: barebox@lists.infradead.org

On Tue, Mar 08, 2011 at 12:24:51PM +0100, Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/Kconfig           |   10 ++
>  arch/arm/Makefile          |    4 +
>  arch/arm/cpu/interrupts.c  |    4 +
>  arch/arm/lib/Makefile      |    2 +-
>  arch/arm/lib/barebox.lds.S |   16 ++
>  arch/arm/lib/unwind.c      |  344 ++++++++++++++++++++++++++++++++++++++++++++
>  6 files changed, 379 insertions(+), 1 deletions(-)
>  create mode 100644 arch/arm/lib/unwind.c

And here are the missing pieces...

8<--------------------------------------
commit 41059912043f6ce6209eb6460f5b8509aa956c60
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Tue Mar 8 16:13:25 2011 +0100

    add to stacktrace support
    
    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

diff --git a/arch/arm/include/asm/stacktrace.h b/arch/arm/include/asm/stacktrace.h
new file mode 100644
index 0000000..10f70e1
--- /dev/null
+++ b/arch/arm/include/asm/stacktrace.h
@@ -0,0 +1,16 @@
+#ifndef __ASM_STACKTRACE_H
+#define __ASM_STACKTRACE_H
+
+struct stackframe {
+	unsigned long fp;
+	unsigned long sp;
+	unsigned long lr;
+	unsigned long pc;
+};
+
+extern int unwind_frame(struct stackframe *frame);
+extern void walk_stackframe(struct stackframe *frame,
+			    int (*fn)(struct stackframe *, void *), void *data);
+
+#endif	/* __ASM_STACKTRACE_H */
+
diff --git a/arch/arm/include/asm/unwind.h b/arch/arm/include/asm/unwind.h
new file mode 100644
index 0000000..1bc2a7c
--- /dev/null
+++ b/arch/arm/include/asm/unwind.h
@@ -0,0 +1,54 @@
+/*
+ * arch/arm/include/asm/unwind.h
+ *
+ * Copyright (C) 2008 ARM Limited
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
+ */
+
+#ifndef __ASM_UNWIND_H
+#define __ASM_UNWIND_H
+
+#ifndef __ASSEMBLY__
+
+/* Unwind reason code according the the ARM EABI documents */
+enum unwind_reason_code {
+	URC_OK = 0,			/* operation completed successfully */
+	URC_CONTINUE_UNWIND = 8,
+	URC_FAILURE = 9			/* unspecified failure of some kind */
+};
+
+struct unwind_idx {
+	unsigned long addr;
+	unsigned long insn;
+};
+
+struct unwind_table {
+	struct list_head list;
+	struct unwind_idx *start;
+	struct unwind_idx *stop;
+	unsigned long begin_addr;
+	unsigned long end_addr;
+};
+
+extern struct unwind_table *unwind_table_add(unsigned long start,
+					     unsigned long size,
+					     unsigned long text_addr,
+					     unsigned long text_size);
+extern void unwind_table_del(struct unwind_table *tab);
+extern void unwind_backtrace(struct pt_regs *regs);
+
+#endif	/* !__ASSEMBLY__ */
+
+#endif	/* __ASM_UNWIND_H */
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
