Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir5X7-0007o1-8v
 for barebox@lists.infradead.org; Mon, 13 Jan 2020 19:37:54 +0000
Received: from astat.fritz.box (a89-183-121-189.net-htp.de [89.183.121.189])
 by lynxeye.de (Postfix) with ESMTPA id 254EDE74222
 for <barebox@lists.infradead.org>; Mon, 13 Jan 2020 20:37:19 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 13 Jan 2020 20:37:15 +0100
Message-Id: <20200113193716.133305-2-dev@lynxeye.de>
In-Reply-To: <20200113193716.133305-1-dev@lynxeye.de>
References: <20200113193716.133305-1-dev@lynxeye.de>
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
Subject: [PATCH 2/3] serial: cadence: add lowlevel init and putc functions
To: barebox@lists.infradead.org

This allows to use the Cadence serial as a PBL console.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 include/serial/cadence.h | 55 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/include/serial/cadence.h b/include/serial/cadence.h
index 014fb01203a9..f08b5b0cba4a 100644
--- a/include/serial/cadence.h
+++ b/include/serial/cadence.h
@@ -34,4 +34,59 @@
 #define CADENCE_STS_TEMPTY		(1 << 3)
 #define CADENCE_STS_TFUL		(1 << 4)
 
+static inline void cadence_uart_init(void __iomem *uartbase)
+{
+	int baudrate = CONFIG_BAUDRATE;
+	unsigned int clk = 49999995;
+	unsigned int gen, div;
+
+	/* disable transmitter and receiver */
+	writel(0, uartbase + CADENCE_UART_CONTROL);
+
+	/* calculate and set baud clock generator parameters */
+	for (div = 4; div < 256; div++) {
+		int calc_rate, error;
+
+		gen = clk / (baudrate * (div + 1));
+
+		if (gen < 1 || gen > 65535)
+			continue;
+
+		calc_rate = clk / (gen * (div + 1));
+		error = baudrate - calc_rate;
+		if (error < 0)
+			error *= -1;
+		if (((error * 100) / baudrate) < 3)
+			break;
+	}
+
+	writel(gen, uartbase + CADENCE_UART_BAUD_GEN);
+	writel(div, uartbase + CADENCE_UART_BAUD_DIV);
+
+	/* soft-reset tx/rx paths */
+	writel(CADENCE_CTRL_RXRES | CADENCE_CTRL_TXRES,
+	       uartbase + CADENCE_UART_CONTROL);
+
+	while (readl(uartbase + CADENCE_UART_CONTROL) &
+		(CADENCE_CTRL_RXRES | CADENCE_CTRL_TXRES))
+		;
+
+	/* enable UART */
+	writel(CADENCE_MODE_CLK_REF | CADENCE_MODE_CHRL_8 |
+	       CADENCE_MODE_PAR_NONE, uartbase + CADENCE_UART_MODE);
+	writel(CADENCE_CTRL_RXEN | CADENCE_CTRL_TXEN,
+	       uartbase + CADENCE_UART_CONTROL);
+}
+
+static inline void cadence_uart_putc(void *base, int c)
+{
+	if (!(readl(base + CADENCE_UART_CONTROL) & CADENCE_CTRL_TXEN))
+		return;
+
+	while ((readl(base + CADENCE_UART_CHANNEL_STS) & CADENCE_STS_TFUL))
+		;
+
+	writel(c, base + CADENCE_UART_RXTXFIFO);
+}
+
 #endif /* __CADENCE_UART_H__ */
-- 
2.24.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
