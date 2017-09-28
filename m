Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x243.google.com ([2a00:1450:400c:c0c::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dxhzf-0004TC-HG
 for barebox@lists.infradead.org; Thu, 28 Sep 2017 23:13:26 +0000
Received: by mail-wr0-x243.google.com with SMTP id 97so3469520wrb.0
 for <barebox@lists.infradead.org>; Thu, 28 Sep 2017 16:13:02 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 29 Sep 2017 02:12:44 +0300
Message-Id: <20170928231249.4158-6-antonynpavlov@gmail.com>
In-Reply-To: <20170928231249.4158-1-antonynpavlov@gmail.com>
References: <20170928231249.4158-1-antonynpavlov@gmail.com>
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
Subject: [RFC v4 05/10] RISC-V: erizo: add DEBUG_LL support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/riscv/Kconfig                            |  1 +
 arch/riscv/mach-erizo/include/mach/debug_ll.h | 37 +++++++++++++++++++++++++++
 2 files changed, 38 insertions(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index ce5f317cf..cf02ecf27 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -26,6 +26,7 @@ choice
 
 config MACH_ERIZO
 	bool "erizo family"
+	select HAS_DEBUG_LL
 
 endchoice
 
diff --git a/arch/riscv/mach-erizo/include/mach/debug_ll.h b/arch/riscv/mach-erizo/include/mach/debug_ll.h
new file mode 100644
index 000000000..913b323d9
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
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
