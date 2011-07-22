Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo3.mail-out.ovh.net ([87.98.184.158]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QkI4s-000700-5K
	for barebox@lists.infradead.org; Fri, 22 Jul 2011 15:55:59 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id DF35710140E2
	for <barebox@lists.infradead.org>;
	Fri, 22 Jul 2011 17:56:31 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 22 Jul 2011 17:38:37 +0200
Message-Id: <1311349119-30197-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1311349119-30197-1-git-send-email-plagnioj@jcrosoft.com>
References: <1311349119-30197-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/6] at91: switch to add_generic_device
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91rm9200ek/init.c      |   18 +--
 arch/arm/boards/at91sam9263ek/init.c     |   18 +---
 arch/arm/boards/mmccpu/init.c            |   17 +--
 arch/arm/boards/pm9261/init.c            |   11 +--
 arch/arm/boards/pm9263/init.c            |   18 +---
 arch/arm/mach-at91/at91rm9200_devices.c  |  144 ++++-----------------
 arch/arm/mach-at91/at91sam9260_devices.c |  209 ++++++------------------------
 arch/arm/mach-at91/at91sam9261_devices.c |  130 ++++---------------
 arch/arm/mach-at91/at91sam9263_devices.c |  177 +++++--------------------
 arch/arm/mach-at91/at91sam9g45_devices.c |  199 ++++++-----------------------
 10 files changed, 178 insertions(+), 763 deletions(-)

diff --git a/arch/arm/boards/at91rm9200ek/init.c b/arch/arm/boards/at91rm9200ek/init.c
index 2b16980..3ef41a2 100644
--- a/arch/arm/boards/at91rm9200ek/init.c
+++ b/arch/arm/boards/at91rm9200ek/init.c
@@ -34,20 +34,6 @@
 #include <mach/gpio.h>
 #include <mach/io.h>
 
-static struct resource cfi_resources[] = {
-	[0] = {
-		.start	= AT91_CHIPSELECT_0,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d cfi_dev = {
-	.id		= 0,
-	.name		= "cfi_flash",
-	.num_resources	= ARRAY_SIZE(cfi_resources),
-	.resource	= cfi_resources,
-};
-
 static struct at91_ether_platform_data ether_pdata = {
 	.flags = AT91SAM_ETHER_RMII,
 	.phy_addr = 0,
@@ -63,7 +49,9 @@ static int at91rm9200ek_devices_init(void)
 
 	at91_add_device_sdram(64 * 1024 * 1024);
 	at91_add_device_eth(&ether_pdata);
-	register_device(&cfi_dev);
+
+	add_generic_device("cfi_flash", 0, NULL, AT91_CHIPSELECT_0, 0,
+			   IORESOURCE_MEM, NULL);
 
 #if defined(CONFIG_DRIVER_CFI) || defined(CONFIG_DRIVER_CFI_OLD)
 	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self");
diff --git a/arch/arm/boards/at91sam9263ek/init.c b/arch/arm/boards/at91sam9263ek/init.c
index af8a1e1..655d46a 100644
--- a/arch/arm/boards/at91sam9263ek/init.c
+++ b/arch/arm/boards/at91sam9263ek/init.c
@@ -87,21 +87,6 @@ static void ek_add_device_nand(void)
 	at91_add_device_nand(&nand_pdata);
 }
 
-static struct resource cfi_resources[] = {
-	[0] = {
-		.start	= AT91_CHIPSELECT_0,
-		.size	= 8 * 1024 * 1024,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d cfi_dev = {
-	.id		= -1,
-	.name		= "cfi_flash",
-	.num_resources	= ARRAY_SIZE(cfi_resources),
-	.resource	= cfi_resources,
-};
-
 static struct at91_ether_platform_data macb_pdata = {
 	.flags = AT91SAM_ETHER_RMII,
 	.phy_addr = 0,
@@ -135,7 +120,8 @@ static int at91sam9263ek_devices_init(void)
 	at91_add_device_sdram(64 * 1024 * 1024);
 	ek_add_device_nand();
 	at91_add_device_eth(&macb_pdata);
-	register_device(&cfi_dev);
+	add_generic_device("cfi_flash", 0, NULL, AT91_CHIPSELECT_0, 8 * 1024 * 1024,
+			   IORESOURCE_MEM, NULL);
 	ek_add_device_mci();
 
 #if defined(CONFIG_DRIVER_CFI) || defined(CONFIG_DRIVER_CFI_OLD)
diff --git a/arch/arm/boards/mmccpu/init.c b/arch/arm/boards/mmccpu/init.c
index 8cc5f2c..85a18e0 100644
--- a/arch/arm/boards/mmccpu/init.c
+++ b/arch/arm/boards/mmccpu/init.c
@@ -37,20 +37,6 @@
 #include <mach/gpio.h>
 #include <mach/io.h>
 
-static struct resource cfi_resources[] = {
-	[0] = {
-		.start	= AT91_CHIPSELECT_0,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d cfi_dev = {
-	.id		= -1,
-	.name		= "cfi_flash",
-	.num_resources	= ARRAY_SIZE(cfi_resources),
-	.resource	= cfi_resources,
-};
-
 static struct at91_ether_platform_data macb_pdata = {
 	.flags		= AT91SAM_ETHER_MII | AT91SAM_ETHER_FORCE_LINK,
 	.phy_addr	= 4,
@@ -68,7 +54,8 @@ static int mmccpu_devices_init(void)
 
 	at91_add_device_sdram(128 * 1024 * 1024);
 	at91_add_device_eth(&macb_pdata);
-	register_device(&cfi_dev);
+	add_generic_device("cfi_flash", 0, NULL, AT91_CHIPSELECT_0, 0,
+			   IORESOURCE_MEM, NULL);
 
 	devfs_add_partition("nor0", 0x00000, 256 * 1024, PARTITION_FIXED, "self0");
 	devfs_add_partition("nor0", 0x40000, 128 * 1024, PARTITION_FIXED, "env0");
diff --git a/arch/arm/boards/pm9261/init.c b/arch/arm/boards/pm9261/init.c
index ad4fa9d..38e4350 100644
--- a/arch/arm/boards/pm9261/init.c
+++ b/arch/arm/boards/pm9261/init.c
@@ -147,19 +147,12 @@ static void __init pm_add_device_dm9000(void)
 static void __init ek_add_device_dm9000(void) {}
 #endif /* CONFIG_DRIVER_NET_DM9000 */
 
-static struct device_d cfi_dev = {
-	.id		= 0,
-	.name		= "cfi_flash",
-	.map_base	= AT91_CHIPSELECT_0,
-	.size		= 4 * 1024 * 1024,
-};
-
 static int pm9261_devices_init(void)
 {
 	at91_add_device_sdram(64 * 1024 * 1024);
 	pm_add_device_nand();
-	register_device(&cfi_dev);
-	pm_add_device_dm9000();
+	add_generic_device("cfi_flash", 0, NULL, AT91_CHIPSELECT_0, 4 * 1024 * 1024,
+			   IORESOURCE_MEM, NULL);
 
 	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self");
 	devfs_add_partition("nor0", 0x40000, 0x10000, PARTITION_FIXED, "env0");
diff --git a/arch/arm/boards/pm9263/init.c b/arch/arm/boards/pm9263/init.c
index e21e8e3..9f86d67 100644
--- a/arch/arm/boards/pm9263/init.c
+++ b/arch/arm/boards/pm9263/init.c
@@ -86,21 +86,6 @@ static void pm_add_device_nand(void)
 	at91_add_device_nand(&nand_pdata);
 }
 
-static struct resource cfi_resources[] = {
-	[0] = {
-		.start	= AT91_CHIPSELECT_0,
-		.size	= 4 * 1024 * 1024,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d cfi_dev = {
-	.id	  = -1,
-	.name     = "cfi_flash",
-	.num_resources	= ARRAY_SIZE(cfi_resources),
-	.resource	= cfi_resources,
-};
-
 static struct at91_ether_platform_data macb_pdata = {
 	.flags = AT91SAM_ETHER_RMII,
 	.phy_addr = 0,
@@ -119,7 +104,8 @@ static int pm9263_devices_init(void)
 	at91_add_device_sdram(64 * 1024 * 1024);
 	pm_add_device_nand();
 	at91_add_device_eth(&macb_pdata);
-	register_device(&cfi_dev);
+	add_generic_device("cfi_flash", 0, NULL, AT91_CHIPSELECT_0, 4 * 1024 * 1024,
+			   IORESOURCE_MEM, NULL);
 
 	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self0");
 	devfs_add_partition("nor0", 0x40000, 0x10000, PARTITION_FIXED, "env0");
diff --git a/arch/arm/mach-at91/at91rm9200_devices.c b/arch/arm/mach-at91/at91rm9200_devices.c
index 16c94a6..289f2c3 100644
--- a/arch/arm/mach-at91/at91rm9200_devices.c
+++ b/arch/arm/mach-at91/at91rm9200_devices.c
@@ -34,21 +34,6 @@ void at91_add_device_sdram(u32 size)
  * -------------------------------------------------------------------- */
 
 #if defined(CONFIG_DRIVER_NET_AT91_ETHER)
-static struct resource eth_resources[] = {
-	[0] = {
-		.start	= AT91_VA_BASE_EMAC,
-		.size	= 0x1000,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d at91rm9200_eth_device = {
-	.id		= 0,
-	.name		= "at91_ether",
-	.resource	= eth_resources,
-	.num_resources	= ARRAY_SIZE(eth_resources),
-};
-
 void __init at91_add_device_eth(struct at91_ether_platform_data *data)
 {
 	if (!data)
@@ -77,8 +62,8 @@ void __init at91_add_device_eth(struct at91_ether_platform_data *data)
 		at91_set_B_periph(AT91_PIN_PB12, 0);	/* ETX2 */
 	}
 
-	at91rm9200_eth_device.platform_data = data;
-	register_device(&at91rm9200_eth_device);
+	add_generic_device("at91_ether", 0, NULL, AT91_VA_BASE_EMAC, 0x1000,
+			   IORESOURCE_MEM, data);
 }
 #else
 void __init at91_add_device_eth(struct at91_ether_platform_data *data) {}
@@ -89,21 +74,6 @@ void __init at91_add_device_eth(struct at91_ether_platform_data *data) {}
  * -------------------------------------------------------------------- */
 
 #if defined(CONFIG_NAND_ATMEL)
-static struct resource nand_resources[] = {
-	[0] = {
-		.start	= AT91_CHIPSELECT_3,
-		.size	= 0x10,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d at91rm9200_nand_device = {
-	.id		= -1,
-	.name		= "atmel_nand",
-	.resource	= nand_resources,
-	.num_resources	= ARRAY_SIZE(nand_resources),
-};
-
 void __init at91_add_device_nand(struct atmel_nand_data *data)
 {
 	unsigned int csa;
@@ -138,8 +108,8 @@ void __init at91_add_device_nand(struct atmel_nand_data *data)
 	at91_set_A_periph(AT91_PIN_PC1, 0);		/* SMOE */
 	at91_set_A_periph(AT91_PIN_PC3, 0);		/* SMWE */
 
-	at91rm9200_nand_device.platform_data = data;
-	platform_device_register(&at91rm9200_nand_device);
+	add_generic_device("atmel_nand", 0, NULL, AT91_CHIPSELECT_3, 0x10,
+			   IORESOURCE_MEM, data);
 }
 #else
 void __init at91_add_device_nand(struct atmel_nand_data *data) {}
@@ -149,42 +119,12 @@ void __init at91_add_device_nand(struct atmel_nand_data *data) {}
  *  UART
  * -------------------------------------------------------------------- */
 
-static struct resource dbgu_resources[] = {
-	[0] = {
-		.start	= AT91_BASE_SYS + AT91_DBGU,
-		.size	= 4096,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d dbgu_serial_device = {
-	.id		= 0,
-	.name		= "atmel_serial",
-	.resource	= dbgu_resources,
-	.num_resources	= ARRAY_SIZE(dbgu_resources),
-};
-
 static inline void configure_dbgu_pins(void)
 {
 	at91_set_A_periph(AT91_PIN_PA30, 0);		/* DRXD */
 	at91_set_A_periph(AT91_PIN_PA31, 1);		/* DTXD */
 }
 
-static struct resource uart0_resources[] = {
-	[0] = {
-		.start	= AT91RM9200_BASE_US0,
-		.size	= 4096,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d uart0_serial_device = {
-	.id		= 1,
-	.name		= "atmel_serial",
-	.resource	= uart0_resources,
-	.num_resources	= ARRAY_SIZE(uart0_resources),
-};
-
 static inline void configure_usart0_pins(unsigned pins)
 {
 	at91_set_A_periph(AT91_PIN_PA17, 1);		/* TXD0 */
@@ -202,21 +142,6 @@ static inline void configure_usart0_pins(unsigned pins)
 	}
 }
 
-static struct resource uart1_resources[] = {
-	[0] = {
-		.start	= AT91RM9200_BASE_US1,
-		.size	= 4096,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d uart1_serial_device = {
-	.id		= 2,
-	.name		= "atmel_serial",
-	.resource	= uart1_resources,
-	.num_resources	= ARRAY_SIZE(uart1_resources),
-};
-
 static inline void configure_usart1_pins(unsigned pins)
 {
 	at91_set_A_periph(AT91_PIN_PB20, 1);		/* TXD1 */
@@ -236,21 +161,6 @@ static inline void configure_usart1_pins(unsigned pins)
 		at91_set_A_periph(AT91_PIN_PB26, 0);	/* RTS1 */
 }
 
-static struct resource uart2_resources[] = {
-	[0] = {
-		.start	= AT91RM9200_BASE_US2,
-		.size	= 4096,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d uart2_serial_device = {
-	.id		= 3,
-	.name		= "atmel_serial",
-	.resource	= uart2_resources,
-	.num_resources	= ARRAY_SIZE(uart2_resources),
-};
-
 static inline void configure_usart2_pins(unsigned pins)
 {
 	at91_set_A_periph(AT91_PIN_PA22, 0);		/* RXD2 */
@@ -262,21 +172,6 @@ static inline void configure_usart2_pins(unsigned pins)
 		at91_set_B_periph(AT91_PIN_PA31, 0);	/* RTS2 */
 }
 
-static struct resource uart3_resources[] = {
-	[0] = {
-		.start	= AT91RM9200_BASE_US3,
-		.size	= 4096,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d uart3_serial_device = {
-	.id		= 4,
-	.name		= "atmel_serial",
-	.resource	= uart3_resources,
-	.num_resources	= ARRAY_SIZE(uart3_resources),
-};
-
 static inline void configure_usart3_pins(unsigned pins)
 {
 	at91_set_B_periph(AT91_PIN_PA5, 1);		/* TXD3 */
@@ -290,33 +185,46 @@ static inline void configure_usart3_pins(unsigned pins)
 
 void __init at91_register_uart(unsigned id, unsigned pins)
 {
+	resource_size_t start;
+	struct device_d *dev;
+	char* clk_name;
+
 	switch (id) {
 		case 0:		/* DBGU */
 			configure_dbgu_pins();
-			at91_clock_associate("mck", &dbgu_serial_device, "usart");
-			register_device(&dbgu_serial_device);
+			start = AT91_BASE_SYS + AT91_DBGU;
+			clk_name = "mck";
+			id = 0;
 			break;
 		case AT91RM9200_ID_US0:
 			configure_usart0_pins(pins);
-			at91_clock_associate("usart0_clk", &uart0_serial_device, "usart");
+			clk_name = "usart0_clk";
+			start = AT91RM9200_BASE_US0;
+			id = 1;
 			break;
 		case AT91RM9200_ID_US1:
 			configure_usart1_pins(pins);
-			at91_clock_associate("usart1_clk", &uart1_serial_device, "usart");
-			register_device(&uart1_serial_device);
+			clk_name = "usart1_clk";
+			start = AT91RM9200_BASE_US1;
+			id = 2;
 			break;
 		case AT91RM9200_ID_US2:
 			configure_usart2_pins(pins);
-			at91_clock_associate("usart2_clk", &uart2_serial_device, "usart");
-			register_device(&uart2_serial_device);
+			clk_name = "usart2_clk";
+			start = AT91RM9200_BASE_US2;
+			id = 3;
 			break;
 		case AT91RM9200_ID_US3:
 			configure_usart3_pins(pins);
-			at91_clock_associate("usart3_clk", &uart3_serial_device, "usart");
-			register_device(&uart3_serial_device);
+			clk_name = "usart3_clk";
+			start = AT91RM9200_BASE_US3;
+			id = 4;
 			break;
 		default:
 			return;
 	}
 
+	dev = add_generic_device("atmel_serial", id, NULL, start, 4096,
+			   IORESOURCE_MEM, NULL);
+	at91_clock_associate(clk_name, dev, "usart");
 }
diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index 3808c66..468f00d 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -31,21 +31,6 @@ void at91_add_device_sdram(u32 size)
 }
 
 #if defined(CONFIG_DRIVER_NET_MACB)
-static struct resource eth_resources[] = {
-	[0] = {
-		.start	= AT91SAM9260_BASE_EMAC,
-		.size	= 0x1000,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d macb_dev = {
-	.id	  = -1,
-	.name     = "macb",
-	.resource	= eth_resources,
-	.num_resources	= ARRAY_SIZE(eth_resources),
-};
-
 void at91_add_device_eth(struct at91_ether_platform_data *data)
 {
 	if (!data)
@@ -74,29 +59,14 @@ void at91_add_device_eth(struct at91_ether_platform_data *data)
 		at91_set_B_periph(AT91_PIN_PA22, 0);	/* ETXER */
 	}
 
-	macb_dev.platform_data = data;
-	register_device(&macb_dev);
+	add_generic_device("macb", 0, NULL, AT91SAM9260_BASE_EMAC, 0x1000,
+			   IORESOURCE_MEM, data);
 }
 #else
 void at91_add_device_eth(struct at91_ether_platform_data *data) {}
 #endif
 
 #if defined(CONFIG_NAND_ATMEL)
-static struct resource nand_resources[] = {
-	[0] = {
-		.start	= AT91_CHIPSELECT_3,
-		.size	= 0x10,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d nand_dev = {
-	.id	  = -1,
-	.name     = "atmel_nand",
-	.resource	= nand_resources,
-	.num_resources	= ARRAY_SIZE(nand_resources),
-};
-
 void at91_add_device_nand(struct atmel_nand_data *data)
 {
 	unsigned long csa;
@@ -119,49 +89,19 @@ void at91_add_device_nand(struct atmel_nand_data *data)
 	if (data->det_pin)
 		at91_set_gpio_input(data->det_pin, 1);
 
-	nand_dev.platform_data = data;
-	register_device(&nand_dev);
+	add_generic_device("atmel_nand", 0, NULL, AT91_CHIPSELECT_3, 0x10,
+			   IORESOURCE_MEM, data);
 }
 #else
 void at91_add_device_nand(struct atmel_nand_data *data) {}
 #endif
 
-static struct resource dbgu_resources[] = {
-	[0] = {
-		.start	= AT91_BASE_SYS + AT91_DBGU,
-		.size	= 4096,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d dbgu_serial_device = {
-	.id	  = 0,
-	.name     = "atmel_serial",
-	.resource	= dbgu_resources,
-	.num_resources	= ARRAY_SIZE(dbgu_resources),
-};
-
 static inline void configure_dbgu_pins(void)
 {
 	at91_set_A_periph(AT91_PIN_PB14, 0);		/* DRXD */
 	at91_set_A_periph(AT91_PIN_PB15, 1);		/* DTXD */
 }
 
-static struct resource uart0_resources[] = {
-	[0] = {
-		.start	= AT91SAM9260_BASE_US0,
-		.size	= 4096,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d uart0_serial_device = {
-	.id	  = 1,
-	.name     = "atmel_serial",
-	.resource	= uart0_resources,
-	.num_resources	= ARRAY_SIZE(uart0_resources),
-};
-
 static inline void configure_usart0_pins(unsigned pins)
 {
 	at91_set_A_periph(AT91_PIN_PB4, 1);		/* TXD0 */
@@ -181,21 +121,6 @@ static inline void configure_usart0_pins(unsigned pins)
 		at91_set_A_periph(AT91_PIN_PB25, 0);	/* RI0 */
 }
 
-static struct resource uart1_resources[] = {
-	[0] = {
-		.start	= AT91SAM9260_BASE_US1,
-		.size	= 4096,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d uart1_serial_device = {
-	.id	  = 2,
-	.name     = "atmel_serial",
-	.resource	= uart1_resources,
-	.num_resources	= ARRAY_SIZE(uart1_resources),
-};
-
 static inline void configure_usart1_pins(unsigned pins)
 {
 	at91_set_A_periph(AT91_PIN_PB6, 1);		/* TXD1 */
@@ -207,21 +132,6 @@ static inline void configure_usart1_pins(unsigned pins)
 		at91_set_A_periph(AT91_PIN_PB29, 0);	/* CTS1 */
 }
 
-static struct resource uart2_resources[] = {
-	[0] = {
-		.start	= AT91SAM9260_BASE_US2,
-		.size	= 4096,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d uart2_serial_device = {
-	.id	  = 3,
-	.name     = "atmel_serial",
-	.resource	= uart2_resources,
-	.num_resources	= ARRAY_SIZE(uart2_resources),
-};
-
 static inline void configure_usart2_pins(unsigned pins)
 {
 	at91_set_A_periph(AT91_PIN_PB8, 1);		/* TXD2 */
@@ -233,21 +143,6 @@ static inline void configure_usart2_pins(unsigned pins)
 		at91_set_A_periph(AT91_PIN_PA5, 0);	/* CTS2 */
 }
 
-static struct resource uart3_resources[] = {
-	[0] = {
-		.start	= AT91SAM9260_BASE_US3,
-		.size	= 4096,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d uart3_serial_device = {
-	.id	  = 4,
-	.name     = "atmel_serial",
-	.resource	= uart3_resources,
-	.num_resources	= ARRAY_SIZE(uart3_resources),
-};
-
 static inline void configure_usart3_pins(unsigned pins)
 {
 	at91_set_A_periph(AT91_PIN_PB10, 1);		/* TXD3 */
@@ -259,42 +154,12 @@ static inline void configure_usart3_pins(unsigned pins)
 		at91_set_B_periph(AT91_PIN_PC10, 0);	/* CTS3 */
 }
 
-static struct resource uart4_resources[] = {
-	[0] = {
-		.start	= AT91SAM9260_BASE_US4,
-		.size	= 4096,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d uart4_serial_device = {
-	.id	  = 5,
-	.name     = "atmel_serial",
-	.resource	= uart4_resources,
-	.num_resources	= ARRAY_SIZE(uart4_resources),
-};
-
 static inline void configure_usart4_pins(void)
 {
 	at91_set_B_periph(AT91_PIN_PA31, 1);		/* TXD4 */
 	at91_set_B_periph(AT91_PIN_PA30, 0);		/* RXD4 */
 }
 
-static struct resource uart5_resources[] = {
-	[0] = {
-		.start	= AT91SAM9260_BASE_US5,
-		.size	= 4096,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d uart5_serial_device = {
-	.id	  = 6,
-	.name     = "atmel_serial",
-	.resource	= uart5_resources,
-	.num_resources	= ARRAY_SIZE(uart5_resources),
-};
-
 static inline void configure_usart5_pins(void)
 {
 	at91_set_A_periph(AT91_PIN_PB12, 1);		/* TXD5 */
@@ -303,66 +168,68 @@ static inline void configure_usart5_pins(void)
 
 void at91_register_uart(unsigned id, unsigned pins)
 {
+	resource_size_t start;
+	struct device_d *dev;
+	char* clk_name;
+
 	switch (id) {
 		case 0:		/* DBGU */
 			configure_dbgu_pins();
-			at91_clock_associate("mck", &dbgu_serial_device, "usart");
-			register_device(&dbgu_serial_device);
+			start = AT91_BASE_SYS + AT91_DBGU;
+			clk_name = "mck";
+			id = 0;
 			break;
 		case AT91SAM9260_ID_US0:
 			configure_usart0_pins(pins);
-			at91_clock_associate("usart0_clk", &uart0_serial_device, "usart");
-			register_device(&uart0_serial_device);
+			clk_name = "usart0_clk";
+			start = AT91SAM9260_BASE_US0;
+			id = 1;
 			break;
 		case AT91SAM9260_ID_US1:
 			configure_usart1_pins(pins);
-			at91_clock_associate("usart1_clk", &uart1_serial_device, "usart");
-			register_device(&uart1_serial_device);
+			clk_name = "usart1_clk";
+			start = AT91SAM9260_BASE_US1;
+			id = 2;
 			break;
 		case AT91SAM9260_ID_US2:
 			configure_usart2_pins(pins);
-			at91_clock_associate("usart2_clk", &uart2_serial_device, "usart");
-			register_device(&uart2_serial_device);
+			clk_name = "usart2_clk";
+			start = AT91SAM9260_BASE_US2;
+			id = 3;
 			break;
 		case AT91SAM9260_ID_US3:
 			configure_usart3_pins(pins);
-			at91_clock_associate("usart3_clk", &uart3_serial_device, "usart");
-			register_device(&uart3_serial_device);
+			clk_name = "usart3_clk";
+			start = AT91SAM9260_BASE_US3;
+			id = 4;
 			break;
 		case AT91SAM9260_ID_US4:
 			configure_usart4_pins();
-			at91_clock_associate("usart4_clk", &uart4_serial_device, "usart");
-			register_device(&uart4_serial_device);
+			clk_name = "usart4_clk";
+			start = AT91SAM9260_BASE_US4;
+			id = 5;
 			break;
 		case AT91SAM9260_ID_US5:
 			configure_usart5_pins();
-			at91_clock_associate("usart5_clk", &uart5_serial_device, "usart");
-			register_device(&uart5_serial_device);
+			clk_name = "usart5_clk";
+			start = AT91SAM9260_BASE_US5;
+			id = 6;
 			break;
 		default:
 			return;
 	}
+
+	dev = add_generic_device("atmel_serial", id, NULL, start, 4096,
+			   IORESOURCE_MEM, NULL);
+	at91_clock_associate(clk_name, dev, "usart");
 }
 
 #if defined(CONFIG_MCI_ATMEL)
-static struct resource mci_resources[] = {
-	[0] = {
-		.start	= AT91SAM9260_BASE_MCI,
-		.size	= SZ_16K,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d mci_device = {
-	.id		= -1,
-	.name		= "atmel_mci",
-	.num_resources	= ARRAY_SIZE(mci_resources),
-	.resource	= mci_resources,
-};
-
 /* Consider only one slot : slot 0 */
 void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
 {
+	struct device_d *dev;
+
 	if (!data)
 		return;
 
@@ -393,9 +260,9 @@ void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
 		at91_set_A_periph(AT91_PIN_PA11, 1);
 	}
 
-	mci_device.platform_data = data;
-	at91_clock_associate("mci_clk", &mci_device, "mci_clk");
-	register_device(&mci_device);
+	dev = add_generic_device("atmel_mci", 0, NULL, AT91SAM9260_BASE_MCI, SZ_16K,
+			   IORESOURCE_MEM, data);
+	at91_clock_associate("mci_clk", dev, "mci_clk");
 }
 #else
 void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data) {}
diff --git a/arch/arm/mach-at91/at91sam9261_devices.c b/arch/arm/mach-at91/at91sam9261_devices.c
index f2a0664..1e741fd 100644
--- a/arch/arm/mach-at91/at91sam9261_devices.c
+++ b/arch/arm/mach-at91/at91sam9261_devices.c
@@ -31,21 +31,6 @@ void at91_add_device_sdram(u32 size)
 }
 
 #if defined(CONFIG_NAND_ATMEL)
-static struct resource nand_resources[] = {
-	[0] = {
-		.start	= AT91_CHIPSELECT_3,
-		.size	= 0x10,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d nand_dev = {
-	.id		= 0,
-	.name		= "atmel_nand",
-	.resource	= nand_resources,
-	.num_resources	= ARRAY_SIZE(nand_resources),
-};
-
 void at91_add_device_nand(struct atmel_nand_data *data)
 {
 	unsigned long csa;
@@ -71,49 +56,19 @@ void at91_add_device_nand(struct atmel_nand_data *data)
 	at91_set_A_periph(AT91_PIN_PC0, 0);		/* NANDOE */
 	at91_set_A_periph(AT91_PIN_PC1, 0);		/* NANDWE */
 
-	nand_dev.platform_data = data;
-	register_device(&nand_dev);
+	add_generic_device("atmel_nand", 0, NULL, AT91_CHIPSELECT_3, 0x10,
+			   IORESOURCE_MEM, data);
 }
 #else
 void at91_add_device_nand(struct atmel_nand_data *data) {}
 #endif
 
-static struct resource dbgu_resources[] = {
-	[0] = {
-		.start	= (AT91_BASE_SYS + AT91_DBGU),
-		.size	= 4096,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d dbgu_serial_device = {
-	.id		= 0,
-	.name		= "atmel_serial",
-	.resource	= dbgu_resources,
-	.num_resources	= ARRAY_SIZE(dbgu_resources),
-};
-
 static inline void configure_dbgu_pins(void)
 {
 	at91_set_A_periph(AT91_PIN_PA9, 0);		/* DRXD */
 	at91_set_A_periph(AT91_PIN_PA10, 1);		/* DTXD */
 }
 
-static struct resource uart0_resources[] = {
-	[0] = {
-		.start	= AT91SAM9261_BASE_US0,
-		.size	= 4096,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d uart0_serial_device = {
-	.id		= 1,
-	.name		= "atmel_serial",
-	.resource	= uart0_resources,
-	.num_resources	= ARRAY_SIZE(uart0_resources),
-};
-
 static inline void configure_usart0_pins(unsigned pins)
 {
 	at91_set_A_periph(AT91_PIN_PC8, 1);		/* TXD0 */
@@ -125,21 +80,6 @@ static inline void configure_usart0_pins(unsigned pins)
 		at91_set_A_periph(AT91_PIN_PC11, 0);	/* CTS0 */
 }
 
-static struct resource uart1_resources[] = {
-	[0] = {
-		.start	= AT91SAM9261_BASE_US1,
-		.size	= 4096,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d uart1_serial_device = {
-	.id		= 2,
-	.name		= "atmel_serial",
-	.resource	= uart1_resources,
-	.num_resources	= ARRAY_SIZE(uart1_resources),
-};
-
 static inline void configure_usart1_pins(unsigned pins)
 {
 	at91_set_A_periph(AT91_PIN_PC12, 1);		/* TXD1 */
@@ -151,21 +91,6 @@ static inline void configure_usart1_pins(unsigned pins)
 		at91_set_B_periph(AT91_PIN_PA13, 0);	/* CTS1 */
 }
 
-static struct resource uart2_resources[] = {
-	[0] = {
-		.start	= AT91SAM9261_BASE_US2,
-		.size	= 4096,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d uart2_serial_device = {
-	.id		= 3,
-	.name		= "atmel_serial",
-	.resource	= uart2_resources,
-	.num_resources	= ARRAY_SIZE(uart2_resources),
-};
-
 static inline void configure_usart2_pins(unsigned pins)
 {
 	at91_set_A_periph(AT91_PIN_PC15, 0);		/* RXD2 */
@@ -179,51 +104,50 @@ static inline void configure_usart2_pins(unsigned pins)
 
 void at91_register_uart(unsigned id, unsigned pins)
 {
+	resource_size_t start;
+	struct device_d *dev;
+	char* clk_name;
+
 	switch (id) {
 		case 0:		/* DBGU */
 			configure_dbgu_pins();
-			at91_clock_associate("mck", &dbgu_serial_device, "usart");
-			register_device(&dbgu_serial_device);
+			start = AT91_BASE_SYS + AT91_DBGU;
+			clk_name = "mck";
+			id = 0;
 			break;
 		case AT91SAM9261_ID_US0:
 			configure_usart0_pins(pins);
-			at91_clock_associate("usart0_clk", &uart0_serial_device, "usart");
-			register_device(&uart0_serial_device);
+			clk_name = "usart0_clk";
+			start = AT91SAM9261_BASE_US0;
+			id = 1;
 			break;
 		case AT91SAM9261_ID_US1:
 			configure_usart1_pins(pins);
-			at91_clock_associate("usart1_clk", &uart1_serial_device, "usart");
-			register_device(&uart1_serial_device);
+			clk_name = "usart1_clk";
+			start = AT91SAM9261_BASE_US1;
+			id = 2;
 			break;
 		case AT91SAM9261_ID_US2:
 			configure_usart2_pins(pins);
-			at91_clock_associate("usart2_clk", &uart2_serial_device, "usart");
-			register_device(&uart2_serial_device);
+			clk_name = "usart3_clk";
+			start = AT91SAM9261_BASE_US2;
+			id = 3;
 			break;
 		default:
 			return;
 	}
+
+	dev = add_generic_device("atmel_serial", id, NULL, start, 4096,
+			   IORESOURCE_MEM, NULL);
+	at91_clock_associate(clk_name, dev, "usart");
 }
 
 #if defined(CONFIG_MCI_ATMEL)
-static struct resource mci_resources[] = {
-	[0] = {
-		.start	= AT91SAM9261_BASE_MCI,
-		.size	= SZ_16K,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d mci_device = {
-	.id		= -1,
-	.name		= "atmel_mci",
-	.num_resources	= ARRAY_SIZE(mci_resources),
-	.resource	= mci_resources,
-};
-
 /* Consider only one slot : slot 0 */
 void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
 {
+	struct device_d *dev;
+
 	if (!data)
 		return;
 
@@ -254,9 +178,9 @@ void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
 		at91_set_B_periph(AT91_PIN_PA6, 1);
 	}
 
-	mci_device.platform_data = data;
-	at91_clock_associate("mci_clk", &mci_device, "mci_clk");
-	register_device(&mci_device);
+	dev = add_generic_device("atmel_mci", 0, NULL, AT91SAM9261_BASE_MCI, SZ_16K,
+			   IORESOURCE_MEM, data);
+	at91_clock_associate("mci_clk", dev, "mci_clk");
 }
 #else
 void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data) {}
diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
index c951800..07bd02f 100644
--- a/arch/arm/mach-at91/at91sam9263_devices.c
+++ b/arch/arm/mach-at91/at91sam9263_devices.c
@@ -31,21 +31,6 @@ void at91_add_device_sdram(u32 size)
 }
 
 #if defined(CONFIG_DRIVER_NET_MACB)
-static struct resource eth_resources[] = {
-	[0] = {
-		.start	= AT91SAM9263_BASE_EMAC,
-		.size	= 0x1000,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d macb_dev = {
-	.id	  = -1,
-	.name     = "macb",
-	.resource	= eth_resources,
-	.num_resources	= ARRAY_SIZE(eth_resources),
-};
-
 void at91_add_device_eth(struct at91_ether_platform_data *data)
 {
 	if (!data)
@@ -73,29 +58,14 @@ void at91_add_device_eth(struct at91_ether_platform_data *data)
 		at91_set_B_periph(AT91_PIN_PC24, 0);	/* ETXER */
 	}
 
-	macb_dev.platform_data = data;
-	register_device(&macb_dev);
+	add_generic_device("macb", 0, NULL, AT91SAM9263_BASE_EMAC, 0x1000,
+			   IORESOURCE_MEM, data);
 }
 #else
 void at91_add_device_eth(struct at91_ether_platform_data *data) {}
 #endif
 
 #if defined(CONFIG_NAND_ATMEL)
-static struct resource nand_resources[] = {
-	[0] = {
-		.start	= AT91_CHIPSELECT_3,
-		.size	= 0x10,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d nand_dev = {
-	.id	  = -1,
-	.name     = "atmel_nand",
-	.resource	= nand_resources,
-	.num_resources	= ARRAY_SIZE(nand_resources),
-};
-
 void at91_add_device_nand(struct atmel_nand_data *data)
 {
 	unsigned long csa;
@@ -118,49 +88,19 @@ void at91_add_device_nand(struct atmel_nand_data *data)
 	if (data->det_pin)
 		at91_set_gpio_input(data->det_pin, 1);
 
-	nand_dev.platform_data = data;
-	register_device(&nand_dev);
+	add_generic_device("atmel_nand", -1, NULL, AT91_CHIPSELECT_3, 0x10,
+			   IORESOURCE_MEM, data);
 }
 #else
 void at91_add_device_nand(struct atmel_nand_data *data) {}
 #endif
 
-static struct resource dbgu_resources[] = {
-	[0] = {
-		.start	= (AT91_BASE_SYS + AT91_DBGU),
-		.size	= 4096,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d dbgu_serial_device = {
-	.id	  = 0,
-	.name     = "atmel_serial",
-	.resource	= dbgu_resources,
-	.num_resources	= ARRAY_SIZE(dbgu_resources),
-};
-
 static inline void configure_dbgu_pins(void)
 {
 	at91_set_A_periph(AT91_PIN_PC30, 0);		/* DRXD */
 	at91_set_A_periph(AT91_PIN_PC31, 1);		/* DTXD */
 }
 
-static struct resource uart0_resources[] = {
-	[0] = {
-		.start	= AT91SAM9263_BASE_US0,
-		.size	= 4096,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d uart0_serial_device = {
-	.id	  = 1,
-	.name     = "atmel_serial",
-	.resource	= uart0_resources,
-	.num_resources	= ARRAY_SIZE(uart0_resources),
-};
-
 static inline void configure_usart0_pins(unsigned pins)
 {
 	at91_set_A_periph(AT91_PIN_PA26, 1);		/* TXD0 */
@@ -172,21 +112,6 @@ static inline void configure_usart0_pins(unsigned pins)
 		at91_set_A_periph(AT91_PIN_PA29, 0);	/* CTS0 */
 }
 
-static struct resource uart1_resources[] = {
-	[0] = {
-		.start	= AT91SAM9263_BASE_US1,
-		.size	= 4096,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d uart1_serial_device = {
-	.id	  = 2,
-	.name     = "atmel_serial",
-	.resource	= uart1_resources,
-	.num_resources	= ARRAY_SIZE(uart1_resources),
-};
-
 static inline void configure_usart1_pins(unsigned pins)
 {
 	at91_set_A_periph(AT91_PIN_PD0, 1);		/* TXD1 */
@@ -198,21 +123,6 @@ static inline void configure_usart1_pins(unsigned pins)
 		at91_set_B_periph(AT91_PIN_PD8, 0);	/* CTS1 */
 }
 
-static struct resource uart2_resources[] = {
-	[0] = {
-		.start	= AT91SAM9263_BASE_US2,
-		.size	= 4096,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d uart2_serial_device = {
-	.id	  = 3,
-	.name     = "atmel_serial",
-	.resource	= uart2_resources,
-	.num_resources	= ARRAY_SIZE(uart2_resources),
-};
-
 static inline void configure_usart2_pins(unsigned pins)
 {
 	at91_set_A_periph(AT91_PIN_PD2, 1);		/* TXD2 */
@@ -226,67 +136,53 @@ static inline void configure_usart2_pins(unsigned pins)
 
 void at91_register_uart(unsigned id, unsigned pins)
 {
+	resource_size_t start;
+	struct device_d *dev;
+	char* clk_name;
+
 	switch (id) {
 		case 0:		/* DBGU */
 			configure_dbgu_pins();
-			at91_clock_associate("mck", &dbgu_serial_device, "usart");
-			register_device(&dbgu_serial_device);
+			start = AT91_BASE_SYS + AT91_DBGU;
+			clk_name = "mck";
+			id = 0;
 			break;
 		case AT91SAM9263_ID_US0:
 			configure_usart0_pins(pins);
-			at91_clock_associate("usart0_clk", &uart0_serial_device, "usart");
-			register_device(&uart0_serial_device);
+			clk_name = "usart0_clk";
+			start = AT91SAM9263_BASE_US0;
+			id = 1;
 			break;
 		case AT91SAM9263_ID_US1:
 			configure_usart1_pins(pins);
-			at91_clock_associate("usart1_clk", &uart1_serial_device, "usart");
-			register_device(&uart1_serial_device);
+			clk_name = "usart1_clk";
+			start = AT91SAM9263_BASE_US1;
+			id = 2;
 			break;
 		case AT91SAM9263_ID_US2:
 			configure_usart2_pins(pins);
-			at91_clock_associate("usart2_clk", &uart2_serial_device, "usart");
-			register_device(&uart2_serial_device);
+			clk_name = "usart2_clk";
+			start = AT91SAM9263_BASE_US2;
+			id = 3;
 			break;
 		default:
 			return;
 	}
 
+	dev = add_generic_device("atmel_serial", id, NULL, start, 4096,
+			   IORESOURCE_MEM, NULL);
+	at91_clock_associate(clk_name, dev, "usart");
+
 }
 
 #if defined(CONFIG_MCI_ATMEL)
-static struct resource mci0_resources[] = {
-	[0] = {
-		.start	= AT91SAM9263_BASE_MCI0,
-		.size	= SZ_16K,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d mci0_device = {
-	.id		= 0,
-	.name		= "atmel_mci",
-	.num_resources	= ARRAY_SIZE(mci0_resources),
-	.resource	= mci0_resources,
-};
-
-static struct resource mci1_resources[] = {
-	[0] = {
-		.start	= AT91SAM9263_BASE_MCI1,
-		.size	= SZ_16K,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d mci1_device = {
-	.id		= 1,
-	.name		= "atmel_mci",
-	.num_resources	= ARRAY_SIZE(mci1_resources),
-	.resource	= mci1_resources,
-};
-
 /* Consider only one slot : slot 0 */
 void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
 {
+	resource_size_t start;
+	struct device_d *dev;
+	char* clk_name;
+
 	if (!data)
 		return;
 
@@ -304,6 +200,8 @@ void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
 		at91_set_gpio_input(data->wp_pin, 1);
 
 	if (mmc_id == 0) {		/* MCI0 */
+		start = AT91SAM9263_BASE_MCI0;
+		clk_name = "mci0_clk";
 		/* CLK */
 		at91_set_A_periph(AT91_PIN_PA12, 0);
 
@@ -317,12 +215,9 @@ void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
 			at91_set_A_periph(AT91_PIN_PA4, 1);
 			at91_set_A_periph(AT91_PIN_PA5, 1);
 		}
-
-		mci0_device.platform_data = data;
-		at91_clock_associate("mci0_clk", &mci0_device, "mci_clk");
-		register_device(&mci0_device);
-
 	} else {			/* MCI1 */
+		start = AT91SAM9263_BASE_MCI1;
+		clk_name = "mci1_clk";
 		/* CLK */
 		at91_set_A_periph(AT91_PIN_PA6, 0);
 
@@ -336,11 +231,11 @@ void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
 			at91_set_A_periph(AT91_PIN_PA10, 1);
 			at91_set_A_periph(AT91_PIN_PA11, 1);
 		}
-
-		mci1_device.platform_data = data;
-		at91_clock_associate("mci1_clk", &mci1_device, "mci_clk");
-		register_device(&mci1_device);
 	}
+
+	dev = add_generic_device("atmel_mci", mmc_id, NULL, start, 4096,
+			   IORESOURCE_MEM, data);
+	at91_clock_associate(clk_name, dev, "mci_clk");
 }
 #else
 void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data) {}
diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index 4f5279f..afcc687 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -31,21 +31,6 @@ void at91_add_device_sdram(u32 size)
 }
 
 #if defined(CONFIG_DRIVER_NET_MACB)
-static struct resource eth_resources[] = {
-	[0] = {
-		.start	= AT91SAM9G45_BASE_EMAC,
-		.size	= 0x1000,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d macb_dev = {
-	.id		= 0,
-	.name		= "macb",
-	.resource	= eth_resources,
-	.num_resources	= ARRAY_SIZE(eth_resources),
-};
-
 void at91_add_device_eth(struct at91_ether_platform_data *data)
 {
 	if (!data)
@@ -74,29 +59,14 @@ void at91_add_device_eth(struct at91_ether_platform_data *data)
 		at91_set_B_periph(AT91_PIN_PA27, 0);	/* ETXER */
 	}
 
-	macb_dev.platform_data = data;
-	register_device(&macb_dev);
+	add_generic_device("macb", 0, NULL, AT91SAM9G45_BASE_EMAC, 0x1000,
+			   IORESOURCE_MEM, data);
 }
 #else
 void at91_add_device_eth(struct at91_ether_platform_data *data) {}
 #endif
 
 #if defined(CONFIG_NAND_ATMEL)
-static struct resource nand_resources[] = {
-	[0] = {
-		.start	= AT91_CHIPSELECT_3,
-		.size	= 0x10,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d nand_dev = {
-	.id		= -1,
-	.name		= "atmel_nand",
-	.resource	= nand_resources,
-	.num_resources	= ARRAY_SIZE(nand_resources),
-};
-
 void at91_add_device_nand(struct atmel_nand_data *data)
 {
 	unsigned long csa;
@@ -122,49 +92,19 @@ void at91_add_device_nand(struct atmel_nand_data *data)
 	if (data->det_pin)
 		at91_set_gpio_input(data->det_pin, 1);
 
-	nand_dev.platform_data = data;
-	register_device(&nand_dev);
+	add_generic_device("atmel_nand", -1, NULL, AT91_CHIPSELECT_3, 0x10,
+			   IORESOURCE_MEM, data);
 }
 #else
 void at91_add_device_nand(struct atmel_nand_data *data) {}
 #endif
 
-static struct resource dbgu_resources[] = {
-	[0] = {
-		.start	= (AT91_BASE_SYS + AT91_DBGU),
-		.size	= 4096,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d dbgu_serial_device = {
-	.id	  = -1,
-	.name     = "atmel_serial",
-	.resource	= dbgu_resources,
-	.num_resources	= ARRAY_SIZE(dbgu_resources),
-};
-
 static inline void configure_dbgu_pins(void)
 {
 	at91_set_A_periph(AT91_PIN_PB12, 0);		/* DRXD */
 	at91_set_A_periph(AT91_PIN_PB13, 1);		/* DTXD */
 }
 
-static struct resource uart0_resources[] = {
-	[0] = {
-		.start	= AT91SAM9G45_BASE_US0,
-		.size	= 4096,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d uart0_serial_device = {
-	.id	  = -1,
-	.name     = "atmel_serial",
-	.resource	= uart0_resources,
-	.num_resources	= ARRAY_SIZE(uart0_resources),
-};
-
 static inline void configure_usart0_pins(unsigned pins)
 {
 	at91_set_A_periph(AT91_PIN_PB19, 1);		/* TXD0 */
@@ -176,21 +116,6 @@ static inline void configure_usart0_pins(unsigned pins)
 		at91_set_B_periph(AT91_PIN_PB15, 0);	/* CTS0 */
 }
 
-static struct resource uart1_resources[] = {
-	[0] = {
-		.start	= AT91SAM9G45_BASE_US1,
-		.size	= 4096,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d uart1_serial_device = {
-	.id	  = -1,
-	.name     = "atmel_serial",
-	.resource	= uart1_resources,
-	.num_resources	= ARRAY_SIZE(uart1_resources),
-};
-
 static inline void configure_usart1_pins(unsigned pins)
 {
 	at91_set_A_periph(AT91_PIN_PB4, 1);		/* TXD1 */
@@ -202,21 +127,6 @@ static inline void configure_usart1_pins(unsigned pins)
 		at91_set_A_periph(AT91_PIN_PD17, 0);	/* CTS1 */
 }
 
-static struct resource uart2_resources[] = {
-	[0] = {
-		.start	= AT91SAM9G45_BASE_US2,
-		.size	= 4096,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d uart2_serial_device = {
-	.id	  = -1,
-	.name     = "atmel_serial",
-	.resource	= uart2_resources,
-	.num_resources	= ARRAY_SIZE(uart2_resources),
-};
-
 static inline void configure_usart2_pins(unsigned pins)
 {
 	at91_set_A_periph(AT91_PIN_PB6, 1);		/* TXD2 */
@@ -228,21 +138,6 @@ static inline void configure_usart2_pins(unsigned pins)
 		at91_set_B_periph(AT91_PIN_PC11, 0);	/* CTS2 */
 }
 
-static struct resource uart3_resources[] = {
-	[0] = {
-		.start	= AT91SAM9G45_BASE_US3,
-		.size	= 4096,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d uart3_serial_device = {
-	.id	  = -1,
-	.name     = "atmel_serial",
-	.resource	= uart3_resources,
-	.num_resources	= ARRAY_SIZE(uart3_resources),
-};
-
 static inline void configure_usart3_pins(unsigned pins)
 {
 	at91_set_A_periph(AT91_PIN_PB8, 1);		/* TXD3 */
@@ -256,72 +151,59 @@ static inline void configure_usart3_pins(unsigned pins)
 
 void at91_register_uart(unsigned id, unsigned pins)
 {
+	resource_size_t start;
+	struct device_d *dev;
+	char* clk_name;
+
 	switch (id) {
 		case 0:		/* DBGU */
 			configure_dbgu_pins();
-			at91_clock_associate("mck", &dbgu_serial_device, "usart");
-			register_device(&dbgu_serial_device);
+			start = AT91_BASE_SYS + AT91_DBGU;
+			clk_name = "mck";
+			id = 0;
 			break;
 		case AT91SAM9G45_ID_US0:
 			configure_usart0_pins(pins);
-			at91_clock_associate("usart0_clk", &uart0_serial_device, "usart");
-			register_device(&uart0_serial_device);
+			clk_name = "usart0_clk";
+			start = AT91SAM9G45_BASE_US0;
+			id = 1;
 			break;
 		case AT91SAM9G45_ID_US1:
 			configure_usart1_pins(pins);
-			at91_clock_associate("usart1_clk", &uart1_serial_device, "usart");
-			register_device(&uart1_serial_device);
+			clk_name = "usart1_clk";
+			start = AT91SAM9G45_BASE_US1;
+			id = 2;
 			break;
 		case AT91SAM9G45_ID_US2:
 			configure_usart2_pins(pins);
-			at91_clock_associate("usart2_clk", &uart2_serial_device, "usart");
-			register_device(&uart2_serial_device);
+			clk_name = "usart2_clk";
+			start = AT91SAM9G45_BASE_US2;
+			id = 3;
 			break;
 		case AT91SAM9G45_ID_US3:
 			configure_usart3_pins(pins);
-			at91_clock_associate("usart3_clk", &uart2_serial_device, "usart");
-			register_device(&uart3_serial_device);
+			clk_name = "usart3_clk";
+			start = AT91SAM9G45_BASE_US3;
+			id = 4;
 			break;
 		default:
 			return;
 	}
 
+	dev = add_generic_device("atmel_serial", id, NULL, start, 4096,
+			   IORESOURCE_MEM, NULL);
+	at91_clock_associate(clk_name, dev, "usart");
+
 }
 
 #if defined(CONFIG_MCI_ATMEL)
-static struct resource mci0_resources[] = {
-	[0] = {
-		.start	= AT91SAM9G45_BASE_MCI0,
-		.size	= SZ_16K,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d mci0_device = {
-	.id		= 0,
-	.name		= "atmel_mci",
-	.num_resources	= ARRAY_SIZE(mci0_resources),
-	.resource	= mci0_resources,
-};
-
-static struct resource mci1_resources[] = {
-	[0] = {
-		.start	= AT91SAM9G45_BASE_MCI1,
-		.size	= SZ_16K,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d mci1_device = {
-	.id		= 1,
-	.name		= "atmel_mci",
-	.num_resources	= ARRAY_SIZE(mci1_resources),
-	.resource	= mci1_resources,
-};
-
-/* Consider only one slot : slot 0 */
+* Consider only one slot : slot 0 */
 void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
 {
+	resource_size_t start;
+	struct device_d *dev;
+	char* clk_name;
+
 	if (!data)
 		return;
 
@@ -339,6 +221,8 @@ void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
 		at91_set_gpio_input(data->wp_pin, 1);
 
 	if (mmc_id == 0) {		/* MCI0 */
+		start = AT91SAM9G45_BASE_MCI0;
+		clk_name = "mci0_clk";
 		/* CLK */
 		at91_set_A_periph(AT91_PIN_PA0, 0);
 
@@ -358,12 +242,9 @@ void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
 				at91_set_A_periph(AT91_PIN_PA9, 1);
 			}
 		}
-
-		mci0_device.platform_data = data;
-		at91_clock_associate("mci0_clk", &mci0_device, "mci_clk");
-		register_device(&mci0_device);
-
 	} else {			/* MCI1 */
+		start = AT91SAM9G45_BASE_MCI1;
+		clk_name = "mci1_clk";
 		/* CLK */
 		at91_set_A_periph(AT91_PIN_PA31, 0);
 
@@ -383,11 +264,11 @@ void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
 				at91_set_A_periph(AT91_PIN_PA30, 1);
 			}
 		}
-
-		mci1_device.platform_data = data;
-		at91_clock_associate("mci1_clk", &mci1_device, "mci_clk");
-		register_device(&mci1_device);
 	}
+
+	dev = add_generic_device("atmel_mci", mmc_id, NULL, start, 4096,
+			   IORESOURCE_MEM, data);
+	at91_clock_associate(clk_name, dev, "mci_clk");
 }
 #else
 void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data) {}
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
