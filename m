Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-x230.google.com ([2607:f8b0:400e:c02::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yq53y-0007q1-JA
 for barebox@lists.infradead.org; Wed, 06 May 2015 19:33:00 +0000
Received: by pdea3 with SMTP id a3so18558361pde.3
 for <barebox@lists.infradead.org>; Wed, 06 May 2015 12:32:37 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 May 2015 12:31:59 -0700
Message-Id: <1430940733-4415-5-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1430940733-4415-1-git-send-email-andrew.smirnov@gmail.com>
References: <1430940733-4415-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 04/18] i.MX: serial: Add UART init functions for DEBUG_LL
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

It appears that all i.MX51 and i.MX6 based boards that support early
debug output inevitably do exactly the same thing with the registers
of the UART peripheral. So to avoid code duplication three new
subroutines are introduced:

  - imx_uart_setup_ll() that allows user to perform aforementioned
    "same thing" on any arbitrary UART at 'uartbase' and clocked at
    'refclock' Hz.

  - imx6_uart_setup_ll() and imx5_uart_setup_ll() that do those
    actions assuming UART to be the one specified in configuration and
    'refclock' to be equal to what it is when SoC comes out of reset.

NOTE: Please note that 'imx*_uart_setup_ll' functions do add a slight
difference in behaviour by dropping the initialization of ONEMS and
UESC registers since those do not seem to be needed for early UART
functionality

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/include/mach/debug_ll.h | 55 +++++++++++++++++++++++++++++--
 1 file changed, 53 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/debug_ll.h b/arch/arm/mach-imx/include/mach/debug_ll.h
index 31371e2..baf7f53 100644
--- a/arch/arm/mach-imx/include/mach/debug_ll.h
+++ b/arch/arm/mach-imx/include/mach/debug_ll.h
@@ -3,6 +3,7 @@
 
 #include <io.h>
 #include <config.h>
+#include <common.h>
 #include <mach/imx1-regs.h>
 #include <mach/imx21-regs.h>
 #include <mach/imx25-regs.h>
@@ -17,6 +18,36 @@
 
 #ifdef CONFIG_DEBUG_LL
 
+#define __IMX_UART_BASE(soc, num) soc##_UART##num##_BASE_ADDR
+#define IMX_UART_BASE(soc, num) __IMX_UART_BASE(soc, num)
+
+static inline void imx_uart_setup_ll(void __iomem *uartbase,
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
+#define __imx_uart_setup_ll(refclock)					\
+	do {								\
+		imx_uart_setup_ll(IOMEM(IMX_UART_BASE(IMX_DEBUG_SOC,	\
+						      CONFIG_DEBUG_IMX_UART_PORT)), \
+				  refclock);				\
+	} while(0)
+
 #ifdef CONFIG_DEBUG_IMX1_UART
 #define IMX_DEBUG_SOC MX1
 #elif defined CONFIG_DEBUG_IMX21_UART
@@ -39,8 +70,19 @@
 #error "unknown i.MX debug uart soc type"
 #endif
 
-#define __IMX_UART_BASE(soc, num) soc##_UART##num##_BASE_ADDR
-#define IMX_UART_BASE(soc, num) __IMX_UART_BASE(soc, num)
+static inline void imx51_uart_setup_ll(void)
+{
+#if defined CONFIG_DEBUG_IMX51_UART
+	__imx_uart_setup_ll(54000000);
+#endif
+}
+
+static inline void imx6_uart_setup_ll(void)
+{
+#if defined CONFIG_DEBUG_IMX6Q_UART
+	__imx_uart_setup(80000000);
+#endif
+}
 
 static inline void PUTC_LL(int c)
 {
@@ -57,5 +99,14 @@ static inline void PUTC_LL(int c)
 
 	writel(c, base + URTX0);
 }
+#else
+
+static inline void imx_uart_setup_ll(void __iomem *uartbase,
+				     unsigned int refclock)
+{
+}
+static inline void imx51_uart_setup_ll(void) {}
+static inline void imx6_uart_setup_ll(void)  {}
+
 #endif /* CONFIG_DEBUG_LL */
 #endif /* __MACH_DEBUG_LL_H__ */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
