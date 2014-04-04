Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.reverze.net ([82.161.88.7] helo=fsm.reverze.net)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WW9Ur-00055l-QW
 for barebox@lists.infradead.org; Fri, 04 Apr 2014 19:09:54 +0000
From: michel@reverze.net
Date: Fri,  4 Apr 2014 20:09:47 +0200
Message-Id: <1396634987-3730-3-git-send-email-michel@reverze.net>
In-Reply-To: <1396634987-3730-1-git-send-email-michel@reverze.net>
References: <1396634987-3730-1-git-send-email-michel@reverze.net>
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
Subject: [PATCHv2 3/3] x86: ns16550: Rework driver to allow for x86 I/O space
To: barebox@lists.infradead.org

From: Michel Stam <m.stam@fugro.nl>

The current implementation fakes a memory-mapped I/O device
at 0x3f8 and 0x2f8, then uses platform read/write functions
to do the actual reading and writing. These platform functions
only exist for the x86 platform; better to move the I/O
routines into the driver and have the driver request I/O ports
using request_ioport_region.
---
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |    2 +-
 arch/arm/mach-mvebu/armada-370-xp.c               |    3 +-
 arch/arm/mach-mvebu/kirkwood.c                    |    3 +-
 arch/arm/mach-socfpga/xload.c                     |    4 +-
 arch/arm/mach-tegra/tegra20.c                     |    2 +-
 arch/mips/boards/dlink-dir-320/serial.c           |    2 +-
 arch/mips/boards/loongson-ls1b/serial.c           |    2 +-
 arch/mips/mach-ar231x/ar231x.c                    |    2 +-
 arch/openrisc/boards/generic/generic.c            |    2 +-
 arch/ppc/boards/freescale-p1022ds/p1022ds.c       |    2 +-
 arch/ppc/boards/freescale-p2020rdb/p2020rdb.c     |    3 +-
 arch/ppc/boards/geip-da923rc/da923rc.c            |    3 +-
 arch/x86/boards/x86_generic/generic_pc.c          |    5 +-
 arch/x86/mach-i386/Makefile                       |    1 -
 arch/x86/mach-i386/generic.c                      |   34 ------
 drivers/serial/serial_ns16550.c                   |  122 ++++++++++++++++++---
 include/driver.h                                  |    2 +-
 include/ns16550.h                                 |   11 +--
 18 files changed, 127 insertions(+), 78 deletions(-)
 delete mode 100644 arch/x86/mach-i386/generic.c

diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index e2ad1c8..69967c5 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -223,7 +223,7 @@ static int eukrea_cpuimx27_console_init(void)
 	imx27_setup_weimcs(3, 0x0000D603, 0x0D1D0D01, 0x00D20000);
 #ifdef CONFIG_DRIVER_SERIAL_NS16550
 	add_ns16550_device(DEVICE_ID_DYNAMIC, MX27_CS3_BASE_ADDR + QUART_OFFSET, 0xf,
-			 IORESOURCE_MEM_16BIT, &quad_uart_serial_plat);
+			 IORESOURCE_MEM | IORESOURCE_MEM_16BIT, &quad_uart_serial_plat);
 #endif
 	return 0;
 }
diff --git a/arch/arm/mach-mvebu/armada-370-xp.c b/arch/arm/mach-mvebu/armada-370-xp.c
index 776b4c0..209be0b 100644
--- a/arch/arm/mach-mvebu/armada-370-xp.c
+++ b/arch/arm/mach-mvebu/armada-370-xp.c
@@ -60,7 +60,8 @@ static int armada_370_xp_add_uart(void)
 	uart_plat.clock = clk_get_rate(tclk);
 	if (!add_ns16550_device(DEVICE_ID_DYNAMIC,
 				(unsigned int)CONSOLE_UART_BASE, 32,
-				IORESOURCE_MEM_32BIT, &uart_plat))
+				IORESOURCE_MEM | IORESOURCE_MEM_32BIT,
+				&uart_plat))
 	    return -ENODEV;
 	return 0;
 }
diff --git a/arch/arm/mach-mvebu/kirkwood.c b/arch/arm/mach-mvebu/kirkwood.c
index 1284220..c79d130 100644
--- a/arch/arm/mach-mvebu/kirkwood.c
+++ b/arch/arm/mach-mvebu/kirkwood.c
@@ -58,7 +58,8 @@ static int kirkwood_add_uart(void)
 	uart_plat.clock = clk_get_rate(tclk);
 	if (!add_ns16550_device(DEVICE_ID_DYNAMIC,
 				(unsigned int)CONSOLE_UART_BASE, 32,
-				IORESOURCE_MEM_32BIT, &uart_plat))
+				IORESOURCE_MEM | IORESOURCE_MEM_32BIT,
+				&uart_plat))
 		return -ENODEV;
 	return 0;
 }
diff --git a/arch/arm/mach-socfpga/xload.c b/arch/arm/mach-socfpga/xload.c
index 0b99db0..6586ada 100644
--- a/arch/arm/mach-socfpga/xload.c
+++ b/arch/arm/mach-socfpga/xload.c
@@ -45,8 +45,8 @@ static void socfpga_uart_init(void)
 	clks[uart] = clk_fixed("uart", 100000000);
 	clkdev_add_physbase(clks[uart], CYCLONE5_UART0_ADDRESS, NULL);
 	clkdev_add_physbase(clks[uart], CYCLONE5_UART1_ADDRESS, NULL);
-	add_ns16550_device(0, 0xffc02000, 1024, IORESOURCE_MEM_8BIT,
-			&uart_pdata);
+	add_ns16550_device(0, 0xffc02000, 1024, IORESOURCE_MEM |
+			IORESOURCE_MEM_8BIT, &uart_pdata);
 }
 
 static void socfpga_timer_init(void)
diff --git a/arch/arm/mach-tegra/tegra20.c b/arch/arm/mach-tegra/tegra20.c
index cc2d748..bdd7960 100644
--- a/arch/arm/mach-tegra/tegra20.c
+++ b/arch/arm/mach-tegra/tegra20.c
@@ -50,7 +50,7 @@ static int tegra20_add_debug_console(void)
 		return -ENODEV;
 
 	add_ns16550_device(DEVICE_ID_DYNAMIC, base, 8 << debug_uart.shift,
-			   IORESOURCE_MEM_8BIT, &debug_uart);
+			   IORESOURCE_MEM | IORESOURCE_MEM_8BIT, &debug_uart);
 
 	return 0;
 }
diff --git a/arch/mips/boards/dlink-dir-320/serial.c b/arch/mips/boards/dlink-dir-320/serial.c
index bddb683..eb87379 100644
--- a/arch/mips/boards/dlink-dir-320/serial.c
+++ b/arch/mips/boards/dlink-dir-320/serial.c
@@ -36,7 +36,7 @@ static int dir320_console_init(void)
 
 	/* Register the serial port */
 	add_ns16550_device(DEVICE_ID_DYNAMIC, DEBUG_LL_UART_ADDR, 8,
-			IORESOURCE_MEM_8BIT, &serial_plat);
+			IORESOURCE_MEM | IORESOURCE_MEM_8BIT, &serial_plat);
 
 	return 0;
 }
diff --git a/arch/mips/boards/loongson-ls1b/serial.c b/arch/mips/boards/loongson-ls1b/serial.c
index d8e0f7c..7159ab7 100644
--- a/arch/mips/boards/loongson-ls1b/serial.c
+++ b/arch/mips/boards/loongson-ls1b/serial.c
@@ -15,7 +15,7 @@ static int console_init(void)
 	barebox_set_hostname("ls1b");
 
 	add_ns16550_device(DEVICE_ID_DYNAMIC, KSEG1ADDR(LS1X_UART2_BASE),
-		8, IORESOURCE_MEM_8BIT, &serial_plat);
+		8, IORESOURCE_MEM | IORESOURCE_MEM_8BIT, &serial_plat);
 
 	return 0;
 }
diff --git a/arch/mips/mach-ar231x/ar231x.c b/arch/mips/mach-ar231x/ar231x.c
index ca912bf..06d2edb 100644
--- a/arch/mips/mach-ar231x/ar231x.c
+++ b/arch/mips/mach-ar231x/ar231x.c
@@ -189,7 +189,7 @@ static int ar2312_console_init(void)
 	/* Register the serial port */
 	serial_plat.clock = ar2312_sys_frequency();
 	add_ns16550_device(DEVICE_ID_DYNAMIC, KSEG1ADDR(AR2312_UART0),
-		8 << AR2312_UART_SHIFT, IORESOURCE_MEM_8BIT, &serial_plat);
+		8 << AR2312_UART_SHIFT, IORESOURCE_MEM | IORESOURCE_MEM_8BIT, &serial_plat);
 	return 0;
 }
 console_initcall(ar2312_console_init);
diff --git a/arch/openrisc/boards/generic/generic.c b/arch/openrisc/boards/generic/generic.c
index 290e05c..1d6ac8a 100644
--- a/arch/openrisc/boards/generic/generic.c
+++ b/arch/openrisc/boards/generic/generic.c
@@ -15,7 +15,7 @@ static int openrisc_console_init(void)
 	barebox_set_hostname("or1k");
 
 	/* Register the serial port */
-	add_ns16550_device(DEVICE_ID_DYNAMIC, OPENRISC_SOPC_UART_BASE, 1024, IORESOURCE_MEM_8BIT, &serial_plat);
+	add_ns16550_device(DEVICE_ID_DYNAMIC, OPENRISC_SOPC_UART_BASE, 1024, IORESOURCE_MEM | IORESOURCE_MEM_8BIT, &serial_plat);
 
 #ifdef CONFIG_DRIVER_NET_ETHOC
 	add_generic_device("ethoc", DEVICE_ID_DYNAMIC, NULL,
diff --git a/arch/ppc/boards/freescale-p1022ds/p1022ds.c b/arch/ppc/boards/freescale-p1022ds/p1022ds.c
index c800064..57e7953 100644
--- a/arch/ppc/boards/freescale-p1022ds/p1022ds.c
+++ b/arch/ppc/boards/freescale-p1022ds/p1022ds.c
@@ -130,7 +130,7 @@ static int p1022ds_console_init(void)
 
 	serial_plat.clock = fsl_get_bus_freq(0);
 	add_ns16550_device(DEVICE_ID_DYNAMIC, CFG_IMMR + 0x4500, 16,
-			   IORESOURCE_MEM_8BIT, &serial_plat);
+			   IORESOURCE_MEM | IORESOURCE_MEM_8BIT, &serial_plat);
 	return 0;
 }
 
diff --git a/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c b/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
index 229ae41..385a436 100644
--- a/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
+++ b/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
@@ -112,7 +112,8 @@ static int p2020_console_init(void)
 
 	serial_plat.clock = fsl_get_bus_freq(0);
 
-	add_ns16550_device(DEVICE_ID_DYNAMIC, 0xffe04500, 16, IORESOURCE_MEM_8BIT,
+	add_ns16550_device(DEVICE_ID_DYNAMIC, 0xffe04500, 16,
+			   IORESOURCE_MEM | IORESOURCE_MEM_8BIT,
 			   &serial_plat);
 	return 0;
 }
diff --git a/arch/ppc/boards/geip-da923rc/da923rc.c b/arch/ppc/boards/geip-da923rc/da923rc.c
index 976aa8d..3d77349 100644
--- a/arch/ppc/boards/geip-da923rc/da923rc.c
+++ b/arch/ppc/boards/geip-da923rc/da923rc.c
@@ -115,7 +115,8 @@ static int da923rc_console_init(void)
 		barebox_set_model("unknown");
 
 	serial_plat.clock = fsl_get_bus_freq(0);
-	add_ns16550_device(1, CFG_CCSRBAR + 0x4600, 16, IORESOURCE_MEM_8BIT,
+	add_ns16550_device(1, CFG_CCSRBAR + 0x4600, 16,
+			   IORESOURCE_MEM | IORESOURCE_MEM_8BIT,
 			   &serial_plat);
 	return 0;
 }
diff --git a/arch/x86/boards/x86_generic/generic_pc.c b/arch/x86/boards/x86_generic/generic_pc.c
index 895b88d..69c6f58 100644
--- a/arch/x86/boards/x86_generic/generic_pc.c
+++ b/arch/x86/boards/x86_generic/generic_pc.c
@@ -141,8 +141,6 @@ device_initcall(devices_init);
 
 static struct NS16550_plat serial_plat = {
        .clock = 1843200,
-       .reg_read = x86_uart_read,
-       .reg_write = x86_uart_write,
 };
 
 static int pc_console_init(void)
@@ -151,7 +149,8 @@ static int pc_console_init(void)
 	barebox_set_hostname("x86");
 
 	/* Register the serial port */
-	add_ns16550_device(DEVICE_ID_DYNAMIC, 0x3f8, 8, 0, &serial_plat);
+	add_ns16550_device(DEVICE_ID_DYNAMIC, 0x3f8, 8, IORESOURCE_IO, &serial_plat);
+	add_ns16550_device(DEVICE_ID_DYNAMIC, 0x2f8, 8, IORESOURCE_IO, &serial_plat);
 
 	return 0;
 }
diff --git a/arch/x86/mach-i386/Makefile b/arch/x86/mach-i386/Makefile
index 10712e6..e46aa5b 100644
--- a/arch/x86/mach-i386/Makefile
+++ b/arch/x86/mach-i386/Makefile
@@ -1,4 +1,3 @@
-obj-y += generic.o
 obj-y += reset.o
 
 # reference clocksource
diff --git a/arch/x86/mach-i386/generic.c b/arch/x86/mach-i386/generic.c
deleted file mode 100644
index 69cf53c..0000000
--- a/arch/x86/mach-i386/generic.c
+++ /dev/null
@@ -1,34 +0,0 @@
-/*
- * Copyright (C) 2009 Juergen Beisert, Pengutronix
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- *
- */
-
-/**
- * @file
- * @brief x86 Architecture Initialization routines
- */
-
-#include <io.h>
-
-/** to work with the 8250 UART driver implementation we need this function */
-unsigned int x86_uart_read(unsigned long base, unsigned char reg_idx)
-{
-	return inb(base + reg_idx);
-}
-
-/** to work with the 8250 UART driver implementation we need this function */
-void x86_uart_write(unsigned int val, unsigned long base, unsigned char reg_idx)
-{
-	outb(val, base + reg_idx);
-}
diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 0c00eb1..dfe572d 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -47,6 +47,7 @@ struct ns16550_priv {
 	struct console_device cdev;
 	struct NS16550_plat plat;
 	int access_width;
+	int mmio;
 	struct clk *clk;
 	uint32_t fcrval;
 };
@@ -62,6 +63,87 @@ struct ns16550_drvdata {
 };
 
 /**
+ * @brief read system i/o (byte)
+ * @param[in] addr address to read
+ * @param[in] mmio memory i/o space or i/o port space
+ */
+static inline uint8_t ns16550_sys_readb(void __iomem *addr, int mmio)
+{
+	if (mmio)
+		return readb(addr);
+        else
+		return (uint8_t) inb((int) addr);
+}
+
+/**
+ * @brief read system i/o (word)
+ * @param[in] addr address to read
+ * @param[in] mmio memory i/o space or i/o port space
+ */
+static inline uint16_t ns16550_sys_readw(void __iomem *addr, int mmio)
+{
+	if (mmio)
+		return readw(addr);
+        else
+		return (uint16_t) inw((int) addr);
+}
+
+/**
+ * @brief read system i/o (dword)
+ * @param[in] addr address to read
+ * @param[in] mmio memory i/o space or i/o port space
+ */
+static inline uint32_t ns16550_sys_readl(void __iomem *addr, int mmio)
+{
+	if (mmio)
+		return readl(addr);
+        else
+		return (uint32_t) inl((int) addr);
+}
+
+/**
+ * @brief write system i/o (byte)
+ * @param[in] val data to write
+ * @param[in] addr address to write to
+ * @param[in] mmio memory i/o space or i/o port space
+ */
+static inline void ns16550_sys_writeb(uint8_t val, void __iomem *addr, int mmio)
+{
+	if (mmio)
+		writeb(val, addr);
+        else
+		outb(val, (int) addr);
+}
+
+/**
+ * @brief read system i/o (word)
+ * @param[in] val data to write
+ * @param[in] addr address to write to
+ * @param[in] mmio memory i/o space or i/o port space
+ */
+static inline void ns16550_sys_writew(uint16_t val, void __iomem *addr, int mmio)
+{
+	if (mmio)
+		writew(val, addr);
+        else
+		outw(val, (int) addr);
+}
+
+/**
+ * @brief read system i/o (dword)
+ * @param[in] val data to write
+ * @param[in] addr address to write to
+ * @param[in] mmio memory i/o space or i/o port space
+ */
+static inline void ns16550_sys_writel(uint32_t val, void __iomem *addr, int mmio)
+{
+	if (mmio)
+		writel(val, addr);
+        else
+		outl(val, (int) addr);
+}
+
+/**
  * @brief read register
  *
  * @param[in] cdev pointer to console device
@@ -78,16 +160,13 @@ static uint32_t ns16550_read(struct console_device *cdev, uint32_t off)
 
 	off <<= plat->shift;
 
-	if (plat->reg_read)
-		return plat->reg_read((unsigned long)dev->priv, off);
-
 	switch (width) {
 	case IORESOURCE_MEM_8BIT:
-		return readb(dev->priv + off);
+		return ns16550_sys_readb(dev->priv + off, priv->mmio);
 	case IORESOURCE_MEM_16BIT:
-		return readw(dev->priv + off);
+		return ns16550_sys_readw(dev->priv + off, priv->mmio);
 	case IORESOURCE_MEM_32BIT:
-		return readl(dev->priv + off);
+		return ns16550_sys_readl(dev->priv + off, priv->mmio);
 	}
 	return -1;
 }
@@ -109,20 +188,15 @@ static void ns16550_write(struct console_device *cdev, uint32_t val,
 
 	off <<= plat->shift;
 
-	if (plat->reg_write) {
-		plat->reg_write(val, (unsigned long)dev->priv, off);
-		return;
-	}
-
 	switch (width) {
 	case IORESOURCE_MEM_8BIT:
-		writeb(val & 0xff, dev->priv + off);
+		ns16550_sys_writeb(val & 0xff, dev->priv + off, priv->mmio);
 		break;
 	case IORESOURCE_MEM_16BIT:
-		writew(val & 0xffff, dev->priv + off);
+		ns16550_sys_writew(val & 0xffff, dev->priv + off, priv->mmio);
 		break;
 	case IORESOURCE_MEM_32BIT:
-		writel(val, dev->priv + off);
+		ns16550_sys_writel(val, dev->priv + off, priv->mmio);
 		break;
 	}
 }
@@ -293,16 +367,32 @@ static int ns16550_probe(struct device_d *dev)
 	struct console_device *cdev;
 	struct NS16550_plat *plat = (struct NS16550_plat *)dev->platform_data;
 	struct ns16550_drvdata *devtype;
+	struct resource *res;
 	int ret;
 
 	ret = dev_get_drvdata(dev, (unsigned long *)&devtype);
 	if (ret)
 		devtype = &ns16550_drvdata;
 
-	dev->priv = dev_request_mem_region(dev, 0);
-
 	priv = xzalloc(sizeof(*priv));
 
+	res = dev_get_resource(dev, IORESOURCE_MEM, 0);
+	priv->mmio = (res != NULL);
+	if (res)
+	{
+		res = request_iomem_region(dev_name(dev),res->start,res->end);
+	}
+	else
+	{
+		res = dev_get_resource(dev, IORESOURCE_IO, 0);
+		if (res)
+			res = request_ioport_region(dev_name(dev),res->start,res->end);
+	}
+	if (!res)
+		goto err;
+	dev->priv = (void __force __iomem *) res->start;
+
+
 	if (plat)
 		priv->plat = *plat;
 	else
diff --git a/include/driver.h b/include/driver.h
index 37797c7..ff4a5a1 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -276,7 +276,7 @@ static inline struct device_d *add_ns16550_device(int id, resource_size_t start,
 		resource_size_t size, int flags, struct NS16550_plat *pdata)
 {
 	return add_generic_device("ns16550_serial", id, NULL, start, size,
-				  IORESOURCE_MEM | flags, pdata);
+				  flags, pdata);
 }
 
 #ifdef CONFIG_DRIVER_NET_DM9K
diff --git a/include/ns16550.h b/include/ns16550.h
index 36aa5ff..876bb04 100644
--- a/include/ns16550.h
+++ b/include/ns16550.h
@@ -33,18 +33,9 @@
 struct NS16550_plat {
 	/** Clock speed */
 	unsigned int clock;
-	/**
-	 * register read access capability
-	 */
-	unsigned int (*reg_read) (unsigned long base, unsigned char reg_offset);
-	/**
-	 * register write access capability
-	 */
-	void (*reg_write) (unsigned int val, unsigned long base,
-				    unsigned char reg_offset);
-
 	int shift;
 	unsigned int flags;
+	int mmio;
 #define NS16650_FLAG_DISABLE_FIFO	1
 };
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
