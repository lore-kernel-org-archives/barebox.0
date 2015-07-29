Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZKOPF-0007Ew-SM
 for barebox@lists.infradead.org; Wed, 29 Jul 2015 10:16:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 29 Jul 2015 12:15:37 +0200
Message-Id: <1438164937-2349-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1438164937-2349-1-git-send-email-s.hauer@pengutronix.de>
References: <1438164937-2349-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: i.MX: make early UART functions independent of
 DEBUG_LL
To: Barebox List <barebox@lists.infradead.org>

We have functions to setup the i.MX uart for early use, but these all
depend on DEBUG_LL. Move them to imx-uart.h to make them usable for
the regular PBL console.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/debug_ll.h | 47 +++++--------------------------
 include/serial/imx-uart.h                 | 40 ++++++++++++++++++++++++++
 2 files changed, 47 insertions(+), 40 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/debug_ll.h b/arch/arm/mach-imx/include/mach/debug_ll.h
index ab939b3..fb170fe 100644
--- a/arch/arm/mach-imx/include/mach/debug_ll.h
+++ b/arch/arm/mach-imx/include/mach/debug_ll.h
@@ -21,33 +21,6 @@
 #define __IMX_UART_BASE(soc, num) soc##_UART##num##_BASE_ADDR
 #define IMX_UART_BASE(soc, num) __IMX_UART_BASE(soc, num)
 
-static inline void imx_uart_setup_ll(void __iomem *uartbase,
-				     unsigned int refclock)
-{
-	writel(0x00000000, uartbase + UCR1);
-
-	writel(UCR2_IRTS | UCR2_WS | UCR2_TXEN | UCR2_RXEN | UCR2_SRST,
-	       uartbase + UCR2);
-	writel(UCR3_DSR | UCR3_DCD | UCR3_RI | UCR3_ADNIMP | UCR3_RXDMUXSEL,
-	       uartbase + UCR3);
-	writel((0b10 << UFCR_TXTL_SHF) | UFCR_RFDIV1 | (1 << UFCR_RXTL_SHF),
-	       uartbase + UFCR);
-
-	writel(baudrate_to_ubir(CONFIG_BAUDRATE),
-	       uartbase + UBIR);
-	writel(refclock_to_ubmr(refclock),
-	       uartbase + UBMR);
-
-	writel(UCR1_UARTEN, uartbase + UCR1);
-}
-
-#define __imx_uart_setup_ll(refclock)					\
-	do {								\
-		imx_uart_setup_ll(IOMEM(IMX_UART_BASE(IMX_DEBUG_SOC,	\
-						      CONFIG_DEBUG_IMX_UART_PORT)), \
-				  refclock);				\
-	} while(0)
-
 #ifdef CONFIG_DEBUG_IMX1_UART
 #define IMX_DEBUG_SOC MX1
 #elif defined CONFIG_DEBUG_IMX21_UART
@@ -72,12 +45,16 @@ static inline void imx_uart_setup_ll(void __iomem *uartbase,
 
 static inline void imx51_uart_setup_ll(void)
 {
-	__imx_uart_setup_ll(54000000);
+	void *base = IOMEM(IMX_UART_BASE(IMX_DEBUG_SOC, CONFIG_DEBUG_IMX_UART_PORT));
+
+	imx51_uart_setup(base);
 }
 
 static inline void imx6_uart_setup_ll(void)
 {
-	__imx_uart_setup_ll(80000000);
+	void *base = IOMEM(IMX_UART_BASE(IMX_DEBUG_SOC, CONFIG_DEBUG_IMX_UART_PORT));
+
+	imx6_uart_setup(base);
 }
 
 static inline void PUTC_LL(int c)
@@ -88,20 +65,10 @@ static inline void PUTC_LL(int c)
 	if (!base)
 		return;
 
-	if (!(readl(base + UCR1) & UCR1_UARTEN))
-		return;
-
-	while (!(readl(base + USR2) & USR2_TXDC));
-
-	writel(c, base + URTX0);
+	imx_uart_putc(base, c);
 }
 #else
 
-static inline void imx_uart_setup_ll(void __iomem *uartbase,
-				     unsigned int refclock)
-{
-}
-
 static inline void imx51_uart_setup_ll(void) {}
 static inline void imx6_uart_setup_ll(void)  {}
 
diff --git a/include/serial/imx-uart.h b/include/serial/imx-uart.h
index 7275e6a..d0e5bcc 100644
--- a/include/serial/imx-uart.h
+++ b/include/serial/imx-uart.h
@@ -125,4 +125,44 @@ static inline int refclock_to_ubmr(int clock_hz)
 	return clock_hz / 1600 - 1;
 }
 
+static inline void imx_uart_setup(void __iomem *uartbase,
+				     unsigned int refclock)
+{
+	writel(0x00000000, uartbase + UCR1);
+
+	writel(UCR2_IRTS | UCR2_WS | UCR2_TXEN | UCR2_RXEN | UCR2_SRST,
+	       uartbase + UCR2);
+	writel(UCR3_DSR | UCR3_DCD | UCR3_RI | UCR3_ADNIMP | UCR3_RXDMUXSEL,
+	       uartbase + UCR3);
+	writel((0b10 << UFCR_TXTL_SHF) | UFCR_RFDIV1 | (1 << UFCR_RXTL_SHF),
+	       uartbase + UFCR);
+
+	writel(baudrate_to_ubir(CONFIG_BAUDRATE),
+	       uartbase + UBIR);
+	writel(refclock_to_ubmr(refclock),
+	       uartbase + UBMR);
+
+	writel(UCR1_UARTEN, uartbase + UCR1);
+}
+
+static inline void imx51_uart_setup(void __iomem *uartbase)
+{
+	imx_uart_setup(uartbase, 54000000);
+}
+
+static inline void imx6_uart_setup(void __iomem *uartbase)
+{
+	imx_uart_setup(uartbase, 80000000);
+}
+
+static inline void imx_uart_putc(void *base, int c)
+{
+	if (!(readl(base + UCR1) & UCR1_UARTEN))
+		return;
+
+	while (!(readl(base + USR2) & USR2_TXDC));
+
+	writel(c, base + URTX0);
+}
+
 #endif	/* __IMX_UART_H__ */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
