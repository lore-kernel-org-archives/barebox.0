Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3fnJ-000818-0W
 for barebox@lists.infradead.org; Mon, 17 Feb 2020 12:46:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Feb 2020 13:45:54 +0100
Message-Id: <20200217124623.14520-14-s.hauer@pengutronix.de>
In-Reply-To: <20200217124623.14520-1-s.hauer@pengutronix.de>
References: <20200217124623.14520-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/42] ARM: i.MX8M: rename i.MX8M specific function
To: Barebox List <barebox@lists.infradead.org>

The big i.MX8 variants have completely other UARTs than the i.MX8M
variants, so rename imx8_uart_setup_ll() to imx8m_uart_setup_ll().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c    | 2 +-
 arch/arm/boards/phytec-som-imx8mq/lowlevel.c | 2 +-
 arch/arm/boards/zii-imx8mq-dev/lowlevel.c    | 2 +-
 arch/arm/mach-imx/include/mach/debug_ll.h    | 4 ++--
 4 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
index 58dafe7aac..bf84189139 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
@@ -36,7 +36,7 @@ static void setup_uart(void)
 
 	imx8mq_setup_pad(IMX8MQ_PAD_UART1_TXD__UART1_TX | UART_PAD_CTRL);
 
-	imx8_uart_setup_ll();
+	imx8m_uart_setup_ll();
 
 	putc_ll('>');
 }
diff --git a/arch/arm/boards/phytec-som-imx8mq/lowlevel.c b/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
index cdbf88e8c1..6983d44b95 100644
--- a/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
@@ -39,7 +39,7 @@ static void setup_uart(void)
 
 	imx8mq_setup_pad(IMX8MQ_PAD_UART1_TXD__UART1_TX | UART_PAD_CTRL);
 
-	imx8_uart_setup_ll();
+	imx8m_uart_setup_ll();
 
 	putc_ll('>');
 }
diff --git a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
index 81ef4de421..232de71483 100644
--- a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
+++ b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
@@ -38,7 +38,7 @@ static void setup_uart(void)
 
 	imx8mq_setup_pad(IMX8MQ_PAD_UART1_TXD__UART1_TX | UART_PAD_CTRL);
 
-	imx8_uart_setup_ll();
+	imx8m_uart_setup_ll();
 
 	putc_ll('>');
 }
diff --git a/arch/arm/mach-imx/include/mach/debug_ll.h b/arch/arm/mach-imx/include/mach/debug_ll.h
index 1550e059ed..5eed01631c 100644
--- a/arch/arm/mach-imx/include/mach/debug_ll.h
+++ b/arch/arm/mach-imx/include/mach/debug_ll.h
@@ -98,7 +98,7 @@ static inline void vf610_uart_setup_ll(void)
 	lpuart_setup(base, 66000000);
 }
 
-static inline void imx8_uart_setup_ll(void)
+static inline void imx8m_uart_setup_ll(void)
 {
 	void *base = IOMEM(IMX_UART_BASE(IMX_DEBUG_SOC,
 					 CONFIG_DEBUG_IMX_UART_PORT));
@@ -127,7 +127,7 @@ static inline void imx53_uart_setup_ll(void) {}
 static inline void imx6_uart_setup_ll(void)  {}
 static inline void imx7_uart_setup_ll(void)  {}
 static inline void vf610_uart_setup_ll(void) {}
-static inline void imx8_uart_setup_ll(void)  {}
+static inline void imx8m_uart_setup_ll(void) {}
 
 #endif /* CONFIG_DEBUG_LL */
 
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
