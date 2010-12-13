Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PS62I-000208-S3
	for barebox@lists.infradead.org; Mon, 13 Dec 2010 10:53:44 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1PS62F-0008Qn-Rk
	for barebox@lists.infradead.org; Mon, 13 Dec 2010 11:53:39 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1PS62F-0002IU-P3
	for barebox@lists.infradead.org; Mon, 13 Dec 2010 11:53:39 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 13 Dec 2010 11:53:27 +0100
Message-Id: <1292237617-7064-5-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1292237617-7064-1-git-send-email-jbe@pengutronix.de>
References: <1292237617-7064-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 04/14] STM378x: Do not configure any pin usage in the driver
To: barebox@lists.infradead.org

Only the platform should configure pins to be used by the driver.
The driver must work independently from the settings.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/serial/stm-serial.c |    7 -------
 1 files changed, 0 insertions(+), 7 deletions(-)

diff --git a/drivers/serial/stm-serial.c b/drivers/serial/stm-serial.c
index 3edd484..a225e30 100644
--- a/drivers/serial/stm-serial.c
+++ b/drivers/serial/stm-serial.c
@@ -134,13 +134,6 @@ static int stm_clocksource_clock_change(struct notifier_block *nb, unsigned long
 static int stm_serial_init_port(struct console_device *cdev)
 {
 	struct device_d *dev = cdev->dev;
-	/*
-	 * If the board specific file registers this console we should force
-	 * the usage of the debug UART pins, to be able to let the user see
-	 * the output, even if the board file forgets to configure these pins.
-	 */
-	imx_gpio_mode(PWM1_DUART_TX);
-	imx_gpio_mode(PWM0_DUART_RX);
 
 	/* Disable UART */
 	writel(0, dev->map_base + UARTDBGCR);
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
