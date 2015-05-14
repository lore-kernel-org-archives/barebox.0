Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x234.google.com ([2607:f8b0:400e:c03::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YsjIl-0000Jv-IY
 for barebox@lists.infradead.org; Thu, 14 May 2015 02:55:13 +0000
Received: by pabtp1 with SMTP id tp1so69414342pab.2
 for <barebox@lists.infradead.org>; Wed, 13 May 2015 19:54:50 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 13 May 2015 19:54:24 -0700
Message-Id: <1431572067-4038-7-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1431572067-4038-1-git-send-email-andrew.smirnov@gmail.com>
References: <1431572067-4038-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 07/10] debug_ll: i.MX: Add support for input to DEBUG_LL
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add input support to DEBUG_LL infrastructure and implement it for i.MX

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/Kconfig                          |  1 +
 arch/arm/mach-imx/include/mach/debug_ll.h | 26 ++++++++++++++++++++++++++
 common/Kconfig                            | 11 +++++++++++
 include/debug_ll.h                        | 30 ++++++++++++++++++++++++++++++
 4 files changed, 68 insertions(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 50f3095..47d792b 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -103,6 +103,7 @@ config ARCH_IMX
 	select CLKDEV_LOOKUP
 	select WATCHDOG_IMX_RESET_SOURCE
 	select HAS_DEBUG_LL
+	select HAS_DEBUG_LL_INPUT

 config ARCH_MVEBU
 	bool "Marvell EBU platforms"
diff --git a/arch/arm/mach-imx/include/mach/debug_ll.h b/arch/arm/mach-imx/include/mach/debug_ll.h
index 8eb59f6..3f5a102 100644
--- a/arch/arm/mach-imx/include/mach/debug_ll.h
+++ b/arch/arm/mach-imx/include/mach/debug_ll.h
@@ -114,6 +114,32 @@ static inline void PUTC_LL(int c)

 	writel(c, base + URTX0);
 }
+
+#ifdef CONFIG_DEBUG_LL_INPUT
+static inline bool TSTC_LL(void)
+{
+	void __iomem *base = IOMEM(IMX_UART_BASE(IMX_DEBUG_SOC,
+						 CONFIG_DEBUG_IMX_UART_PORT));
+
+	return readl(base + USR2) & USR2_RDR;
+}
+
+static inline int GETC_LL(void)
+{
+	void __iomem *base = IOMEM(IMX_UART_BASE(IMX_DEBUG_SOC,
+						 CONFIG_DEBUG_IMX_UART_PORT));
+
+	if (!base)
+		return -EINVAL;
+
+	if (!(readl(base + UCR1) & UCR1_UARTEN))
+		return -EINVAL;
+
+	while (!TSTC_LL());
+
+	return 0xff & readl(base + URXD0);
+}
+#endif
 #else

 static inline void imx_uart_setup_ll(void __iomem *uartbase,
diff --git a/common/Kconfig b/common/Kconfig
index 1c5d14c..4032dcd 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -774,6 +774,15 @@ config DEBUG_LL
 	  This requires SoC specific support. Most SoCs require the debug UART to be
 	  initialized by a debugger or first stage bootloader.

+config DEBUG_LL_INPUT
+        bool
+	depends on DEBUG_LL
+	depends on HAS_DEBUG_LL_INPUT
+	prompt "enable data reception on low level debug port"
+	help
+	  Enable this option if you want to be able to receive data using low
+	  level debug port as well as sending data over it.
+
 choice
 	prompt "Kernel low-level debugging port"
 	depends on DEBUG_LL
@@ -930,3 +939,5 @@ endmenu

 config HAS_DEBUG_LL
 	bool
+config HAS_DEBUG_LL_INPUT
+        bool
diff --git a/include/debug_ll.h b/include/debug_ll.h
index b0eb7cd..4272830 100644
--- a/include/debug_ll.h
+++ b/include/debug_ll.h
@@ -38,6 +38,27 @@ static inline void putc_ll(char value)
 	PUTC_LL(value);
 }

+#if defined (CONFIG_DEBUG_LL_INPUT)
+static inline int tstc_ll(void)
+{
+	return TSTC_LL();
+}
+
+static inline int getc_ll(void)
+{
+	return GETC_LL();
+}
+#else
+static inline int tstc_ll(void)
+{
+	return 0;
+}
+static inline int getc_ll(void)
+{
+	return -ENOTSUPP;
+}
+#endif
+
 static inline void puthex_ll(unsigned long value)
 {
 	int i; unsigned char ch;
@@ -71,6 +92,15 @@ static inline void putc_ll(char value)
 {
 }

+static inline int tstc_ll(void)
+{
+	return 0;
+}
+static inline int getc_ll(void)
+{
+	return -ENOTSUPP;
+}
+
 static inline void puthex_ll(unsigned long value)
 {
 }
--
2.1.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
