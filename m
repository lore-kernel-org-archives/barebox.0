Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x236.google.com ([2a00:1450:4010:c03::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W4Xab-0006IW-Ls
 for barebox@lists.infradead.org; Sat, 18 Jan 2014 15:13:39 +0000
Received: by mail-la0-f54.google.com with SMTP id y1so4383098lam.41
 for <barebox@lists.infradead.org>; Sat, 18 Jan 2014 07:13:15 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 18 Jan 2014 19:12:54 +0400
Message-Id: <1390057983-17921-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1390057983-17921-1-git-send-email-antonynpavlov@gmail.com>
References: <1390057983-17921-1-git-send-email-antonynpavlov@gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 04/13] MIPS: add initial Loongson-1X SoC stuff
To: barebox@lists.infradead.org

This code is based on linux-3.6 code.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/mach-loongson/Makefile                 |  1 +
 arch/mips/mach-loongson/include/mach/loongson1.h | 32 ++++++++++++++++++++++++
 arch/mips/mach-loongson/loongson1_reset.c        | 27 ++++++++++++++++++++
 3 files changed, 60 insertions(+)
 create mode 100644 arch/mips/mach-loongson/Makefile
 create mode 100644 arch/mips/mach-loongson/include/mach/loongson1.h
 create mode 100644 arch/mips/mach-loongson/loongson1_reset.c

diff --git a/arch/mips/mach-loongson/Makefile b/arch/mips/mach-loongson/Makefile
new file mode 100644
index 0000000..52b36f3
--- /dev/null
+++ b/arch/mips/mach-loongson/Makefile
@@ -0,0 +1 @@
+obj-y += loongson1_reset.o
diff --git a/arch/mips/mach-loongson/include/mach/loongson1.h b/arch/mips/mach-loongson/include/mach/loongson1.h
new file mode 100644
index 0000000..98bddfb
--- /dev/null
+++ b/arch/mips/mach-loongson/include/mach/loongson1.h
@@ -0,0 +1,32 @@
+/*
+ * Copyright (c) 2011 Zhang, Keguang <keguang.zhang@gmail.com>
+ *
+ * Register mappings for Loongson 1
+ *
+ * This program is free software; you can redistribute	it and/or modify it
+ * under  the terms of	the GNU General	 Public License as published by the
+ * Free Software Foundation;  either version 2 of the  License, or (at your
+ * option) any later version.
+ */
+
+#ifndef __ASM_MACH_LOONGSON1_LOONGSON1_H
+#define __ASM_MACH_LOONGSON1_LOONGSON1_H
+
+#include <asm/addrspace.h>
+
+/* Loongson 1 Register Bases */
+#define LS1X_UART0_BASE			0x1fe40000
+#define LS1X_UART1_BASE			0x1fe44000
+#define LS1X_UART2_BASE			0x1fe48000
+#define LS1X_UART3_BASE			0x1fe4c000
+#define LS1X_WDT_BASE			0x1fe5c060
+
+/* Loongson 1 watchdog register definitions */
+#define LS1X_WDT_REG(x) \
+		((void __iomem *)KSEG1ADDR(LS1X_WDT_BASE + (x)))
+
+#define LS1X_WDT_EN			LS1X_WDT_REG(0x0)
+#define LS1X_WDT_SET			LS1X_WDT_REG(0x4)
+#define LS1X_WDT_TIMER			LS1X_WDT_REG(0x8)
+
+#endif /* __ASM_MACH_LOONGSON1_LOONGSON1_H */
diff --git a/arch/mips/mach-loongson/loongson1_reset.c b/arch/mips/mach-loongson/loongson1_reset.c
new file mode 100644
index 0000000..21f09b5
--- /dev/null
+++ b/arch/mips/mach-loongson/loongson1_reset.c
@@ -0,0 +1,27 @@
+/*
+ * Copyright (C) 2014 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <io.h>
+#include <mach/loongson1.h>
+
+void __noreturn reset_cpu(ulong addr)
+{
+	__raw_writel(0x1, LS1X_WDT_EN);
+	__raw_writel(0x1, LS1X_WDT_SET);
+	__raw_writel(0x1, LS1X_WDT_TIMER);
+
+	unreachable();
+}
+EXPORT_SYMBOL(reset_cpu);
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
