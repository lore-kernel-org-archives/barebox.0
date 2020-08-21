Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k8ymB-0002u5-9S
 for barebox@lists.infradead.org; Fri, 21 Aug 2020 04:35:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 21 Aug 2020 06:35:34 +0200
Message-Id: <20200821043535.10152-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: imx8m: Make uart setup function name more generic
To: Barebox List <barebox@lists.infradead.org>

So far all i.MX8M variants have the same UART base addresses, so let's
be optimistic that it stays like that and rename imx8mq_uart_setup() to
imx8m_uart_setup().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mm-evk/lowlevel.c | 2 +-
 arch/arm/mach-imx/include/mach/debug_ll.h | 2 +-
 include/serial/imx-uart.h                 | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
index 082aefb8c1..96b78d2c66 100644
--- a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
@@ -32,7 +32,7 @@ static void setup_uart(void)
 
 	imx8mm_setup_pad(IMX8MM_PAD_UART2_TXD_UART2_TX | UART_PAD_CTRL);
 
-	imx8mq_uart_setup((void *)MX8M_UART2_BASE_ADDR);
+	imx8m_uart_setup((void *)MX8M_UART2_BASE_ADDR);
 
 	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
 		imx8m_uart_setup_ll();
diff --git a/arch/arm/mach-imx/include/mach/debug_ll.h b/arch/arm/mach-imx/include/mach/debug_ll.h
index 1593dd018e..a4c57c5d5a 100644
--- a/arch/arm/mach-imx/include/mach/debug_ll.h
+++ b/arch/arm/mach-imx/include/mach/debug_ll.h
@@ -102,7 +102,7 @@ static inline void imx8m_uart_setup_ll(void)
 {
 	void *base = IOMEM(IMX_UART_BASE(IMX_DEBUG_SOC,
 					 CONFIG_DEBUG_IMX_UART_PORT));
-	imx8mq_uart_setup(base);
+	imx8m_uart_setup(base);
 }
 
 static inline void PUTC_LL(int c)
diff --git a/include/serial/imx-uart.h b/include/serial/imx-uart.h
index 23cee26fcf..c0a03ac054 100644
--- a/include/serial/imx-uart.h
+++ b/include/serial/imx-uart.h
@@ -201,7 +201,7 @@ static inline void imx7_uart_setup(void __iomem *uartbase)
 	imx_uart_setup(uartbase, 24000000);
 }
 
-static inline void imx8mq_uart_setup(void __iomem *uartbase)
+static inline void imx8m_uart_setup(void __iomem *uartbase)
 {
 	imx_uart_setup(uartbase, 25000000);
 }
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
