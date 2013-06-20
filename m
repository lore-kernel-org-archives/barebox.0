Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpYlZ-0004gA-50
 for barebox@lists.infradead.org; Thu, 20 Jun 2013 06:54:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 20 Jun 2013 08:54:15 +0200
Message-Id: <1371711261-10039-12-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/17] serial: auart: Use clk support
To: barebox@lists.infradead.org
Cc: Juergen Beisert <jbe@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/serial_auart.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/serial/serial_auart.c b/drivers/serial/serial_auart.c
index a69e65b..98f7c75 100644
--- a/drivers/serial/serial_auart.c
+++ b/drivers/serial/serial_auart.c
@@ -42,6 +42,8 @@
 #include <io.h>
 #include <malloc.h>
 #include <notifier.h>
+#include <linux/clk.h>
+#include <linux/err.h>
 
 #include <mach/clock.h>
 #include <mach/mxs.h>
@@ -92,6 +94,7 @@ struct auart_priv {
 	int baudrate;
 	struct notifier_block notify;
 	void __iomem *base;
+	struct clk *clk;
 };
 
 static void auart_serial_putc(struct console_device *cdev, char c)
@@ -143,7 +146,7 @@ static int auart_serial_setbaudrate(struct console_device *cdev, int new_baudrat
 	writel(0x0, priv->base + HW_UARTAPP_CTRL2);
 
 	/* Calculate and set baudrate */
-	quot = (imx_get_xclk() * 32) / new_baudrate;
+	quot = (clk_get_rate(priv->clk) * 32) / new_baudrate;
 	reg = BF_UARTAPP_LINECTRL_BAUD_DIVFRAC(quot & 0x3F) |
 		BF_UARTAPP_LINECTRL_BAUD_DIVINT(quot >> 6) |
 		BF_UARTAPP_LINECTRL_WLEN(3) |
@@ -194,6 +197,9 @@ static int auart_serial_probe(struct device_d *dev)
 
 	dev->priv = priv;
 	priv->base = dev_request_mem_region(dev, 0);
+	priv->clk = clk_get(dev, NULL);
+	if (IS_ERR(priv->clk))
+		return PTR_ERR(priv->clk);
 
 	auart_serial_init_port(priv);
 	auart_serial_setbaudrate(cdev, CONFIG_BAUDRATE);
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
