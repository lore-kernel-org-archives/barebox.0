Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmLWk-0007qZ-W9
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 08:01:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jul 2011 10:01:02 +0200
Message-Id: <1311840062-11446-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1311840062-11446-1-git-send-email-s.hauer@pengutronix.de>
References: <1311840062-11446-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 8/8] add a ns16550 registration helper and use it
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |   10 +-------
 arch/arm/boards/omap/board-beagle.c               |   12 ++--------
 arch/arm/boards/omap/board-omap3evm.c             |   22 ++++++++------------
 arch/arm/boards/omap/board-sdp343x.c              |   12 ++--------
 arch/arm/boards/panda/board.c                     |   12 ++--------
 arch/arm/boards/pcm049/board.c                    |   12 ++--------
 arch/x86/boards/x86_generic/generic_pc.c          |   15 +++----------
 include/driver.h                                  |    7 ++++++
 8 files changed, 34 insertions(+), 68 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index 4e69bbc..fa910b9 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -100,13 +100,6 @@ static struct NS16550_plat quad_uart_serial_plat = {
 #define QUART_OFFSET 0x1000000
 #endif
 
-static struct device_d quad_uart_serial_device = {
-	.id = -1,
-	.name = "serial_ns16550",
-	.map_base = IMX_CS3_BASE + QUART_OFFSET,
-	.size = 0xF,
-	.platform_data = (void *)&quad_uart_serial_plat,
-};
 #endif
 
 static struct i2c_board_info i2c_devices[] = {
@@ -295,7 +288,8 @@ static int eukrea_cpuimx27_console_init(void)
 	CS3L = 0x0D1D0D01;
 	CS3A = 0x00D20000;
 #ifdef CONFIG_DRIVER_SERIAL_NS16550
-	register_device(&quad_uart_serial_device);
+	add_ns16550_device(-1, IMX_CS3_BASE + QUART_OFFSET, 0xf,
+			&quad_uart_serial_plat);
 #endif
 	return 0;
 }
diff --git a/arch/arm/boards/omap/board-beagle.c b/arch/arm/boards/omap/board-beagle.c
index 107a009..191496a 100644
--- a/arch/arm/boards/omap/board-beagle.c
+++ b/arch/arm/boards/omap/board-beagle.c
@@ -242,14 +242,6 @@ static struct NS16550_plat serial_plat = {
 	.reg_write = omap_uart_write,
 };
 
-static struct device_d beagle_serial_device = {
-	.id = -1,
-	.name = "serial_ns16550",
-	.map_base = OMAP_UART3_BASE,
-	.size = 1024,
-	.platform_data = (void *)&serial_plat,
-};
-
 /**
  * @brief UART serial port initialization - remember to enable COM clocks in
  * arch
@@ -259,7 +251,9 @@ static struct device_d beagle_serial_device = {
 static int beagle_console_init(void)
 {
 	/* Register the serial port */
-	return register_device(&beagle_serial_device);
+	add_ns16550_device(-1, OMAP_UART3_BASE, 1024, &serial_plat);
+
+	return 0;
 }
 console_initcall(beagle_console_init);
 #endif /* CONFIG_DRIVER_SERIAL_NS16550 */
diff --git a/arch/arm/boards/omap/board-omap3evm.c b/arch/arm/boards/omap/board-omap3evm.c
index d555da4..071e374 100644
--- a/arch/arm/boards/omap/board-omap3evm.c
+++ b/arch/arm/boards/omap/board-omap3evm.c
@@ -218,18 +218,6 @@ static struct NS16550_plat serial_plat = {
 	.reg_write	= omap_uart_write,
 };
 
-static struct device_d omap3evm_serial_device = {
-	.id		= -1,
-	.name		= "serial_ns16550",
-#if defined(CONFIG_OMAP3EVM_UART1)
-	.map_base	= OMAP_UART1_BASE,
-#elif defined(CONFIG_OMAP3EVM_UART3)
-	.map_base	= OMAP_UART3_BASE,
-#endif
-	.size		= 1024,
-	.platform_data	= (void *)&serial_plat,
-};
-
 /**
  * @brief Initialize the serial port to be used as console.
  *
@@ -237,7 +225,15 @@ static struct device_d omap3evm_serial_device = {
  */
 static int omap3evm_init_console(void)
 {
-	return register_device(&omap3evm_serial_device);
+	add_ns16550_device(-1,
+#if defined(CONFIG_OMAP3EVM_UART1)
+			OMAP_UART1_BASE,
+#elif defined(CONFIG_OMAP3EVM_UART3)
+			OMAP_UART3_BASE,
+#endif
+			1024, &serial_plat);
+
+	return 0;
 }
 console_initcall(omap3evm_init_console);
 #endif /* CONFIG_DRIVER_SERIAL_NS16550 */
diff --git a/arch/arm/boards/omap/board-sdp343x.c b/arch/arm/boards/omap/board-sdp343x.c
index 04aa302..8e8d952 100644
--- a/arch/arm/boards/omap/board-sdp343x.c
+++ b/arch/arm/boards/omap/board-sdp343x.c
@@ -610,14 +610,6 @@ static struct NS16550_plat serial_plat = {
 	.reg_write = omap_uart_write,
 };
 
-static struct device_d sdp3430_serial_device = {
-	.id = -1,
-	.name = "serial_ns16550",
-	.map_base = OMAP_UART3_BASE,
-	.size = 1024,
-	.platform_data = (void *)&serial_plat,
-};
-
 /**
  * @brief UART serial port initialization - remember to enable COM clocks in arch
  *
@@ -626,7 +618,9 @@ static struct device_d sdp3430_serial_device = {
 static int sdp3430_console_init(void)
 {
 	/* Register the serial port */
-	return register_device(&sdp3430_serial_device);
+	add_ns16550_device(-1, OMAP_UART3_BASE, 1024, &serial_plat);
+
+	return 0;
 }
 
 console_initcall(sdp3430_console_init);
diff --git a/arch/arm/boards/panda/board.c b/arch/arm/boards/panda/board.c
index c5b1e5c..1c6cf58 100644
--- a/arch/arm/boards/panda/board.c
+++ b/arch/arm/boards/panda/board.c
@@ -37,18 +37,12 @@ static struct NS16550_plat serial_plat = {
 	.reg_write = omap_uart_write,
 };
 
-static struct device_d panda_serial_device = {
-	.id = -1,
-	.name = "serial_ns16550",
-	.map_base = OMAP44XX_UART3_BASE,
-	.size = 1024,
-	.platform_data = (void *)&serial_plat,
-};
-
 static int panda_console_init(void)
 {
 	/* Register the serial port */
-	return register_device(&panda_serial_device);
+	add_ns16550_device(-1, OMAP44XX_UART3_BASE, 1024, &serial_plat);
+
+	return 0;
 }
 console_initcall(panda_console_init);
 
diff --git a/arch/arm/boards/pcm049/board.c b/arch/arm/boards/pcm049/board.c
index 1b7923f..7eae2cf 100644
--- a/arch/arm/boards/pcm049/board.c
+++ b/arch/arm/boards/pcm049/board.c
@@ -48,18 +48,12 @@ static struct NS16550_plat serial_plat = {
 	.reg_write = omap_uart_write,
 };
 
-static struct device_d pcm049_serial_device = {
-	.id = -1,
-	.name = "serial_ns16550",
-	.map_base = OMAP44XX_UART3_BASE,
-	.size = 1024,
-	.platform_data = (void *)&serial_plat,
-};
-
 static int pcm049_console_init(void)
 {
 	/* Register the serial port */
-	return register_device(&pcm049_serial_device);
+	add_ns16550_device(-1, OMAP44XX_UART3_BASE, 1024, &serial_plat);
+
+	return 0;
 }
 console_initcall(pcm049_console_init);
 
diff --git a/arch/x86/boards/x86_generic/generic_pc.c b/arch/x86/boards/x86_generic/generic_pc.c
index fa2975f..d031c52 100644
--- a/arch/x86/boards/x86_generic/generic_pc.c
+++ b/arch/x86/boards/x86_generic/generic_pc.c
@@ -83,19 +83,12 @@ static struct NS16550_plat serial_plat = {
        .reg_write = x86_uart_write,
 };
 
-/* we are expecting always one serial interface */
-static struct device_d generic_pc_serial_device = {
-       .id = -1,
-       .name = "serial_ns16550",
-       .map_base = 0x3f8,
-       .size = 8,
-       .platform_data = (void *)&serial_plat,
-};
-
 static int pc_console_init(void)
 {
-       /* Register the serial port */
-       return register_device(&generic_pc_serial_device);
+	/* Register the serial port */
+	add_ns16550_device(-1, 0x3f8, 8, &serial_plat);
+
+	return 0;
 }
 console_initcall(pc_console_init);
 
diff --git a/include/driver.h b/include/driver.h
index af34803..ab2a074 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -227,6 +227,13 @@ static inline struct device_d *add_cfi_flash_device(int id, resource_size_t star
 				  IORESOURCE_MEM | flags, NULL);
 }
 
+static inline struct device_d *add_ns16550_device(int id, resource_size_t start,
+		resource_size_t size, struct NS16550_plat *pdata)
+{
+	return add_generic_device("serial_ns16550", id, NULL, start, size,
+				  IORESOURCE_MEM, pdata);
+}
+
 /* linear list over all available devices
  */
 extern struct list_head device_list;
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
