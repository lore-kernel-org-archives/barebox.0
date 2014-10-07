Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XbVf2-0008Hg-6r
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 14:22:46 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1XbVef-0003Om-1H
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 16:22:21 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <jbe@pengutronix.de>) id 1XbVee-0004DP-Vg
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 16:22:20 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Tue,  7 Oct 2014 16:22:09 +0200
Message-Id: <1412691738-11145-11-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1412691738-11145-1-git-send-email-jbe@pengutronix.de>
References: <1412691738-11145-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 10/19] MPC5xxx/serial: use dedicated I/O functions instead of
 memory access
To: barebox@lists.infradead.org

This forces the driver to use the hardware synchronized commands.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 drivers/serial/serial_mpc5xxx.c | 37 +++++++++++++++++++------------------
 1 file changed, 19 insertions(+), 18 deletions(-)

diff --git a/drivers/serial/serial_mpc5xxx.c b/drivers/serial/serial_mpc5xxx.c
index 18aca87..9d92fed 100644
--- a/drivers/serial/serial_mpc5xxx.c
+++ b/drivers/serial/serial_mpc5xxx.c
@@ -32,6 +32,7 @@
 #include <common.h>
 #include <mach/mpc5xxx.h>
 #include <driver.h>
+#include <io.h>
 #include <init.h>
 #include <console.h>
 #include <xfuncs.h>
@@ -50,8 +51,8 @@ static int __mpc5xxx_serial_setbaudrate(struct mpc5xxx_psc *psc, int baudrate)
 
 	/* set up UART divisor */
 	div = (baseclk + (baudrate/2)) / baudrate;
-	psc->ctur = (div >> 8) & 0xFF;
-	psc->ctlr =  div & 0xff;
+	out_8(&psc->ctur, (div >> 8) & 0xFF);
+	out_8(&psc->ctlr,  div & 0xff);
 
 	return 0;
 }
@@ -69,33 +70,33 @@ static int mpc5xxx_serial_setbaudrate(struct console_device *cdev, int baudrate)
 static int __mpc5xxx_serial_init(struct mpc5xxx_psc *psc)
 {
 	/* reset PSC */
-	psc->command = PSC_SEL_MODE_REG_1;
+	out_8(&psc->command, PSC_SEL_MODE_REG_1);
 
 	/* select clock sources */
 #if defined(CONFIG_MGT5100)
-	psc->psc_clock_select = 0xdd00;
+	out_be16(&psc->psc_clock_select, 0xdd00);
 #elif defined(CONFIG_MPC5200)
-	psc->psc_clock_select = 0;
+	out_be16(&psc->psc_clock_select, 0);
 #endif
 
 	/* switch to UART mode */
-	psc->sicr = 0;
+	out_be32(&psc->sicr, 0);
 
 	/* configure parity, bit length and so on */
 #if defined(CONFIG_MGT5100)
-	psc->mode = PSC_MODE_ERR | PSC_MODE_8_BITS | PSC_MODE_PARNONE;
+	out_8(&psc->mode, PSC_MODE_ERR | PSC_MODE_8_BITS | PSC_MODE_PARNONE);
 #elif defined(CONFIG_MPC5200)
-	psc->mode = PSC_MODE_8_BITS | PSC_MODE_PARNONE;
+	out_8(&psc->mode, PSC_MODE_8_BITS | PSC_MODE_PARNONE);
 #endif
-	psc->mode = PSC_MODE_ONE_STOP;
+	out_8(&psc->mode, PSC_MODE_ONE_STOP);
 
 	/* disable all interrupts */
-	psc->psc_imr = 0;
+	out_be16(&psc->psc_imr, 0);
 
 	/* reset and enable Rx/Tx */
-//	psc->command = PSC_RST_RX;
-//	psc->command = PSC_RST_TX;
-	psc->command = PSC_RX_ENABLE | PSC_TX_ENABLE;
+//	out_8(&psc->command, PSC_RST_RX);
+//	out_8(&psc->command, PSC_RST_TX);
+	out_8(&psc->command, PSC_RX_ENABLE | PSC_TX_ENABLE);
 
 	return 0;
 }
@@ -116,10 +117,10 @@ static void mpc5xxx_serial_putc (struct console_device *cdev, const char c)
 	struct mpc5xxx_psc *psc = dev->priv;
 
 	/* Wait for last character to go. */
-	while (!(psc->psc_status & PSC_SR_TXEMP))
+	while (!(in_be16(&psc->psc_status) & PSC_SR_TXEMP))
 		;
 
-	psc->psc_buffer_8 = c;
+	out_8(&psc->psc_buffer_8, c);
 }
 
 static int mpc5xxx_serial_getc (struct console_device *cdev)
@@ -128,10 +129,10 @@ static int mpc5xxx_serial_getc (struct console_device *cdev)
 	struct mpc5xxx_psc *psc = dev->priv;
 
 	/* Wait for a character to arrive. */
-	while (!(psc->psc_status & PSC_SR_RXRDY))
+	while (!(in_be16(&psc->psc_status) & PSC_SR_RXRDY))
 		;
 
-	return psc->psc_buffer_8;
+	return in_8(&psc->psc_buffer_8);
 }
 
 static int mpc5xxx_serial_tstc (struct console_device *cdev)
@@ -139,7 +140,7 @@ static int mpc5xxx_serial_tstc (struct console_device *cdev)
 	struct device_d *dev = cdev->dev;
 	struct mpc5xxx_psc *psc = dev->priv;
 
-	return (psc->psc_status & PSC_SR_RXRDY);
+	return in_be16(&psc->psc_status) & PSC_SR_RXRDY;
 }
 
 static int mpc5xxx_serial_probe(struct device_d *dev)
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
