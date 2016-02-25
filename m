Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aYplK-0003Yp-2W
 for barebox@lists.infradead.Org; Thu, 25 Feb 2016 06:50:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 25 Feb 2016 07:50:35 +0100
Message-Id: <1456383035-28145-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] serial: imx: Support DTE mode
To: Barebox List <barebox@lists.infradead.org>

Based on Kernel commit 20ff2fe60a: serial: imx: add support for DTE mode

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/serial_imx.c | 11 +++++++++--
 include/serial/imx-uart.h   |  1 +
 2 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index 68b438b..563813a 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -55,6 +55,7 @@ static struct imx_serial_devtype_data imx21_data = {
 struct imx_serial_priv {
 	struct console_device cdev;
 	int baudrate;
+	int dte_mode;
 	struct notifier_block notify;
 	void __iomem *regs;
 	struct clk *clk;
@@ -93,9 +94,12 @@ static int imx_serial_init_port(struct console_device *cdev)
 	writel(0, regs + UBMR);
 	writel(0, regs + priv->devtype->uts);
 
-
 	/* Configure FIFOs */
-	writel(0xa81, regs + UFCR);
+	val = 0xa81;
+	if (priv->dte_mode)
+		val |= UFCR_DCEDTE;
+
+	writel(val, regs + UFCR);
 
 
 	if (priv->devtype->onems)
@@ -240,6 +244,9 @@ static int imx_serial_probe(struct device_d *dev)
 		}
 	}
 
+	if (of_property_read_bool(dev->device_node, "fsl,dte-mode"))
+		priv->dte_mode = 1;
+
 	imx_serial_init_port(cdev);
 
 	/* Enable UART */
diff --git a/include/serial/imx-uart.h b/include/serial/imx-uart.h
index 8faa12f..29b117c 100644
--- a/include/serial/imx-uart.h
+++ b/include/serial/imx-uart.h
@@ -84,6 +84,7 @@
 #define	 UFCR_RFDIV2	  (0b100<<7)  /* Reference freq divider mask */
 #define	 UFCR_RFDIV1	  (0b101<<7)  /* Reference freq divider mask */
 #define	 UFCR_RFDIV7	  (0b110<<7)  /* Reference freq divider mask */
+#define  UFCR_DCEDTE	 (1<<6)   /* DCE/DTE mode select */
 #define  UFCR_TXTL_SHF   10      /* Transmitter trigger level shift */
 #define  USR1_PARITYERR  (1<<15) /* Parity error interrupt flag */
 #define  USR1_RTSS  	 (1<<14) /* RTS pin status */
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
