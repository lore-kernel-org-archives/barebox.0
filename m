Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XbVf2-0008Hj-6n
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 14:22:45 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1XbVef-0003Ou-3c
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 16:22:21 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <jbe@pengutronix.de>) id 1XbVef-0004De-1v
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 16:22:21 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Tue,  7 Oct 2014 16:22:12 +0200
Message-Id: <1412691738-11145-14-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 13/19] MPC5xxx/serial: re-factor the code to share it between
 MPC5200/MPC5125
To: barebox@lists.infradead.org

The MPC5200 and MPC5125 PSC units differs in:

 - register layout and status and control bits
 - configuration (baudrate, data format)
 - FIFO handling
 - clocking

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 drivers/serial/serial_mpc5xxx.c | 84 ++++++++++++++++++++++++++++++-----------
 1 file changed, 62 insertions(+), 22 deletions(-)

diff --git a/drivers/serial/serial_mpc5xxx.c b/drivers/serial/serial_mpc5xxx.c
index 3b83bee..7cd448c 100644
--- a/drivers/serial/serial_mpc5xxx.c
+++ b/drivers/serial/serial_mpc5xxx.c
@@ -39,16 +39,66 @@
 #include <mach/clocks.h>
 #include <mach/mpc5xxx_psc.h>
 
-static int __mpc5xxx_serial_setbaudrate(struct mpc5xxx_psc *psc, int baudrate)
+static int psc_tx_rdy(struct mpc5xxx_psc *psc)
 {
-	unsigned long baseclk;
-	int div;
+	return in_be16(&psc->psc_status) & PSC_SR_TXEMP;
+}
+
+static int psc_rx_rdy(struct mpc5xxx_psc *psc)
+{
+	return in_be16(&psc->psc_status) & PSC_SR_RXRDY;
+}
+
+static void psc_tx_write(struct mpc5xxx_psc *psc, char c)
+{
+	out_8(&psc->psc_buffer_8, c);
+}
+
+static int psc_rx_read(struct mpc5xxx_psc *psc)
+{
+	return in_8(&psc->psc_buffer_8);
+}
+
+static unsigned long mpc5xxx_get_base_clock(struct mpc5xxx_psc *psc)
+{
+#if defined(CONFIG_MGT5100)
+	return (CFG_MPC5XXX_CLKIN + 16) / 32;
+#elif defined(CONFIG_MPC5200)
+	return (get_ipb_clock() + 16) / 32;
+#else
+# error "Unknwon CPU"
+#endif
+}
 
+static void mpc5xxx_select_clock_source(struct mpc5xxx_psc *psc)
+{
 #if defined(CONFIG_MGT5100)
-	baseclk = (CFG_MPC5XXX_CLKIN + 16) / 32;
+	out_be16(&psc->psc_clock_select, 0xdd00);
 #elif defined(CONFIG_MPC5200)
-	baseclk = (get_ipb_clock() + 16) / 32;
+	out_be16(&psc->psc_clock_select, 0);
+#else
+# error "Unknwon CPU"
 #endif
+}
+
+static void mpc5xxx_configure_serial_protocol(struct mpc5xxx_psc *psc)
+{
+#if defined(CONFIG_MGT5100)
+	out_8(&psc->mode, PSC_MODE_ERR | PSC_MODE_8_BITS | PSC_MODE_PARNONE);
+#elif defined(CONFIG_MPC5200)
+	out_8(&psc->mode, PSC_MODE_8_BITS | PSC_MODE_PARNONE);
+	out_8(&psc->mode, PSC_MODE_ONE_STOP);
+#else
+# error "Unknwon CPU"
+#endif
+}
+
+static int __mpc5xxx_serial_setbaudrate(struct mpc5xxx_psc *psc, int baudrate)
+{
+	unsigned long baseclk;
+	int div;
+
+	baseclk = mpc5xxx_get_base_clock(psc);
 
 	/* set up UART divisor */
 	div = (baseclk + (baudrate/2)) / baudrate;
@@ -73,23 +123,13 @@ static int __mpc5xxx_serial_init(struct mpc5xxx_psc *psc)
 	/* reset PSC */
 	out_8(&psc->command, PSC_SEL_MODE_REG_1);
 
-	/* select clock sources */
-#if defined(CONFIG_MGT5100)
-	out_be16(&psc->psc_clock_select, 0xdd00);
-#elif defined(CONFIG_MPC5200)
-	out_be16(&psc->psc_clock_select, 0);
-#endif
+	mpc5xxx_select_clock_source(psc);
 
 	/* switch to UART mode */
 	out_be32(&psc->sicr, 0);
 
 	/* configure parity, bit length and so on */
-#if defined(CONFIG_MGT5100)
-	out_8(&psc->mode, PSC_MODE_ERR | PSC_MODE_8_BITS | PSC_MODE_PARNONE);
-#elif defined(CONFIG_MPC5200)
-	out_8(&psc->mode, PSC_MODE_8_BITS | PSC_MODE_PARNONE);
-#endif
-	out_8(&psc->mode, PSC_MODE_ONE_STOP);
+	mpc5xxx_configure_serial_protocol(psc);
 
 	/* disable all interrupts */
 	out_be16(&psc->psc_imr, 0);
@@ -118,10 +158,10 @@ static void mpc5xxx_serial_putc (struct console_device *cdev, const char c)
 	struct mpc5xxx_psc *psc = dev->priv;
 
 	/* Wait for last character to go. */
-	while (!(in_be16(&psc->psc_status) & PSC_SR_TXEMP))
+	while (!psc_tx_rdy(psc))
 		;
 
-	out_8(&psc->psc_buffer_8, c);
+	psc_tx_write(psc, c);
 }
 
 static int mpc5xxx_serial_getc (struct console_device *cdev)
@@ -130,10 +170,10 @@ static int mpc5xxx_serial_getc (struct console_device *cdev)
 	struct mpc5xxx_psc *psc = dev->priv;
 
 	/* Wait for a character to arrive. */
-	while (!(in_be16(&psc->psc_status) & PSC_SR_RXRDY))
+	while (!psc_rx_rdy(psc))
 		;
 
-	return in_8(&psc->psc_buffer_8);
+	return psc_rx_read(psc);
 }
 
 static int mpc5xxx_serial_tstc (struct console_device *cdev)
@@ -141,7 +181,7 @@ static int mpc5xxx_serial_tstc (struct console_device *cdev)
 	struct device_d *dev = cdev->dev;
 	struct mpc5xxx_psc *psc = dev->priv;
 
-	return in_be16(&psc->psc_status) & PSC_SR_RXRDY;
+	return psc_rx_rdy(psc);
 }
 
 static int mpc5xxx_serial_probe(struct device_d *dev)
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
