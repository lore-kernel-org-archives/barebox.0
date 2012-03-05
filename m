Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
 by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S4VEQ-0002sk-24
 for barebox@lists.infradead.org; Mon, 05 Mar 2012 10:33:31 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id C0CE4BF0F0
 for <barebox@lists.infradead.org>; Sun,  4 Mar 2012 12:49:21 +0100 (CET)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Mon, 5 Mar 2012 11:33:26 +0100
Message-Id: <1330943606-2387-1-git-send-email-j.weitzel@phytec.de>
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
Subject: [PATCH] mach-omap: add HAS_DEBUG_LL
To: barebox@lists.infradead.org

Add support for debug_ll

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 arch/arm/Kconfig                           |    1 +
 arch/arm/mach-omap/include/mach/debug_ll.h |   54 ++++++++++++++++++++++++++++
 2 files changed, 55 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/mach-omap/include/mach/debug_ll.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 4c0ee58..67a1009 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -61,6 +61,7 @@ config ARCH_NOMADIK
 
 config ARCH_OMAP
 	bool "TI OMAP"
+	select HAS_DEBUG_LL
 
 config ARCH_PXA
 	bool "Intel/Marvell PXA based"
diff --git a/arch/arm/mach-omap/include/mach/debug_ll.h b/arch/arm/mach-omap/include/mach/debug_ll.h
new file mode 100644
index 0000000..be388d1
--- /dev/null
+++ b/arch/arm/mach-omap/include/mach/debug_ll.h
@@ -0,0 +1,54 @@
+/*
+ * Copyright (C) 2011
+ * Author: Jan Weitzel <j.weitzel@phytec.de>
+ * based on arch/arm/mach-versatile/include/mach/debug_ll.h
+ *
+ * barebox is free software: you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation, either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * barebox is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with barebox.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+#ifndef __MACH_DEBUG_LL_H__
+#define   __MACH_DEBUG_LL_H__
+
+#include <asm/io.h>
+
+#ifdef CONFIG_ARCH_OMAP3
+#include <mach/omap3-silicon.h>
+
+#ifdef CONFIG_OMAP3EVM_UART1
+#define UART_BASE	OMAP_UART1_BASE
+#else
+#define UART_BASE	OMAP_UART3_BASE
+#endif
+
+#endif
+
+#ifdef CONFIG_ARCH_OMAP4
+#include <mach/omap4-silicon.h>
+#define UART_BASE	OMAP44XX_UART3_BASE
+#endif
+
+#define LSR_THRE	0x20	/* Xmit holding register empty */
+#define LSR		(5 << 2)
+#define THR		(0 << 2)
+
+static inline void putc(char c)
+{
+	/* Wait until there is space in the FIFO */
+	while ((readb(UART_BASE + LSR) & LSR_THRE) == 0);
+	/* Send the character */
+	writeb(c, UART_BASE + THR);
+	/* Wait to make sure it hits the line, in case we die too soon. */
+	while ((readb(UART_BASE + LSR) & LSR_THRE) == 0);
+}
+#endif
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
