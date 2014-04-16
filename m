Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22b.google.com ([2a00:1450:4010:c03::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WaMbd-0005Zy-Tv
 for barebox@lists.infradead.org; Wed, 16 Apr 2014 09:58:14 +0000
Received: by mail-la0-f43.google.com with SMTP id e16so7843659lan.2
 for <barebox@lists.infradead.org>; Wed, 16 Apr 2014 02:57:51 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 16 Apr 2014 13:57:37 +0400
Message-Id: <1397642260-32606-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1397642260-32606-1-git-send-email-antonynpavlov@gmail.com>
References: <1397642260-32606-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/5] ARM: uemd: add DEBUG_LL support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/Kconfig                           |  1 +
 arch/arm/mach-uemd/include/mach/debug_ll.h | 41 ++++++++++++++++++++++++++++++
 2 files changed, 42 insertions(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 040df54..5dc9c64 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -187,6 +187,7 @@ config ARCH_TEGRA
 config ARCH_UEMD
 	bool "RC Module UEMD Platform"
 	select CPU_ARM1176
+	select HAS_DEBUG_LL
 
 config ARCH_ZYNQ
 	bool "Xilinx Zynq-based boards"
diff --git a/arch/arm/mach-uemd/include/mach/debug_ll.h b/arch/arm/mach-uemd/include/mach/debug_ll.h
new file mode 100644
index 0000000..5b45f6a
--- /dev/null
+++ b/arch/arm/mach-uemd/include/mach/debug_ll.h
@@ -0,0 +1,41 @@
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
+
+#define DEBUG_LL_UART_ADDR	0x2002b000
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
