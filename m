Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f41.google.com ([74.125.82.41])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QlRAb-0003ui-AD
	for barebox@lists.infradead.org; Mon, 25 Jul 2011 19:50:30 +0000
Received: by wwi14 with SMTP id 14so1590625wwi.0
	for <barebox@lists.infradead.org>; Mon, 25 Jul 2011 12:50:26 -0700 (PDT)
From: franck.jullien@gmail.com
Date: Mon, 25 Jul 2011 21:50:19 +0200
Message-Id: <1311623420-30234-4-git-send-email-franck.jullien@gmail.com>
In-Reply-To: <1311623420-30234-1-git-send-email-franck.jullien@gmail.com>
References: <1311623420-30234-1-git-send-email-franck.jullien@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/4] nios2/serial_altera.c: switch to ressources
To: barebox@lists.infradead.org

From: Franck Jullien <franck.jullien@gmail.com>

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 drivers/serial/serial_altera.c |    8 ++++----
 1 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/serial/serial_altera.c b/drivers/serial/serial_altera.c
index 54c7178..c0a8356 100644
--- a/drivers/serial/serial_altera.c
+++ b/drivers/serial/serial_altera.c
@@ -29,7 +29,7 @@
 
 static int altera_serial_setbaudrate(struct console_device *cdev, int baudrate)
 {
-	struct nios_uart *uart = (struct nios_uart *)cdev->dev->map_base;
+	struct nios_uart *uart = (struct nios_uart *)dev_request_mem_region(cdev->dev, 0);
 	uint16_t div;
 
 	div = (CPU_FREQ / baudrate) - 1;
@@ -40,7 +40,7 @@ static int altera_serial_setbaudrate(struct console_device *cdev, int baudrate)
 
 static void altera_serial_putc(struct console_device *cdev, char c)
 {
-	struct nios_uart *uart = (struct nios_uart *)cdev->dev->map_base;
+	struct nios_uart *uart = (struct nios_uart *)dev_request_mem_region(cdev->dev, 0);
 
 	while ((readw(&uart->status) & NIOS_UART_TRDY) == 0);
 
@@ -49,14 +49,14 @@ static void altera_serial_putc(struct console_device *cdev, char c)
 
 static int altera_serial_tstc(struct console_device *cdev)
 {
-	struct nios_uart *uart = (struct nios_uart *)cdev->dev->map_base;
+	struct nios_uart *uart = (struct nios_uart *)dev_request_mem_region(cdev->dev, 0);
 
 	return readw(&uart->status) & NIOS_UART_RRDY;
 }
 
 static int altera_serial_getc(struct console_device *cdev)
 {
-	struct nios_uart *uart = (struct nios_uart *)cdev->dev->map_base;
+	struct nios_uart *uart = (struct nios_uart *)dev_request_mem_region(cdev->dev, 0);
 
 	while (altera_serial_tstc(cdev) == 0);
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
