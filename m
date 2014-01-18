Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22c.google.com ([2a00:1450:4010:c03::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W4Xaj-0006Ix-Ce
 for barebox@lists.infradead.org; Sat, 18 Jan 2014 15:13:46 +0000
Received: by mail-la0-f44.google.com with SMTP id hm7so2158670lab.3
 for <barebox@lists.infradead.org>; Sat, 18 Jan 2014 07:13:23 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 18 Jan 2014 19:12:58 +0400
Message-Id: <1390057983-17921-9-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 08/13] MIPS: loongson-ls1b: add DEBUG_LL support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 .../boards/loongson-ls1b/include/board/debug_ll.h  | 34 ++++++++++++++++++++++
 arch/mips/mach-loongson/Kconfig                    |  1 +
 2 files changed, 35 insertions(+)
 create mode 100644 arch/mips/boards/loongson-ls1b/include/board/debug_ll.h

diff --git a/arch/mips/boards/loongson-ls1b/include/board/debug_ll.h b/arch/mips/boards/loongson-ls1b/include/board/debug_ll.h
new file mode 100644
index 0000000..e60ce4c
--- /dev/null
+++ b/arch/mips/boards/loongson-ls1b/include/board/debug_ll.h
@@ -0,0 +1,34 @@
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
+#ifndef __LOONGSON_TECH_LS1B_DEBUG_LL_H__
+#define __LOONGSON_TECH_LS1B_DEBUG_LL_H__
+
+#include <asm/addrspace.h>
+#include <mach/loongson1.h>
+
+#define DEBUG_LL_UART_ADDR	KSEG1ADDR(LS1X_UART2_BASE)
+#define DEBUG_LL_UART_SHIFT	0
+
+#define DEBUG_LL_UART_CLK   (83000000 / 16)
+#define DEBUG_LL_UART_BPS   CONFIG_BAUDRATE
+#define DEBUG_LL_UART_DIVISOR   (DEBUG_LL_UART_CLK / DEBUG_LL_UART_BPS)
+
+#endif /* __LOONGSON_TECH_LS1B_DEBUG_LL_H__ */
diff --git a/arch/mips/mach-loongson/Kconfig b/arch/mips/mach-loongson/Kconfig
index 9db9607..c2cb774 100644
--- a/arch/mips/mach-loongson/Kconfig
+++ b/arch/mips/mach-loongson/Kconfig
@@ -13,6 +13,7 @@ config BOARD_LOONGSON_TECH_LS1B
 	select SYS_SUPPORTS_32BIT_KERNEL
 	select SYS_SUPPORTS_LITTLE_ENDIAN
 	select CSRC_R4K_LIB
+	select HAS_DEBUG_LL
 
 endchoice
 
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
