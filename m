Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x235.google.com ([2a00:1450:4013:c01::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ue8HW-0005pZ-7S
 for barebox@lists.infradead.org; Sun, 19 May 2013 18:24:33 +0000
Received: by mail-ea0-f181.google.com with SMTP id a11so3357371eae.26
 for <barebox@lists.infradead.org>; Sun, 19 May 2013 11:24:05 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Sun, 19 May 2013 20:23:47 +0200
Message-Id: <1368987835-13323-4-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1368987835-13323-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1368987835-13323-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 03/11] arm: mvebu: introduce common console UART config
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

With all SoCs remapped to common internal register base address, we
also switch debug_ll to use the correct base address. This also adds
a config option to select the UART number the console will sit on
limited to the available controllers for each SoC.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Tested-by: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
---
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
---
 arch/arm/mach-mvebu/Kconfig                 |   14 ++++++++++++++
 arch/arm/mach-mvebu/include/mach/debug_ll.h |   23 +++++++++++++----------
 2 files changed, 27 insertions(+), 10 deletions(-)

diff --git a/arch/arm/mach-mvebu/Kconfig b/arch/arm/mach-mvebu/Kconfig
index 400e41b..11e4550 100644
--- a/arch/arm/mach-mvebu/Kconfig
+++ b/arch/arm/mach-mvebu/Kconfig
@@ -107,4 +107,18 @@ endchoice
 
 endif # ARCH_KIRKWOOD
 
+#
+# Common options
+#
+
+config MVEBU_CONSOLE_UART
+	int "UART number for console"
+	default 0
+	range 0 1 if ARCH_ARMADA_370
+	range 0 1 if ARCH_ARMADA_XP
+	range 0 3 if ARCH_DOVE
+	range 0 1 if ARCH_KIRKWOOD
+	help
+	 Select the UART number the barebox console will sit on.
+
 endif # ARCH_MVEBU
diff --git a/arch/arm/mach-mvebu/include/mach/debug_ll.h b/arch/arm/mach-mvebu/include/mach/debug_ll.h
index 2653573..1cf821e 100644
--- a/arch/arm/mach-mvebu/include/mach/debug_ll.h
+++ b/arch/arm/mach-mvebu/include/mach/debug_ll.h
@@ -1,5 +1,6 @@
 /*
- * Copyright (C) 2013 Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
+ * Copyright (C) 2013
+ *  Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
  *
  * This program is free software; you can redistribute it and/or
  * modify it under the terms of the GNU General Public License as
@@ -18,23 +19,25 @@
 
 #include <io.h>
 
-#define UART_BASE 0xd0012000
-#define UART_THR  0x0
-#define UART_LSR  0x14
-#define   UART_LSR_THRE   (1 << 5)
+#define UART_BASE	0xf1012000
+#define UARTn_BASE(n)	(UART_BASE + ((n) * 0x100))
+#define UART_THR	0x00
+#define UART_LSR	0x14
+#define   LSR_THRE	BIT(5)
+
+#define EARLY_UART	UARTn_BASE(CONFIG_MVEBU_CONSOLE_UART)
 
 static inline void PUTC_LL(char c)
 {
 	/* Wait until there is space in the FIFO */
-	while (!(readl(UART_BASE + UART_LSR) & UART_LSR_THRE))
+	while (!(readl(EARLY_UART + UART_LSR) & LSR_THRE))
 		;
 
 	/* Send the character */
-	writel(c, UART_BASE + UART_THR)
-		;
+	writel(c, EARLY_UART + UART_THR);
 
-	/* Wait to make sure it hits the line, in case we die too soon. */
-	while (!(readl(UART_BASE + UART_LSR) & UART_LSR_THRE))
+	/* Wait to make sure it hits the line */
+	while (!(readl(EARLY_UART + UART_LSR) & LSR_THRE))
 		;
 }
 #endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
