Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpYlh-0004gG-FT
 for barebox@lists.infradead.org; Thu, 20 Jun 2013 06:55:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 20 Jun 2013 08:54:16 +0200
Message-Id: <1371711261-10039-13-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1371711261-10039-1-git-send-email-s.hauer@pengutronix.de>
References: <1371711261-10039-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/17] serial: stm: Use clk support
To: barebox@lists.infradead.org
Cc: Juergen Beisert <jbe@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/stm-serial.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/serial/stm-serial.c b/drivers/serial/stm-serial.c
index a1bb733..0d7484f 100644
--- a/drivers/serial/stm-serial.c
+++ b/drivers/serial/stm-serial.c
@@ -29,6 +29,8 @@
 #include <gpio.h>
 #include <io.h>
 #include <malloc.h>
+#include <linux/clk.h>
+#include <linux/err.h>
 #include <mach/imx-regs.h>
 #include <mach/clock.h>
 
@@ -56,6 +58,7 @@ struct stm_priv {
 	int baudrate;
 	struct notifier_block notify;
 	void __iomem *base;
+	struct clk *clk;
 };
 
 static void stm_serial_putc(struct console_device *cdev, char c)
@@ -107,7 +110,7 @@ static int stm_serial_setbaudrate(struct console_device *cdev, int new_baudrate)
 	writel(0, priv->base + UARTDBGCR);
 
 	/* Calculate and set baudrate */
-	quot = (imx_get_xclk() * 4) / new_baudrate;
+	quot = (clk_get_rate(priv->clk) * 4) / new_baudrate;
 	writel(quot & 0x3f, priv->base + UARTDBGFBRD);
 	writel(quot >> 6, priv->base + UARTDBGIBRD);
 
@@ -160,6 +163,9 @@ static int stm_serial_probe(struct device_d *dev)
 
 	dev->priv = priv;
 	priv->base = dev_request_mem_region(dev, 0);
+	priv->clk = clk_get(dev, NULL);
+	if (IS_ERR(priv->clk))
+		return PTR_ERR(priv->clk);
 
 	stm_serial_init_port(priv);
 	stm_serial_setbaudrate(cdev, CONFIG_BAUDRATE);
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
