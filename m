Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1ORiu2-00043M-Dx
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 09:39:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 24 Jun 2010 11:39:13 +0200
Message-Id: <1277372356-32370-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1277372356-32370-1-git-send-email-s.hauer@pengutronix.de>
References: <1277372356-32370-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/11] i.MX serial: Use readl/writel instead of pointer deref
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/serial_imx.c |  137 ++++++++++++++++++++++---------------------
 1 files changed, 71 insertions(+), 66 deletions(-)

diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index 91d3b18..801004e 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -24,34 +24,35 @@
 #include <init.h>
 #include <malloc.h>
 #include <notifier.h>
-
-#define URXD0(base) __REG( 0x0 +(base))  /* Receiver Register */
-#define URTX0(base) __REG( 0x40 +(base)) /* Transmitter Register */
-#define UCR1(base)  __REG( 0x80 +(base)) /* Control Register 1 */
-#define UCR2(base)  __REG( 0x84 +(base)) /* Control Register 2 */
-#define UCR3(base)  __REG( 0x88 +(base)) /* Control Register 3 */
-#define UCR4(base)  __REG( 0x8c +(base)) /* Control Register 4 */
-#define UFCR(base)  __REG( 0x90 +(base)) /* FIFO Control Register */
-#define USR1(base)  __REG( 0x94 +(base)) /* Status Register 1 */
-#define USR2(base)  __REG( 0x98 +(base)) /* Status Register 2 */
-#define UESC(base)  __REG( 0x9c +(base)) /* Escape Character Register */
-#define UTIM(base)  __REG( 0xa0 +(base)) /* Escape Timer Register */
-#define UBIR(base)  __REG( 0xa4 +(base)) /* BRM Incremental Register */
-#define UBMR(base)  __REG( 0xa8 +(base)) /* BRM Modulator Register */
-#define UBRC(base)  __REG( 0xac +(base)) /* Baud Rate Count Register */
+#include <asm/io.h>
+
+#define URXD0	0x0	/* Receiver Register */
+#define URTX0	0x40	/* Transmitter Register */
+#define UCR1	0x80	/* Control Register 1 */
+#define UCR2	0x84	/* Control Register 2 */
+#define UCR3	0x88	/* Control Register 3 */
+#define UCR4	0x8c	/* Control Register 4 */
+#define UFCR	0x90	/* FIFO Control Register */
+#define USR1	0x94	/* Status Register 1 */
+#define USR2	0x98	/* Status Register 2 */
+#define UESC	0x9c	/* Escape Character Register */
+#define UTIM	0xa0	/* Escape Timer Register */
+#define UBIR	0xa4	/* BRM Incremental Register */
+#define UBMR	0xa8	/* BRM Modulator Register */
+#define UBRC	0xac	/* Baud Rate Count Register */
 #ifdef CONFIG_ARCH_IMX1
-#define BIPR1(base) __REG( 0xb0 +(base)) /* Incremental Preset Register 1 */
-#define BIPR2(base) __REG( 0xb4 +(base)) /* Incremental Preset Register 2 */
-#define BIPR3(base) __REG( 0xb8 +(base)) /* Incremental Preset Register 3 */
-#define BIPR4(base) __REG( 0xbc +(base)) /* Incremental Preset Register 4 */
-#define BMPR1(base) __REG( 0xc0 +(base)) /* BRM Modulator Register 1 */
-#define BMPR2(base) __REG( 0xc4 +(base)) /* BRM Modulator Register 2 */
-#define BMPR3(base) __REG( 0xc8 +(base)) /* BRM Modulator Register 3 */
-#define BMPR4(base) __REG( 0xcc +(base)) /* BRM Modulator Register 4 */
-#define UTS(base)   __REG( 0xd0 +(base)) /* UART Test Register */
+#define BIPR1	0xb0	/* Incremental Preset Register 1 */
+#define BIPR2	0xb4	/* Incremental Preset Register 2 */
+#define BIPR3	0xb8	/* Incremental Preset Register 3 */
+#define BIPR4	0xbc	/* Incremental Preset Register 4 */
+#define BMPR1	0xc0	/* BRM Modulator Register 1 */
+#define BMPR2	0xc4	/* BRM Modulator Register 2 */
+#define BMPR3	0xc8	/* BRM Modulator Register 3 */
+#define BMPR4	0xcc	/* BRM Modulator Register 4 */
+#define UTS	0xd0	/* UART Test Register */
 #else
-#define ONEMS(base) __REG( 0xb0 +(base)) /* One Millisecond register */
-#define UTS(base)   __REG( 0xb4 +(base)) /* UART Test Register */
+#define ONEMS	0xb0 /* One Millisecond register */
+#define UTS	0xb4 /* UART Test Register */
 #endif
 
 /* UART Control Register Bit Fields.*/
@@ -175,7 +176,7 @@ static int imx_serial_reffreq(ulong base)
 {
 	ulong rfdiv;
 
-	rfdiv = (UFCR(base) >> 7) & 7;
+	rfdiv = (readl(base + UFCR) >> 7) & 7;
 	rfdiv = rfdiv < 6 ? 6 - rfdiv : 7;
 
 	return imx_get_uartclk() / rfdiv;
@@ -190,45 +191,42 @@ static int imx_serial_init_port(struct console_device *cdev)
 {
 	struct device_d *dev = cdev->dev;
 	ulong base = dev->map_base;
+	uint32_t val;
+
+	writel(UCR1_VAL, base + UCR1);
+	writel(UCR2_WS | UCR2_IRTS, base + UCR2);
+	writel(UCR3_VAL, base + UCR3);
+	writel(UCR4_VAL, base + UCR4);
+	writel(0x0000002B, base + UESC);
+	writel(0, base + UTIM);
+	writel(0, base + UBIR);
+	writel(0, base + UBMR);
+	writel(0, base + UTS);
 
-	UCR1(base) = UCR1_VAL;
-	UCR2(base) = UCR2_WS | UCR2_IRTS;
-	UCR3(base) = UCR3_VAL;
-	UCR4(base) = UCR4_VAL;
-	UESC(base) = 0x0000002B;
-	UTIM(base) = 0;
-	UBIR(base) = 0;
-	UBMR(base) = 0;
-	UTS(base)  = 0;
 
 	/* Configure FIFOs */
-	UFCR(base) = 0xa81;
+	writel(0xa81, base + UFCR);
 
 #ifdef ONEMS
-	ONEMS(base) = imx_serial_reffreq(base) / 1000;
+	writel(imx_serial_reffreq(base) / 1000, base + ONEMS);
 #endif
 
 	/* Enable FIFOs */
-	UCR2(base) |= UCR2_SRST | UCR2_RXEN | UCR2_TXEN;
+	val = readl(base + UCR2);
+	val |= UCR2_SRST | UCR2_RXEN | UCR2_TXEN;
+	writel(val, base + UCR2);
 
   	/* Clear status flags */
-	USR2(base) |= USR2_ADET  |
-	          USR2_DTRF  |
-	          USR2_IDLE  |
-	          USR2_IRINT |
-	          USR2_WAKE  |
-	          USR2_RTSF  |
-	          USR2_BRCD  |
-	          USR2_ORE   |
-	          USR2_RDR;
+	val = readl(base + USR2);
+	val |= USR2_ADET | USR2_DTRF | USR2_IDLE | USR2_IRINT | USR2_WAKE |
+	       USR2_RTSF | USR2_BRCD | USR2_ORE | USR2_RDR;
+	writel(val, base + USR2);
 
   	/* Clear status flags */
-	USR1(base) |= USR1_PARITYERR |
-	          USR1_RTSD      |
-	          USR1_ESCF      |
-	          USR1_FRAMERR   |
-	          USR1_AIRINT    |
-	          USR1_AWAKE;
+	val = readl(base + USR2);
+	val |= USR1_PARITYERR | USR1_RTSD | USR1_ESCF | USR1_FRAMERR | USR1_AIRINT |
+	       USR1_AWAKE;
+	writel(val, base + USR2);
 
 	return 0;
 }
@@ -238,9 +236,9 @@ static void imx_serial_putc(struct console_device *cdev, char c)
 	struct device_d *dev = cdev->dev;
 
 	/* Wait for Tx FIFO not full */
-	while (UTS(dev->map_base) & UTS_TXFULL);
+	while (readl(dev->map_base + UTS) & UTS_TXFULL);
 
-        URTX0(dev->map_base) = c;
+        writel(c, dev->map_base + URTX0);
 }
 
 static int imx_serial_tstc(struct console_device *cdev)
@@ -248,7 +246,7 @@ static int imx_serial_tstc(struct console_device *cdev)
 	struct device_d *dev = cdev->dev;
 
 	/* If receive fifo is empty, return false */
-	if (UTS(dev->map_base) & UTS_RXEMPTY)
+	if (readl(dev->map_base + UTS) & UTS_RXEMPTY)
 		return 0;
 	return 1;
 }
@@ -258,9 +256,9 @@ static int imx_serial_getc(struct console_device *cdev)
 	struct device_d *dev = cdev->dev;
 	unsigned char ch;
 
-	while (UTS(dev->map_base) & UTS_RXEMPTY);
+	while (readl(dev->map_base + UTS) & UTS_RXEMPTY);
 
-	ch = URXD0(dev->map_base);
+	ch = readl(dev->map_base + URXD0);
 
 	return ch;
 }
@@ -269,7 +267,7 @@ static void imx_serial_flush(struct console_device *cdev)
 {
 	struct device_d *dev = cdev->dev;
 
-	while (!(USR2(dev->map_base) & USR2_TXDC));
+	while (!(readl(dev->map_base + USR2) & USR2_TXDC));
 }
 
 static int imx_serial_setbaudrate(struct console_device *cdev, int baudrate)
@@ -277,18 +275,22 @@ static int imx_serial_setbaudrate(struct console_device *cdev, int baudrate)
 	struct device_d *dev = cdev->dev;
 	struct imx_serial_priv *priv = container_of(cdev,
 					struct imx_serial_priv, cdev);
+	uint32_t val;
+
 	ulong base = dev->map_base;
-	ulong ucr1 = UCR1(base);
+	ulong ucr1 = readl(base + UCR1);
 
 	/* disable UART */
-	UCR1(base) &= ~UCR1_UARTEN;
+	val = readl(base + UCR1);
+	val &= ~UCR1_UARTEN;
+	writel(val, base + UCR1);
 
 	/* Set the numerator value minus one of the BRM ratio */
-	UBIR(base) = (baudrate / 100) - 1;
+	writel((baudrate / 100) - 1, base + UBIR);
 	/* Set the denominator value minus one of the BRM ratio    */
-	UBMR(base) = ((imx_serial_reffreq(base) / 1600) - 1);
+	writel((imx_serial_reffreq(base) / 1600) - 1, base + UBMR);
 
-	UCR1(base) = ucr1;
+	writel(ucr1, base + UCR1);
 
 	priv->baudrate = baudrate;
 
@@ -310,6 +312,7 @@ static int imx_serial_probe(struct device_d *dev)
 {
 	struct console_device *cdev;
 	struct imx_serial_priv *priv;
+	uint32_t val;
 
 	priv = malloc(sizeof(*priv));
 	cdev = &priv->cdev;
@@ -327,7 +330,9 @@ static int imx_serial_probe(struct device_d *dev)
 	imx_serial_setbaudrate(cdev, 115200);
 
 	/* Enable UART */
-	UCR1(cdev->dev->map_base) |= UCR1_UARTEN;
+	val = readl(cdev->dev->map_base + UCR1);
+	val |= UCR1_UARTEN;
+	writel(val, cdev->dev->map_base + UCR1);
 
 	console_register(cdev);
 	priv->notify.notifier_call = imx_clocksource_clock_change;
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
