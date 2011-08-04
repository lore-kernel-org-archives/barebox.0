Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ey0-f171.google.com ([209.85.215.171])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qoz13-00084o-En
	for barebox@lists.infradead.org; Thu, 04 Aug 2011 14:35:19 +0000
Received: by eyg24 with SMTP id 24so1688354eyg.30
	for <barebox@lists.infradead.org>; Thu, 04 Aug 2011 07:35:12 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu,  4 Aug 2011 18:35:08 +0400
Message-Id: <1312468508-9205-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] serial_ns16550: switch to ns16550_priv structure
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/serial/serial_ns16550.c |  181 +++++++++++++++++++++++----------------
 drivers/serial/serial_ns16550.h |   16 ++++
 2 files changed, 123 insertions(+), 74 deletions(-)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 36d39cd..a9f565e 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -48,6 +48,42 @@
 
 /*********** Private Functions **********************************/
 
+static unsigned int ns16550_generic_readb(unsigned long base,
+		unsigned char reg_idx)
+{
+	return readb((char *)base + reg_idx);
+}
+
+static void ns16550_generic_writeb(unsigned int val, unsigned long base,
+		unsigned char reg_idx)
+{
+	writeb((0xff & val), (char *)base + reg_idx);
+}
+
+static unsigned int ns16550_generic_readw(unsigned long base,
+		unsigned char reg_idx)
+{
+	return readw((char *)base + reg_idx);
+}
+
+static void ns16550_generic_writew(unsigned int val, unsigned long base,
+		unsigned char reg_idx)
+{
+	writew((0xffff & val), (char *)base + reg_idx);
+}
+
+static unsigned int ns16550_generic_readl(unsigned long base,
+		unsigned char reg_idx)
+{
+	return readl((char *)base + reg_idx);
+}
+
+static void ns16550_generic_writel(unsigned int val, unsigned long base,
+		unsigned char reg_idx)
+{
+	writel(val, (char *)base + reg_idx);
+}
+
 /**
  * @brief read register
  *
@@ -56,26 +92,9 @@
  *
  * @return value
  */
-static uint32_t ns16550_read(struct console_device *cdev, uint32_t off)
+static inline uint32_t ns16550_read(struct ns16550_priv *priv, uint32_t off)
 {
-	struct device_d *dev = cdev->dev;
-	struct NS16550_plat *plat = (struct NS16550_plat *)dev->platform_data;
-	int width = dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK;
-
-	off <<= plat->shift;
-
-	if (plat->reg_read)
-		return plat->reg_read((unsigned long)dev->priv, off);
-
-	switch (width) {
-	case IORESOURCE_MEM_8BIT:
-		return readb(dev->priv + off);
-	case IORESOURCE_MEM_16BIT:
-		return readw(dev->priv + off);
-	case IORESOURCE_MEM_32BIT:
-		return readl(dev->priv + off);
-	}
-	return -1;
+	return priv->reg_read((unsigned long)priv->base, off << priv->shift);
 }
 
 /**
@@ -85,31 +104,10 @@ static uint32_t ns16550_read(struct console_device *cdev, uint32_t off)
  * @param[in] offset
  * @param[in] val
  */
-static void ns16550_write(struct console_device *cdev, uint32_t val,
+static inline void ns16550_write(struct ns16550_priv *priv, uint32_t val,
 			  uint32_t off)
 {
-	struct device_d *dev = cdev->dev;
-	struct NS16550_plat *plat = (struct NS16550_plat *)dev->platform_data;
-	int width = dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK;
-
-	off <<= plat->shift;
-
-	if (plat->reg_write) {
-		plat->reg_write(val, (unsigned long)dev->priv, off);
-		return;
-	}
-
-	switch (width) {
-	case IORESOURCE_MEM_8BIT:
-		writeb(val & 0xff, dev->priv + off);
-		break;
-	case IORESOURCE_MEM_16BIT:
-		writew(val & 0xffff, dev->priv + off);
-		break;
-	case IORESOURCE_MEM_32BIT:
-		writel(val, dev->priv + off);
-		break;
-	}
+	priv->reg_write(val, (unsigned long)priv->base, off << priv->shift);
 }
 
 /**
@@ -120,15 +118,12 @@ static void ns16550_write(struct console_device *cdev, uint32_t val,
  *
  * @return divisor to be set
  */
-static unsigned int ns16550_calc_divisor(struct console_device *cdev,
+static unsigned int ns16550_calc_divisor(struct ns16550_priv *priv,
 					 unsigned int baudrate)
 {
-	struct NS16550_plat *plat = (struct NS16550_plat *)
-	    cdev->dev->platform_data;
-	unsigned int clk = plat->clock;
+	unsigned int clk = priv->clock;
 
 	return (clk / MODE_X_DIV / baudrate);
-
 }
 
 /**
@@ -136,26 +131,26 @@ static unsigned int ns16550_calc_divisor(struct console_device *cdev,
  *
  * @param[in] cdev pointer to console device
  */
-static void ns16550_serial_init_port(struct console_device *cdev)
+static void ns16550_serial_init_port(struct ns16550_priv *priv)
 {
 	unsigned int baud_divisor;
 
 	/* Setup the serial port with the defaults first */
-	baud_divisor = ns16550_calc_divisor(cdev, CONFIG_BAUDRATE);
+	baud_divisor = ns16550_calc_divisor(priv, CONFIG_BAUDRATE);
 
 	/* initializing the device for the first time */
-	ns16550_write(cdev, 0x00, ier);
+	ns16550_write(priv, 0x00, ier);
 #ifdef CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS
-	ns16550_write(cdev, 0x07, mdr1);	/* Disable */
+	ns16550_write(priv, 0x07, mdr1);	/* Disable */
 #endif
-	ns16550_write(cdev, LCR_BKSE | LCRVAL, lcr);
-	ns16550_write(cdev, baud_divisor & 0xFF, dll);
-	ns16550_write(cdev, (baud_divisor >> 8) & 0xff, dlm);
-	ns16550_write(cdev, LCRVAL, lcr);
-	ns16550_write(cdev, MCRVAL, mcr);
-	ns16550_write(cdev, FCRVAL, fcr);
+	ns16550_write(priv, LCR_BKSE | LCRVAL, lcr);
+	ns16550_write(priv, baud_divisor & 0xFF, dll);
+	ns16550_write(priv, (baud_divisor >> 8) & 0xff, dlm);
+	ns16550_write(priv, LCRVAL, lcr);
+	ns16550_write(priv, MCRVAL, mcr);
+	ns16550_write(priv, FCRVAL, fcr);
 #ifdef CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS
-	ns16550_write(cdev, 0x00,  mdr1);
+	ns16550_write(priv, 0x00, mdr1);
 #endif
 }
 
@@ -169,9 +164,11 @@ static void ns16550_serial_init_port(struct console_device *cdev)
  */
 static void ns16550_putc(struct console_device *cdev, char c)
 {
+	struct ns16550_priv *priv = cdev->dev->priv;
+
 	/* Loop Doing Nothing */
-	while ((ns16550_read(cdev, lsr) & LSR_THRE) == 0) ;
-	ns16550_write(cdev, c, thr);
+	while ((ns16550_read(priv, lsr) & LSR_THRE) == 0) ;
+	ns16550_write(priv, c, thr);
 }
 
 /**
@@ -183,9 +180,12 @@ static void ns16550_putc(struct console_device *cdev, char c)
  */
 static int ns16550_getc(struct console_device *cdev)
 {
+	struct ns16550_priv *priv = cdev->dev->priv;
+
 	/* Loop Doing Nothing */
-	while ((ns16550_read(cdev, lsr) & LSR_DR) == 0) ;
-	return ns16550_read(cdev, rbr);
+	while ((ns16550_read(priv, lsr) & LSR_DR) == 0) ;
+
+	return ns16550_read(priv, rbr);
 }
 
 /**
@@ -197,7 +197,9 @@ static int ns16550_getc(struct console_device *cdev)
  */
 static int ns16550_tstc(struct console_device *cdev)
 {
-	return ((ns16550_read(cdev, lsr) & LSR_DR) != 0);
+	struct ns16550_priv *priv = cdev->dev->priv;
+
+	return ((ns16550_read(priv, lsr) & LSR_DR) != 0);
 }
 
 /**
@@ -210,15 +212,16 @@ static int ns16550_tstc(struct console_device *cdev)
  */
 static int ns16550_setbaudrate(struct console_device *cdev, int baud_rate)
 {
-	unsigned int baud_divisor = ns16550_calc_divisor(cdev, baud_rate);
-
-	ns16550_write(cdev, 0x00, ier);
-	ns16550_write(cdev, LCR_BKSE, lcr);
-	ns16550_write(cdev, baud_divisor & 0xff, dll);
-	ns16550_write(cdev, (baud_divisor >> 8) & 0xff, dlm);
-	ns16550_write(cdev, LCRVAL, lcr);
-	ns16550_write(cdev, MCRVAL, mcr);
-	ns16550_write(cdev, FCRVAL, fcr);
+	struct ns16550_priv *priv = cdev->dev->priv;
+	unsigned int baud_divisor = ns16550_calc_divisor(priv, baud_rate);
+
+	ns16550_write(priv, 0x00, ier);
+	ns16550_write(priv, LCR_BKSE, lcr);
+	ns16550_write(priv, baud_divisor & 0xff, dll);
+	ns16550_write(priv, (baud_divisor >> 8) & 0xff, dlm);
+	ns16550_write(priv, LCRVAL, lcr);
+	ns16550_write(priv, MCRVAL, mcr);
+	ns16550_write(priv, FCRVAL, fcr);
 	return 0;
 }
 
@@ -235,11 +238,11 @@ static int ns16550_probe(struct device_d *dev)
 {
 	struct console_device *cdev;
 	struct NS16550_plat *plat = (struct NS16550_plat *)dev->platform_data;
+	struct ns16550_priv *priv;
 
 	/* we do expect platform specific data */
 	if (plat == NULL)
 		return -EINVAL;
-	dev->priv = dev_request_mem_region(dev, 0);
 
 	cdev = xzalloc(sizeof(*cdev));
 
@@ -254,7 +257,37 @@ static int ns16550_probe(struct device_d *dev)
 	cdev->getc = ns16550_getc;
 	cdev->setbrg = ns16550_setbaudrate;
 
-	ns16550_serial_init_port(cdev);
+	priv = xzalloc(sizeof(struct ns16550_priv));
+	dev->priv = priv;
+	priv->base = dev_request_mem_region(dev, 0);
+
+	if (plat->reg_read != NULL && plat->reg_write != NULL) {
+		priv->reg_read = plat->reg_read;
+		priv->reg_write = plat->reg_write;
+	} else {
+		int width = dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK;
+
+		switch (width) {
+		default:
+		case IORESOURCE_MEM_8BIT:
+			priv->reg_read = ns16550_generic_readb;
+			priv->reg_write = ns16550_generic_writeb;
+			break;
+		case IORESOURCE_MEM_16BIT:
+			priv->reg_read = ns16550_generic_readw;
+			priv->reg_write = ns16550_generic_writew;
+			break;
+		case IORESOURCE_MEM_32BIT:
+			priv->reg_read = ns16550_generic_readl;
+			priv->reg_write = ns16550_generic_writel;
+			break;
+		}
+	}
+
+	priv->clock = plat->clock;
+	priv->shift = plat->shift;
+
+	ns16550_serial_init_port(priv);
 
 	return console_register(cdev);
 }
diff --git a/drivers/serial/serial_ns16550.h b/drivers/serial/serial_ns16550.h
index db8fe64..538d522 100644
--- a/drivers/serial/serial_ns16550.h
+++ b/drivers/serial/serial_ns16550.h
@@ -29,6 +29,22 @@
 #ifndef __SERIAL_NS16550__H
 #define  __SERIAL_NS16550__H
 
+struct ns16550_priv {
+	unsigned char __iomem *base;
+	/**
+	 * register read access capability
+	 */
+	unsigned int (*reg_read) (unsigned long base, unsigned char reg_offset);
+	/**
+	 * register write access capability
+	 */
+	void (*reg_write) (unsigned int val, unsigned long base,
+				    unsigned char reg_offset);
+
+	int shift;
+	unsigned int clock;
+};
+
 /** Register offset definitions
  * platform implementation needs to translate this
  */
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
