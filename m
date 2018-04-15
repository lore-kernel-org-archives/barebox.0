Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f7fqT-0005gs-S3
 for barebox@lists.infradead.org; Sun, 15 Apr 2018 11:29:24 +0000
Received: by mail-lf0-x243.google.com with SMTP id v207-v6so18137944lfa.10
 for <barebox@lists.infradead.org>; Sun, 15 Apr 2018 04:29:12 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 15 Apr 2018 14:28:53 +0300
Message-Id: <20180415112858.5163-6-antonynpavlov@gmail.com>
In-Reply-To: <20180415112858.5163-1-antonynpavlov@gmail.com>
References: <20180415112858.5163-1-antonynpavlov@gmail.com>
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
Subject: [PATCH 05/10] RISC-V: erizo: add DEBUG_LL support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/riscv/Kconfig                            |  1 +
 arch/riscv/mach-erizo/include/mach/debug_ll.h | 37 +++++++++++++++++++
 2 files changed, 38 insertions(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 9e7faf11d0..ff3e6b96ab 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -24,6 +24,7 @@ choice
 
 config MACH_ERIZO
 	bool "erizo family"
+	select HAS_DEBUG_LL
 
 endchoice
 
diff --git a/arch/riscv/mach-erizo/include/mach/debug_ll.h b/arch/riscv/mach-erizo/include/mach/debug_ll.h
new file mode 100644
index 0000000000..913b323d99
--- /dev/null
+++ b/arch/riscv/mach-erizo/include/mach/debug_ll.h
@@ -0,0 +1,37 @@
+/*
+ * Copyright (C) 2017 Antony Pavlov <antonynpavlov@gmail.com>
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
+#ifndef __MACH_ERIZO_DEBUG_LL__
+#define __MACH_ERIZO_DEBUG_LL__
+
+/** @file
+ *  This File contains declaration for early output support
+ */
+
+#include <linux/kconfig.h>
+
+#define DEBUG_LL_UART_ADDR	0x90000000
+#define DEBUG_LL_UART_SHIFT	2
+#define DEBUG_LL_UART_IOSIZE32
+
+#define DEBUG_LL_UART_CLK       (24000000 / 16)
+#define DEBUG_LL_UART_BPS       CONFIG_BAUDRATE
+#define DEBUG_LL_UART_DIVISOR   (DEBUG_LL_UART_CLK / DEBUG_LL_UART_BPS)
+
+#include <asm/debug_ll_ns16550.h>
+
+#endif /* __MACH_ERIZO_DEBUG_LL__ */
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
