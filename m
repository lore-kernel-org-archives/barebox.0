Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 31.mail-out.ovh.net ([213.186.62.10])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OgXIH-0004WG-Ss
	for barebox@lists.infradead.org; Wed, 04 Aug 2010 06:17:42 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  4 Aug 2010 08:12:56 +0200
Message-Id: <1280902376-11891-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1280885595-18026-1-git-send-email-plagnioj@jcrosoft.com>
References: <1280885595-18026-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/3 v3] at91: implement clock framework
To: barebox@lists.infradead.org

this implementation is based on linux one (v2.6.35-rc5-76-gd0c6f62)
it will calculate all the clock dynamically instead of statictly
this will use also the new clock framework

it will also print the clock status after the console init

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
v3:

fix typo

Best Regards,
J.
 arch/arm/boards/at91sam9260ek/config.h      |    2 +-
 arch/arm/boards/at91sam9263ek/config.h      |    2 +-
 arch/arm/boards/at91sam9263ek/init.c        |    3 -
 arch/arm/boards/mmccpu/config.h             |    2 +-
 arch/arm/boards/mmccpu/init.c               |    3 -
 arch/arm/boards/pm9263/config.h             |    2 +-
 arch/arm/boards/pm9263/init.c               |    3 -
 arch/arm/mach-at91/Makefile                 |    2 +-
 arch/arm/mach-at91/at91sam9260.c            |  207 ++++++++
 arch/arm/mach-at91/at91sam9260_devices.c    |   18 +-
 arch/arm/mach-at91/at91sam9263.c            |  217 ++++++++
 arch/arm/mach-at91/at91sam9263_devices.c    |   13 +-
 arch/arm/mach-at91/clock.c                  |  718 +++++++++++++++++++++++++++
 arch/arm/mach-at91/clock.h                  |   31 ++
 arch/arm/mach-at91/generic.h                |   14 +
 arch/arm/mach-at91/gpio.c                   |    3 +
 arch/arm/mach-at91/include/mach/at91_dbgu.h |   66 +++
 arch/arm/mach-at91/include/mach/clk.h       |   39 --
 arch/arm/mach-at91/include/mach/cpu.h       |  158 ++++++
 arch/arm/mach-at91/include/mach/gpio.h      |    1 +
 drivers/net/macb.c                          |   11 +-
 drivers/serial/atmel.c                      |   32 +-
 22 files changed, 1472 insertions(+), 75 deletions(-)
 create mode 100644 arch/arm/mach-at91/clock.c
 create mode 100644 arch/arm/mach-at91/clock.h
 create mode 100644 arch/arm/mach-at91/generic.h
 create mode 100644 arch/arm/mach-at91/include/mach/at91_dbgu.h
 delete mode 100644 arch/arm/mach-at91/include/mach/clk.h
 create mode 100644 arch/arm/mach-at91/include/mach/cpu.h

diff --git a/arch/arm/boards/at91sam9260ek/config.h b/arch/arm/boards/at91sam9260ek/config.h
index afd8563..006820c 100644
--- a/arch/arm/boards/at91sam9260ek/config.h
+++ b/arch/arm/boards/at91sam9260ek/config.h
@@ -1,6 +1,6 @@
 #ifndef __CONFIG_H
 #define __CONFIG_H
 
-#define AT91_MASTER_CLOCK  99328000        /* peripheral = main / 2 */
+#define AT91_MAIN_CLOCK		18432000	/* 18.432 MHz crystal */
 
 #endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/at91sam9263ek/config.h b/arch/arm/boards/at91sam9263ek/config.h
index 9cc8af2..bc33227 100644
--- a/arch/arm/boards/at91sam9263ek/config.h
+++ b/arch/arm/boards/at91sam9263ek/config.h
@@ -1,7 +1,7 @@
 #ifndef __CONFIG_H
 #define __CONFIG_H
 
-#define AT91_MASTER_CLOCK 100000000        /* peripheral = main / 2 */
+#define AT91_MAIN_CLOCK		16367660	/* 16.367 MHz crystal */
 
 #define MASTER_PLL_MUL		171
 #define MASTER_PLL_DIV		14
diff --git a/arch/arm/boards/at91sam9263ek/init.c b/arch/arm/boards/at91sam9263ek/init.c
index 21803ca..61cd295 100644
--- a/arch/arm/boards/at91sam9263ek/init.c
+++ b/arch/arm/boards/at91sam9263ek/init.c
@@ -108,9 +108,6 @@ static int at91sam9263ek_devices_init(void)
 	at91_set_gpio_output(AT91_PIN_PB27, 1);
 	at91_set_gpio_value(AT91_PIN_PB27, 1); /* 1- enable, 0 - disable */
 
-	/* Enable clock */
-	at91_sys_write(AT91_PMC_PCER, 1 << AT91SAM9263_ID_EMAC);
-
 	at91_add_device_sdram(64 * 1024 * 1024);
 	ek_add_device_nand();
 	at91_add_device_eth(&macb_pdata);
diff --git a/arch/arm/boards/mmccpu/config.h b/arch/arm/boards/mmccpu/config.h
index 1133b8f..c37d5eb 100644
--- a/arch/arm/boards/mmccpu/config.h
+++ b/arch/arm/boards/mmccpu/config.h
@@ -1,7 +1,7 @@
 #ifndef __CONFIG_H
 #define __CONFIG_H
 
-#define AT91_MASTER_CLOCK	99532800		/* peripheral = main / 2 */
+#define AT91_MAIN_CLOCK		18432000
 
 /* values */
 #define MASTER_PLL_MUL		54
diff --git a/arch/arm/boards/mmccpu/init.c b/arch/arm/boards/mmccpu/init.c
index e010a83..9a7d930 100644
--- a/arch/arm/boards/mmccpu/init.c
+++ b/arch/arm/boards/mmccpu/init.c
@@ -58,9 +58,6 @@ static int mmccpu_devices_init(void)
 	at91_set_gpio_output(AT91_PIN_PB27, 1);
 	at91_set_gpio_value(AT91_PIN_PB27, 1); /* 1- enable, 0 - disable */
 
-	/* Enable clock */
-	at91_sys_write(AT91_PMC_PCER, 1 << AT91SAM9263_ID_EMAC);
-
 	at91_add_device_sdram(128 * 1024 * 1024);
 	at91_add_device_eth(&macb_pdata);
 	register_device(&cfi_dev);
diff --git a/arch/arm/boards/pm9263/config.h b/arch/arm/boards/pm9263/config.h
index 9a9c5cd..5252df2 100644
--- a/arch/arm/boards/pm9263/config.h
+++ b/arch/arm/boards/pm9263/config.h
@@ -1,7 +1,7 @@
 #ifndef __CONFIG_H
 #define __CONFIG_H
 
-#define AT91_MASTER_CLOCK  99328000        /* peripheral = main / 2 */
+#define AT91_MAIN_CLOCK	18432000
 
 #define MASTER_PLL_DIV		6
 #define MASTER_PLL_MUL		65
diff --git a/arch/arm/boards/pm9263/init.c b/arch/arm/boards/pm9263/init.c
index 88b91ea..d5ed921 100644
--- a/arch/arm/boards/pm9263/init.c
+++ b/arch/arm/boards/pm9263/init.c
@@ -107,9 +107,6 @@ static int pm9263_devices_init(void)
 	at91_set_gpio_output(AT91_PIN_PB27, 1);
 	at91_set_gpio_value(AT91_PIN_PB27, 1); /* 1- enable, 0 - disable */
 
-	/* Enable clock */
-	at91_sys_write(AT91_PMC_PCER, 1 << AT91SAM9263_ID_EMAC);
-
 	at91_add_device_sdram(64 * 1024 * 1024);
 	pm_add_device_nand();
 	at91_add_device_eth(&macb_pdata);
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index c848919..0f55883 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -1,4 +1,4 @@
-obj-y += clocksource.o gpio.o
+obj-y += clock.o clocksource.o gpio.o
 
 obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += lowlevel_init.o
 
diff --git a/arch/arm/mach-at91/at91sam9260.c b/arch/arm/mach-at91/at91sam9260.c
index 1a6e356..30d1a6a 100644
--- a/arch/arm/mach-at91/at91sam9260.c
+++ b/arch/arm/mach-at91/at91sam9260.c
@@ -2,22 +2,229 @@
 #include <gpio.h>
 #include <init.h>
 #include <asm/hardware.h>
+#include <mach/at91_pmc.h>
+
+#include "generic.h"
+#include "clock.h"
+
+/* --------------------------------------------------------------------
+ *  Clocks
+ * -------------------------------------------------------------------- */
+
+/*
+ * The peripheral clocks.
+ */
+static struct clk pioA_clk = {
+	.name		= "pioA_clk",
+	.pmc_mask	= 1 << AT91SAM9260_ID_PIOA,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk pioB_clk = {
+	.name		= "pioB_clk",
+	.pmc_mask	= 1 << AT91SAM9260_ID_PIOB,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk pioC_clk = {
+	.name		= "pioC_clk",
+	.pmc_mask	= 1 << AT91SAM9260_ID_PIOC,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk adc_clk = {
+	.name		= "adc_clk",
+	.pmc_mask	= 1 << AT91SAM9260_ID_ADC,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk usart0_clk = {
+	.name		= "usart0_clk",
+	.pmc_mask	= 1 << AT91SAM9260_ID_US0,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk usart1_clk = {
+	.name		= "usart1_clk",
+	.pmc_mask	= 1 << AT91SAM9260_ID_US1,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk usart2_clk = {
+	.name		= "usart2_clk",
+	.pmc_mask	= 1 << AT91SAM9260_ID_US2,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk mmc_clk = {
+	.name		= "mci_clk",
+	.pmc_mask	= 1 << AT91SAM9260_ID_MCI,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk udc_clk = {
+	.name		= "udc_clk",
+	.pmc_mask	= 1 << AT91SAM9260_ID_UDP,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk twi_clk = {
+	.name		= "twi_clk",
+	.pmc_mask	= 1 << AT91SAM9260_ID_TWI,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk spi0_clk = {
+	.name		= "spi0_clk",
+	.pmc_mask	= 1 << AT91SAM9260_ID_SPI0,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk spi1_clk = {
+	.name		= "spi1_clk",
+	.pmc_mask	= 1 << AT91SAM9260_ID_SPI1,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk ssc_clk = {
+	.name		= "ssc_clk",
+	.pmc_mask	= 1 << AT91SAM9260_ID_SSC,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk tc0_clk = {
+	.name		= "tc0_clk",
+	.pmc_mask	= 1 << AT91SAM9260_ID_TC0,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk tc1_clk = {
+	.name		= "tc1_clk",
+	.pmc_mask	= 1 << AT91SAM9260_ID_TC1,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk tc2_clk = {
+	.name		= "tc2_clk",
+	.pmc_mask	= 1 << AT91SAM9260_ID_TC2,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk ohci_clk = {
+	.name		= "ohci_clk",
+	.pmc_mask	= 1 << AT91SAM9260_ID_UHP,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk macb_clk = {
+	.name		= "macb_clk",
+	.pmc_mask	= 1 << AT91SAM9260_ID_EMAC,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk isi_clk = {
+	.name		= "isi_clk",
+	.pmc_mask	= 1 << AT91SAM9260_ID_ISI,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk usart3_clk = {
+	.name		= "usart3_clk",
+	.pmc_mask	= 1 << AT91SAM9260_ID_US3,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk usart4_clk = {
+	.name		= "usart4_clk",
+	.pmc_mask	= 1 << AT91SAM9260_ID_US4,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk usart5_clk = {
+	.name		= "usart5_clk",
+	.pmc_mask	= 1 << AT91SAM9260_ID_US5,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk tc3_clk = {
+	.name		= "tc3_clk",
+	.pmc_mask	= 1 << AT91SAM9260_ID_TC3,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk tc4_clk = {
+	.name		= "tc4_clk",
+	.pmc_mask	= 1 << AT91SAM9260_ID_TC4,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk tc5_clk = {
+	.name		= "tc5_clk",
+	.pmc_mask	= 1 << AT91SAM9260_ID_TC5,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+
+static struct clk *periph_clocks[] = {
+	&pioA_clk,
+	&pioB_clk,
+	&pioC_clk,
+	&adc_clk,
+	&usart0_clk,
+	&usart1_clk,
+	&usart2_clk,
+	&mmc_clk,
+	&udc_clk,
+	&twi_clk,
+	&spi0_clk,
+	&spi1_clk,
+	&ssc_clk,
+	&tc0_clk,
+	&tc1_clk,
+	&tc2_clk,
+	&ohci_clk,
+	&macb_clk,
+	&isi_clk,
+	&usart3_clk,
+	&usart4_clk,
+	&usart5_clk,
+	&tc3_clk,
+	&tc4_clk,
+	&tc5_clk,
+	// irq0 .. irq2
+};
+
+/*
+ * The two programmable clocks.
+ * You must configure pin multiplexing to bring these signals out.
+ */
+static struct clk pck0 = {
+	.name		= "pck0",
+	.pmc_mask	= AT91_PMC_PCK0,
+	.type		= CLK_TYPE_PROGRAMMABLE,
+	.id		= 0,
+};
+static struct clk pck1 = {
+	.name		= "pck1",
+	.pmc_mask	= AT91_PMC_PCK1,
+	.type		= CLK_TYPE_PROGRAMMABLE,
+	.id		= 1,
+};
+
+static void __init at91sam9260_register_clocks(void)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(periph_clocks); i++)
+		clk_register(periph_clocks[i]);
+
+	clk_register(&pck0);
+	clk_register(&pck1);
+}
+
+/* --------------------------------------------------------------------
+ *  GPIO
+ * -------------------------------------------------------------------- */
 
 static struct at91_gpio_bank at91sam9260_gpio[] = {
 	{
 		.id		= AT91SAM9260_ID_PIOA,
 		.offset		= AT91_PIOA,
+		.clock		= &pioA_clk,
 	}, {
 		.id		= AT91SAM9260_ID_PIOB,
 		.offset		= AT91_PIOB,
+		.clock		= &pioB_clk,
 	}, {
 		.id		= AT91SAM9260_ID_PIOC,
 		.offset		= AT91_PIOC,
+		.clock		= &pioC_clk,
 	}
 };
 
 static int at91sam9260_initialize(void)
 {
+	/* Init clock subsystem */
+	at91_clock_init(AT91_MAIN_CLOCK);
+
+	/* Register the processor-specific clocks */
+	at91sam9260_register_clocks();
+
 	/* Register GPIO subsystem */
 	at91_gpio_init(at91sam9260_gpio, 3);
 	return 0;
diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index 0cfe913..398a721 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -18,6 +18,8 @@
 #include <mach/gpio.h>
 #include <mach/io.h>
 
+#include "generic.h"
+
 static struct memory_platform_data sram_pdata = {
 	.name = "sram0",
 	.flags = DEVFS_RDWR,
@@ -107,8 +109,6 @@ void at91_add_device_nand(struct atmel_nand_data *data)
 	if (data->det_pin)
 		at91_set_gpio_input(data->det_pin, 1);
 
-	at91_sys_write(AT91_PMC_PCER, 1 << AT91SAM9260_ID_PIOC);
-
 	nand_dev.platform_data = data;
 	register_device(&nand_dev);
 }
@@ -233,37 +233,37 @@ void at91_register_uart(unsigned id, unsigned pins)
 	switch (id) {
 		case 0:		/* DBGU */
 			configure_dbgu_pins();
-			at91_sys_write(AT91_PMC_PCER, 1 << AT91_ID_SYS);
+			at91_clock_associate("mck", &dbgu_serial_device, "usart");
 			register_device(&dbgu_serial_device);
 			break;
 		case AT91SAM9260_ID_US0:
 			configure_usart0_pins(pins);
-			at91_sys_write(AT91_PMC_PCER, 1 << AT91SAM9260_ID_US0);
+			at91_clock_associate("usart0_clk", &uart0_serial_device, "usart");
 			register_device(&uart0_serial_device);
 			break;
 		case AT91SAM9260_ID_US1:
 			configure_usart1_pins(pins);
-			at91_sys_write(AT91_PMC_PCER, 1 << AT91SAM9260_ID_US1);
+			at91_clock_associate("usart1_clk", &uart1_serial_device, "usart");
 			register_device(&uart1_serial_device);
 			break;
 		case AT91SAM9260_ID_US2:
 			configure_usart2_pins(pins);
-			at91_sys_write(AT91_PMC_PCER, 1 << AT91SAM9260_ID_US2);
+			at91_clock_associate("usart2_clk", &uart2_serial_device, "usart");
 			register_device(&uart2_serial_device);
 			break;
 		case AT91SAM9260_ID_US3:
 			configure_usart3_pins(pins);
-			at91_sys_write(AT91_PMC_PCER, 1 << AT91SAM9260_ID_US3);
+			at91_clock_associate("usart3_clk", &uart3_serial_device, "usart");
 			register_device(&uart3_serial_device);
 			break;
 		case AT91SAM9260_ID_US4:
 			configure_usart4_pins();
-			at91_sys_write(AT91_PMC_PCER, 1 << AT91SAM9260_ID_US4);
+			at91_clock_associate("usart4_clk", &uart4_serial_device, "usart");
 			register_device(&uart4_serial_device);
 			break;
 		case AT91SAM9260_ID_US5:
 			configure_usart5_pins();
-			at91_sys_write(AT91_PMC_PCER, 1 << AT91SAM9260_ID_US5);
+			at91_clock_associate("usart5_clk", &uart5_serial_device, "usart");
 			register_device(&uart5_serial_device);
 			break;
 		default:
diff --git a/arch/arm/mach-at91/at91sam9263.c b/arch/arm/mach-at91/at91sam9263.c
index 472b619..b0e3193 100644
--- a/arch/arm/mach-at91/at91sam9263.c
+++ b/arch/arm/mach-at91/at91sam9263.c
@@ -2,28 +2,245 @@
 #include <gpio.h>
 #include <init.h>
 #include <asm/hardware.h>
+#include <mach/at91_pmc.h>
+
+#include "clock.h"
+#include "generic.h"
+
+/* --------------------------------------------------------------------
+ *  Clocks
+ * -------------------------------------------------------------------- */
+
+/*
+ * The peripheral clocks.
+ */
+static struct clk pioA_clk = {
+	.name		= "pioA_clk",
+	.pmc_mask	= 1 << AT91SAM9263_ID_PIOA,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk pioB_clk = {
+	.name		= "pioB_clk",
+	.pmc_mask	= 1 << AT91SAM9263_ID_PIOB,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk pioCDE_clk = {
+	.name		= "pioCDE_clk",
+	.pmc_mask	= 1 << AT91SAM9263_ID_PIOCDE,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk usart0_clk = {
+	.name		= "usart0_clk",
+	.pmc_mask	= 1 << AT91SAM9263_ID_US0,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk usart1_clk = {
+	.name		= "usart1_clk",
+	.pmc_mask	= 1 << AT91SAM9263_ID_US1,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk usart2_clk = {
+	.name		= "usart2_clk",
+	.pmc_mask	= 1 << AT91SAM9263_ID_US2,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk mmc0_clk = {
+	.name		= "mci0_clk",
+	.pmc_mask	= 1 << AT91SAM9263_ID_MCI0,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk mmc1_clk = {
+	.name		= "mci1_clk",
+	.pmc_mask	= 1 << AT91SAM9263_ID_MCI1,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk can_clk = {
+	.name		= "can_clk",
+	.pmc_mask	= 1 << AT91SAM9263_ID_CAN,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk twi_clk = {
+	.name		= "twi_clk",
+	.pmc_mask	= 1 << AT91SAM9263_ID_TWI,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk spi0_clk = {
+	.name		= "spi0_clk",
+	.pmc_mask	= 1 << AT91SAM9263_ID_SPI0,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk spi1_clk = {
+	.name		= "spi1_clk",
+	.pmc_mask	= 1 << AT91SAM9263_ID_SPI1,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk ssc0_clk = {
+	.name		= "ssc0_clk",
+	.pmc_mask	= 1 << AT91SAM9263_ID_SSC0,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk ssc1_clk = {
+	.name		= "ssc1_clk",
+	.pmc_mask	= 1 << AT91SAM9263_ID_SSC1,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk ac97_clk = {
+	.name		= "ac97_clk",
+	.pmc_mask	= 1 << AT91SAM9263_ID_AC97C,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk tcb_clk = {
+	.name		= "tcb_clk",
+	.pmc_mask	= 1 << AT91SAM9263_ID_TCB,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk pwm_clk = {
+	.name		= "pwm_clk",
+	.pmc_mask	= 1 << AT91SAM9263_ID_PWMC,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk macb_clk = {
+	.name		= "macb_clk",
+	.pmc_mask	= 1 << AT91SAM9263_ID_EMAC,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk dma_clk = {
+	.name		= "dma_clk",
+	.pmc_mask	= 1 << AT91SAM9263_ID_DMA,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk twodge_clk = {
+	.name		= "2dge_clk",
+	.pmc_mask	= 1 << AT91SAM9263_ID_2DGE,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk udc_clk = {
+	.name		= "udc_clk",
+	.pmc_mask	= 1 << AT91SAM9263_ID_UDP,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk isi_clk = {
+	.name		= "isi_clk",
+	.pmc_mask	= 1 << AT91SAM9263_ID_ISI,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk lcdc_clk = {
+	.name		= "lcdc_clk",
+	.pmc_mask	= 1 << AT91SAM9263_ID_LCDC,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk ohci_clk = {
+	.name		= "ohci_clk",
+	.pmc_mask	= 1 << AT91SAM9263_ID_UHP,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+
+static struct clk *periph_clocks[] = {
+	&pioA_clk,
+	&pioB_clk,
+	&pioCDE_clk,
+	&usart0_clk,
+	&usart1_clk,
+	&usart2_clk,
+	&mmc0_clk,
+	&mmc1_clk,
+	&can_clk,
+	&twi_clk,
+	&spi0_clk,
+	&spi1_clk,
+	&ssc0_clk,
+	&ssc1_clk,
+	&ac97_clk,
+	&tcb_clk,
+	&pwm_clk,
+	&macb_clk,
+	&twodge_clk,
+	&udc_clk,
+	&isi_clk,
+	&lcdc_clk,
+	&dma_clk,
+	&ohci_clk,
+	// irq0 .. irq1
+};
+
+/*
+ * The four programmable clocks.
+ * You must configure pin multiplexing to bring these signals out.
+ */
+static struct clk pck0 = {
+	.name		= "pck0",
+	.pmc_mask	= AT91_PMC_PCK0,
+	.type		= CLK_TYPE_PROGRAMMABLE,
+	.id		= 0,
+};
+static struct clk pck1 = {
+	.name		= "pck1",
+	.pmc_mask	= AT91_PMC_PCK1,
+	.type		= CLK_TYPE_PROGRAMMABLE,
+	.id		= 1,
+};
+static struct clk pck2 = {
+	.name		= "pck2",
+	.pmc_mask	= AT91_PMC_PCK2,
+	.type		= CLK_TYPE_PROGRAMMABLE,
+	.id		= 2,
+};
+static struct clk pck3 = {
+	.name		= "pck3",
+	.pmc_mask	= AT91_PMC_PCK3,
+	.type		= CLK_TYPE_PROGRAMMABLE,
+	.id		= 3,
+};
+
+static void __init at91sam9263_register_clocks(void)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(periph_clocks); i++)
+		clk_register(periph_clocks[i]);
+
+	clk_register(&pck0);
+	clk_register(&pck1);
+	clk_register(&pck2);
+	clk_register(&pck3);
+}
+
+/* --------------------------------------------------------------------
+ *  GPIO
+ * -------------------------------------------------------------------- */
 
 static struct at91_gpio_bank at91sam9263_gpio[] = {
 	{
 		.id		= AT91SAM9263_ID_PIOA,
 		.offset		= AT91_PIOA,
+		.clock		= &pioA_clk,
 	}, {
 		.id		= AT91SAM9263_ID_PIOB,
 		.offset		= AT91_PIOB,
+		.clock		= &pioB_clk,
 	}, {
 		.id		= AT91SAM9263_ID_PIOCDE,
 		.offset		= AT91_PIOC,
+		.clock		= &pioCDE_clk,
 	}, {
 		.id		= AT91SAM9263_ID_PIOCDE,
 		.offset		= AT91_PIOD,
+		.clock		= &pioCDE_clk,
 	}, {
 		.id		= AT91SAM9263_ID_PIOCDE,
 		.offset		= AT91_PIOE,
+		.clock		= &pioCDE_clk,
 	}
 };
 
 static int at91sam9263_initialize(void)
 {
+	/* Init clock subsystem */
+	at91_clock_init(AT91_MAIN_CLOCK);
+
+	/* Register the processor-specific clocks */
+	at91sam9263_register_clocks();
+
 	/* Register GPIO subsystem */
 	at91_gpio_init(at91sam9263_gpio, 5);
 	return 0;
diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
index 50a6348..7ebc32c 100644
--- a/arch/arm/mach-at91/at91sam9263_devices.c
+++ b/arch/arm/mach-at91/at91sam9263_devices.c
@@ -18,6 +18,8 @@
 #include <mach/gpio.h>
 #include <mach/io.h>
 
+#include "generic.h"
+
 static struct memory_platform_data ram_pdata = {
 	.name = "ram0",
 	.flags = DEVFS_RDWR,
@@ -106,9 +108,6 @@ void at91_add_device_nand(struct atmel_nand_data *data)
 	if (data->det_pin)
 		at91_set_gpio_input(data->det_pin, 1);
 
-	at91_sys_write(AT91_PMC_PCER, 1 << AT91SAM9263_ID_PIOA |
-				      1 << AT91SAM9263_ID_PIOCDE);
-
 	nand_dev.platform_data = data;
 	register_device(&nand_dev);
 }
@@ -184,22 +183,22 @@ void at91_register_uart(unsigned id, unsigned pins)
 	switch (id) {
 		case 0:		/* DBGU */
 			configure_dbgu_pins();
-			at91_sys_write(AT91_PMC_PCER, 1 << AT91_ID_SYS);
+			at91_clock_associate("mck", &dbgu_serial_device, "usart");
 			register_device(&dbgu_serial_device);
 			break;
 		case AT91SAM9263_ID_US0:
 			configure_usart0_pins(pins);
-			at91_sys_write(AT91_PMC_PCER, 1 << AT91SAM9263_ID_US0);
+			at91_clock_associate("usart0_clk", &uart0_serial_device, "usart");
 			register_device(&uart0_serial_device);
 			break;
 		case AT91SAM9263_ID_US1:
 			configure_usart1_pins(pins);
-			at91_sys_write(AT91_PMC_PCER, 1 << AT91SAM9263_ID_US1);
+			at91_clock_associate("usart1_clk", &uart1_serial_device, "usart");
 			register_device(&uart1_serial_device);
 			break;
 		case AT91SAM9263_ID_US2:
 			configure_usart2_pins(pins);
-			at91_sys_write(AT91_PMC_PCER, 1 << AT91SAM9263_ID_US2);
+			at91_clock_associate("usart2_clk", &uart2_serial_device, "usart");
 			register_device(&uart2_serial_device);
 			break;
 		default:
diff --git a/arch/arm/mach-at91/clock.c b/arch/arm/mach-at91/clock.c
new file mode 100644
index 0000000..6fd09d5
--- /dev/null
+++ b/arch/arm/mach-at91/clock.c
@@ -0,0 +1,718 @@
+/*
+ * linux/arch/arm/mach-at91/clock.c
+ *
+ * Copyright (C) 2005 David Brownell
+ * Copyright (C) 2005 Ivan Kokshaysky
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
+#include <common.h>
+#include <linux/list.h>
+#include <errno.h>
+#include <linux/err.h>
+#include <linux/clk.h>
+#include <init.h>
+
+#include <mach/hardware.h>
+#include <mach/io.h>
+#include <mach/at91_pmc.h>
+#include <mach/cpu.h>
+
+#include "clock.h"
+#include "generic.h"
+
+/*
+ * There's a lot more which can be done with clocks, including cpufreq
+ * integration, slow clock mode support (for system suspend), letting
+ * PLLB be used at other rates (on boards that don't need USB), etc.
+ */
+
+#define clk_is_primary(x)	((x)->type & CLK_TYPE_PRIMARY)
+#define clk_is_programmable(x)	((x)->type & CLK_TYPE_PROGRAMMABLE)
+#define clk_is_peripheral(x)	((x)->type & CLK_TYPE_PERIPHERAL)
+#define clk_is_sys(x)		((x)->type & CLK_TYPE_SYSTEM)
+
+
+/*
+ * Chips have some kind of clocks : group them by functionality
+ */
+#define cpu_has_utmi()		(  cpu_is_at91cap9() \
+				|| cpu_is_at91sam9rl() \
+				|| cpu_is_at91sam9g45())
+
+#define cpu_has_800M_plla()	(  cpu_is_at91sam9g20() \
+				|| cpu_is_at91sam9g45())
+
+#define cpu_has_300M_plla()	(cpu_is_at91sam9g10())
+
+#define cpu_has_pllb()		(!(cpu_is_at91sam9rl() \
+				|| cpu_is_at91sam9g45()))
+
+#define cpu_has_upll()		(cpu_is_at91sam9g45())
+
+/* USB host HS & FS */
+#define cpu_has_uhp()		(!cpu_is_at91sam9rl())
+
+/* USB device FS only */
+#define cpu_has_udpfs()		(!(cpu_is_at91sam9rl() \
+				|| cpu_is_at91sam9g45()))
+
+static LIST_HEAD(clocks);
+
+static u32 at91_pllb_usb_init;
+
+/*
+ * Four primary clock sources:  two crystal oscillators (32K, main), and
+ * two PLLs.  PLLA usually runs the master clock; and PLLB must run at
+ * 48 MHz (unless no USB function clocks are needed).  The main clock and
+ * both PLLs are turned off to run in "slow clock mode" (system suspend).
+ */
+static struct clk clk32k = {
+	.name		= "clk32k",
+	.rate_hz	= AT91_SLOW_CLOCK,
+	.users		= 1,		/* always on */
+	.id		= 0,
+	.type		= CLK_TYPE_PRIMARY,
+};
+static struct clk main_clk = {
+	.name		= "main",
+	.pmc_mask	= AT91_PMC_MOSCS,	/* in PMC_SR */
+	.id		= 1,
+	.type		= CLK_TYPE_PRIMARY,
+};
+static struct clk plla = {
+	.name		= "plla",
+	.parent		= &main_clk,
+	.pmc_mask	= AT91_PMC_LOCKA,	/* in PMC_SR */
+	.id		= 2,
+	.type		= CLK_TYPE_PRIMARY | CLK_TYPE_PLL,
+};
+
+static void pllb_mode(struct clk *clk, int is_on)
+{
+	u32	value;
+
+	if (is_on) {
+		is_on = AT91_PMC_LOCKB;
+		value = at91_pllb_usb_init;
+	} else
+		value = 0;
+
+	// REVISIT: Add work-around for AT91RM9200 Errata #26 ?
+	at91_sys_write(AT91_CKGR_PLLBR, value);
+
+	do {
+		barrier();
+	} while ((at91_sys_read(AT91_PMC_SR) & AT91_PMC_LOCKB) != is_on);
+}
+
+static struct clk pllb = {
+	.name		= "pllb",
+	.parent		= &main_clk,
+	.pmc_mask	= AT91_PMC_LOCKB,	/* in PMC_SR */
+	.mode		= pllb_mode,
+	.id		= 3,
+	.type		= CLK_TYPE_PRIMARY | CLK_TYPE_PLL,
+};
+
+static void pmc_sys_mode(struct clk *clk, int is_on)
+{
+	if (is_on)
+		at91_sys_write(AT91_PMC_SCER, clk->pmc_mask);
+	else
+		at91_sys_write(AT91_PMC_SCDR, clk->pmc_mask);
+}
+
+static void pmc_uckr_mode(struct clk *clk, int is_on)
+{
+	unsigned int uckr = at91_sys_read(AT91_CKGR_UCKR);
+
+	if (cpu_is_at91sam9g45()) {
+		if (is_on)
+			uckr |= AT91_PMC_BIASEN;
+		else
+			uckr &= ~AT91_PMC_BIASEN;
+	}
+
+	if (is_on) {
+		is_on = AT91_PMC_LOCKU;
+		at91_sys_write(AT91_CKGR_UCKR, uckr | clk->pmc_mask);
+	} else
+		at91_sys_write(AT91_CKGR_UCKR, uckr & ~(clk->pmc_mask));
+
+	do {
+		barrier();
+	} while ((at91_sys_read(AT91_PMC_SR) & AT91_PMC_LOCKU) != is_on);
+}
+
+/* USB function clocks (PLLB must be 48 MHz) */
+static struct clk udpck = {
+	.name		= "udpck",
+	.parent		= &pllb,
+	.mode		= pmc_sys_mode,
+};
+static struct clk utmi_clk = {
+	.name		= "utmi_clk",
+	.parent		= &main_clk,
+	.pmc_mask	= AT91_PMC_UPLLEN,	/* in CKGR_UCKR */
+	.mode		= pmc_uckr_mode,
+	.type		= CLK_TYPE_PLL,
+};
+static struct clk uhpck = {
+	.name		= "uhpck",
+	/*.parent		= ... we choose parent at runtime */
+	.mode		= pmc_sys_mode,
+};
+
+
+/*
+ * The master clock is divided from the CPU clock (by 1-4).  It's used for
+ * memory, interfaces to on-chip peripherals, the AIC, and sometimes more
+ * (e.g baud rate generation).  It's sourced from one of the primary clocks.
+ */
+static struct clk mck = {
+	.name		= "mck",
+	.pmc_mask	= AT91_PMC_MCKRDY,	/* in PMC_SR */
+};
+
+static void pmc_periph_mode(struct clk *clk, int is_on)
+{
+	if (is_on)
+		at91_sys_write(AT91_PMC_PCER, clk->pmc_mask);
+	else
+		at91_sys_write(AT91_PMC_PCDR, clk->pmc_mask);
+}
+
+static struct clk *at91_css_to_clk(unsigned long css)
+{
+	switch (css) {
+		case AT91_PMC_CSS_SLOW:
+			return &clk32k;
+		case AT91_PMC_CSS_MAIN:
+			return &main_clk;
+		case AT91_PMC_CSS_PLLA:
+			return &plla;
+		case AT91_PMC_CSS_PLLB:
+			if (cpu_has_upll())
+				/* CSS_PLLB == CSS_UPLL */
+				return &utmi_clk;
+			else if (cpu_has_pllb())
+				return &pllb;
+	}
+
+	return NULL;
+}
+
+/*
+ * Associate a particular clock with a function (eg, "uart") and device.
+ * The drivers can then request the same 'function' with several different
+ * devices and not care about which clock name to use.
+ */
+void at91_clock_associate(const char *id, struct device_d *dev, const char *func)
+{
+	struct clk *clk = clk_get(NULL, id);
+
+	if (!dev || !clk || !IS_ERR(clk_get(dev, func)))
+		return;
+
+	clk->function = func;
+	clk->dev = dev;
+}
+
+/* clocks cannot be de-registered no refcounting necessary */
+struct clk *clk_get(struct device_d *dev, const char *id)
+{
+	struct clk *clk;
+
+	list_for_each_entry(clk, &clocks, node) {
+		if (strcmp(id, clk->name) == 0)
+			return clk;
+		if (clk->function && (dev == clk->dev) && strcmp(id, clk->function) == 0)
+			return clk;
+	}
+
+	return ERR_PTR(-ENOENT);
+}
+EXPORT_SYMBOL(clk_get);
+
+void clk_put(struct clk *clk)
+{
+}
+EXPORT_SYMBOL(clk_put);
+
+static void __clk_enable(struct clk *clk)
+{
+	if (clk->parent)
+		__clk_enable(clk->parent);
+	if (clk->users++ == 0 && clk->mode)
+		clk->mode(clk, 1);
+}
+
+int clk_enable(struct clk *clk)
+{
+	__clk_enable(clk);
+	return 0;
+}
+EXPORT_SYMBOL(clk_enable);
+
+static void __clk_disable(struct clk *clk)
+{
+	BUG_ON(clk->users == 0);
+	if (--clk->users == 0 && clk->mode)
+		clk->mode(clk, 0);
+	if (clk->parent)
+		__clk_disable(clk->parent);
+}
+
+void clk_disable(struct clk *clk)
+{
+	__clk_disable(clk);
+}
+EXPORT_SYMBOL(clk_disable);
+
+unsigned long clk_get_rate(struct clk *clk)
+{
+	unsigned long	rate;
+
+	for (;;) {
+		rate = clk->rate_hz;
+		if (rate || !clk->parent)
+			break;
+		clk = clk->parent;
+	}
+	return rate;
+}
+EXPORT_SYMBOL(clk_get_rate);
+
+/*------------------------------------------------------------------------*/
+
+#ifdef CONFIG_AT91_PROGRAMMABLE_CLOCKS
+
+/*
+ * For now, only the programmable clocks support reparenting (MCK could
+ * do this too, with care) or rate changing (the PLLs could do this too,
+ * ditto MCK but that's more for cpufreq).  Drivers may reparent to get
+ * a better rate match; we don't.
+ */
+
+long clk_round_rate(struct clk *clk, unsigned long rate)
+{
+	unsigned long	flags;
+	unsigned	prescale;
+	unsigned long	actual;
+	unsigned long	prev = ULONG_MAX;
+
+	if (!clk_is_programmable(clk))
+		return -EINVAL;
+
+	actual = clk->parent->rate_hz;
+	for (prescale = 0; prescale < 7; prescale++) {
+		if (actual > rate)
+			prev = actual;
+
+		if (actual && actual <= rate) {
+			if ((prev - rate) < (rate - actual)) {
+				actual = prev;
+				prescale--;
+			}
+			break;
+		}
+		actual >>= 1;
+	}
+
+	return (prescale < 7) ? actual : -ENOENT;
+}
+EXPORT_SYMBOL(clk_round_rate);
+
+int clk_set_rate(struct clk *clk, unsigned long rate)
+{
+	unsigned long	flags;
+	unsigned	prescale;
+	unsigned long	actual;
+
+	if (!clk_is_programmable(clk))
+		return -EINVAL;
+	if (clk->users)
+		return -EBUSY;
+
+	actual = clk->parent->rate_hz;
+	for (prescale = 0; prescale < 7; prescale++) {
+		if (actual && actual <= rate) {
+			u32	pckr;
+
+			pckr = at91_sys_read(AT91_PMC_PCKR(clk->id));
+			pckr &= AT91_PMC_CSS;	/* clock selection */
+			pckr |= prescale << 2;
+			at91_sys_write(AT91_PMC_PCKR(clk->id), pckr);
+			clk->rate_hz = actual;
+			break;
+		}
+		actual >>= 1;
+	}
+
+	return (prescale < 7) ? actual : -ENOENT;
+}
+EXPORT_SYMBOL(clk_set_rate);
+
+struct clk *clk_get_parent(struct clk *clk)
+{
+	return clk->parent;
+}
+EXPORT_SYMBOL(clk_get_parent);
+
+int clk_set_parent(struct clk *clk, struct clk *parent)
+{
+	unsigned long	flags;
+
+	if (clk->users)
+		return -EBUSY;
+	if (!clk_is_primary(parent) || !clk_is_programmable(clk))
+		return -EINVAL;
+
+	if (cpu_is_at91sam9rl() && parent->id == AT91_PMC_CSS_PLLB)
+		return -EINVAL;
+
+	clk->rate_hz = parent->rate_hz;
+	clk->parent = parent;
+	at91_sys_write(AT91_PMC_PCKR(clk->id), parent->id);
+
+	return 0;
+}
+EXPORT_SYMBOL(clk_set_parent);
+
+/* establish PCK0..PCKN parentage and rate */
+static void init_programmable_clock(struct clk *clk)
+{
+	struct clk	*parent;
+	u32		pckr;
+
+	pckr = at91_sys_read(AT91_PMC_PCKR(clk->id));
+	parent = at91_css_to_clk(pckr & AT91_PMC_CSS);
+	clk->parent = parent;
+	clk->rate_hz = parent->rate_hz / (1 << ((pckr & AT91_PMC_PRES) >> 2));
+}
+
+#endif	/* CONFIG_AT91_PROGRAMMABLE_CLOCKS */
+
+/*------------------------------------------------------------------------*/
+
+/* Register a new clock */
+int clk_register(struct clk *clk)
+{
+	if (clk_is_peripheral(clk)) {
+		clk->parent = &mck;
+		clk->mode = pmc_periph_mode;
+		list_add_tail(&clk->node, &clocks);
+	}
+	else if (clk_is_sys(clk)) {
+		clk->parent = &mck;
+		clk->mode = pmc_sys_mode;
+
+		list_add_tail(&clk->node, &clocks);
+	}
+#ifdef CONFIG_AT91_PROGRAMMABLE_CLOCKS
+	else if (clk_is_programmable(clk)) {
+		clk->mode = pmc_sys_mode;
+		init_programmable_clock(clk);
+		list_add_tail(&clk->node, &clocks);
+	}
+#endif
+
+	return 0;
+}
+
+
+/*------------------------------------------------------------------------*/
+
+static u32 at91_pll_rate(struct clk *pll, u32 freq, u32 reg)
+{
+	unsigned mul, div;
+
+	div = reg & 0xff;
+	mul = (reg >> 16) & 0x7ff;
+	if (div && mul) {
+		freq /= div;
+		freq *= mul + 1;
+	} else
+		freq = 0;
+
+	return freq;
+}
+
+static u32 at91_usb_rate(struct clk *pll, u32 freq, u32 reg)
+{
+	if (pll == &pllb && (reg & AT91_PMC_USB96M))
+		return freq / 2;
+	else
+		return freq;
+}
+
+static unsigned at91_pll_calc(unsigned main_freq, unsigned out_freq)
+{
+	unsigned i, div = 0, mul = 0, diff = 1 << 30;
+	unsigned ret = (out_freq > 155000000) ? 0xbe00 : 0x3e00;
+
+	/* PLL output max 240 MHz (or 180 MHz per errata) */
+	if (out_freq > 240000000)
+		goto fail;
+
+	for (i = 1; i < 256; i++) {
+		int diff1;
+		unsigned input, mul1;
+
+		/*
+		 * PLL input between 1MHz and 32MHz per spec, but lower
+		 * frequences seem necessary in some cases so allow 100K.
+		 * Warning: some newer products need 2MHz min.
+		 */
+		input = main_freq / i;
+		if (cpu_is_at91sam9g20() && input < 2000000)
+			continue;
+		if (input < 100000)
+			continue;
+		if (input > 32000000)
+			continue;
+
+		mul1 = out_freq / input;
+		if (cpu_is_at91sam9g20() && mul > 63)
+			continue;
+		if (mul1 > 2048)
+			continue;
+		if (mul1 < 2)
+			goto fail;
+
+		diff1 = out_freq - input * mul1;
+		if (diff1 < 0)
+			diff1 = -diff1;
+		if (diff > diff1) {
+			diff = diff1;
+			div = i;
+			mul = mul1;
+			if (diff == 0)
+				break;
+		}
+	}
+	if (i == 256 && diff > (out_freq >> 5))
+		goto fail;
+	return ret | ((mul - 1) << 16) | div;
+fail:
+	return 0;
+}
+
+static struct clk *const standard_pmc_clocks[] = {
+	/* four primary clocks */
+	&clk32k,
+	&main_clk,
+	&plla,
+
+	/* MCK */
+	&mck
+};
+
+/* PLLB generated USB full speed clock init */
+static void at91_pllb_usbfs_clock_init(unsigned long main_clock)
+{
+	/*
+	 * USB clock init:  choose 48 MHz PLLB value,
+	 * disable 48MHz clock during usb peripheral suspend.
+	 *
+	 * REVISIT:  assumes MCK doesn't derive from PLLB!
+	 */
+	uhpck.parent = &pllb;
+
+	at91_pllb_usb_init = at91_pll_calc(main_clock, 48000000 * 2) | AT91_PMC_USB96M;
+	pllb.rate_hz = at91_pll_rate(&pllb, main_clock, at91_pllb_usb_init);
+	if (cpu_is_at91rm9200()) {
+		uhpck.pmc_mask = AT91RM9200_PMC_UHP;
+		udpck.pmc_mask = AT91RM9200_PMC_UDP;
+		at91_sys_write(AT91_PMC_SCER, AT91RM9200_PMC_MCKUDP);
+	} else if (cpu_is_at91sam9260() || cpu_is_at91sam9261() ||
+		   cpu_is_at91sam9263() || cpu_is_at91sam9g20() ||
+		   cpu_is_at91sam9g10() || cpu_is_at572d940hf()) {
+		uhpck.pmc_mask = AT91SAM926x_PMC_UHP;
+		udpck.pmc_mask = AT91SAM926x_PMC_UDP;
+	} else if (cpu_is_at91cap9()) {
+		uhpck.pmc_mask = AT91CAP9_PMC_UHP;
+	}
+	at91_sys_write(AT91_CKGR_PLLBR, 0);
+
+	udpck.rate_hz = at91_usb_rate(&pllb, pllb.rate_hz, at91_pllb_usb_init);
+	uhpck.rate_hz = at91_usb_rate(&pllb, pllb.rate_hz, at91_pllb_usb_init);
+}
+
+/* UPLL generated USB full speed clock init */
+static void at91_upll_usbfs_clock_init(unsigned long main_clock)
+{
+	/*
+	 * USB clock init: choose 480 MHz from UPLL,
+	 */
+	unsigned int usbr = AT91_PMC_USBS_UPLL;
+
+	/* Setup divider by 10 to reach 48 MHz */
+	usbr |= ((10 - 1) << 8) & AT91_PMC_OHCIUSBDIV;
+
+	at91_sys_write(AT91_PMC_USB, usbr);
+
+	/* Now set uhpck values */
+	uhpck.parent = &utmi_clk;
+	uhpck.pmc_mask = AT91SAM926x_PMC_UHP;
+	uhpck.rate_hz = utmi_clk.parent->rate_hz;
+	uhpck.rate_hz /= 1 + ((at91_sys_read(AT91_PMC_USB) & AT91_PMC_OHCIUSBDIV) >> 8);
+}
+
+static int pll_overclock = 0;
+
+int at91_clock_init(unsigned long main_clock)
+{
+	unsigned tmp, freq, mckr;
+	int i;
+
+	/*
+	 * When the bootloader initialized the main oscillator correctly,
+	 * there's no problem using the cycle counter.  But if it didn't,
+	 * or when using oscillator bypass mode, we must be told the speed
+	 * of the main clock.
+	 */
+	if (!main_clock) {
+		do {
+			tmp = at91_sys_read(AT91_CKGR_MCFR);
+		} while (!(tmp & AT91_PMC_MAINRDY));
+		main_clock = (tmp & AT91_PMC_MAINF) * (AT91_SLOW_CLOCK / 16);
+	}
+	main_clk.rate_hz = main_clock;
+
+	/* report if PLLA is more than mildly overclocked */
+	plla.rate_hz = at91_pll_rate(&plla, main_clock, at91_sys_read(AT91_CKGR_PLLAR));
+	if (cpu_has_300M_plla()) {
+		if (plla.rate_hz > 300000000)
+			pll_overclock = 1;
+	} else if (cpu_has_800M_plla()) {
+		if (plla.rate_hz > 800000000)
+			pll_overclock = 1;
+	} else {
+		if (plla.rate_hz > 209000000)
+			pll_overclock = 1;
+	}
+
+	if (cpu_is_at91sam9g45()) {
+		mckr = at91_sys_read(AT91_PMC_MCKR);
+		plla.rate_hz /= (1 << ((mckr & AT91_PMC_PLLADIV2) >> 12));	/* plla divisor by 2 */
+	}
+
+	if (!cpu_has_pllb() && cpu_has_upll()) {
+		/* setup UTMI clock as the fourth primary clock
+		 * (instead of pllb) */
+		utmi_clk.type |= CLK_TYPE_PRIMARY;
+		utmi_clk.id = 3;
+	}
+
+	/*
+	 * USB HS clock init
+	 */
+	if (cpu_has_utmi()) {
+		/*
+		 * multiplier is hard-wired to 40
+		 * (obtain the USB High Speed 480 MHz when input is 12 MHz)
+		 */
+		utmi_clk.rate_hz = 40 * utmi_clk.parent->rate_hz;
+	}
+
+	/*
+	 * USB FS clock init
+	 */
+	if (cpu_has_pllb())
+		at91_pllb_usbfs_clock_init(main_clock);
+	if (cpu_has_upll())
+		/* assumes that we choose UPLL for USB and not PLLA */
+		at91_upll_usbfs_clock_init(main_clock);
+
+	/*
+	 * MCK and CPU derive from one of those primary clocks.
+	 * For now, assume this parentage won't change.
+	 */
+	mckr = at91_sys_read(AT91_PMC_MCKR);
+	mck.parent = at91_css_to_clk(mckr & AT91_PMC_CSS);
+	freq = mck.parent->rate_hz;
+	freq /= (1 << ((mckr & AT91_PMC_PRES) >> 2));				/* prescale */
+	if (cpu_is_at91rm9200()) {
+		mck.rate_hz = freq / (1 + ((mckr & AT91_PMC_MDIV) >> 8));	/* mdiv */
+	} else if (cpu_is_at91sam9g20()) {
+		mck.rate_hz = (mckr & AT91_PMC_MDIV) ?
+			freq / ((mckr & AT91_PMC_MDIV) >> 7) : freq;	/* mdiv ; (x >> 7) = ((x >> 8) * 2) */
+		if (mckr & AT91_PMC_PDIV)
+			freq /= 2;		/* processor clock division */
+	} else if (cpu_is_at91sam9g45()) {
+		mck.rate_hz = (mckr & AT91_PMC_MDIV) == AT91SAM9_PMC_MDIV_3 ?
+			freq / 3 : freq / (1 << ((mckr & AT91_PMC_MDIV) >> 8));	/* mdiv */
+	} else {
+		mck.rate_hz = freq / (1 << ((mckr & AT91_PMC_MDIV) >> 8));      /* mdiv */
+	}
+
+	/* Register the PMC's standard clocks */
+	for (i = 0; i < ARRAY_SIZE(standard_pmc_clocks); i++)
+		list_add_tail(&standard_pmc_clocks[i]->node, &clocks);
+
+	if (cpu_has_pllb())
+		list_add_tail(&pllb.node, &clocks);
+
+	if (cpu_has_uhp())
+		list_add_tail(&uhpck.node, &clocks);
+
+	if (cpu_has_udpfs())
+		list_add_tail(&udpck.node, &clocks);
+
+	if (cpu_has_utmi())
+		list_add_tail(&utmi_clk.node, &clocks);
+
+	/* MCK and CPU clock are "always on" */
+	clk_enable(&mck);
+
+	return 0;
+}
+
+static int at91_clock_display(void)
+{
+	if (pll_overclock)
+		pr_info("Clocks: PLLA overclocked, %ld MHz\n", plla.rate_hz / 1000000);
+
+	printf("Clocks: CPU %u MHz, master %u MHz, main %u.%03u MHz\n",
+		mck.parent->rate_hz / 1000000, (unsigned) mck.rate_hz / 1000000,
+		(unsigned) main_clk.rate_hz / 1000000,
+		((unsigned) main_clk.rate_hz % 1000000) / 1000);
+
+	return 0;
+}
+postconsole_initcall(at91_clock_display);
+
+/*
+ * Several unused clocks may be active.  Turn them off.
+ */
+static int at91_clock_reset(void)
+{
+	unsigned long pcdr = 0;
+	unsigned long scdr = 0;
+	struct clk *clk;
+
+	list_for_each_entry(clk, &clocks, node) {
+		if (clk->users > 0)
+			continue;
+
+		if (clk->mode == pmc_periph_mode)
+			pcdr |= clk->pmc_mask;
+
+		if (clk->mode == pmc_sys_mode)
+			scdr |= clk->pmc_mask;
+
+		pr_debug("Clocks: disable unused %s\n", clk->name);
+	}
+
+	at91_sys_write(AT91_PMC_PCDR, pcdr);
+	at91_sys_write(AT91_PMC_SCDR, scdr);
+
+	return 0;
+}
+late_initcall(at91_clock_reset);
diff --git a/arch/arm/mach-at91/clock.h b/arch/arm/mach-at91/clock.h
new file mode 100644
index 0000000..c8ecd0c
--- /dev/null
+++ b/arch/arm/mach-at91/clock.h
@@ -0,0 +1,31 @@
+/*
+ * linux/arch/arm/mach-at91/clock.h
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+#define CLK_TYPE_PRIMARY	0x1
+#define CLK_TYPE_PLL		0x2
+#define CLK_TYPE_PROGRAMMABLE	0x4
+#define CLK_TYPE_PERIPHERAL	0x8
+#define CLK_TYPE_SYSTEM		0x10
+
+
+struct clk {
+	struct list_head node;
+	const char	*name;		/* unique clock name */
+	const char	*function;	/* function of the clock */
+	struct device_d	*dev;		/* device associated with function */
+	unsigned long	rate_hz;
+	struct clk	*parent;
+	u32		pmc_mask;
+	void		(*mode)(struct clk *, int);
+	unsigned	id:3;		/* PCK0..4, or 32k/main/a/b */
+	unsigned	type;		/* clock type */
+	u16		users;
+};
+
+
+extern int __init clk_register(struct clk *clk);
diff --git a/arch/arm/mach-at91/generic.h b/arch/arm/mach-at91/generic.h
new file mode 100644
index 0000000..b3a029d
--- /dev/null
+++ b/arch/arm/mach-at91/generic.h
@@ -0,0 +1,14 @@
+/*
+ * linux/arch/arm/mach-at91/generic.h
+ *
+ *  Copyright (C) 2005 David Brownell
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+ /* Clocks */
+extern int __init at91_clock_init(unsigned long main_clock);
+struct device_d;
+extern void __init at91_clock_associate(const char *id, struct device_d *dev, const char *func);
diff --git a/arch/arm/mach-at91/gpio.c b/arch/arm/mach-at91/gpio.c
index 1cafaf7..b257128 100644
--- a/arch/arm/mach-at91/gpio.c
+++ b/arch/arm/mach-at91/gpio.c
@@ -22,6 +22,7 @@
  */
 
 #include <common.h>
+#include <linux/clk.h>
 #include <errno.h>
 #include <asm/io.h>
 #include <mach/gpio.h>
@@ -245,6 +246,8 @@ int at91_gpio_init(struct at91_gpio_bank *data, int nr_banks)
 		data->regbase = data->offset +
 			(void __iomem *)AT91_BASE_SYS;
 
+		/* enable PIO controller's clock */
+		clk_enable(data->clock);
 
 		/* AT91SAM9263_ID_PIOCDE groups PIOC, PIOD, PIOE */
 		if (last && last->id == data->id)
diff --git a/arch/arm/mach-at91/include/mach/at91_dbgu.h b/arch/arm/mach-at91/include/mach/at91_dbgu.h
new file mode 100644
index 0000000..6dcaa77
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/at91_dbgu.h
@@ -0,0 +1,66 @@
+/*
+ * arch/arm/mach-at91/include/mach/at91_dbgu.h
+ *
+ * Copyright (C) 2005 Ivan Kokshaysky
+ * Copyright (C) SAN People
+ *
+ * Debug Unit (DBGU) - System peripherals registers.
+ * Based on AT91RM9200 datasheet revision E.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
+#ifndef AT91_DBGU_H
+#define AT91_DBGU_H
+
+#ifdef AT91_DBGU
+#define AT91_DBGU_CR		(AT91_DBGU + 0x00)	/* Control Register */
+#define AT91_DBGU_MR		(AT91_DBGU + 0x04)	/* Mode Register */
+#define AT91_DBGU_IER		(AT91_DBGU + 0x08)	/* Interrupt Enable Register */
+#define		AT91_DBGU_TXRDY		(1 << 1)		/* Transmitter Ready */
+#define		AT91_DBGU_TXEMPTY	(1 << 9)		/* Transmitter Empty */
+#define AT91_DBGU_IDR		(AT91_DBGU + 0x0c)	/* Interrupt Disable Register */
+#define AT91_DBGU_IMR		(AT91_DBGU + 0x10)	/* Interrupt Mask Register */
+#define AT91_DBGU_SR		(AT91_DBGU + 0x14)	/* Status Register */
+#define AT91_DBGU_RHR		(AT91_DBGU + 0x18)	/* Receiver Holding Register */
+#define AT91_DBGU_THR		(AT91_DBGU + 0x1c)	/* Transmitter Holding Register */
+#define AT91_DBGU_BRGR		(AT91_DBGU + 0x20)	/* Baud Rate Generator Register */
+
+#define AT91_DBGU_CIDR		(AT91_DBGU + 0x40)	/* Chip ID Register */
+#define AT91_DBGU_EXID		(AT91_DBGU + 0x44)	/* Chip ID Extension Register */
+#define AT91_DBGU_FNR		(AT91_DBGU + 0x48)	/* Force NTRST Register [SAM9 only] */
+#define		AT91_DBGU_FNTRST	(1 << 0)		/* Force NTRST */
+
+#endif /* AT91_DBGU */
+
+/*
+ * Some AT91 parts that don't have full DEBUG units still support the ID
+ * and extensions register.
+ */
+#define		AT91_CIDR_VERSION	(0x1f << 0)		/* Version of the Device */
+#define		AT91_CIDR_EPROC		(7    << 5)		/* Embedded Processor */
+#define		AT91_CIDR_NVPSIZ	(0xf  << 8)		/* Nonvolatile Program Memory Size */
+#define		AT91_CIDR_NVPSIZ2	(0xf  << 12)		/* Second Nonvolatile Program Memory Size */
+#define		AT91_CIDR_SRAMSIZ	(0xf  << 16)		/* Internal SRAM Size */
+#define			AT91_CIDR_SRAMSIZ_1K	(1 << 16)
+#define			AT91_CIDR_SRAMSIZ_2K	(2 << 16)
+#define			AT91_CIDR_SRAMSIZ_112K	(4 << 16)
+#define			AT91_CIDR_SRAMSIZ_4K	(5 << 16)
+#define			AT91_CIDR_SRAMSIZ_80K	(6 << 16)
+#define			AT91_CIDR_SRAMSIZ_160K	(7 << 16)
+#define			AT91_CIDR_SRAMSIZ_8K	(8 << 16)
+#define			AT91_CIDR_SRAMSIZ_16K	(9 << 16)
+#define			AT91_CIDR_SRAMSIZ_32K	(10 << 16)
+#define			AT91_CIDR_SRAMSIZ_64K	(11 << 16)
+#define			AT91_CIDR_SRAMSIZ_128K	(12 << 16)
+#define			AT91_CIDR_SRAMSIZ_256K	(13 << 16)
+#define			AT91_CIDR_SRAMSIZ_96K	(14 << 16)
+#define			AT91_CIDR_SRAMSIZ_512K	(15 << 16)
+#define		AT91_CIDR_ARCH		(0xff << 20)		/* Architecture Identifier */
+#define		AT91_CIDR_NVPTYP	(7    << 28)		/* Nonvolatile Program Memory Type */
+#define		AT91_CIDR_EXT		(1    << 31)		/* Extension Flag */
+
+#endif
diff --git a/arch/arm/mach-at91/include/mach/clk.h b/arch/arm/mach-at91/include/mach/clk.h
deleted file mode 100644
index a9c0683..0000000
--- a/arch/arm/mach-at91/include/mach/clk.h
+++ /dev/null
@@ -1,39 +0,0 @@
-/*
- * (C) Copyright 2007
- * Stelian Pop <stelian.pop@leadtechdesign.com>
- * Lead Tech Design <www.leadtechdesign.com>
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
- */
-#ifndef __ASM_ARM_ARCH_CLK_H__
-#define __ASM_ARM_ARCH_CLK_H__
-
-#include <mach/hardware.h>
-
-static inline unsigned long get_macb_pclk_rate(unsigned int dev_id)
-{
-	return AT91_MASTER_CLOCK;
-}
-
-static inline unsigned long get_usart_clk_rate(unsigned int dev_id)
-{
-	return AT91_MASTER_CLOCK;
-}
-
-#endif /* __ASM_ARM_ARCH_CLK_H__ */
diff --git a/arch/arm/mach-at91/include/mach/cpu.h b/arch/arm/mach-at91/include/mach/cpu.h
new file mode 100644
index 0000000..833659d
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/cpu.h
@@ -0,0 +1,158 @@
+/*
+ * arch/arm/mach-at91/include/mach/cpu.h
+ *
+ *  Copyright (C) 2006 SAN People
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ */
+
+#ifndef __ASM_ARCH_CPU_H
+#define __ASM_ARCH_CPU_H
+
+#include <mach/hardware.h>
+#include <mach/at91_dbgu.h>
+
+
+#define ARCH_ID_AT91RM9200	0x09290780
+#define ARCH_ID_AT91SAM9260	0x019803a0
+#define ARCH_ID_AT91SAM9261	0x019703a0
+#define ARCH_ID_AT91SAM9263	0x019607a0
+#define ARCH_ID_AT91SAM9G10	0x019903a0
+#define ARCH_ID_AT91SAM9G20	0x019905a0
+#define ARCH_ID_AT91SAM9RL64	0x019b03a0
+#define ARCH_ID_AT91SAM9G45	0x819b05a0
+#define ARCH_ID_AT91SAM9G45MRL	0x819b05a2	/* aka 9G45-ES2 & non ES lots */
+#define ARCH_ID_AT91SAM9G45ES	0x819b05a1	/* 9G45-ES (Engineering Sample) */
+#define ARCH_ID_AT91CAP9	0x039A03A0
+
+#define ARCH_ID_AT91SAM9XE128	0x329973a0
+#define ARCH_ID_AT91SAM9XE256	0x329a93a0
+#define ARCH_ID_AT91SAM9XE512	0x329aa3a0
+
+#define ARCH_ID_AT572D940HF	0x0e0303e0
+
+#define ARCH_ID_AT91M40800	0x14080044
+#define ARCH_ID_AT91R40807	0x44080746
+#define ARCH_ID_AT91M40807	0x14080745
+#define ARCH_ID_AT91R40008	0x44000840
+
+static inline unsigned long at91_cpu_identify(void)
+{
+	return (at91_sys_read(AT91_DBGU_CIDR) & ~AT91_CIDR_VERSION);
+}
+
+static inline unsigned long at91_cpu_fully_identify(void)
+{
+	return at91_sys_read(AT91_DBGU_CIDR);
+}
+
+#define ARCH_EXID_AT91SAM9M11	0x00000001
+#define ARCH_EXID_AT91SAM9M10	0x00000002
+#define ARCH_EXID_AT91SAM9G45	0x00000004
+
+static inline unsigned long at91_exid_identify(void)
+{
+	return at91_sys_read(AT91_DBGU_EXID);
+}
+
+
+#define ARCH_FAMILY_AT91X92	0x09200000
+#define ARCH_FAMILY_AT91SAM9	0x01900000
+#define ARCH_FAMILY_AT91SAM9XE	0x02900000
+
+static inline unsigned long at91_arch_identify(void)
+{
+	return (at91_sys_read(AT91_DBGU_CIDR) & AT91_CIDR_ARCH);
+}
+
+#ifdef CONFIG_ARCH_AT91CAP9
+#include <mach/at91_pmc.h>
+
+#define ARCH_REVISION_CAP9_B	0x399
+#define ARCH_REVISION_CAP9_C	0x601
+
+static inline unsigned long at91cap9_rev_identify(void)
+{
+	return (at91_sys_read(AT91_PMC_VER));
+}
+#endif
+
+#ifdef CONFIG_ARCH_AT91RM9200
+#define cpu_is_at91rm9200()	(at91_cpu_identify() == ARCH_ID_AT91RM9200)
+#else
+#define cpu_is_at91rm9200()	(0)
+#endif
+
+#ifdef CONFIG_ARCH_AT91SAM9260
+#define cpu_is_at91sam9xe()	(at91_arch_identify() == ARCH_FAMILY_AT91SAM9XE)
+#define cpu_is_at91sam9260()	((at91_cpu_identify() == ARCH_ID_AT91SAM9260) || cpu_is_at91sam9xe())
+#else
+#define cpu_is_at91sam9xe()	(0)
+#define cpu_is_at91sam9260()	(0)
+#endif
+
+#ifdef CONFIG_ARCH_AT91SAM9G20
+#define cpu_is_at91sam9g20()	(at91_cpu_identify() == ARCH_ID_AT91SAM9G20)
+#else
+#define cpu_is_at91sam9g20()	(0)
+#endif
+
+#ifdef CONFIG_ARCH_AT91SAM9261
+#define cpu_is_at91sam9261()	(at91_cpu_identify() == ARCH_ID_AT91SAM9261)
+#else
+#define cpu_is_at91sam9261()	(0)
+#endif
+
+#ifdef CONFIG_ARCH_AT91SAM9G10
+#define cpu_is_at91sam9g10()	((at91_cpu_identify() & ~AT91_CIDR_EXT)	== ARCH_ID_AT91SAM9G10)
+#else
+#define cpu_is_at91sam9g10()	(0)
+#endif
+
+#ifdef CONFIG_ARCH_AT91SAM9263
+#define cpu_is_at91sam9263()	(at91_cpu_identify() == ARCH_ID_AT91SAM9263)
+#else
+#define cpu_is_at91sam9263()	(0)
+#endif
+
+#ifdef CONFIG_ARCH_AT91SAM9RL
+#define cpu_is_at91sam9rl()	(at91_cpu_identify() == ARCH_ID_AT91SAM9RL64)
+#else
+#define cpu_is_at91sam9rl()	(0)
+#endif
+
+#ifdef CONFIG_ARCH_AT91SAM9G45
+#define cpu_is_at91sam9g45()	(at91_cpu_identify() == ARCH_ID_AT91SAM9G45)
+#define cpu_is_at91sam9g45es()	(at91_cpu_fully_identify() == ARCH_ID_AT91SAM9G45ES)
+#else
+#define cpu_is_at91sam9g45()	(0)
+#define cpu_is_at91sam9g45es()	(0)
+#endif
+
+#ifdef CONFIG_ARCH_AT91CAP9
+#define cpu_is_at91cap9()	(at91_cpu_identify() == ARCH_ID_AT91CAP9)
+#define cpu_is_at91cap9_revB()	(at91cap9_rev_identify() == ARCH_REVISION_CAP9_B)
+#define cpu_is_at91cap9_revC()	(at91cap9_rev_identify() == ARCH_REVISION_CAP9_C)
+#else
+#define cpu_is_at91cap9()	(0)
+#define cpu_is_at91cap9_revB()	(0)
+#define cpu_is_at91cap9_revC()	(0)
+#endif
+
+#ifdef CONFIG_ARCH_AT572D940HF
+#define cpu_is_at572d940hf() (at91_cpu_identify() == ARCH_ID_AT572D940HF)
+#else
+#define cpu_is_at572d940hf() (0)
+#endif
+
+/*
+ * Since this is ARM, we will never run on any AVR32 CPU. But these
+ * definitions may reduce clutter in common drivers.
+ */
+#define cpu_is_at32ap7000()	(0)
+
+#endif
diff --git a/arch/arm/mach-at91/include/mach/gpio.h b/arch/arm/mach-at91/include/mach/gpio.h
index 76d53ba..7e1a9a8 100644
--- a/arch/arm/mach-at91/include/mach/gpio.h
+++ b/arch/arm/mach-at91/include/mach/gpio.h
@@ -241,6 +241,7 @@ struct at91_gpio_bank {
 	struct at91_gpio_bank *next;	/* bank sharing same IRQ/clock/... */
 	unsigned short id;		/* peripheral ID */
 	unsigned long offset;		/* offset from system peripheral base */
+	struct clk *clock;
 };
 
 extern int at91_gpio_init(struct at91_gpio_bank *data, int nr_banks);
diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 4feeed0..6864119 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -48,7 +48,7 @@
 #include <errno.h>
 #include <asm/io.h>
 #include <mach/board.h>
-#include <mach/clk.h>
+#include <linux/clk.h>
 
 #include "macb.h"
 
@@ -412,6 +412,9 @@ static int macb_probe(struct device_d *dev)
 	unsigned long macb_hz;
 	u32 ncfgr;
 	struct at91_ether_platform_data *pdata;
+#if defined(CONFIG_ARCH_AT91)
+	struct clk *pclk;
+#endif
 
 	if (!dev->platform_data) {
 		printf("macb: no platform_data\n");
@@ -450,7 +453,13 @@ static int macb_probe(struct device_d *dev)
 	 * Do some basic initialization so that we at least can talk
 	 * to the PHY
 	 */
+#if defined(CONFIG_ARCH_AT91)
+	pclk = clk_get(dev, "macb_clk");
+	clk_enable(pclk);
+	macb_hz = clk_get_rate(pclk);
+#else
 	macb_hz = get_macb_pclk_rate(0);
+#endif
 	if (macb_hz < 20000000)
 		ncfgr = MACB_BF(CLK, MACB_CLK_DIV8);
 	else if (macb_hz < 40000000)
diff --git a/drivers/serial/atmel.c b/drivers/serial/atmel.c
index e9e8116..b99ec4d 100644
--- a/drivers/serial/atmel.c
+++ b/drivers/serial/atmel.c
@@ -22,7 +22,7 @@
 #include <init.h>
 #include <malloc.h>
 #include <asm/io.h>
-#include <mach/clk.h>
+#include <linux/clk.h>
 
 /* USART3 register offsets */
 #define USART3_CR				0x0000
@@ -309,6 +309,21 @@
 		    << USART3_##name##_OFFSET))		\
 	 | USART3_BF(name,value))
 
+/*
+ * We wrap our port structure around the generic console_device.
+ */
+struct atmel_uart_port {
+	struct console_device	uart;		/* uart */
+	struct clk		*clk;		/* uart clock */
+	u32			uartclk;
+};
+
+static inline struct atmel_uart_port *
+to_atmel_uart_port(struct console_device *uart)
+{
+	return container_of(uart, struct atmel_uart_port, uart);
+}
+
 static void atmel_serial_putc(struct console_device *cdev, char c)
 {
 	struct device_d *dev = cdev->dev;
@@ -336,16 +351,15 @@ static int atmel_serial_getc(struct console_device *cdev)
 static int atmel_serial_setbaudrate(struct console_device *cdev, int baudrate)
 {
 	struct device_d *dev = cdev->dev;
+	struct atmel_uart_port *uart = to_atmel_uart_port(cdev);
 	unsigned long divisor;
-	unsigned long usart_hz;
 
 	/*
 	 *              Master Clock
 	 * Baud Rate = --------------
 	 *                16 * CD
 	 */
-	usart_hz = get_usart_clk_rate(0);
-	divisor = (usart_hz / 16 + baudrate / 2) / baudrate;
+	divisor = (uart->uartclk / 16 + baudrate / 2) / baudrate;
 	writel(USART3_BF(CD, divisor), dev->map_base + USART3_BRGR);
 
 	return 0;
@@ -359,6 +373,11 @@ static int atmel_serial_setbaudrate(struct console_device *cdev, int baudrate)
 static int atmel_serial_init_port(struct console_device *cdev)
 {
 	struct device_d *dev = cdev->dev;
+	struct atmel_uart_port *uart = to_atmel_uart_port(cdev);
+
+	uart->clk = clk_get(dev, "usart");
+	clk_enable(uart->clk);
+	uart->uartclk = clk_get_rate(uart->clk);
 
 	writel(USART3_BIT(RSTRX) | USART3_BIT(RSTTX), dev->map_base + USART3_CR);
 
@@ -376,9 +395,12 @@ static int atmel_serial_init_port(struct console_device *cdev)
 
 static int atmel_serial_probe(struct device_d *dev)
 {
+	struct atmel_uart_port *uart;
 	struct console_device *cdev;
 
-	cdev = malloc(sizeof(struct console_device));
+	uart = malloc(sizeof(struct atmel_uart_port));
+
+	cdev = &uart->uart;
 	dev->type_data = cdev;
 	cdev->dev = dev;
 	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
