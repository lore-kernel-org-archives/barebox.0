Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1StbMp-0006ME-1v
 for barebox@lists.infradead.org; Tue, 24 Jul 2012 09:25:39 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1StbMK-0007PB-Tc
 for barebox@lists.infradead.org; Tue, 24 Jul 2012 11:24:52 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1StbMK-0007ec-Rh
 for barebox@lists.infradead.org; Tue, 24 Jul 2012 11:24:52 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue, 24 Jul 2012 11:24:51 +0200
Message-Id: <1343121891-1643-4-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1343121891-1643-1-git-send-email-jbe@pengutronix.de>
References: <20120723064121.GW30009@pengutronix.de>
 <1343121891-1643-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 3/3] Samsung/serial: make the clock source configureable
To: barebox@lists.infradead.org

Instead of taking the value from somewhere, use the selected architecture to
select one. This ensures the selected clock source corresponds to the values
setup in the clocks-*.c from the mach directory.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/serial/serial_s3c.c |   18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/serial/serial_s3c.c b/drivers/serial/serial_s3c.c
index 96fe847..0a7b137 100644
--- a/drivers/serial/serial_s3c.c
+++ b/drivers/serial/serial_s3c.c
@@ -45,11 +45,6 @@
 #define UBRDIVSLOT 0x2c		/* baudrate slot generator */
 #define UINTM 0x38		/* interrupt mask register */
 
-#ifndef S3C_UART_CLKSEL
-/* Use pclk */
-# define S3C_UART_CLKSEL 0
-#endif
-
 struct s3c_uart {
 	void __iomem *regs;
 	struct console_device cdev;
@@ -57,6 +52,17 @@ struct s3c_uart {
 
 #define to_s3c_uart(c)	container_of(c, struct s3c_uart, cdev)
 
+/* each architecture has a preferred reference clock for its UARTs */
+static unsigned s3c_select_arch_input_clock(void)
+{
+	/* S3C24xx: 0=2=PCLK, 1=UEXTCLK, 3=FCLK/n */
+	if (IS_ENABLED(CONFIG_ARCH_S3C24xx))
+		return 0;	/* use the internal PCLK */
+	/* S5PCxx: 0=PCLK, 1=SCLK_UART */
+	if (IS_ENABLED(CONFIG_ARCH_S5PCxx))
+		return 0;	/* use the internal PCLK */
+}
+
 static unsigned s3c_get_arch_uart_input_clock(void __iomem *base)
 {
 	unsigned reg = readw(base + UCON);
@@ -108,7 +114,7 @@ static int s3c_serial_init_port(struct console_device *cdev)
 	 * all SoCs:
 	 *  - enable receive and transmit mode
 	 */
-	writew(0x0005 | UCON_SET_CLK_SRC(S3C_UART_CLKSEL),
+	writew(0x0005 | UCON_SET_CLK_SRC(s3c_select_arch_input_clock()),
 						base + UCON);
 
 	if (IS_ENABLED(CONFIG_DRIVER_SERIAL_S3C_IMPROVED))
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
