Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c46fs-00050J-A4
 for barebox@lists.infradead.org; Tue, 08 Nov 2016 13:42:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Nov 2016 14:42:29 +0100
Message-Id: <20161108134229.24671-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] serial: i.MX uart: Allow DTE mode in lowlevel code
To: Barebox List <barebox@lists.infradead.org>

Some consoles must be configured for DTE mode. Allow to set this
in lowlevel code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/serial/imx-uart.h | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/include/serial/imx-uart.h b/include/serial/imx-uart.h
index 901b26a..b40044e 100644
--- a/include/serial/imx-uart.h
+++ b/include/serial/imx-uart.h
@@ -146,6 +146,15 @@ static inline void imx_uart_setup(void __iomem *uartbase,
 	writel(UCR1_UARTEN, uartbase + UCR1);
 }
 
+static inline void imx_uart_set_dte(void __iomem *uartbase)
+{
+	u32 ufcr;
+
+	ufcr = readl(uartbase + UFCR);
+	ufcr |= UFCR_DCEDTE;
+	writel(ufcr, uartbase + UFCR);
+}
+
 static inline void imx50_uart_setup(void __iomem *uartbase)
 {
 	imx_uart_setup(uartbase, 66666666);
-- 
2.10.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
