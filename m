Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo2.mail-out.ovh.net ([87.98.172.75]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VMe8y-0005vZ-Hz
 for barebox@lists.infradead.org; Thu, 19 Sep 2013 13:19:41 +0000
Received: from mail616.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 8D616DC8738
 for <barebox@lists.infradead.org>; Thu, 19 Sep 2013 15:19:19 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 19 Sep 2013 15:20:25 +0200
Message-Id: <1379596826-5743-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1379596826-5743-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130919131929.GA1137@ns203013.ovh.net>
 <1379596826-5743-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/5] atmel_serial: add rs485 support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/serial/atmel.c | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/serial/atmel.c b/drivers/serial/atmel.c
index 89c141e..40945c9 100644
--- a/drivers/serial/atmel.c
+++ b/drivers/serial/atmel.c
@@ -362,6 +362,32 @@ static int atmel_serial_setbaudrate(struct console_device *cdev, int baudrate)
 	return 0;
 }
 
+static int atmel_serial_set_mode(struct console_device *cdev, enum console_mode mode)
+{
+	struct atmel_uart_port *uart = to_atmel_uart_port(cdev);
+	u32 mr;
+	u8 m;
+
+	mr = readl(uart->base + USART3_MR);
+	mr &= ~0xf;
+
+	switch (mode) {
+	case CONSOLE_MODE_NORMAL:
+		m = USART3_USART_MODE_NORMAL;
+		break;
+	case CONSOLE_MODE_RS485:
+		m = USART3_USART_MODE_RS485;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	mr |= USART3_BF(USART_MODE, m);
+	writel(mr, uart->base + USART3_MR);
+
+	return 0;
+}
+
 /*
  * Initialise the serial port with the given baudrate. The settings
  * are always 8 data bits, no parity, 1 stop bit, no start bits.
@@ -404,6 +430,7 @@ static int atmel_serial_probe(struct device_d *dev)
 	cdev->putc = atmel_serial_putc;
 	cdev->getc = atmel_serial_getc;
 	cdev->setbrg = atmel_serial_setbaudrate;
+	cdev->set_mode = atmel_serial_set_mode;
 
 	atmel_serial_init_port(cdev);
 
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
