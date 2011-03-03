Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PvHU3-0003Mm-7p
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 22:59:00 +0000
Received: by mail-wy0-f177.google.com with SMTP id 23so1676005wyf.36
	for <barebox@lists.infradead.org>; Thu, 03 Mar 2011 14:58:58 -0800 (PST)
From: franck.jullien@gmail.com
Date: Thu,  3 Mar 2011 23:58:18 +0100
Message-Id: <4d701d32.9009d80a.2cd3.5e74@mx.google.com>
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
Subject: [PATCH 04/54] Add arch/nios2/cpu-nios2/cpu.c
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

Add arch/nios2/cpu-nios2/cpu.c

---
 arch/nios2/cpu-nios2/cpu.c |   38 ++++++++++++++++++++++++++++++++++++++
 1 files changed, 38 insertions(+), 0 deletions(-)
 create mode 100644 arch/nios2/cpu-nios2/cpu.c

diff --git a/arch/nios2/cpu-nios2/cpu.c b/arch/nios2/cpu-nios2/cpu.c
new file mode 100644
index 0000000..93db183
--- /dev/null
+++ b/arch/nios2/cpu-nios2/cpu.c
@@ -0,0 +1,38 @@
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
+
+#include <common.h>
+#include <asm/system.h>
+
+void __noreturn reset_cpu(ulong ignored)
+{
+#ifdef CONFIG_USE_IRQ
+        disable_interrupts();
+#endif
+	/* indirect call to go beyond 256MB limitation of toolchain */
+	nios2_callr(RESET_ADDR);
+
+	/* Not reached */
+	while (1);
+}
+
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
