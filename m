Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo1.mail-out.ovh.net ([87.98.162.229]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VNdK2-0004hK-P9
 for barebox@lists.infradead.org; Sun, 22 Sep 2013 06:39:11 +0000
Received: from mail630.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 726371004AE6
 for <barebox@lists.infradead.org>; Sun, 22 Sep 2013 08:38:49 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 22 Sep 2013 08:39:56 +0200
Message-Id: <1379831996-11714-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1379831996-11714-1-git-send-email-plagnioj@jcrosoft.com>
References: <1379831996-11714-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] serial: do not set default baudrate at init
To: barebox@lists.infradead.org

this will be done at activation

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/serial/amba-pl011.c      | 4 ----
 drivers/serial/atmel.c           | 2 --
 drivers/serial/serial_auart.c    | 1 -
 drivers/serial/serial_clps711x.c | 3 ---
 drivers/serial/serial_imx.c      | 1 -
 drivers/serial/serial_ns16550.c  | 2 --
 6 files changed, 13 deletions(-)

diff --git a/drivers/serial/amba-pl011.c b/drivers/serial/amba-pl011.c
index 0f384e5..fc7723e 100644
--- a/drivers/serial/amba-pl011.c
+++ b/drivers/serial/amba-pl011.c
@@ -164,10 +164,6 @@ int pl011_init_port (struct console_device *cdev)
 	uart->uartclk = clk_get_rate(uart->clk);
 
 	/*
-	 * set baud rate
-	 */
-	pl011_setbaudrate(cdev, 115200);
-	/*
 	 ** Set the UART to be 8 bits, 1 stop bit, no parity, fifo enabled.
 	 */
 	pl011_rlcr(uart, UART01x_LCRH_WLEN_8 | UART01x_LCRH_FEN);
diff --git a/drivers/serial/atmel.c b/drivers/serial/atmel.c
index 6a20eab..c2a5d33 100644
--- a/drivers/serial/atmel.c
+++ b/drivers/serial/atmel.c
@@ -405,8 +405,6 @@ static int atmel_serial_init_port(struct console_device *cdev)
 
 	writel(USART3_BIT(RSTRX) | USART3_BIT(RSTTX), uart->base + USART3_CR);
 
-	atmel_serial_setbaudrate(cdev, 115200);
-
 	writel(USART3_BIT(RXEN) | USART3_BIT(TXEN), uart->base + USART3_CR);
 	writel((USART3_BF(USART_MODE, USART3_USART_MODE_NORMAL)
 			   | USART3_BF(USCLKS, USART3_USCLKS_MCK)
diff --git a/drivers/serial/serial_auart.c b/drivers/serial/serial_auart.c
index 60a701d..1980516 100644
--- a/drivers/serial/serial_auart.c
+++ b/drivers/serial/serial_auart.c
@@ -201,7 +201,6 @@ static int auart_serial_probe(struct device_d *dev)
 		return PTR_ERR(priv->clk);
 
 	auart_serial_init_port(priv);
-	auart_serial_setbaudrate(cdev, CONFIG_BAUDRATE);
 
 	/* Disable RTS/CTS, enable Rx, Tx, UART */
 	writel(BM_UARTAPP_CTRL2_RTSEN | BM_UARTAPP_CTRL2_CTSEN |
diff --git a/drivers/serial/serial_clps711x.c b/drivers/serial/serial_clps711x.c
index 17d4c2e..e43d141 100644
--- a/drivers/serial/serial_clps711x.c
+++ b/drivers/serial/serial_clps711x.c
@@ -58,9 +58,6 @@ static void clps711x_init_port(struct console_device *cdev)
 	tmp |= UBRLCR_FIFOEN | UBRLCR_WRDLEN8; /* FIFO on, 8N1 mode */
 	writel(tmp, s->UBRLCR);
 
-	/* Set default baudrate on initialization */
-	clps711x_setbaudrate(cdev, CONFIG_BAUDRATE);
-
 	/* Enable the UART */
 	writel(readl(SYSCON(s)) | SYSCON_UARTEN, SYSCON(s));
 }
diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index e99dde8..01c7cc7 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -337,7 +337,6 @@ static int imx_serial_probe(struct device_d *dev)
 	cdev->setbrg = imx_serial_setbaudrate;
 
 	imx_serial_init_port(cdev);
-	imx_serial_setbaudrate(cdev, 115200);
 
 	/* Enable UART */
 	val = readl(priv->regs + UCR1);
diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 5ae2b76..59b509c 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -183,8 +183,6 @@ static void ns16550_serial_init_port(struct console_device *cdev)
 	ns16550_write(cdev, 0x07, mdr1);	/* Disable */
 #endif
 
-	ns16550_setbaudrate(cdev, CONFIG_BAUDRATE);
-
 #ifdef CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS
 	ns16550_write(cdev, 0x00,  mdr1);
 #endif
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
