Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22c.google.com ([2a00:1450:400c:c03::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UET4I-0005SP-Cv
 for barebox@lists.infradead.org; Sat, 09 Mar 2013 23:20:48 +0000
Received: by mail-we0-f172.google.com with SMTP id d46so2308858wer.31
 for <barebox@lists.infradead.org>; Sat, 09 Mar 2013 15:20:41 -0800 (PST)
From: Vicente Bergas <vicencb@gmail.com>
Date: Sun, 10 Mar 2013 00:19:36 +0100
Message-Id: <1362871182-25726-4-git-send-email-vicencb@gmail.com>
In-Reply-To: <1362871182-25726-1-git-send-email-vicencb@gmail.com>
References: <1362871182-25726-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 3/9] omap_uart: rename OMAP3EVM_UARTx to OMAP_UARTx
To: barebox@lists.infradead.org
Cc: Vicente Bergas <vicencb@gmail.com>

 use a more generic UART selection on OMAP so it can be extended to
other OMAPs

Signed-off-by: Vicente Bergas <vicencb@gmail.com>
---
 arch/arm/boards/omap3evm/board.c           |  4 ++--
 arch/arm/boards/omap3evm/lowlevel.c        |  4 ++--
 arch/arm/mach-omap/Kconfig                 | 11 ++++++-----
 arch/arm/mach-omap/include/mach/debug_ll.h |  6 +++++-
 4 files changed, 15 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boards/omap3evm/board.c b/arch/arm/boards/omap3evm/board.c
index 7585541..7284f5f 100644
--- a/arch/arm/boards/omap3evm/board.c
+++ b/arch/arm/boards/omap3evm/board.c
@@ -62,9 +62,9 @@
  */
 static int omap3evm_init_console(void)
 {
-	if (IS_ENABLED(CONFIG_OMAP3EVM_UART1))
+	if (IS_ENABLED(CONFIG_OMAP_UART1))
 		omap3_add_uart1();
-	if (IS_ENABLED(CONFIG_OMAP3EVM_UART3))
+	if (IS_ENABLED(CONFIG_OMAP_UART3))
 		omap3_add_uart3();
 
 	return 0;
diff --git a/arch/arm/boards/omap3evm/lowlevel.c b/arch/arm/boards/omap3evm/lowlevel.c
index 74e1315..2d9e130 100644
--- a/arch/arm/boards/omap3evm/lowlevel.c
+++ b/arch/arm/boards/omap3evm/lowlevel.c
@@ -122,12 +122,12 @@ static void mux_config(void)
 	/*
 	 * Serial Interface
 	 */
-#if defined(CONFIG_OMAP3EVM_UART1)
+#if defined(CONFIG_OMAP_UART1)
 	MUX_VAL(CP(UART1_TX),		(IDIS | PTD | DIS | M0));
 	MUX_VAL(CP(UART1_RTS),		(IDIS | PTD | DIS | M0));
 	MUX_VAL(CP(UART1_CTS),		(IEN  | PTU | DIS | M0));
 	MUX_VAL(CP(UART1_RX),		(IEN  | PTD | DIS | M0));
-#elif defined(CONFIG_OMAP3EVM_UART3)
+#elif defined(CONFIG_OMAP_UART3)
 	MUX_VAL(CP(UART3_CTS_RCTX),	(IEN  | PTD | EN  | M0));
 	MUX_VAL(CP(UART3_RTS_SD),	(IDIS | PTD | DIS | M0));
 	MUX_VAL(CP(UART3_RX_IRRX),	(IEN  | PTD | DIS | M0));
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index a87fc4b..42e5f4a 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -187,20 +187,21 @@ config MACH_PCM051
 
 endchoice
 
-if MACH_OMAP3EVM
+if ARCH_OMAP
 
 choice
 	prompt "Select UART"
+	default OMAP_UART3
 
-	config OMAP3EVM_UART1
+	config OMAP_UART1
 		bool "Use UART1"
-		depends on MACH_OMAP3EVM
+		depends on ARCH_OMAP
 		help
 		  Say Y here if you would like to use UART1 as console.
 
-	config OMAP3EVM_UART3
+	config OMAP_UART3
 		bool "Use UART3"
-		depends on MACH_OMAP3EVM
+		depends on ARCH_OMAP
 		help
 		  Say Y here if you would like to use UART3 as console.
 
diff --git a/arch/arm/mach-omap/include/mach/debug_ll.h b/arch/arm/mach-omap/include/mach/debug_ll.h
index ed1777b..eea6eb3 100644
--- a/arch/arm/mach-omap/include/mach/debug_ll.h
+++ b/arch/arm/mach-omap/include/mach/debug_ll.h
@@ -22,7 +22,7 @@
 #ifdef CONFIG_ARCH_OMAP3
 #include <mach/omap3-silicon.h>
 
-#ifdef CONFIG_OMAP3EVM_UART1
+#ifdef CONFIG_OMAP_UART1
 #define UART_BASE	OMAP3_UART1_BASE
 #else
 #define UART_BASE	OMAP3_UART3_BASE
@@ -32,8 +32,12 @@
 
 #ifdef CONFIG_ARCH_OMAP4
 #include <mach/omap4-silicon.h>
+#ifdef CONFIG_OMAP_UART1
+#define UART_BASE	OMAP44XX_UART1_BASE
+#else
 #define UART_BASE	OMAP44XX_UART3_BASE
 #endif
+#endif
 
 #ifdef CONFIG_ARCH_AM33XX
 #include <mach/am33xx-silicon.h>
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
