Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo6-p00-ob.rzone.de ([2a01:238:20a:202:5300::1])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SxEgJ-00044J-S8
 for barebox@lists.infradead.org; Fri, 03 Aug 2012 10:00:32 +0000
Received: from [192.168.1.10]
 (ALyon-754-1-18-135.w90-53.abo.wanadoo.fr [90.53.125.135])
 by smtp.strato.de (josoe mo99) (RZmta 30.4 DYNA|AUTH)
 with ESMTPA id i01619o738YHfD for <barebox@lists.infradead.org>;
 Fri, 3 Aug 2012 12:00:28 +0200 (CEST)
Message-ID: <501BA13A.30605@calao-systems.com>
Date: Fri, 03 Aug 2012 12:00:26 +0200
From: gregory hermant <gregory.hermant@calao-systems.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Enable pull-up on Rx serial ports for the CALAO MB-QIL-A9260
To: barebox@lists.infradead.org

This patch prevents to stop the autoboot randomly for the CALAO MB-QIL-A9260.
Indeed on this board, there's no pull-up on the RX inputs for the DBGU, COM1 & COM2 serial port.
With pull-up enabled, there's no longer unwanted character received from these console (CONFIG_CONSOLE_ACTIVATE_ALL=y). 
  
Signed-off-by: Gregory Hermant <gregory.hermant@calao-systems.com>
---
 arch/arm/boards/qil-a9260/init.c |    6 ++++++
 1 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/qil-a9260/init.c b/arch/arm/boards/qil-a9260/init.c
index 305d733..b43cace 100644
--- a/arch/arm/boards/qil-a9260/init.c
+++ b/arch/arm/boards/qil-a9260/init.c
@@ -196,11 +196,17 @@ device_initcall(qil_a9260_devices_init);
 static int qil_a9260_console_init(void)
 {
 	at91_register_uart(0, 0);
+	at91_set_A_periph(AT91_PIN_PB14, 1);    /* Enable pull-up on DRXD */
+
 	at91_register_uart(1, ATMEL_UART_CTS | ATMEL_UART_RTS
 			   | ATMEL_UART_DTR | ATMEL_UART_DSR | ATMEL_UART_DCD
 			   | ATMEL_UART_RI);
+
 	at91_register_uart(2, ATMEL_UART_CTS | ATMEL_UART_RTS);
+	at91_set_A_periph(AT91_PIN_PB7, 1);	/* Enable pull-up on RXD1 */
+
 	at91_register_uart(3, ATMEL_UART_CTS | ATMEL_UART_RTS);
+	at91_set_A_periph(AT91_PIN_PB9, 1);	/* Enable pull-up on RXD2 */
 
 	return 0;
 }
-- 
1.5.6.3



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
