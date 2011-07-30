Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo4.mail-out.ovh.net ([46.105.40.176]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qn2WA-0002A2-PN
	for barebox@lists.infradead.org; Sat, 30 Jul 2011 05:55:26 +0000
Received: from mail182.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id C208EFF9EF7
	for <barebox@lists.infradead.org>;
	Sat, 30 Jul 2011 07:56:11 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 30 Jul 2011 07:37:37 +0200
Message-Id: <1312004257-7009-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH] ns16550: switch to resource
To: barebox@lists.infradead.org

use generic read/write depending on the memory size
if no reg_read/write defined

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
applied on my last patch series

Best Regards,
J.
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |   23 +----
 arch/arm/boards/omap/board-beagle.c               |    5 +-
 arch/arm/boards/omap/board-omap3evm.c             |    4 +-
 arch/arm/boards/omap/board-sdp343x.c              |    5 +-
 arch/arm/boards/panda/board.c                     |    5 +-
 arch/arm/boards/pcm049/board.c                    |    4 +-
 arch/arm/mach-omap/Makefile                       |    2 +-
 arch/arm/mach-omap/include/mach/syslib.h          |    4 -
 arch/arm/mach-omap/omap-uart.c                    |   36 ------
 arch/x86/boards/x86_generic/generic_pc.c          |    2 +-
 drivers/serial/serial_ns16550.c                   |  126 +++++++++++++++------
 include/driver.h                                  |    4 +-
 include/ns16550.h                                 |    2 +
 13 files changed, 105 insertions(+), 117 deletions(-)
 delete mode 100644 arch/arm/mach-omap/omap-uart.c

diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index e8b62b2..b38decf 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -66,27 +66,9 @@ struct imx_nand_platform_data nand_info = {
 };
 
 #ifdef CONFIG_DRIVER_SERIAL_NS16550
-unsigned int quad_uart_read(unsigned long base, unsigned char reg_idx)
-{
-	unsigned int reg_addr = (unsigned int)base;
-	reg_addr += reg_idx << 1;
-	return 0xff & readw(reg_addr);
-}
-EXPORT_SYMBOL(quad_uart_read);
-
-void quad_uart_write(unsigned int val, unsigned long base,
-		     unsigned char reg_idx)
-{
-	unsigned int reg_addr = (unsigned int)base;
-	reg_addr += reg_idx << 1;
-	writew(0xff & val, reg_addr);
-}
-EXPORT_SYMBOL(quad_uart_write);
-
 static struct NS16550_plat quad_uart_serial_plat = {
 	.clock = 14745600,
-	.reg_read = quad_uart_read,
-	.reg_write = quad_uart_write,
+	.shift = 1,
 };
 
 #ifdef CONFIG_EUKREA_CPUIMX27_QUART1
@@ -98,7 +80,6 @@ static struct NS16550_plat quad_uart_serial_plat = {
 #elif defined CONFIG_EUKREA_CPUIMX27_QUART4
 #define QUART_OFFSET 0x1000000
 #endif
-
 #endif
 
 static struct i2c_board_info i2c_devices[] = {
@@ -271,7 +252,7 @@ static int eukrea_cpuimx27_console_init(void)
 	CS3A = 0x00D20000;
 #ifdef CONFIG_DRIVER_SERIAL_NS16550
 	add_ns16550_device(-1, IMX_CS3_BASE + QUART_OFFSET, 0xf,
-			&quad_uart_serial_plat);
+			 IORESOURCE_MEM_16BIT, &quad_uart_serial_plat);
 #endif
 	return 0;
 }
diff --git a/arch/arm/boards/omap/board-beagle.c b/arch/arm/boards/omap/board-beagle.c
index 49e95d9..e12e2fe 100644
--- a/arch/arm/boards/omap/board-beagle.c
+++ b/arch/arm/boards/omap/board-beagle.c
@@ -237,8 +237,6 @@ void board_init(void)
 
 static struct NS16550_plat serial_plat = {
 	.clock = 48000000,      /* 48MHz (APLL96/2) */
-	.reg_read = omap_uart_read,
-	.reg_write = omap_uart_write,
 };
 
 /**
@@ -250,7 +248,8 @@ static struct NS16550_plat serial_plat = {
 static int beagle_console_init(void)
 {
 	/* Register the serial port */
-	add_ns16550_device(-1, OMAP_UART3_BASE, 1024, &serial_plat);
+	add_ns16550_device(-1, OMAP_UART3_BASE, 1024, IORESOURCE_MEM_8BIT,
+			   &serial_plat);
 
 	return 0;
 }
diff --git a/arch/arm/boards/omap/board-omap3evm.c b/arch/arm/boards/omap/board-omap3evm.c
index 0c243f3..8b5c9b3 100644
--- a/arch/arm/boards/omap/board-omap3evm.c
+++ b/arch/arm/boards/omap/board-omap3evm.c
@@ -213,8 +213,6 @@ void board_init(void)
 
 static struct NS16550_plat serial_plat = {
 	.clock		= 48000000,      /* 48MHz (APLL96/2) */
-	.reg_read	= omap_uart_read,
-	.reg_write	= omap_uart_write,
 };
 
 /**
@@ -230,7 +228,7 @@ static int omap3evm_init_console(void)
 #elif defined(CONFIG_OMAP3EVM_UART3)
 			OMAP_UART3_BASE,
 #endif
-			1024, &serial_plat);
+			1024, IORESOURCE_MEM_8BIT, &serial_plat);
 
 	return 0;
 }
diff --git a/arch/arm/boards/omap/board-sdp343x.c b/arch/arm/boards/omap/board-sdp343x.c
index 36f226c..7c6df05 100644
--- a/arch/arm/boards/omap/board-sdp343x.c
+++ b/arch/arm/boards/omap/board-sdp343x.c
@@ -605,8 +605,6 @@ static void mux_config(void)
 
 static struct NS16550_plat serial_plat = {
 	.clock = 48000000,	/* 48MHz (APLL96/2) */
-	.reg_read = omap_uart_read,
-	.reg_write = omap_uart_write,
 };
 
 /**
@@ -617,7 +615,8 @@ static struct NS16550_plat serial_plat = {
 static int sdp3430_console_init(void)
 {
 	/* Register the serial port */
-	add_ns16550_device(-1, OMAP_UART3_BASE, 1024, &serial_plat);
+	add_ns16550_device(-1, OMAP_UART3_BASE, 1024, IORESOURCE_MEM_8BIT,
+			   &serial_plat);
 
 	return 0;
 }
diff --git a/arch/arm/boards/panda/board.c b/arch/arm/boards/panda/board.c
index 4164c1f..deded28 100644
--- a/arch/arm/boards/panda/board.c
+++ b/arch/arm/boards/panda/board.c
@@ -32,14 +32,13 @@ static int board_revision;
 
 static struct NS16550_plat serial_plat = {
 	.clock = 48000000,      /* 48MHz (APLL96/2) */
-	.reg_read = omap_uart_read,
-	.reg_write = omap_uart_write,
 };
 
 static int panda_console_init(void)
 {
 	/* Register the serial port */
-	add_ns16550_device(-1, OMAP44XX_UART3_BASE, 1024, &serial_plat);
+	add_ns16550_device(-1, OMAP44XX_UART3_BASE, 1024, IORESOURCE_MEM_8BIT,
+			   &serial_plat);
 
 	return 0;
 }
diff --git a/arch/arm/boards/pcm049/board.c b/arch/arm/boards/pcm049/board.c
index d6de29b..d3f1310 100644
--- a/arch/arm/boards/pcm049/board.c
+++ b/arch/arm/boards/pcm049/board.c
@@ -43,14 +43,12 @@
 
 static struct NS16550_plat serial_plat = {
 	.clock = 48000000,      /* 48MHz (APLL96/2) */
-	.reg_read = omap_uart_read,
-	.reg_write = omap_uart_write,
 };
 
 static int pcm049_console_init(void)
 {
 	/* Register the serial port */
-	add_ns16550_device(-1, OMAP44XX_UART3_BASE, 1024, &serial_plat);
+	add_ns16550_device(-1, OMAP44XX_UART3_BASE, 1024, IORESOURCE_MEM_8BIT, &serial_plat);
 
 	return 0;
 }
diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
index a4b9a55..7204746 100644
--- a/arch/arm/mach-omap/Makefile
+++ b/arch/arm/mach-omap/Makefile
@@ -25,4 +25,4 @@ obj-$(CONFIG_ARCH_OMAP3) += omap3_core.o omap3_generic.o
 obj-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
 obj-$(CONFIG_OMAP3_CLOCK_CONFIG) += omap3_clock_core.o omap3_clock.o
 obj-$(CONFIG_OMAP_GPMC) += gpmc.o devices-gpmc-nand.o
-obj-y += omap-uart.o gpio.o xload.o
+obj-y += gpio.o xload.o
diff --git a/arch/arm/mach-omap/include/mach/syslib.h b/arch/arm/mach-omap/include/mach/syslib.h
index 6a7044a..65aca02 100644
--- a/arch/arm/mach-omap/include/mach/syslib.h
+++ b/arch/arm/mach-omap/include/mach/syslib.h
@@ -57,8 +57,4 @@ static inline void sr32(u32 addr, u32 start_bit, u32 num_bits, u32 value)
 u32 wait_on_value(u32 read_bit_mask, u32 match_value, u32 read_addr, u32 bound);
 void sdelay(unsigned long loops);
 
-/** All architectures need to implement these */
-void omap_uart_write(unsigned int val, unsigned long base,
-		     unsigned char reg_idx);
-unsigned int omap_uart_read(unsigned long base, unsigned char reg_idx);
 #endif /* __ASM_ARCH_OMAP_SYSLIB_H_ */
diff --git a/arch/arm/mach-omap/omap-uart.c b/arch/arm/mach-omap/omap-uart.c
deleted file mode 100644
index 477452d..0000000
--- a/arch/arm/mach-omap/omap-uart.c
+++ /dev/null
@@ -1,36 +0,0 @@
-#include <common.h>
-#include <asm/io.h>
-
-/**
- * @brief Uart port register read function for OMAP3
- *
- * @param base base address of UART
- * @param reg_idx register index
- *
- * @return character read from register
- */
-unsigned int omap_uart_read(unsigned long base, unsigned char reg_idx)
-{
-	unsigned int *reg_addr = (unsigned int *)base;
-	reg_addr += reg_idx;
-	return readb(reg_addr);
-}
-EXPORT_SYMBOL(omap_uart_read);
-
-/**
- * @brief Uart port register write function for OMAP3
- *
- * @param val value to write
- * @param base base address of UART
- * @param reg_idx register index
- *
- * @return void
- */
-void omap_uart_write(unsigned int val, unsigned long base,
-		     unsigned char reg_idx)
-{
-	unsigned int *reg_addr = (unsigned int *)base;
-	reg_addr += reg_idx;
-	writeb(val, reg_addr);
-}
-EXPORT_SYMBOL(omap_uart_write);
diff --git a/arch/x86/boards/x86_generic/generic_pc.c b/arch/x86/boards/x86_generic/generic_pc.c
index b35d26f..7a93d9b 100644
--- a/arch/x86/boards/x86_generic/generic_pc.c
+++ b/arch/x86/boards/x86_generic/generic_pc.c
@@ -85,7 +85,7 @@ static struct NS16550_plat serial_plat = {
 static int pc_console_init(void)
 {
 	/* Register the serial port */
-	add_ns16550_device(-1, 0x3f8, 8, &serial_plat);
+	add_ns16550_device(-1, 0x3f8, 8, 0, &serial_plat);
 
 	return 0;
 }
diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 1dea736..17a6f71 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -49,6 +49,70 @@
 /*********** Private Functions **********************************/
 
 /**
+ * @brief read register
+ *
+ * @param[in] cdev pointer to console device
+ * @param[in] offset
+ *
+ * @return value
+ */
+static uint32_t ns16550_read(struct console_device *cdev, uint32_t off)
+{
+	struct device_d *dev = cdev->dev;
+	struct NS16550_plat *plat = (struct NS16550_plat *)dev->platform_data;
+	int width = dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK;
+	
+	off <<= plat->shift;
+
+	if (plat->reg_read)
+		return plat->reg_read((unsigned long)dev->priv, off);
+
+	switch (width) {
+	case IORESOURCE_MEM_8BIT:
+		return readb(dev->priv + off);
+	case IORESOURCE_MEM_16BIT:
+		return readw(dev->priv + off);
+	case IORESOURCE_MEM_32BIT:
+		return readl(dev->priv + off);
+	}
+	return -1;
+}
+
+/**
+ * @brief write register
+ *
+ * @param[in] cdev pointer to console device
+ * @param[in] offset
+ * @param[in] val
+ */
+static void ns16550_write(struct console_device *cdev, uint32_t val,
+			  uint32_t off)
+{
+	struct device_d *dev = cdev->dev;
+	struct NS16550_plat *plat = (struct NS16550_plat *)dev->platform_data;
+	int width = dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK;
+
+	off <<= plat->shift;
+
+	if (plat->reg_write) {
+		plat->reg_write(val, (unsigned long)dev->priv, off);
+		return;
+	}
+
+	switch (width) {
+	case IORESOURCE_MEM_8BIT:
+		writeb(val & 0xff, dev->priv + off);
+		break;
+	case IORESOURCE_MEM_16BIT:
+		writew(val & 0xffff, dev->priv + off);
+		break;
+	case IORESOURCE_MEM_32BIT:
+		writel(val, dev->priv + off);
+		break;
+	}
+}
+
+/**
  * @brief Compute the divisor for a baud rate
  *
  * @param[in] cdev pointer to console device
@@ -74,27 +138,24 @@ static unsigned int ns16550_calc_divisor(struct console_device *cdev,
  */
 static void ns16550_serial_init_port(struct console_device *cdev)
 {
-	struct NS16550_plat *plat = (struct NS16550_plat *)
-	    cdev->dev->platform_data;
-	unsigned long base = cdev->dev->map_base;
 	unsigned int baud_divisor;
 
 	/* Setup the serial port with the defaults first */
 	baud_divisor = ns16550_calc_divisor(cdev, CONFIG_BAUDRATE);
 
 	/* initializing the device for the first time */
-	plat->reg_write(0x00, base, ier);
+	ns16550_write(cdev, 0x00, ier);
 #ifdef CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS
-	plat->reg_write(0x07, base, mdr1);	/* Disable */
+	ns16550_write(cdev, 0x07, mdr1);	/* Disable */
 #endif
-	plat->reg_write(LCR_BKSE | LCRVAL, base, lcr);
-	plat->reg_write(baud_divisor & 0xFF, base, dll);
-	plat->reg_write((baud_divisor >> 8) & 0xff, base, dlm);
-	plat->reg_write(LCRVAL, base, lcr);
-	plat->reg_write(MCRVAL, base, mcr);
-	plat->reg_write(FCRVAL, base, fcr);
+	ns16550_write(cdev, LCR_BKSE | LCRVAL, lcr);
+	ns16550_write(cdev, baud_divisor & 0xFF, dll);
+	ns16550_write(cdev, (baud_divisor >> 8) & 0xff, dlm);
+	ns16550_write(cdev, LCRVAL, lcr);
+	ns16550_write(cdev, MCRVAL, mcr);
+	ns16550_write(cdev, FCRVAL, fcr);
 #ifdef CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS
-	plat->reg_write(0x00, base, mdr1);
+	ns16550_write(cdev, 0x00,  mdr1);
 #endif
 }
 
@@ -108,12 +169,9 @@ static void ns16550_serial_init_port(struct console_device *cdev)
  */
 static void ns16550_putc(struct console_device *cdev, char c)
 {
-	struct NS16550_plat *plat = (struct NS16550_plat *)
-	    cdev->dev->platform_data;
-	unsigned long base = cdev->dev->map_base;
 	/* Loop Doing Nothing */
-	while ((plat->reg_read(base, lsr) & LSR_THRE) == 0) ;
-	plat->reg_write(c, base, thr);
+	while ((ns16550_read(cdev, lsr) & LSR_THRE) == 0) ;
+	ns16550_write(cdev, c, thr);
 }
 
 /**
@@ -125,12 +183,9 @@ static void ns16550_putc(struct console_device *cdev, char c)
  */
 static int ns16550_getc(struct console_device *cdev)
 {
-	struct NS16550_plat *plat = (struct NS16550_plat *)
-	    cdev->dev->platform_data;
-	unsigned long base = cdev->dev->map_base;
 	/* Loop Doing Nothing */
-	while ((plat->reg_read(base, lsr) & LSR_DR) == 0) ;
-	return plat->reg_read(base, rbr);
+	while ((ns16550_read(cdev, lsr) & LSR_DR) == 0) ;
+	return ns16550_read(cdev, rbr);
 }
 
 /**
@@ -142,10 +197,7 @@ static int ns16550_getc(struct console_device *cdev)
  */
 static int ns16550_tstc(struct console_device *cdev)
 {
-	struct NS16550_plat *plat = (struct NS16550_plat *)
-	    cdev->dev->platform_data;
-	unsigned long base = cdev->dev->map_base;
-	return ((plat->reg_read(base, lsr) & LSR_DR) != 0);
+	return ((ns16550_read(cdev, lsr) & LSR_DR) != 0);
 }
 
 /**
@@ -158,17 +210,15 @@ static int ns16550_tstc(struct console_device *cdev)
  */
 static int ns16550_setbaudrate(struct console_device *cdev, int baud_rate)
 {
-	struct NS16550_plat *plat = (struct NS16550_plat *)
-	    cdev->dev->platform_data;
-	unsigned long base = cdev->dev->map_base;
 	unsigned int baud_divisor = ns16550_calc_divisor(cdev, baud_rate);
-	plat->reg_write(0x00, base, ier);
-	plat->reg_write(LCR_BKSE, base, lcr);
-	plat->reg_write(baud_divisor & 0xff, base, dll);
-	plat->reg_write((baud_divisor >> 8) & 0xff, base, dlm);
-	plat->reg_write(LCRVAL, base, lcr);
-	plat->reg_write(MCRVAL, base, mcr);
-	plat->reg_write(FCRVAL, base, fcr);
+
+	ns16550_write(cdev, 0x00, ier);
+	ns16550_write(cdev, LCR_BKSE, lcr);
+	ns16550_write(cdev, baud_divisor & 0xff, dll);
+	ns16550_write(cdev, (baud_divisor >> 8) & 0xff, dlm);
+	ns16550_write(cdev, LCRVAL, lcr);
+	ns16550_write(cdev, MCRVAL, mcr);
+	ns16550_write(cdev, FCRVAL, fcr);
 	return 0;
 }
 
@@ -189,8 +239,10 @@ static int ns16550_probe(struct device_d *dev)
 	/* we do expect platform specific data */
 	if (plat == NULL)
 		return -EINVAL;
-	if ((plat->reg_read == NULL) || (plat->reg_write == NULL))
+	if (!(dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK) &&
+	    ((plat->reg_read == NULL) || (plat->reg_write == NULL)))
 		return -EINVAL;
+	dev->priv = dev_request_mem_region(dev, 0);
 
 	cdev = xzalloc(sizeof(*cdev));
 
diff --git a/include/driver.h b/include/driver.h
index b011f98..e9ac727 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -223,10 +223,10 @@ static inline struct device_d *add_cfi_flash_device(int id, resource_size_t star
 
 struct NS16550_plat;
 static inline struct device_d *add_ns16550_device(int id, resource_size_t start,
-		resource_size_t size, struct NS16550_plat *pdata)
+		resource_size_t size, int flags, struct NS16550_plat *pdata)
 {
 	return add_generic_device("serial_ns16550", id, NULL, start, size,
-				  IORESOURCE_MEM, pdata);
+				  IORESOURCE_MEM | flags, pdata);
 }
 
 #ifdef CONFIG_DRIVER_NET_DM9000
diff --git a/include/ns16550.h b/include/ns16550.h
index b40d1fa..5fd52fa 100644
--- a/include/ns16550.h
+++ b/include/ns16550.h
@@ -50,6 +50,8 @@ struct NS16550_plat {
 	 */
 	void (*reg_write) (unsigned int val, unsigned long base,
 				    unsigned char reg_offset);
+
+	int shift;
 };
 
 #endif				/* __NS16650_PLATFORM_H_ */
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
