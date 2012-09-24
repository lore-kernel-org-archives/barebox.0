Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TG6TC-0000em-V7
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 11:05:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Sep 2012 13:04:44 +0200
Message-Id: <1348484692-24993-16-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1348484692-24993-1-git-send-email-s.hauer@pengutronix.de>
References: <1348484692-24993-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 15/23] serial i.MX: Switch to clk support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/serial_imx.c |   17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index 012ab02..e0e5b01 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -22,6 +22,8 @@
 #include <malloc.h>
 #include <notifier.h>
 #include <io.h>
+#include <linux/err.h>
+#include <linux/clk.h>
 
 #define URXD0	0x0	/* Receiver Register */
 #define URTX0	0x40	/* Transmitter Register */
@@ -170,16 +172,17 @@ struct imx_serial_priv {
 	int baudrate;
 	struct notifier_block notify;
 	void __iomem *regs;
+	struct clk *clk;
 };
 
-static int imx_serial_reffreq(void __iomem *regs)
+static int imx_serial_reffreq(struct imx_serial_priv *priv)
 {
 	ulong rfdiv;
 
-	rfdiv = (readl(regs + UFCR) >> 7) & 7;
+	rfdiv = (readl(priv->regs + UFCR) >> 7) & 7;
 	rfdiv = rfdiv < 6 ? 6 - rfdiv : 7;
 
-	return imx_get_uartclk() / rfdiv;
+	return clk_get_rate(priv->clk) / rfdiv;
 }
 
 /*
@@ -209,7 +212,7 @@ static int imx_serial_init_port(struct console_device *cdev)
 	writel(0xa81, regs + UFCR);
 
 #ifdef ONEMS
-	writel(imx_serial_reffreq(regs) / 1000, regs + ONEMS);
+	writel(imx_serial_reffreq(priv) / 1000, regs + ONEMS);
 #endif
 
 	/* Enable FIFOs */
@@ -291,7 +294,7 @@ static int imx_serial_setbaudrate(struct console_device *cdev, int baudrate)
 	/* Set the numerator value minus one of the BRM ratio */
 	writel((baudrate / 100) - 1, regs + UBIR);
 	/* Set the denominator value minus one of the BRM ratio    */
-	writel((imx_serial_reffreq(regs) / 1600) - 1, regs + UBMR);
+	writel((imx_serial_reffreq(priv) / 1600) - 1, regs + UBMR);
 
 	writel(ucr1, regs + UCR1);
 
@@ -321,6 +324,10 @@ static int imx_serial_probe(struct device_d *dev)
 	cdev = &priv->cdev;
 	dev->priv = priv;
 
+	priv->clk = clk_get(dev, NULL);
+	if (IS_ERR(priv->clk))
+		return PTR_ERR(priv->clk);
+
 	priv->regs = dev_request_mem_region(dev, 0);
 	cdev->dev = dev;
 	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
