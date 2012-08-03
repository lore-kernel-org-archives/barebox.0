Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo1.mail-out.ovh.net ([178.33.45.107]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SxAvS-00071P-D5
 for barebox@lists.infradead.org; Fri, 03 Aug 2012 05:59:55 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 15CE2FFA53B
 for <barebox@lists.infradead.org>; Fri,  3 Aug 2012 08:06:04 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  3 Aug 2012 07:59:51 +0200
Message-Id: <1343973593-23482-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120803055701.GA21069@game.jcrosoft.org>
References: <20120803055701.GA21069@game.jcrosoft.org>
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
Subject: [PATCH 1/3] arm: at91: add debug_ll support
To: barebox@lists.infradead.org

Today we only use the DBGU port

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/Kconfig                           |    1 +
 arch/arm/mach-at91/include/mach/debug_ll.h |   37 ++++++++++++++++++++++++++++
 2 files changed, 38 insertions(+)
 create mode 100644 arch/arm/mach-at91/include/mach/debug_ll.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 08c742b..8665c16 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -23,6 +23,7 @@ config ARCH_AT91
 	bool "Atmel AT91"
 	select GENERIC_GPIO
 	select CLKDEV_LOOKUP
+	select HAS_DEBUG_LL
 
 config ARCH_EP93XX
 	bool "Cirrus Logic EP93xx"
diff --git a/arch/arm/mach-at91/include/mach/debug_ll.h b/arch/arm/mach-at91/include/mach/debug_ll.h
new file mode 100644
index 0000000..ee824cb
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/debug_ll.h
@@ -0,0 +1,37 @@
+/*
+ * Copyright (C) 2012
+ * Jean-Christophe PLAGNIOL-VILLARD <planioj@jcrosoft.com>
+ *
+ * Under GPLv2
+ */
+
+#ifndef __MACH_DEBUG_LL_H__
+#define __MACH_DEBUG_LL_H__
+
+#include <asm/io.h>
+#include <mach/hardware.h>
+
+#define UART_BASE	(AT91_BASE_SYS + AT91_DBGU)
+
+#define ATMEL_US_CSR		0x0014
+#define ATMEL_US_THR		0x001c
+#define ATMEL_US_TXRDY		(1 << 1)
+#define ATMEL_US_TXEMPTY	(1 << 9)
+
+/*
+ * The following code assumes the serial port has already been
+ * initialized by the bootloader.  If you didn't setup a port in
+ * your bootloader then nothing will appear (which might be desired).
+ *
+ * This does not append a newline
+ */
+static void putc(int c)
+{
+	while (!(__raw_readl(UART_BASE + ATMEL_US_CSR) & ATMEL_US_TXRDY))
+		barrier();
+	__raw_writel(c, UART_BASE + ATMEL_US_THR);
+
+	while (!(__raw_readl(UART_BASE + ATMEL_US_CSR) & ATMEL_US_TXEMPTY))
+		barrier();
+}
+#endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
