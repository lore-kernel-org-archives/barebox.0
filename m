Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22a.google.com ([2a00:1450:4010:c03::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WTHpa-00025g-4A
 for barebox@lists.infradead.org; Thu, 27 Mar 2014 21:27:22 +0000
Received: by mail-la0-f42.google.com with SMTP id ec20so3121123lab.29
 for <barebox@lists.infradead.org>; Thu, 27 Mar 2014 14:27:00 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 28 Mar 2014 01:26:38 +0400
Message-Id: <1395955604-12826-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1395955604-12826-1-git-send-email-antonynpavlov@gmail.com>
References: <1395955604-12826-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 3/9] MIPS: ath79: add DEBUG_LL support for Atheros AR933x
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Kconfig                            |  1 +
 arch/mips/mach-ath79/include/mach/debug_ll.h | 56 ++++++++++++++++++++++++++++
 2 files changed, 57 insertions(+)

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 521af7c..9a240b7 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -60,6 +60,7 @@ config MACH_MIPS_ATH79
 	select SYS_SUPPORTS_32BIT_KERNEL
 	select SYS_SUPPORTS_BIG_ENDIAN
 	select CSRC_R4K_LIB
+	select HAS_DEBUG_LL
 	select HAVE_CLK
 	select COMMON_CLK
 	select COMMON_CLK_OF_PROVIDER
diff --git a/arch/mips/mach-ath79/include/mach/debug_ll.h b/arch/mips/mach-ath79/include/mach/debug_ll.h
new file mode 100644
index 0000000..de4c00d
--- /dev/null
+++ b/arch/mips/mach-ath79/include/mach/debug_ll.h
@@ -0,0 +1,56 @@
+/*
+ * based on linux.git/drivers/tty/serial/ar933x_uart.c
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
+#ifndef __AR933X_DEBUG_LL__
+#define __AR933X_DEBUG_LL__
+
+#include <io.h>
+#include <linux/bitops.h>
+#include <asm/addrspace.h>
+
+#include <mach/ar71xx_regs.h>
+
+#define AR933X_UART_DATA_REG            0x00
+#define AR933X_UART_DATA_TX_RX_MASK     0xff
+#define AR933X_UART_DATA_TX_CSR         BIT(9)
+
+#define DEBUG_LL_UART_ADDR	KSEG1ADDR(AR933X_UART_BASE)
+
+static inline void ar933x_debug_ll_writel(u32 b, int offset)
+{
+	cpu_writel(b, (u8 *)DEBUG_LL_UART_ADDR + offset);
+}
+
+static inline u32 ar933x_debug_ll_readl(int offset)
+{
+	return cpu_readl((u8 *)DEBUG_LL_UART_ADDR + offset);
+}
+
+static inline void PUTC_LL(int ch)
+{
+	u32 data;
+
+	/* wait transmitter ready */
+	data = ar933x_debug_ll_readl(AR933X_UART_DATA_REG);
+	while (!(data & AR933X_UART_DATA_TX_CSR))
+		data = ar933x_debug_ll_readl(AR933X_UART_DATA_REG);
+
+	data = (ch & AR933X_UART_DATA_TX_RX_MASK) | AR933X_UART_DATA_TX_CSR;
+	ar933x_debug_ll_writel(data, AR933X_UART_DATA_REG);
+}
+
+#endif /* __AR933X_DEBUG_LL__ */
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
