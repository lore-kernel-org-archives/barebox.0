Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo4.mail-out.ovh.net ([188.165.36.253]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QinbY-0005y9-Mc
	for barebox@lists.infradead.org; Mon, 18 Jul 2011 13:11:39 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id ECB1FFFA715
	for <barebox@lists.infradead.org>;
	Mon, 18 Jul 2011 15:11:50 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 18 Jul 2011 14:54:30 +0200
Message-Id: <1310993678-7563-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1310993678-7563-1-git-send-email-plagnioj@jcrosoft.com>
References: <1310993678-7563-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 02/10] at91: switch to all resource declaration to "struct
	resource"
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91rm9200ek/init.c      |    9 ++-
 arch/arm/boards/at91sam9261ek/init.c     |   11 ++-
 arch/arm/boards/at91sam9263ek/init.c     |   11 ++-
 arch/arm/boards/mmccpu/init.c            |   10 ++-
 arch/arm/boards/pm9261/init.c            |   11 ++-
 arch/arm/boards/pm9263/init.c            |   11 ++-
 arch/arm/mach-at91/at91rm9200_devices.c  |   88 ++++++++++++++++++----
 arch/arm/mach-at91/at91sam9260_devices.c |  121 ++++++++++++++++++++++++------
 arch/arm/mach-at91/at91sam9261_devices.c |   77 +++++++++++++++----
 arch/arm/mach-at91/at91sam9263_devices.c |  101 ++++++++++++++++++++-----
 arch/arm/mach-at91/at91sam9g45_devices.c |  110 ++++++++++++++++++++++-----
 11 files changed, 458 insertions(+), 102 deletions(-)

diff --git a/arch/arm/boards/at91rm9200ek/init.c b/arch/arm/boards/at91rm9200ek/init.c
index a449326..b21dc5f 100644
--- a/arch/arm/boards/at91rm9200ek/init.c
+++ b/arch/arm/boards/at91rm9200ek/init.c
@@ -34,10 +34,17 @@
 #include <mach/gpio.h>
 #include <mach/io.h>
 
+static struct resource cfi_resources[] = {
+	[0] = {
+		.start	= AT91_CHIPSELECT_0,
+	},
+};
+
 static struct device_d cfi_dev = {
 	.id		= 0,
 	.name		= "cfi_flash",
-	.map_base	= AT91_CHIPSELECT_0,
+	.num_resources	= ARRAY_SIZE(cfi_resources),
+	.resource	= cfi_resources,
 };
 
 static struct at91_ether_platform_data ether_pdata = {
diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
index b1388e1..3def38e 100644
--- a/arch/arm/boards/at91sam9261ek/init.c
+++ b/arch/arm/boards/at91sam9261ek/init.c
@@ -95,11 +95,18 @@ static struct dm9000_platform_data dm9000_data = {
 	.srom		= 0,
 };
 
+static struct resource dm9000_resources[] = {
+	[0] = {
+		.start	= AT91_CHIPSELECT_2,
+		.size	= 8,
+	},
+};
+
 static struct device_d dm9000_dev = {
 	.id		= 0,
 	.name		= "dm9000",
-	.map_base	= AT91_CHIPSELECT_2,
-	.size		= 8,
+	.num_resources	= ARRAY_SIZE(dm9000_resources),
+	.resource	= dm9000_resources,
 	.platform_data	= &dm9000_data,
 };
 
diff --git a/arch/arm/boards/at91sam9263ek/init.c b/arch/arm/boards/at91sam9263ek/init.c
index 9a763b3..fe69305 100644
--- a/arch/arm/boards/at91sam9263ek/init.c
+++ b/arch/arm/boards/at91sam9263ek/init.c
@@ -87,11 +87,18 @@ static void ek_add_device_nand(void)
 	at91_add_device_nand(&nand_pdata);
 }
 
+static struct resource cfi_resources[] = {
+	[0] = {
+		.start	= AT91_CHIPSELECT_0,
+		.size	= 8 * 1024 * 1024,
+	},
+};
+
 static struct device_d cfi_dev = {
 	.id		= -1,
 	.name		= "cfi_flash",
-	.map_base	= AT91_CHIPSELECT_0,
-	.size		= 8 * 1024 * 1024,
+	.num_resources	= ARRAY_SIZE(cfi_resources),
+	.resource	= cfi_resources,
 };
 
 static struct at91_ether_platform_data macb_pdata = {
diff --git a/arch/arm/boards/mmccpu/init.c b/arch/arm/boards/mmccpu/init.c
index 7cba01c..b79062e 100644
--- a/arch/arm/boards/mmccpu/init.c
+++ b/arch/arm/boards/mmccpu/init.c
@@ -37,11 +37,17 @@
 #include <mach/gpio.h>
 #include <mach/io.h>
 
+static struct resource cfi_resources[] = {
+	[0] = {
+		.start	= AT91_CHIPSELECT_0,
+	},
+};
+
 static struct device_d cfi_dev = {
 	.id		= -1,
 	.name		= "cfi_flash",
-	.map_base	= AT91_CHIPSELECT_0,
-	.size		= 0,	/* zero means autodetect size */
+	.num_resources	= ARRAY_SIZE(cfi_resources),
+	.resource	= cfi_resources,
 };
 
 static struct at91_ether_platform_data macb_pdata = {
diff --git a/arch/arm/boards/pm9261/init.c b/arch/arm/boards/pm9261/init.c
index 6fb14f7..af92835 100644
--- a/arch/arm/boards/pm9261/init.c
+++ b/arch/arm/boards/pm9261/init.c
@@ -95,11 +95,18 @@ static struct dm9000_platform_data dm9000_data = {
 	.srom		= 1,
 };
 
+static struct resource dm9000_resources[] = {
+	[0] = {
+		.start	= AT91_CHIPSELECT_2,
+		.size	= 8,
+	},
+};
+
 static struct device_d dm9000_dev = {
 	.id		= 0,
 	.name		= "dm9000",
-	.map_base	= AT91_CHIPSELECT_2,
-	.size		= 8,
+	.num_resources	= ARRAY_SIZE(dm9000_resources),
+	.resource	= dm9000_resources,
 	.platform_data	= &dm9000_data,
 };
 
diff --git a/arch/arm/boards/pm9263/init.c b/arch/arm/boards/pm9263/init.c
index abe8def..6544837 100644
--- a/arch/arm/boards/pm9263/init.c
+++ b/arch/arm/boards/pm9263/init.c
@@ -86,11 +86,18 @@ static void pm_add_device_nand(void)
 	at91_add_device_nand(&nand_pdata);
 }
 
+static struct resource cfi_resources[] = {
+	[0] = {
+		.start	= AT91_CHIPSELECT_0,
+		.size	= 4 * 1024 * 1024,
+	},
+};
+
 static struct device_d cfi_dev = {
 	.id	  = -1,
 	.name     = "cfi_flash",
-	.map_base = AT91_CHIPSELECT_0,
-	.size     = 4 * 1024 * 1024,
+	.num_resources	= ARRAY_SIZE(cfi_resources),
+	.resource	= cfi_resources,
 };
 
 static struct at91_ether_platform_data macb_pdata = {
diff --git a/arch/arm/mach-at91/at91rm9200_devices.c b/arch/arm/mach-at91/at91rm9200_devices.c
index f45008a..7585b27 100644
--- a/arch/arm/mach-at91/at91rm9200_devices.c
+++ b/arch/arm/mach-at91/at91rm9200_devices.c
@@ -20,6 +20,12 @@
 
 #include "generic.h"
 
+static struct resource sdram_dev_resources[] = {
+	[0] = {
+		.start	= AT91_CHIPSELECT_1,
+	},
+};
+
 static struct memory_platform_data ram_pdata = {
 	.name = "ram0",
 	.flags = DEVFS_RDWR,
@@ -28,13 +34,14 @@ static struct memory_platform_data ram_pdata = {
 static struct device_d sdram_dev = {
 	.id = -1,
 	.name = "mem",
-	.map_base = AT91_CHIPSELECT_1,
+	.num_resources	= ARRAY_SIZE(sdram_dev_resources),
+	.resource	= sdram_dev_resources,
 	.platform_data = &ram_pdata,
 };
 
 void at91_add_device_sdram(u32 size)
 {
-	sdram_dev.size = size;
+	sdram_dev_resources[0].size = size;
 	register_device(&sdram_dev);
 	armlinux_add_dram(&sdram_dev);
 }
@@ -44,11 +51,18 @@ void at91_add_device_sdram(u32 size)
  * -------------------------------------------------------------------- */
 
 #if defined(CONFIG_DRIVER_NET_AT91_ETHER)
+static struct resource eth_resources[] = {
+	[0] = {
+		.start	= AT91_VA_BASE_EMAC,
+		.size	= 0x1000,
+	},
+};
+
 static struct device_d at91rm9200_eth_device = {
 	.id		= 0,
 	.name		= "at91_ether",
-	.map_base	= AT91_VA_BASE_EMAC,
-	.size		= 0x1000,
+	.resource	= eth_resources,
+	.num_resources	= ARRAY_SIZE(eth_resources),
 };
 
 void __init at91_add_device_eth(struct at91_ether_platform_data *data)
@@ -91,11 +105,18 @@ void __init at91_add_device_eth(struct at91_ether_platform_data *data) {}
  * -------------------------------------------------------------------- */
 
 #if defined(CONFIG_NAND_ATMEL)
+static struct resource nand_resources[] = {
+	[0] = {
+		.start	= AT91_CHIPSELECT_3,
+		.size	= 0x10,
+	},
+};
+
 static struct device_d at91rm9200_nand_device = {
 	.id		= -1,
 	.name		= "atmel_nand",
-	.map_base	= AT91_CHIPSELECT_3,
-	.size		= 0x10,
+	.resource	= nand_resources,
+	.num_resources	= ARRAY_SIZE(nand_resources),
 };
 
 void __init at91_add_device_nand(struct atmel_nand_data *data)
@@ -143,11 +164,18 @@ void __init at91_add_device_nand(struct atmel_nand_data *data) {}
  *  UART
  * -------------------------------------------------------------------- */
 
+static struct resource dbgu_resources[] = {
+	[0] = {
+		.start	= AT91_BASE_SYS + AT91_DBGU,
+		.size	= 4096,
+	},
+};
+
 static struct device_d dbgu_serial_device = {
 	.id		= 0,
 	.name		= "atmel_serial",
-	.map_base	= (AT91_BASE_SYS + AT91_DBGU),
-	.size		= 4096,
+	.resource	= dbgu_resources,
+	.num_resources	= ARRAY_SIZE(dbgu_resources),
 };
 
 static inline void configure_dbgu_pins(void)
@@ -156,11 +184,18 @@ static inline void configure_dbgu_pins(void)
 	at91_set_A_periph(AT91_PIN_PA31, 1);		/* DTXD */
 }
 
+static struct resource uart0_resources[] = {
+	[0] = {
+		.start	= AT91RM9200_BASE_US0,
+		.size	= 4096,
+	},
+};
+
 static struct device_d uart0_serial_device = {
 	.id		= 1,
 	.name		= "atmel_serial",
-	.map_base	= AT91RM9200_BASE_US0,
-	.size		= 4096,
+	.resource	= uart0_resources,
+	.num_resources	= ARRAY_SIZE(uart0_resources),
 };
 
 static inline void configure_usart0_pins(unsigned pins)
@@ -180,11 +215,18 @@ static inline void configure_usart0_pins(unsigned pins)
 	}
 }
 
+static struct resource uart1_resources[] = {
+	[0] = {
+		.start	= AT91RM9200_BASE_US1,
+		.size	= 4096,
+	},
+};
+
 static struct device_d uart1_serial_device = {
 	.id		= 2,
 	.name		= "atmel_serial",
-	.map_base	= AT91RM9200_BASE_US1,
-	.size		= 4096,
+	.resource	= uart1_resources,
+	.num_resources	= ARRAY_SIZE(uart1_resources),
 };
 
 static inline void configure_usart1_pins(unsigned pins)
@@ -206,11 +248,18 @@ static inline void configure_usart1_pins(unsigned pins)
 		at91_set_A_periph(AT91_PIN_PB26, 0);	/* RTS1 */
 }
 
+static struct resource uart2_resources[] = {
+	[0] = {
+		.start	= AT91RM9200_BASE_US2,
+		.size	= 4096,
+	},
+};
+
 static struct device_d uart2_serial_device = {
 	.id		= 3,
 	.name		= "atmel_serial",
-	.map_base	= AT91RM9200_BASE_US2,
-	.size		= 4096,
+	.resource	= uart2_resources,
+	.num_resources	= ARRAY_SIZE(uart2_resources),
 };
 
 static inline void configure_usart2_pins(unsigned pins)
@@ -224,11 +273,18 @@ static inline void configure_usart2_pins(unsigned pins)
 		at91_set_B_periph(AT91_PIN_PA31, 0);	/* RTS2 */
 }
 
+static struct resource uart3_resources[] = {
+	[0] = {
+		.start	= AT91RM9200_BASE_US3,
+		.size	= 4096,
+	},
+};
+
 static struct device_d uart3_serial_device = {
 	.id		= 4,
 	.name		= "atmel_serial",
-	.map_base	= AT91RM9200_BASE_US3,
-	.size		= 4096,
+	.resource	= uart3_resources,
+	.num_resources	= ARRAY_SIZE(uart3_resources),
 };
 
 static inline void configure_usart3_pins(unsigned pins)
diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index d44e280..85f7578 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -21,6 +21,12 @@
 
 #include "generic.h"
 
+static struct resource sdram_dev_resources[] = {
+	[0] = {
+		.start	= AT91_CHIPSELECT_1,
+	},
+};
+
 static struct memory_platform_data sram_pdata = {
 	.name = "sram0",
 	.flags = DEVFS_RDWR,
@@ -29,23 +35,31 @@ static struct memory_platform_data sram_pdata = {
 static struct device_d sdram_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = AT91_CHIPSELECT_1,
+	.num_resources	= ARRAY_SIZE(sdram_dev_resources),
+	.resource	= sdram_dev_resources,
 	.platform_data = &sram_pdata,
 };
 
 void at91_add_device_sdram(u32 size)
 {
-	sdram_dev.size = size;
+	sdram_dev_resources[0].size = size;
 	register_device(&sdram_dev);
 	armlinux_add_dram(&sdram_dev);
 }
 
 #if defined(CONFIG_DRIVER_NET_MACB)
+static struct resource eth_resources[] = {
+	[0] = {
+		.start	= AT91SAM9260_BASE_EMAC,
+		.size	= 0x1000,
+	},
+};
+
 static struct device_d macb_dev = {
 	.id	  = -1,
 	.name     = "macb",
-	.map_base = AT91SAM9260_BASE_EMAC,
-	.size     = 0x1000,
+	.resource	= eth_resources,
+	.num_resources	= ARRAY_SIZE(eth_resources),
 };
 
 void at91_add_device_eth(struct at91_ether_platform_data *data)
@@ -84,11 +98,18 @@ void at91_add_device_eth(struct at91_ether_platform_data *data) {}
 #endif
 
 #if defined(CONFIG_NAND_ATMEL)
+static struct resource nand_resources[] = {
+	[0] = {
+		.start	= AT91_CHIPSELECT_3,
+		.size	= 0x10,
+	},
+};
+
 static struct device_d nand_dev = {
 	.id	  = -1,
 	.name     = "atmel_nand",
-	.map_base = AT91_CHIPSELECT_3,
-	.size     = 0x10,
+	.resource	= nand_resources,
+	.num_resources	= ARRAY_SIZE(nand_resources),
 };
 
 void at91_add_device_nand(struct atmel_nand_data *data)
@@ -120,11 +141,18 @@ void at91_add_device_nand(struct atmel_nand_data *data)
 void at91_add_device_nand(struct atmel_nand_data *data) {}
 #endif
 
+static struct resource dbgu_resources[] = {
+	[0] = {
+		.start	= AT91_BASE_SYS + AT91_DBGU,
+		.size	= 4096,
+	},
+};
+
 static struct device_d dbgu_serial_device = {
 	.id	  = 0,
 	.name     = "atmel_serial",
-	.map_base = AT91_BASE_SYS + AT91_DBGU,
-	.size     = 4096,
+	.resource	= dbgu_resources,
+	.num_resources	= ARRAY_SIZE(dbgu_resources),
 };
 
 static inline void configure_dbgu_pins(void)
@@ -133,11 +161,18 @@ static inline void configure_dbgu_pins(void)
 	at91_set_A_periph(AT91_PIN_PB15, 1);		/* DTXD */
 }
 
+static struct resource uart0_resources[] = {
+	[0] = {
+		.start	= AT91SAM9260_BASE_US0,
+		.size	= 4096,
+	},
+};
+
 static struct device_d uart0_serial_device = {
 	.id	  = 1,
 	.name     = "atmel_serial",
-	.map_base = AT91SAM9260_BASE_US0,
-	.size     = 4096,
+	.resource	= uart0_resources,
+	.num_resources	= ARRAY_SIZE(uart0_resources),
 };
 
 static inline void configure_usart0_pins(unsigned pins)
@@ -159,11 +194,18 @@ static inline void configure_usart0_pins(unsigned pins)
 		at91_set_A_periph(AT91_PIN_PB25, 0);	/* RI0 */
 }
 
+static struct resource uart1_resources[] = {
+	[0] = {
+		.start	= AT91SAM9260_BASE_US1,
+		.size	= 4096,
+	},
+};
+
 static struct device_d uart1_serial_device = {
 	.id	  = 2,
 	.name     = "atmel_serial",
-	.map_base = AT91SAM9260_BASE_US1,
-	.size     = 4096,
+	.resource	= uart1_resources,
+	.num_resources	= ARRAY_SIZE(uart1_resources),
 };
 
 static inline void configure_usart1_pins(unsigned pins)
@@ -177,11 +219,18 @@ static inline void configure_usart1_pins(unsigned pins)
 		at91_set_A_periph(AT91_PIN_PB29, 0);	/* CTS1 */
 }
 
+static struct resource uart2_resources[] = {
+	[0] = {
+		.start	= AT91SAM9260_BASE_US2,
+		.size	= 4096,
+	},
+};
+
 static struct device_d uart2_serial_device = {
 	.id	  = 3,
 	.name     = "atmel_serial",
-	.map_base = AT91SAM9260_BASE_US2,
-	.size     = 4096,
+	.resource	= uart2_resources,
+	.num_resources	= ARRAY_SIZE(uart2_resources),
 };
 
 static inline void configure_usart2_pins(unsigned pins)
@@ -195,11 +244,18 @@ static inline void configure_usart2_pins(unsigned pins)
 		at91_set_A_periph(AT91_PIN_PA5, 0);	/* CTS2 */
 }
 
+static struct resource uart3_resources[] = {
+	[0] = {
+		.start	= AT91SAM9260_BASE_US3,
+		.size	= 4096,
+	},
+};
+
 static struct device_d uart3_serial_device = {
 	.id	  = 4,
 	.name     = "atmel_serial",
-	.map_base = AT91SAM9260_BASE_US3,
-	.size     = 4096,
+	.resource	= uart3_resources,
+	.num_resources	= ARRAY_SIZE(uart3_resources),
 };
 
 static inline void configure_usart3_pins(unsigned pins)
@@ -213,11 +269,18 @@ static inline void configure_usart3_pins(unsigned pins)
 		at91_set_B_periph(AT91_PIN_PC10, 0);	/* CTS3 */
 }
 
+static struct resource uart4_resources[] = {
+	[0] = {
+		.start	= AT91SAM9260_BASE_US4,
+		.size	= 4096,
+	},
+};
+
 static struct device_d uart4_serial_device = {
 	.id	  = 5,
 	.name     = "atmel_serial",
-	.map_base = AT91SAM9260_BASE_US4,
-	.size     = 4096,
+	.resource	= uart4_resources,
+	.num_resources	= ARRAY_SIZE(uart4_resources),
 };
 
 static inline void configure_usart4_pins(void)
@@ -226,11 +289,18 @@ static inline void configure_usart4_pins(void)
 	at91_set_B_periph(AT91_PIN_PA30, 0);		/* RXD4 */
 }
 
+static struct resource uart5_resources[] = {
+	[0] = {
+		.start	= AT91SAM9260_BASE_US5,
+		.size	= 4096,
+	},
+};
+
 static struct device_d uart5_serial_device = {
 	.id	  = 6,
 	.name     = "atmel_serial",
-	.map_base = AT91SAM9260_BASE_US5,
-	.size     = 4096,
+	.resource	= uart5_resources,
+	.num_resources	= ARRAY_SIZE(uart5_resources),
 };
 
 static inline void configure_usart5_pins(void)
@@ -283,11 +353,18 @@ void at91_register_uart(unsigned id, unsigned pins)
 }
 
 #if defined(CONFIG_MCI_ATMEL)
+static struct resource mci_resources[] = {
+	[0] = {
+		.start	= AT91SAM9260_BASE_MCI,
+		.size	= SZ_16K,
+	},
+};
+
 static struct device_d mci_device = {
 	.id		= -1,
 	.name		= "atmel_mci",
-	.map_base	= AT91SAM9260_BASE_MCI,
-	.size		= SZ_16K,
+	.num_resources	= ARRAY_SIZE(mci_resources),
+	.resource	= mci_resources,
 };
 
 /* Consider only one slot : slot 0 */
diff --git a/arch/arm/mach-at91/at91sam9261_devices.c b/arch/arm/mach-at91/at91sam9261_devices.c
index d8b70a3..bf726bc 100644
--- a/arch/arm/mach-at91/at91sam9261_devices.c
+++ b/arch/arm/mach-at91/at91sam9261_devices.c
@@ -21,6 +21,12 @@
 
 #include "generic.h"
 
+static struct resource sdram_dev_resources[] = {
+	[0] = {
+		.start	= AT91_CHIPSELECT_1,
+	},
+};
+
 static struct memory_platform_data ram_pdata = {
 	.name = "ram0",
 	.flags = DEVFS_RDWR,
@@ -29,23 +35,31 @@ static struct memory_platform_data ram_pdata = {
 static struct device_d sdram_dev = {
 	.id		= -1,
 	.name		= "mem",
-	.map_base	= AT91_CHIPSELECT_1,
+	.num_resources	= ARRAY_SIZE(sdram_dev_resources),
+	.resource	= sdram_dev_resources,
 	.platform_data	= &ram_pdata,
 };
 
 void at91_add_device_sdram(u32 size)
 {
-	sdram_dev.size = size;
+	sdram_dev_resources[0].size = size;
 	register_device(&sdram_dev);
 	armlinux_add_dram(&sdram_dev);
 }
 
 #if defined(CONFIG_NAND_ATMEL)
+static struct resource nand_resources[] = {
+	[0] = {
+		.start	= AT91_CHIPSELECT_3,
+		.size	= 0x10,
+	},
+};
+
 static struct device_d nand_dev = {
 	.id		= 0,
 	.name		= "atmel_nand",
-	.map_base	= AT91_CHIPSELECT_3,
-	.size		= 0x10,
+	.resource	= nand_resources,
+	.num_resources	= ARRAY_SIZE(nand_resources),
 };
 
 void at91_add_device_nand(struct atmel_nand_data *data)
@@ -80,11 +94,18 @@ void at91_add_device_nand(struct atmel_nand_data *data)
 void at91_add_device_nand(struct atmel_nand_data *data) {}
 #endif
 
+static struct resource dbgu_resources[] = {
+	[0] = {
+		.start	= (AT91_BASE_SYS + AT91_DBGU),
+		.size	= 4096,
+	},
+};
+
 static struct device_d dbgu_serial_device = {
 	.id		= 0,
 	.name		= "atmel_serial",
-	.map_base	= (AT91_BASE_SYS + AT91_DBGU),
-	.size		= 4096,
+	.resource	= dbgu_resources,
+	.num_resources	= ARRAY_SIZE(dbgu_resources),
 };
 
 static inline void configure_dbgu_pins(void)
@@ -93,11 +114,18 @@ static inline void configure_dbgu_pins(void)
 	at91_set_A_periph(AT91_PIN_PA10, 1);		/* DTXD */
 }
 
+static struct resource uart0_resources[] = {
+	[0] = {
+		.start	= AT91SAM9261_BASE_US0,
+		.size	= 4096,
+	},
+};
+
 static struct device_d uart0_serial_device = {
 	.id		= 1,
 	.name		= "atmel_serial",
-	.map_base	= AT91SAM9261_BASE_US0,
-	.size		= 4096,
+	.resource	= uart0_resources,
+	.num_resources	= ARRAY_SIZE(uart0_resources),
 };
 
 static inline void configure_usart0_pins(unsigned pins)
@@ -111,11 +139,18 @@ static inline void configure_usart0_pins(unsigned pins)
 		at91_set_A_periph(AT91_PIN_PC11, 0);	/* CTS0 */
 }
 
+static struct resource uart1_resources[] = {
+	[0] = {
+		.start	= AT91SAM9261_BASE_US1,
+		.size	= 4096,
+	},
+};
+
 static struct device_d uart1_serial_device = {
 	.id		= 2,
 	.name		= "atmel_serial",
-	.map_base	= AT91SAM9261_BASE_US1,
-	.size		= 4096,
+	.resource	= uart1_resources,
+	.num_resources	= ARRAY_SIZE(uart1_resources),
 };
 
 static inline void configure_usart1_pins(unsigned pins)
@@ -129,11 +164,18 @@ static inline void configure_usart1_pins(unsigned pins)
 		at91_set_B_periph(AT91_PIN_PA13, 0);	/* CTS1 */
 }
 
+static struct resource uart2_resources[] = {
+	[0] = {
+		.start	= AT91SAM9261_BASE_US2,
+		.size	= 4096,
+	},
+};
+
 static struct device_d uart2_serial_device = {
 	.id		= 3,
 	.name		= "atmel_serial",
-	.map_base	= AT91SAM9261_BASE_US2,
-	.size		= 4096,
+	.resource	= uart2_resources,
+	.num_resources	= ARRAY_SIZE(uart2_resources),
 };
 
 static inline void configure_usart2_pins(unsigned pins)
@@ -176,11 +218,18 @@ void at91_register_uart(unsigned id, unsigned pins)
 }
 
 #if defined(CONFIG_MCI_ATMEL)
+static struct resource mci_resources[] = {
+	[0] = {
+		.start	= AT91SAM9261_BASE_MCI,
+		.size	= SZ_16K,
+	},
+};
+
 static struct device_d mci_device = {
 	.id		= -1,
 	.name		= "atmel_mci",
-	.map_base	= AT91SAM9261_BASE_MCI,
-	.size		= SZ_16K,
+	.num_resources	= ARRAY_SIZE(mci_resources),
+	.resource	= mci_resources,
 };
 
 /* Consider only one slot : slot 0 */
diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
index 04fb79e..9b87425 100644
--- a/arch/arm/mach-at91/at91sam9263_devices.c
+++ b/arch/arm/mach-at91/at91sam9263_devices.c
@@ -21,6 +21,12 @@
 
 #include "generic.h"
 
+static struct resource sdram_dev_resources[] = {
+	[0] = {
+		.start	= AT91_CHIPSELECT_1,
+	},
+};
+
 static struct memory_platform_data ram_pdata = {
 	.name = "ram0",
 	.flags = DEVFS_RDWR,
@@ -29,23 +35,31 @@ static struct memory_platform_data ram_pdata = {
 static struct device_d sdram_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.map_base = AT91_CHIPSELECT_1,
-	.platform_data = &ram_pdata,
+	.num_resources	= ARRAY_SIZE(sdram_dev_resources),
+	.resource	= sdram_dev_resources,
+	.platform_data	= &ram_pdata,
 };
 
 void at91_add_device_sdram(u32 size)
 {
-	sdram_dev.size = size;
+	sdram_dev_resources[0].size = size;
 	register_device(&sdram_dev);
 	armlinux_add_dram(&sdram_dev);
 }
 
 #if defined(CONFIG_DRIVER_NET_MACB)
+static struct resource eth_resources[] = {
+	[0] = {
+		.start	= AT91SAM9263_BASE_EMAC,
+		.size	= 0x1000,
+	},
+};
+
 static struct device_d macb_dev = {
 	.id	  = -1,
 	.name     = "macb",
-	.map_base = AT91SAM9263_BASE_EMAC,
-	.size     = 0x1000,
+	.resource	= eth_resources,
+	.num_resources	= ARRAY_SIZE(eth_resources),
 };
 
 void at91_add_device_eth(struct at91_ether_platform_data *data)
@@ -83,11 +97,18 @@ void at91_add_device_eth(struct at91_ether_platform_data *data) {}
 #endif
 
 #if defined(CONFIG_NAND_ATMEL)
+static struct resource nand_resources[] = {
+	[0] = {
+		.start	= AT91_CHIPSELECT_3,
+		.size	= 0x10,
+	},
+};
+
 static struct device_d nand_dev = {
 	.id	  = -1,
 	.name     = "atmel_nand",
-	.map_base = AT91_CHIPSELECT_3,
-	.size     = 0x10,
+	.resource	= nand_resources,
+	.num_resources	= ARRAY_SIZE(nand_resources),
 };
 
 void at91_add_device_nand(struct atmel_nand_data *data)
@@ -119,11 +140,18 @@ void at91_add_device_nand(struct atmel_nand_data *data)
 void at91_add_device_nand(struct atmel_nand_data *data) {}
 #endif
 
+static struct resource dbgu_resources[] = {
+	[0] = {
+		.start	= (AT91_BASE_SYS + AT91_DBGU),
+		.size	= 4096,
+	},
+};
+
 static struct device_d dbgu_serial_device = {
 	.id	  = 0,
 	.name     = "atmel_serial",
-	.map_base = (AT91_BASE_SYS + AT91_DBGU),
-	.size     = 4096,
+	.resource	= dbgu_resources,
+	.num_resources	= ARRAY_SIZE(dbgu_resources),
 };
 
 static inline void configure_dbgu_pins(void)
@@ -132,11 +160,18 @@ static inline void configure_dbgu_pins(void)
 	at91_set_A_periph(AT91_PIN_PC31, 1);		/* DTXD */
 }
 
+static struct resource uart0_resources[] = {
+	[0] = {
+		.start	= AT91SAM9263_BASE_US0,
+		.size	= 4096,
+	},
+};
+
 static struct device_d uart0_serial_device = {
 	.id	  = 1,
 	.name     = "atmel_serial",
-	.map_base = AT91SAM9263_BASE_US0,
-	.size     = 4096,
+	.resource	= uart0_resources,
+	.num_resources	= ARRAY_SIZE(uart0_resources),
 };
 
 static inline void configure_usart0_pins(unsigned pins)
@@ -150,11 +185,18 @@ static inline void configure_usart0_pins(unsigned pins)
 		at91_set_A_periph(AT91_PIN_PA29, 0);	/* CTS0 */
 }
 
+static struct resource uart1_resources[] = {
+	[0] = {
+		.start	= AT91SAM9263_BASE_US1,
+		.size	= 4096,
+	},
+};
+
 static struct device_d uart1_serial_device = {
 	.id	  = 2,
 	.name     = "atmel_serial",
-	.map_base = AT91SAM9263_BASE_US1,
-	.size     = 4096,
+	.resource	= uart1_resources,
+	.num_resources	= ARRAY_SIZE(uart1_resources),
 };
 
 static inline void configure_usart1_pins(unsigned pins)
@@ -168,11 +210,18 @@ static inline void configure_usart1_pins(unsigned pins)
 		at91_set_B_periph(AT91_PIN_PD8, 0);	/* CTS1 */
 }
 
+static struct resource uart2_resources[] = {
+	[0] = {
+		.start	= AT91SAM9263_BASE_US2,
+		.size	= 4096,
+	},
+};
+
 static struct device_d uart2_serial_device = {
 	.id	  = 3,
 	.name     = "atmel_serial",
-	.map_base = AT91SAM9263_BASE_US2,
-	.size     = 4096,
+	.resource	= uart2_resources,
+	.num_resources	= ARRAY_SIZE(uart2_resources),
 };
 
 static inline void configure_usart2_pins(unsigned pins)
@@ -216,18 +265,32 @@ void at91_register_uart(unsigned id, unsigned pins)
 }
 
 #if defined(CONFIG_MCI_ATMEL)
+static struct resource mci0_resources[] = {
+	[0] = {
+		.start	= AT91SAM9263_BASE_MCI0,
+		.size	= SZ_16K,
+	},
+};
+
 static struct device_d mci0_device = {
 	.id		= 0,
 	.name		= "atmel_mci",
-	.map_base	= AT91SAM9263_BASE_MCI0,
-	.size		= SZ_16K,
+	.num_resources	= ARRAY_SIZE(mci0_resources),
+	.resource	= mci0_resources,
+};
+
+static struct resource mci1_resources[] = {
+	[0] = {
+		.start	= AT91SAM9263_BASE_MCI1,
+		.size	= SZ_16K,
+	},
 };
 
 static struct device_d mci1_device = {
 	.id		= 1,
 	.name		= "atmel_mci",
-	.map_base	= AT91SAM9263_BASE_MCI1,
-	.size		= SZ_16K,
+	.num_resources	= ARRAY_SIZE(mci1_resources),
+	.resource	= mci1_resources,
 };
 
 /* Consider only one slot : slot 0 */
diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index a474bd7..b2e633b 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -21,6 +21,12 @@
 
 #include "generic.h"
 
+static struct resource sdram_dev_resources[] = {
+	[0] = {
+		.start	= AT91_CHIPSELECT_6,
+	},
+};
+
 static struct memory_platform_data ram_pdata = {
 	.name = "ram0",
 	.flags = DEVFS_RDWR,
@@ -29,23 +35,31 @@ static struct memory_platform_data ram_pdata = {
 static struct device_d sdram_dev = {
 	.id		= -1,
 	.name		= "mem",
-	.map_base	= AT91_CHIPSELECT_6,
+	.num_resources	= ARRAY_SIZE(sdram_dev_resources),
+	.resource	= sdram_dev_resources,
 	.platform_data	= &ram_pdata,
 };
 
 void at91_add_device_sdram(u32 size)
 {
-	sdram_dev.size = size;
+	sdram_dev_resources[0].size = size;
 	register_device(&sdram_dev);
 	armlinux_add_dram(&sdram_dev);
 }
 
 #if defined(CONFIG_DRIVER_NET_MACB)
+static struct resource eth_resources[] = {
+	[0] = {
+		.start	= AT91SAM9G45_BASE_EMAC,
+		.size	= 0x1000,
+	},
+};
+
 static struct device_d macb_dev = {
 	.id		= 0,
 	.name		= "macb",
-	.map_base	= AT91SAM9G45_BASE_EMAC,
-	.size		= 0x1000,
+	.resource	= eth_resources,
+	.num_resources	= ARRAY_SIZE(eth_resources),
 };
 
 void at91_add_device_eth(struct at91_ether_platform_data *data)
@@ -84,11 +98,18 @@ void at91_add_device_eth(struct at91_ether_platform_data *data) {}
 #endif
 
 #if defined(CONFIG_NAND_ATMEL)
+static struct resource nand_resources[] = {
+	[0] = {
+		.start	= AT91_CHIPSELECT_3,
+		.size	= 0x10,
+	},
+};
+
 static struct device_d nand_dev = {
 	.id		= -1,
 	.name		= "atmel_nand",
-	.map_base	= AT91_CHIPSELECT_3,
-	.size		= 0x10,
+	.resource	= nand_resources,
+	.num_resources	= ARRAY_SIZE(nand_resources),
 };
 
 void at91_add_device_nand(struct atmel_nand_data *data)
@@ -123,11 +144,18 @@ void at91_add_device_nand(struct atmel_nand_data *data)
 void at91_add_device_nand(struct atmel_nand_data *data) {}
 #endif
 
+static struct resource dbgu_resources[] = {
+	[0] = {
+		.start	= (AT91_BASE_SYS + AT91_DBGU),
+		.size	= 4096,
+	},
+};
+
 static struct device_d dbgu_serial_device = {
 	.id	  = -1,
 	.name     = "atmel_serial",
-	.map_base = (AT91_BASE_SYS + AT91_DBGU),
-	.size     = 4096,
+	.resource	= dbgu_resources,
+	.num_resources	= ARRAY_SIZE(dbgu_resources),
 };
 
 static inline void configure_dbgu_pins(void)
@@ -136,11 +164,18 @@ static inline void configure_dbgu_pins(void)
 	at91_set_A_periph(AT91_PIN_PB13, 1);		/* DTXD */
 }
 
+static struct resource uart0_resources[] = {
+	[0] = {
+		.start	= AT91SAM9G45_BASE_US0,
+		.size	= 4096,
+	},
+};
+
 static struct device_d uart0_serial_device = {
 	.id	  = -1,
 	.name     = "atmel_serial",
-	.map_base = AT91SAM9G45_BASE_US0,
-	.size     = 4096,
+	.resource	= uart0_resources,
+	.num_resources	= ARRAY_SIZE(uart0_resources),
 };
 
 static inline void configure_usart0_pins(unsigned pins)
@@ -154,11 +189,18 @@ static inline void configure_usart0_pins(unsigned pins)
 		at91_set_B_periph(AT91_PIN_PB15, 0);	/* CTS0 */
 }
 
+static struct resource uart1_resources[] = {
+	[0] = {
+		.start	= AT91SAM9G45_BASE_US1,
+		.size	= 4096,
+	},
+};
+
 static struct device_d uart1_serial_device = {
 	.id	  = -1,
 	.name     = "atmel_serial",
-	.map_base = AT91SAM9G45_BASE_US1,
-	.size     = 4096,
+	.resource	= uart1_resources,
+	.num_resources	= ARRAY_SIZE(uart1_resources),
 };
 
 static inline void configure_usart1_pins(unsigned pins)
@@ -172,11 +214,18 @@ static inline void configure_usart1_pins(unsigned pins)
 		at91_set_A_periph(AT91_PIN_PD17, 0);	/* CTS1 */
 }
 
+static struct resource uart2_resources[] = {
+	[0] = {
+		.start	= AT91SAM9G45_BASE_US2,
+		.size	= 4096,
+	},
+};
+
 static struct device_d uart2_serial_device = {
 	.id	  = -1,
 	.name     = "atmel_serial",
-	.map_base = AT91SAM9G45_BASE_US2,
-	.size     = 4096,
+	.resource	= uart2_resources,
+	.num_resources	= ARRAY_SIZE(uart2_resources),
 };
 
 static inline void configure_usart2_pins(unsigned pins)
@@ -190,11 +239,18 @@ static inline void configure_usart2_pins(unsigned pins)
 		at91_set_B_periph(AT91_PIN_PC11, 0);	/* CTS2 */
 }
 
+static struct resource uart3_resources[] = {
+	[0] = {
+		.start	= AT91SAM9G45_BASE_US3,
+		.size	= 4096,
+	},
+};
+
 static struct device_d uart3_serial_device = {
 	.id	  = -1,
 	.name     = "atmel_serial",
-	.map_base = AT91SAM9G45_ID_US3,
-	.size     = 4096,
+	.resource	= uart3_resources,
+	.num_resources	= ARRAY_SIZE(uart3_resources),
 };
 
 static inline void configure_usart3_pins(unsigned pins)
@@ -243,18 +299,32 @@ void at91_register_uart(unsigned id, unsigned pins)
 }
 
 #if defined(CONFIG_MCI_ATMEL)
+static struct resource mci0_resources[] = {
+	[0] = {
+		.start	= AT91SAM9G45_BASE_MCI0,
+		.size	= SZ_16K,
+	},
+};
+
 static struct device_d mci0_device = {
 	.id		= 0,
 	.name		= "atmel_mci",
-	.map_base	= AT91SAM9G45_BASE_MCI0,
-	.size		= SZ_16K,
+	.num_resources	= ARRAY_SIZE(mci0_resources),
+	.resource	= mci0_resources,
+};
+
+static struct resource mci1_resources[] = {
+	[0] = {
+		.start	= AT91SAM9G45_BASE_MCI1,
+		.size	= SZ_16K,
+	},
 };
 
 static struct device_d mci1_device = {
 	.id		= 1,
 	.name		= "atmel_mci",
-	.map_base	= AT91SAM9G45_BASE_MCI1,
-	.size		= SZ_16K,
+	.num_resources	= ARRAY_SIZE(mci1_resources),
+	.resource	= mci1_resources,
 };
 
 /* Consider only one slot : slot 0 */
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
