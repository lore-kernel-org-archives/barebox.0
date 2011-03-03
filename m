Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PvHUa-0003OY-Hy
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 22:59:42 +0000
Received: by mail-wy0-f177.google.com with SMTP id 23so1676066wyf.36
	for <barebox@lists.infradead.org>; Thu, 03 Mar 2011 14:59:32 -0800 (PST)
From: franck.jullien@gmail.com
Date: Thu,  3 Mar 2011 23:59:06 +0100
Message-Id: <4d701d53.9009d80a.2cd3.5eab@mx.google.com>
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
Subject: [PATCH 52/54] Add arch/nios2/include/asm/system.h
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

Add arch/nios2/include/asm/system.h

---
 arch/nios2/include/asm/system.h |   64 +++++++++++++++++++++++++++++++++++++++
 1 files changed, 64 insertions(+), 0 deletions(-)
 create mode 100644 arch/nios2/include/asm/system.h

diff --git a/arch/nios2/include/asm/system.h b/arch/nios2/include/asm/system.h
new file mode 100644
index 0000000..086d92b
--- /dev/null
+++ b/arch/nios2/include/asm/system.h
@@ -0,0 +1,64 @@
+/*
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
+#ifndef __ASM_NIOS2_SYSTEM_H_
+#define __ASM_NIOS2_SYSTEM_H_
+
+#define local_irq_enable() __asm__ __volatile__ (  \
+	"rdctl	r8, status\n"			   \
+	"ori	r8, r8, 1\n"			   \
+	"wrctl	status, r8\n"			   \
+	: : : "r8")
+
+#define local_irq_disable() __asm__ __volatile__ ( \
+	"rdctl	r8, status\n"			   \
+	"andi	r8, r8, 0xfffe\n"		   \
+	"wrctl	status, r8\n"			   \
+	: : : "r8")
+
+#define local_save_flags(x) __asm__ __volatile__ (	\
+	"rdctl	r8, status\n"				\
+	"mov	%0, r8\n"				\
+	: "=r" (x) : : "r8", "memory")
+
+#define local_irq_restore(x) __asm__ __volatile__ (	\
+	"mov	r8, %0\n"				\
+	"wrctl	status, r8\n"				\
+	: : "r" (x) : "r8", "memory")
+
+/* For spinlocks etc */
+#define local_irq_save(x) do { local_save_flags(x); local_irq_disable(); } \
+	while (0)
+
+#define	irqs_disabled()					\
+({							\
+	unsigned long flags;				\
+	local_save_flags(flags);			\
+	((flags & NIOS2_STATUS_PIE_MSK) == 0x0);	\
+})
+
+/* indirect call to go beyond 256MB limitation of toolchain */
+#define nios2_callr(addr) __asm__ __volatile__ (	\
+	"callr	%0"					\
+	: : "r" (addr))
+
+#endif /* __ASM_NIOS2_SYSTEM_H */
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
