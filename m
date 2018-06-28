Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fYRa3-000245-TJ
 for barebox@lists.infradead.org; Thu, 28 Jun 2018 07:43:04 +0000
Received: by mail-lf0-x241.google.com with SMTP id g21-v6so3462294lfb.4
 for <barebox@lists.infradead.org>; Thu, 28 Jun 2018 00:42:55 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 28 Jun 2018 10:39:48 +0300
Message-Id: <20180628073953.15384-8-antonynpavlov@gmail.com>
In-Reply-To: <20180628073953.15384-1-antonynpavlov@gmail.com>
References: <20180628073953.15384-1-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 07/12] RISC-V: erizo: add DEBUG_LL support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/riscv/Kconfig                            |  1 +
 arch/riscv/mach-erizo/include/mach/debug_ll.h | 37 +++++++++++++++++++
 2 files changed, 38 insertions(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index d0e934e939..f754aef05e 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -21,6 +21,7 @@ choice
 
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
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
