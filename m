Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gZ9fu-0003Q1-I6
 for barebox@lists.infradead.org; Tue, 18 Dec 2018 07:20:25 +0000
Received: by mail-lj1-x243.google.com with SMTP id n18-v6so13251032lji.7
 for <barebox@lists.infradead.org>; Mon, 17 Dec 2018 23:20:08 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 18 Dec 2018 10:19:38 +0300
Message-Id: <20181218071943.2560-6-antonynpavlov@gmail.com>
In-Reply-To: <20181218071943.2560-1-antonynpavlov@gmail.com>
References: <20181218071943.2560-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v3 05/10] RISC-V: erizo: add DEBUG_LL support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/riscv/Kconfig                            |  1 +
 arch/riscv/mach-erizo/include/mach/debug_ll.h | 33 +++++++++++++++++++
 2 files changed, 34 insertions(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index f1e69377e5..617656ae5e 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -21,6 +21,7 @@ choice
 
 config MACH_ERIZO
 	bool "erizo family"
+	select HAS_DEBUG_LL
 
 endchoice
 
diff --git a/arch/riscv/mach-erizo/include/mach/debug_ll.h b/arch/riscv/mach-erizo/include/mach/debug_ll.h
new file mode 100644
index 0000000000..a20acfcdfb
--- /dev/null
+++ b/arch/riscv/mach-erizo/include/mach/debug_ll.h
@@ -0,0 +1,33 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2017 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * This file is part of barebox.
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
2.20.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
