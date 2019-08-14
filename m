Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxoT2-0007pR-7c
 for barebox@lists.infradead.org; Wed, 14 Aug 2019 08:17:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Aug 2019 10:16:58 +0200
Message-Id: <20190814081659.22670-4-s.hauer@pengutronix.de>
In-Reply-To: <20190814081659.22670-1-s.hauer@pengutronix.de>
References: <20190814081659.22670-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] serial: i.MX: Add i.MX1 lowlevel init function
To: Barebox List <barebox@lists.infradead.org>

The i.MX1 uart must be initialized slightly differently than on other
SoCs. Add an i.MX1 specific init function.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/serial/imx-uart.h | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/include/serial/imx-uart.h b/include/serial/imx-uart.h
index c23606569d..23cee26fcf 100644
--- a/include/serial/imx-uart.h
+++ b/include/serial/imx-uart.h
@@ -155,6 +155,27 @@ static inline void imx_uart_set_dte(void __iomem *uartbase)
 	writel(ufcr, uartbase + UFCR);
 }
 
+static inline void imx1_uart_setup(void __iomem *uartbase)
+{
+	unsigned int refclock = 16000000;
+
+	writel(UCR1_UARTCLKEN, uartbase + UCR1);
+
+	writel(UCR2_IRTS | UCR2_WS | UCR2_TXEN | UCR2_RXEN | UCR2_SRST,
+	       uartbase + UCR2);
+	writel(0, uartbase + UCR3);
+
+	writel((0b10 << UFCR_TXTL_SHF) | UFCR_RFDIV1 | (1 << UFCR_RXTL_SHF),
+	       uartbase + UFCR);
+
+	writel(baudrate_to_ubir(CONFIG_BAUDRATE),
+	       uartbase + UBIR);
+	writel(refclock_to_ubmr(refclock),
+	       uartbase + UBMR);
+
+	writel(UCR1_UARTCLKEN | UCR1_UARTEN, uartbase + UCR1);
+}
+
 static inline void imx50_uart_setup(void __iomem *uartbase)
 {
 	imx_uart_setup(uartbase, 66666666);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
