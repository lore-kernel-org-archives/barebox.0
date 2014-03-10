Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22b.google.com ([2a00:1450:4010:c03::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WN7r2-00068Q-1v
 for barebox@lists.infradead.org; Mon, 10 Mar 2014 21:35:25 +0000
Received: by mail-la0-f43.google.com with SMTP id e16so5038092lan.2
 for <barebox@lists.infradead.org>; Mon, 10 Mar 2014 14:35:01 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 11 Mar 2014 01:34:37 +0400
Message-Id: <1394487281-10462-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1394487281-10462-1-git-send-email-antonynpavlov@gmail.com>
References: <1394487281-10462-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 4/8] ARM: davinci: add DEBUG_LL support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/Kconfig                              |  1 +
 arch/arm/mach-davinci/include/mach/debug_ll.h | 42 +++++++++++++++++++++++++++
 2 files changed, 43 insertions(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 42ff01b..407f27d 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -57,6 +57,7 @@ config ARCH_CLPS711X
 config ARCH_DAVINCI
 	bool "TI Davinci"
 	select CPU_ARM926T
+	select HAS_DEBUG_LL
 
 config ARCH_EP93XX
 	bool "Cirrus Logic EP93xx"
diff --git a/arch/arm/mach-davinci/include/mach/debug_ll.h b/arch/arm/mach-davinci/include/mach/debug_ll.h
new file mode 100644
index 0000000..587f408
--- /dev/null
+++ b/arch/arm/mach-davinci/include/mach/debug_ll.h
@@ -0,0 +1,42 @@
+/*
+ * Copyright (C) 2014 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * This file is part of barebox.
+ * See file CREDITS for list of people who contributed to this project.
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
+/** @file
+ *  This File contains declaration for early output support
+ */
+#ifndef __INCLUDE_ARCH_DEBUG_LL_H__
+#define __INCLUDE_ARCH_DEBUG_LL_H__
+
+#include <asm/io.h>
+#include <mach/serial.h>
+
+#define DEBUG_LL_UART_ADDR	DAVINCI_UART0_BASE
+#define DEBUG_LL_UART_RSHFT	2
+
+#define rbr		(0 << DEBUG_LL_UART_RSHFT)
+#define lsr		(5 << DEBUG_LL_UART_RSHFT)
+#define LSR_THRE	0x20	/* Xmit holding register empty */
+
+static inline void PUTC_LL(char ch)
+{
+	while (!(__raw_readb(DEBUG_LL_UART_ADDR + lsr) & LSR_THRE))
+		;
+
+	__raw_writeb(ch, DEBUG_LL_UART_ADDR + rbr);
+}
+
+#endif /* __INCLUDE_ARCH_DEBUG_LL_H__ */
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
