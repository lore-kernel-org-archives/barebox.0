Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X4R6o-0006Vq-0U
 for barebox@lists.infradead.org; Tue, 08 Jul 2014 08:50:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Jul 2014 10:50:11 +0200
Message-Id: <1404809417-21477-16-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1404809417-21477-1-git-send-email-s.hauer@pengutronix.de>
References: <1404809417-21477-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 15/21] serial: ns16550: Add register read/write function
 pointers to private data
To: barebox@lists.infradead.org

Makes the code a bit cleaner. This also avoids casting from a pointer
to a 32bit integer which may produce compiler warnings.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/serial_ns16550.c | 234 ++++++++++++++++++++--------------------
 1 file changed, 120 insertions(+), 114 deletions(-)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 27fae9b..09e6a6a 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -46,11 +46,17 @@
 struct ns16550_priv {
 	struct console_device cdev;
 	struct NS16550_plat plat;
-	int access_width;
-	int mmio;
 	struct clk *clk;
 	uint32_t fcrval;
 	void __iomem *mmiobase;
+	unsigned iobase;
+	void (*write_reg)(struct ns16550_priv *, uint8_t val, unsigned offset);
+	uint8_t (*read_reg)(struct ns16550_priv *, unsigned offset);
+};
+
+struct ns16550_drvdata {
+        void (*init_port)(struct console_device *cdev);
+        const char *linux_console_name;
 };
 
 static inline struct ns16550_priv *to_ns16550_priv(struct console_device *cdev)
@@ -58,93 +64,64 @@ static inline struct ns16550_priv *to_ns16550_priv(struct console_device *cdev)
 	return container_of(cdev, struct ns16550_priv, cdev);
 }
 
-struct ns16550_drvdata {
-	void (*init_port)(struct console_device *cdev);
-	const char *linux_console_name;
-};
+static uint8_t ns16550_read_reg_mmio_8(struct ns16550_priv *priv, unsigned offset)
+{
+	return readb(priv->mmiobase + offset);
+}
 
-/**
- * @brief read system i/o (byte)
- * @param[in] addr address to read
- * @param[in] mmio memory i/o space or i/o port space
- */
-static inline uint8_t ns16550_sys_readb(void __iomem *addr, int mmio)
+static void ns16550_write_reg_mmio_8(struct ns16550_priv *priv, uint8_t val, unsigned offset)
 {
-	if (mmio)
-		return readb(addr);
-	else
-		return (uint8_t) inb((int) addr);
+	writeb(val, priv->mmiobase + offset);
 }
 
-/**
- * @brief read system i/o (word)
- * @param[in] addr address to read
- * @param[in] mmio memory i/o space or i/o port space
- */
-static inline uint16_t ns16550_sys_readw(void __iomem *addr, int mmio)
+static uint8_t ns16550_read_reg_mmio_16(struct ns16550_priv *priv, unsigned offset)
 {
-	if (mmio)
-		return readw(addr);
-	else
-		return (uint16_t) inw((int) addr);
+	return readw(priv->mmiobase + offset);
 }
 
-/**
- * @brief read system i/o (dword)
- * @param[in] addr address to read
- * @param[in] mmio memory i/o space or i/o port space
- */
-static inline uint32_t ns16550_sys_readl(void __iomem *addr, int mmio)
+static void ns16550_write_reg_mmio_16(struct ns16550_priv *priv, uint8_t val, unsigned offset)
 {
-	if (mmio)
-		return readl(addr);
-	else
-		return (uint32_t) inl((int) addr);
+	writew(val, priv->mmiobase + offset);
 }
 
-/**
- * @brief write system i/o (byte)
- * @param[in] val data to write
- * @param[in] addr address to write to
- * @param[in] mmio memory i/o space or i/o port space
- */
-static inline void ns16550_sys_writeb(uint8_t val, void __iomem *addr,
-				      int mmio)
+static uint8_t ns16550_read_reg_mmio_32(struct ns16550_priv *priv, unsigned offset)
 {
-	if (mmio)
-		writeb(val, addr);
-	else
-		outb(val, (int) addr);
+	return readl(priv->mmiobase + offset);
 }
 
-/**
- * @brief read system i/o (word)
- * @param[in] val data to write
- * @param[in] addr address to write to
- * @param[in] mmio memory i/o space or i/o port space
- */
-static inline void ns16550_sys_writew(uint16_t val, void __iomem *addr,
-				      int mmio)
+static void ns16550_write_reg_mmio_32(struct ns16550_priv *priv, uint8_t val, unsigned offset)
 {
-	if (mmio)
-		writew(val, addr);
-	else
-		outw(val, (int) addr);
+	writel(val, priv->mmiobase + offset);
 }
 
-/**
- * @brief read system i/o (dword)
- * @param[in] val data to write
- * @param[in] addr address to write to
- * @param[in] mmio memory i/o space or i/o port space
- */
-static inline void ns16550_sys_writel(uint32_t val, void __iomem *addr,
-				      int mmio)
+static uint8_t ns16550_read_reg_ioport_8(struct ns16550_priv *priv, unsigned offset)
 {
-	if (mmio)
-		writel(val, addr);
-	else
-		outl(val, (int) addr);
+	return inb(priv->iobase + offset);
+}
+
+static void ns16550_write_reg_ioport_8(struct ns16550_priv *priv, uint8_t val, unsigned offset)
+{
+	outb(val, priv->iobase + offset);
+}
+
+static uint8_t ns16550_read_reg_ioport_16(struct ns16550_priv *priv, unsigned offset)
+{
+	return inw(priv->iobase + offset);
+}
+
+static void ns16550_write_reg_ioport_16(struct ns16550_priv *priv, uint8_t val, unsigned offset)
+{
+	outw(val, priv->iobase + offset);
+}
+
+static uint8_t ns16550_read_reg_ioport_32(struct ns16550_priv *priv, unsigned offset)
+{
+	return inl(priv->iobase + offset);
+}
+
+static void ns16550_write_reg_ioport_32(struct ns16550_priv *priv, uint8_t val, unsigned offset)
+{
+	outl(val, priv->iobase + offset);
 }
 
 /**
@@ -159,19 +136,8 @@ static uint32_t ns16550_read(struct console_device *cdev, uint32_t off)
 {
 	struct ns16550_priv *priv = to_ns16550_priv(cdev);
 	struct NS16550_plat *plat = &priv->plat;
-	int width = priv->access_width;
-
-	off <<= plat->shift;
 
-	switch (width) {
-	case IORESOURCE_MEM_8BIT:
-		return ns16550_sys_readb(priv->mmiobase + off, priv->mmio);
-	case IORESOURCE_MEM_16BIT:
-		return ns16550_sys_readw(priv->mmiobase + off, priv->mmio);
-	case IORESOURCE_MEM_32BIT:
-		return ns16550_sys_readl(priv->mmiobase + off, priv->mmio);
-	}
-	return -1;
+	return priv->read_reg(priv, off << plat->shift);
 }
 
 /**
@@ -186,21 +152,8 @@ static void ns16550_write(struct console_device *cdev, uint32_t val,
 {
 	struct ns16550_priv *priv = to_ns16550_priv(cdev);
 	struct NS16550_plat *plat = &priv->plat;
-	int width = priv->access_width;
-
-	off <<= plat->shift;
 
-	switch (width) {
-	case IORESOURCE_MEM_8BIT:
-		ns16550_sys_writeb(val & 0xff, priv->mmiobase + off, priv->mmio);
-		break;
-	case IORESOURCE_MEM_16BIT:
-		ns16550_sys_writew(val & 0xffff, priv->mmiobase + off, priv->mmio);
-		break;
-	case IORESOURCE_MEM_32BIT:
-		ns16550_sys_writel(val, priv->mmiobase + off, priv->mmio);
-		break;
-	}
+	priv->write_reg(priv, val, off << plat->shift);
 }
 
 /**
@@ -358,6 +311,70 @@ static __maybe_unused struct ns16550_drvdata jz_drvdata = {
 	.init_port = ns16550_jz_init_port,
 };
 
+static int ns16550_init_iomem(struct device_d *dev, struct ns16550_priv *priv)
+{
+	struct resource *res;
+	int width;
+
+	res = dev_get_resource(dev, IORESOURCE_MEM, 0);
+	if (!res)
+		return -ENODEV;
+
+	priv->mmiobase = dev_request_mem_region(dev, 0);
+
+	width = res->flags & IORESOURCE_MEM_TYPE_MASK;
+	switch (width) {
+	case IORESOURCE_MEM_8BIT:
+		priv->read_reg = ns16550_read_reg_mmio_8;
+		priv->write_reg = ns16550_write_reg_mmio_8;
+		break;
+	case IORESOURCE_MEM_16BIT:
+		priv->read_reg = ns16550_read_reg_mmio_16;
+		priv->write_reg = ns16550_write_reg_mmio_16;
+		break;
+	case IORESOURCE_MEM_32BIT:
+		priv->read_reg = ns16550_read_reg_mmio_32;
+		priv->write_reg = ns16550_write_reg_mmio_32;
+		break;
+	}
+
+	return 0;
+}
+
+static int ns16550_init_ioport(struct device_d *dev, struct ns16550_priv *priv)
+{
+	struct resource *res;
+	int width;
+
+	res = dev_get_resource(dev, IORESOURCE_IO, 0);
+	if (!res)
+		return -ENODEV;
+
+	res = request_ioport_region(dev_name(dev), res->start, res->end);
+	if (!res)
+		return -ENODEV;
+
+	priv->iobase = res->start;
+
+	width = res->flags & IORESOURCE_MEM_TYPE_MASK;
+	switch (width) {
+	case IORESOURCE_MEM_8BIT:
+		priv->read_reg = ns16550_read_reg_ioport_8;
+		priv->write_reg = ns16550_write_reg_ioport_8;
+		break;
+	case IORESOURCE_MEM_16BIT:
+		priv->read_reg = ns16550_read_reg_ioport_16;
+		priv->write_reg = ns16550_write_reg_ioport_16;
+		break;
+	case IORESOURCE_MEM_32BIT:
+		priv->read_reg = ns16550_read_reg_ioport_32;
+		priv->write_reg = ns16550_write_reg_ioport_32;
+		break;
+	}
+
+	return 0;
+}
+
 /**
  * @brief Probe entry point -called on the first match for device
  *
@@ -373,7 +390,6 @@ static int ns16550_probe(struct device_d *dev)
 	struct console_device *cdev;
 	struct NS16550_plat *plat = (struct NS16550_plat *)dev->platform_data;
 	struct ns16550_drvdata *devtype;
-	struct resource *res;
 	int ret;
 
 	ret = dev_get_drvdata(dev, (unsigned long *)&devtype);
@@ -382,20 +398,12 @@ static int ns16550_probe(struct device_d *dev)
 
 	priv = xzalloc(sizeof(*priv));
 
-	res = dev_get_resource(dev, IORESOURCE_MEM, 0);
-	priv->mmio = (res != NULL);
-	if (res) {
-		res = request_iomem_region(dev_name(dev), res->start, res->end);
-	} else {
-		res = dev_get_resource(dev, IORESOURCE_IO, 0);
-		if (res)
-			res = request_ioport_region(dev_name(dev), res->start,
-						    res->end);
-	}
-	if (!res)
-		goto err;
-	priv->mmiobase = (void __force __iomem *) res->start;
+	ret = ns16550_init_iomem(dev, priv);
+	if (ret)
+		ret = ns16550_init_ioport(dev, priv);
 
+	if (ret)
+		return ret;
 
 	if (plat)
 		priv->plat = *plat;
@@ -423,8 +431,6 @@ static int ns16550_probe(struct device_d *dev)
 		goto err;
 	}
 
-	priv->access_width = dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK;
-
 	cdev = &priv->cdev;
 	cdev->dev = dev;
 	cdev->tstc = ns16550_tstc;
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
