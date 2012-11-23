Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo3.mail-out.ovh.net ([178.32.98.231]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tbvj5-0007Jh-TX
 for barebox@lists.infradead.org; Fri, 23 Nov 2012 16:03:42 +0000
Received: from mail607.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 413BDFF9902
 for <barebox@lists.infradead.org>; Fri, 23 Nov 2012 17:14:40 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 23 Nov 2012 17:01:34 +0100
Message-Id: <1353686495-31912-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20121123155945.GW8327@game.jcrosoft.org>
References: <20121123155945.GW8327@game.jcrosoft.org>
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
Subject: [PATCH 1/2] arm: at91: add at91sam9n12 support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/Kconfig                         |    6 +
 arch/arm/mach-at91/Makefile                        |    1 +
 arch/arm/mach-at91/at91sam9n12.c                   |  233 ++++++++++++
 arch/arm/mach-at91/at91sam9n12_devices.c           |  374 ++++++++++++++++++++
 arch/arm/mach-at91/clock.c                         |   15 +-
 arch/arm/mach-at91/gpio.c                          |    2 +-
 arch/arm/mach-at91/include/mach/at91sam9n12.h      |  166 +++++++++
 .../mach-at91/include/mach/at91sam9n12_matrix.h    |   98 +++++
 arch/arm/mach-at91/include/mach/board.h            |    1 +
 arch/arm/mach-at91/include/mach/cpu.h              |    7 +
 arch/arm/mach-at91/include/mach/hardware.h         |    2 +
 11 files changed, 899 insertions(+), 6 deletions(-)
 create mode 100644 arch/arm/mach-at91/at91sam9n12.c
 create mode 100644 arch/arm/mach-at91/at91sam9n12_devices.c
 create mode 100644 arch/arm/mach-at91/include/mach/at91sam9n12.h
 create mode 100644 arch/arm/mach-at91/include/mach/at91sam9n12_matrix.h

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 3a985f7..e7e1c84 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -92,6 +92,11 @@ config ARCH_AT91SAM9X5
 	select HAS_MACB
 	select AT91SAM9G45_RESET
 
+config ARCH_AT91SAM9N12
+	bool "AT91SAM9N12"
+	select CPU_ARM926T
+	select AT91SAM9G45_RESET
+
 endchoice
 
 config ARCH_BAREBOX_MAX_BARE_INIT_SIZE
@@ -103,6 +108,7 @@ config ARCH_BAREBOX_MAX_BARE_INIT_SIZE
 	default 0x3000 if ARCH_AT91SAM9G10
 	default 0xF000 if ARCH_AT91SAM9G45
 	default 0x6000 if ARCH_AT91SAM9X5
+	default 0x6000 if ARCH_AT91SAM9N12
 	default 0xffffffff
 
 config SUPPORT_CALAO_DAB_MMX
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 3ade725..7a1e506 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -18,3 +18,4 @@ obj-$(CONFIG_ARCH_AT91SAM9G10) += at91sam9261.o at91sam926x_time.o at91sam9261_d
 obj-$(CONFIG_ARCH_AT91SAM9G20) += at91sam9260.o at91sam926x_time.o at91sam9260_devices.o sam9_smc.o
 obj-$(CONFIG_ARCH_AT91SAM9G45) += at91sam9g45.o at91sam926x_time.o at91sam9g45_devices.o sam9_smc.o
 obj-$(CONFIG_ARCH_AT91SAM9X5)	+= at91sam9x5.o at91sam926x_time.o at91sam9x5_devices.o sam9_smc.o
+obj-$(CONFIG_ARCH_AT91SAM9N12)	+= at91sam9n12.o at91sam926x_time.o at91sam9n12_devices.o sam9_smc.o
diff --git a/arch/arm/mach-at91/at91sam9n12.c b/arch/arm/mach-at91/at91sam9n12.c
new file mode 100644
index 0000000..b74a72a
--- /dev/null
+++ b/arch/arm/mach-at91/at91sam9n12.c
@@ -0,0 +1,233 @@
+#include <common.h>
+#include <gpio.h>
+#include <init.h>
+#include <asm/hardware.h>
+#include <mach/at91_pmc.h>
+#include <mach/io.h>
+#include <mach/cpu.h>
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
+static struct clk pioAB_clk = {
+	.name		= "pioAB_clk",
+	.pmc_mask	= 1 << AT91SAM9N12_ID_PIOAB,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk pioCD_clk = {
+	.name		= "pioCD_clk",
+	.pmc_mask	= 1 << AT91SAM9N12_ID_PIOCD,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk usart0_clk = {
+	.name		= "usart0_clk",
+	.pmc_mask	= 1 << AT91SAM9N12_ID_USART0,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk usart1_clk = {
+	.name		= "usart1_clk",
+	.pmc_mask	= 1 << AT91SAM9N12_ID_USART1,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk usart2_clk = {
+	.name		= "usart2_clk",
+	.pmc_mask	= 1 << AT91SAM9N12_ID_USART2,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk usart3_clk = {
+	.name		= "usart3_clk",
+	.pmc_mask	= 1 << AT91SAM9N12_ID_USART3,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk twi0_clk = {
+	.name		= "twi0_clk",
+	.pmc_mask	= 1 << AT91SAM9N12_ID_TWI0,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk twi1_clk = {
+	.name		= "twi1_clk",
+	.pmc_mask	= 1 << AT91SAM9N12_ID_TWI1,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk mmc_clk = {
+	.name		= "mci_clk",
+	.pmc_mask	= 1 << AT91SAM9N12_ID_MCI,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk spi0_clk = {
+	.name		= "spi0_clk",
+	.pmc_mask	= 1 << AT91SAM9N12_ID_SPI0,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk spi1_clk = {
+	.name		= "spi1_clk",
+	.pmc_mask	= 1 << AT91SAM9N12_ID_SPI1,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk uart0_clk = {
+	.name		= "uart0_clk",
+	.pmc_mask	= 1 << AT91SAM9N12_ID_UART0,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk uart1_clk = {
+	.name		= "uart1_clk",
+	.pmc_mask	= 1 << AT91SAM9N12_ID_UART1,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk tcb0_clk = {
+	.name		= "tcb0_clk",
+	.pmc_mask	= 1 << AT91SAM9N12_ID_TCB,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk pwm_clk = {
+	.name		= "pwm_clk",
+	.pmc_mask	= 1 << AT91SAM9N12_ID_PWM,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk adc_clk = {
+	.name		= "adc_clk",
+	.pmc_mask	= 1 << AT91SAM9N12_ID_ADC,
+	.type	= CLK_TYPE_PERIPHERAL,
+};
+static struct clk dma_clk = {
+	.name		= "dma_clk",
+	.pmc_mask	= 1 << AT91SAM9N12_ID_DMA,
+	.type	= CLK_TYPE_PERIPHERAL,
+};
+static struct clk uhpfs_clk = {
+	.name		= "uhpfs_clk",
+	.pmc_mask	= 1 << AT91SAM9N12_ID_UHPFS,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk udc_clk = {
+	.name		= "udc_clk",
+	.pmc_mask	= 1 << AT91SAM9N12_ID_UDPFS,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk lcdc_clk = {
+	.name		= "lcdc_clk",
+	.pmc_mask	= 1 << AT91SAM9N12_ID_LCDC,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk ssc_clk = {
+	.name		= "ssc_clk",
+	.pmc_mask	= 1 << AT91SAM9N12_ID_SSC,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+
+static struct clk *periph_clocks[] __initdata = {
+	&pioAB_clk,
+	&pioCD_clk,
+	&usart0_clk,
+	&usart1_clk,
+	&usart2_clk,
+	&usart3_clk,
+	&twi0_clk,
+	&twi1_clk,
+	&mmc_clk,
+	&spi0_clk,
+	&spi1_clk,
+	&uart0_clk,
+	&uart1_clk,
+	&tcb0_clk,
+	&pwm_clk,
+	&adc_clk,
+	&dma_clk,
+	&lcdc_clk,
+	&uhpfs_clk,
+	&udc_clk,
+	&ssc_clk,
+};
+
+static struct clk_lookup periph_clocks_lookups[] = {
+	CLKDEV_CON_ID("ohci_clk", &uhpfs_clk),
+	CLKDEV_CON_DEV_ID("spi_clk", "atmel_spi0", &spi0_clk),
+	CLKDEV_CON_DEV_ID("spi_clk", "atmel_spi1", &spi1_clk),
+};
+
+static struct clk_lookup usart_clocks_lookups[] = {
+	CLKDEV_CON_DEV_ID("usart", "atmel_usart0", &mck),
+	CLKDEV_CON_DEV_ID("usart", "atmel_usart1", &usart0_clk),
+	CLKDEV_CON_DEV_ID("usart", "atmel_usart2", &usart1_clk),
+	CLKDEV_CON_DEV_ID("usart", "atmel_usart3", &usart2_clk),
+	CLKDEV_CON_DEV_ID("usart", "atmel_usart4", &usart3_clk),
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
+static void __init at91sam9n12_register_clocks(void)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(periph_clocks); i++)
+		clk_register(periph_clocks[i]);
+
+	clk_register(&pck0);
+	clk_register(&pck1);
+
+	clkdev_add_table(periph_clocks_lookups,
+			 ARRAY_SIZE(periph_clocks_lookups));
+	clkdev_add_table(usart_clocks_lookups,
+			 ARRAY_SIZE(usart_clocks_lookups));
+
+}
+
+/* --------------------------------------------------------------------
+ *  GPIO
+ * -------------------------------------------------------------------- */
+
+static struct at91_gpio_bank at91sam9n12_gpio[] = {
+	{
+		.regbase	= IOMEM(AT91_BASE_PIOA),
+		.clock		= &pioAB_clk,
+	}, {
+		.regbase	= IOMEM(AT91_BASE_PIOB),
+		.clock		= &pioAB_clk,
+	}, {
+		.regbase	= IOMEM(AT91_BASE_PIOC),
+		.clock		= &pioCD_clk,
+	}, {
+		.regbase	= IOMEM(AT91_BASE_PIOD),
+		.clock		= &pioCD_clk,
+	}
+};
+
+/* --------------------------------------------------------------------
+ *  AT91SAM9N12 processor initialization
+ * -------------------------------------------------------------------- */
+
+static int at91sam9n12_initialize(void)
+{
+	/* Init clock subsystem */
+	at91_clock_init(AT91_MAIN_CLOCK);
+
+	/* Register the processor-specific clocks */
+	at91sam9n12_register_clocks();
+
+	/* Register GPIO subsystem */
+	at91_gpio_init(at91sam9n12_gpio, 4);
+	return 0;
+}
+core_initcall(at91sam9n12_initialize);
diff --git a/arch/arm/mach-at91/at91sam9n12_devices.c b/arch/arm/mach-at91/at91sam9n12_devices.c
new file mode 100644
index 0000000..33baf41
--- /dev/null
+++ b/arch/arm/mach-at91/at91sam9n12_devices.c
@@ -0,0 +1,374 @@
+/*
+ *  On-Chip devices setup code for the AT91SAM9x5 family
+ *
+ *  Copyright (C) 2010 Atmel Corporation.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ */
+#include <common.h>
+#include <init.h>
+#include <sizes.h>
+#include <asm/armlinux.h>
+#include <asm/hardware.h>
+#include <mach/board.h>
+#include <mach/at91_pmc.h>
+#include <mach/at91sam9n12_matrix.h>
+#include <mach/gpio.h>
+#include <mach/io.h>
+#include <mach/cpu.h>
+#include <i2c/i2c-gpio.h>
+
+#include "generic.h"
+
+void at91_add_device_sdram(u32 size)
+{
+	arm_add_mem_device("ram0", AT91_CHIPSELECT_1, size);
+	add_mem_device("sram0", AT91SAM9N12_SRAM_BASE,
+			AT91SAM9N12_SRAM_SIZE, IORESOURCE_MEM_WRITEABLE);
+}
+
+/* --------------------------------------------------------------------
+ *  USB Host (OHCI)
+ * -------------------------------------------------------------------- */
+
+#if defined(CONFIG_USB_OHCI)
+void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data)
+{
+	int i;
+
+	if (!data)
+		return;
+
+	/* Enable VBus control for UHP ports */
+	for (i = 0; i < data->ports; i++) {
+		if (data->vbus_pin[i])
+			at91_set_gpio_output(data->vbus_pin[i], 0);
+	}
+
+	add_generic_device("at91_ohci", DEVICE_ID_DYNAMIC, NULL, AT91SAM9N12_OHCI_BASE,
+			SZ_1M, IORESOURCE_MEM, data);
+}
+#else
+void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data) {}
+#endif
+
+/* --------------------------------------------------------------------
+ *  USB Device (Gadget)
+ * -------------------------------------------------------------------- */
+
+#ifdef CONFIG_USB_GADGET_DRIVER_AT91
+void __init at91_add_device_udc(struct at91_udc_data *data)
+{
+	if (data->vbus_pin > 0) {
+		at91_set_gpio_input(data->vbus_pin, 0);
+		at91_set_deglitch(data->vbus_pin, 1);
+	}
+
+	add_generic_device("at91_udc", DEVICE_ID_SINGLE, NULL, AT91SAM9N12_BASE_UDPFS,
+			SZ_16K,  IORESOURCE_MEM, data);
+}
+#else
+void __init at91_add_device_udc(struct at91_udc_data *data) {}
+#endif
+
+#if defined(CONFIG_MCI_ATMEL)
+/* Consider only one slot : slot 0 */
+void __init at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
+{
+	if (!data)
+		return;
+
+	/* Must have at least one usable slot */
+	if (!data->bus_width)
+		return;
+
+	/* input/irq */
+	if (data->detect_pin) {
+		at91_set_gpio_input(data->detect_pin, 1);
+		at91_set_deglitch(data->detect_pin, 1);
+	}
+	if (data->wp_pin)
+		at91_set_gpio_input(data->wp_pin, 1);
+
+	/* CLK */
+	at91_set_A_periph(AT91_PIN_PA17, 0);
+
+	/* CMD */
+	at91_set_A_periph(AT91_PIN_PA16, 1);
+
+	/* DAT0, maybe DAT1..DAT3 */
+	at91_set_A_periph(AT91_PIN_PA15, 1);
+	if (data->bus_width == 4) {
+		at91_set_A_periph(AT91_PIN_PA18, 1);
+		at91_set_A_periph(AT91_PIN_PA19, 1);
+		at91_set_A_periph(AT91_PIN_PA20, 1);
+	}
+
+	add_generic_device("atmel_mci", DEVICE_ID_SINGLE, NULL, AT91SAM9N12_BASE_MCI, SZ_16K,
+			   IORESOURCE_MEM, data);
+}
+#else
+void __init at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data) {}
+#endif
+
+/* --------------------------------------------------------------------
+ *  NAND / SmartMedia
+ * -------------------------------------------------------------------- */
+
+#if defined(CONFIG_NAND_ATMEL)
+static struct resource nand_resources[] = {
+	[0] = {
+		.start	= AT91_CHIPSELECT_3,
+		.end	= AT91_CHIPSELECT_3 + SZ_256M - 1,
+		.flags	= IORESOURCE_MEM,
+	},
+	[1] = {
+		.start	= AT91_BASE_SYS + AT91_PMECC,
+		.end	= AT91_BASE_SYS + AT91_PMECC + 0x600 - 1,
+		.flags	= IORESOURCE_MEM,
+	},
+	[2] = {
+		.start	= AT91_BASE_SYS + AT91_PMERRLOC,
+		.end	= AT91_BASE_SYS + AT91_PMERRLOC + 0x200 - 1,
+		.flags	= IORESOURCE_MEM,
+	},
+	[3] = {
+		.start	= AT91SAM9N12_ROM_BASE,
+		.end	= AT91SAM9N12_ROM_BASE + AT91SAM9N12_ROM_SIZE - 1,
+		.flags	= IORESOURCE_MEM,
+	},
+};
+
+void __init at91_add_device_nand(struct atmel_nand_data *data)
+{
+	unsigned long csa;
+
+	if (!data)
+		return;
+
+	data->pmecc_lookup_table_offset = 0x8000;
+
+	csa = at91_sys_read(AT91_MATRIX_EBICSA);
+
+	/* Assign CS3 to NAND/SmartMedia Interface */
+	csa |= AT91_MATRIX_EBI_CS3A_SMC_NANDFLASH;
+	/* Configure databus */
+	if (!data->bus_on_d0)
+		csa |= AT91_MATRIX_NFD0_ON_D16;
+	else
+		csa &= ~AT91_MATRIX_NFD0_ON_D16;
+	/* Configure IO drive */
+	csa |= AT91_MATRIX_EBI_HIGH_DRIVE;
+
+	at91_sys_write(AT91_MATRIX_EBICSA, csa);
+
+	/* enable pin */
+	if (data->enable_pin)
+		at91_set_gpio_output(data->enable_pin, 1);
+
+	/* ready/busy pin */
+	if (data->rdy_pin)
+		at91_set_gpio_input(data->rdy_pin, 1);
+
+	/* card detect pin */
+	if (data->det_pin)
+		at91_set_gpio_input(data->det_pin, 1);
+
+	/* configure NANDOE */
+	at91_set_A_periph(AT91_PIN_PD0, 1);
+	/* configure NANDWE */
+	at91_set_A_periph(AT91_PIN_PD1, 1);
+	/* configure ALE */
+	at91_set_A_periph(AT91_PIN_PD2, 1);
+	/* configure CLE */
+	at91_set_A_periph(AT91_PIN_PD3, 1);
+
+	/* configure multiplexed pins for D16~D31 */
+	if (!data->bus_on_d0) {
+		at91_set_A_periph(AT91_PIN_PD6, 1);
+		at91_set_A_periph(AT91_PIN_PD7, 1);
+		at91_set_A_periph(AT91_PIN_PD8, 1);
+		at91_set_A_periph(AT91_PIN_PD9, 1);
+		at91_set_A_periph(AT91_PIN_PD10, 1);
+		at91_set_A_periph(AT91_PIN_PD11, 1);
+		at91_set_A_periph(AT91_PIN_PD12, 1);
+		at91_set_A_periph(AT91_PIN_PD13, 1);
+
+		if (data->bus_width_16) {
+			at91_set_A_periph(AT91_PIN_PD14, 1);
+			at91_set_A_periph(AT91_PIN_PD15, 1);
+			at91_set_A_periph(AT91_PIN_PD16, 1);
+			at91_set_A_periph(AT91_PIN_PD17, 1);
+			at91_set_A_periph(AT91_PIN_PD18, 1);
+			at91_set_A_periph(AT91_PIN_PD19, 1);
+			at91_set_A_periph(AT91_PIN_PD20, 1);
+			at91_set_A_periph(AT91_PIN_PD21, 1);
+		}
+
+	}
+
+	add_generic_device_res("atmel_nand", DEVICE_ID_SINGLE, nand_resources,
+			       ARRAY_SIZE(nand_resources), data);
+}
+#else
+void __init at91_add_device_nand(struct atmel_nand_data *data) {}
+#endif
+
+#if defined(CONFIG_I2C_GPIO)
+static struct i2c_gpio_platform_data pdata_i2c0 = {
+	.sda_pin		= AT91_PIN_PA30,
+	.sda_is_open_drain	= 1,
+	.scl_pin		= AT91_PIN_PA31,
+	.scl_is_open_drain	= 1,
+	.udelay			= 5,		/* ~100 kHz */
+};
+
+void at91_add_device_i2c(short i2c_id, struct i2c_board_info *devices, int nr_devices)
+{
+	struct i2c_gpio_platform_data *pdata = &pdata_i2c0;
+
+	i2c_register_board_info(0, devices, nr_devices);
+
+	at91_set_GPIO_periph(pdata->sda_pin, 1);		/* TWD (SDA) */
+	at91_set_multi_drive(pdata->sda_pin, 1);
+
+	at91_set_GPIO_periph(pdata->scl_pin, 1);		/* TWCK (SCL) */
+	at91_set_multi_drive(pdata->scl_pin, 1);
+
+	add_generic_device_res("i2c-gpio", 0, NULL, 0, pdata);
+}
+#else
+void at91_add_device_i2c(short i2c_id, struct i2c_board_info *devices, int nr_devices) {}
+#endif
+
+/* --------------------------------------------------------------------
+ *  SPI
+ * -------------------------------------------------------------------- */
+
+#if defined(CONFIG_DRIVER_SPI_ATMEL)
+static unsigned spi0_standard_cs[4] = { AT91_PIN_PA14, AT91_PIN_PA7, AT91_PIN_PA1, AT91_PIN_PB3 };
+
+static unsigned spi1_standard_cs[4] = { AT91_PIN_PA8, AT91_PIN_PA0, AT91_PIN_PA31, AT91_PIN_PA30 };
+
+static struct at91_spi_platform_data spi_pdata[] = {
+	[0] = {
+		.chipselect = spi0_standard_cs,
+		.num_chipselect = ARRAY_SIZE(spi0_standard_cs),
+	},
+	[1] = {
+		.chipselect = spi1_standard_cs,
+		.num_chipselect = ARRAY_SIZE(spi1_standard_cs),
+	},
+};
+
+void at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata)
+{
+	int i;
+	int cs_pin;
+	resource_size_t start = ~0;
+
+	BUG_ON(spi_id > 1);
+
+	if (!pdata)
+		pdata = &spi_pdata[spi_id];
+
+	for (i = 0; i < pdata->num_chipselect; i++) {
+		cs_pin = pdata->chipselect[i];
+
+		/* enable chip-select pin */
+		if (gpio_is_valid(cs_pin))
+			at91_set_gpio_output(cs_pin, 1);
+	}
+
+	/* Configure SPI bus(es) */
+	switch (spi_id) {
+	case 0:
+		start = AT91SAM9N12_BASE_SPI0;
+		at91_set_A_periph(AT91_PIN_PA11, 0);	/* SPI0_MISO */
+		at91_set_A_periph(AT91_PIN_PA12, 0);	/* SPI0_MOSI */
+		at91_set_A_periph(AT91_PIN_PA13, 0);	/* SPI0_SPCK */
+		break;
+	case 1:
+		start = AT91SAM9N12_BASE_SPI1;
+		at91_set_B_periph(AT91_PIN_PA21, 0);	/* SPI1_MISO */
+		at91_set_B_periph(AT91_PIN_PA22, 0);	/* SPI1_MOSI */
+		at91_set_B_periph(AT91_PIN_PA23, 0);	/* SPI1_SPCK */
+		break;
+	}
+
+	add_generic_device("atmel_spi", spi_id, NULL, start, SZ_16K,
+			   IORESOURCE_MEM, pdata);
+}
+#else
+void at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata) {}
+#endif
+
+/* --------------------------------------------------------------------
+ *  UART
+ * -------------------------------------------------------------------- */
+
+#if defined(CONFIG_DRIVER_SERIAL_ATMEL)
+resource_size_t __init at91_configure_dbgu(void)
+{
+	at91_set_A_periph(AT91_PIN_PA9, 0);		/* DRXD */
+	at91_set_A_periph(AT91_PIN_PA10, 1);		/* DTXD */
+
+	return AT91_BASE_SYS + AT91_DBGU;
+}
+
+resource_size_t __init at91_configure_usart0(unsigned pins)
+{
+	at91_set_A_periph(AT91_PIN_PA0, 1);		/* TXD0 */
+	at91_set_A_periph(AT91_PIN_PA1, 0);		/* RXD0 */
+
+	if (pins & ATMEL_UART_RTS)
+		at91_set_A_periph(AT91_PIN_PA2, 0);	/* RTS0 */
+	if (pins & ATMEL_UART_CTS)
+		at91_set_A_periph(AT91_PIN_PA3, 0);	/* CTS0 */
+
+	return AT91SAM9N12_BASE_USART0;
+}
+
+resource_size_t __init at91_configure_usart1(unsigned pins)
+{
+	at91_set_A_periph(AT91_PIN_PA5, 1);		/* TXD1 */
+	at91_set_A_periph(AT91_PIN_PA6, 0);		/* RXD1 */
+
+	if (pins & ATMEL_UART_RTS)
+		at91_set_C_periph(AT91_PIN_PC27, 0);	/* RTS1 */
+	if (pins & ATMEL_UART_CTS)
+		at91_set_C_periph(AT91_PIN_PC28, 0);	/* CTS1 */
+
+	return AT91SAM9N12_BASE_USART1;
+}
+
+resource_size_t __init at91_configure_usart2(unsigned pins)
+{
+	at91_set_A_periph(AT91_PIN_PA7, 1);		/* TXD2 */
+	at91_set_A_periph(AT91_PIN_PA8, 0);		/* RXD2 */
+
+	if (pins & ATMEL_UART_RTS)
+		at91_set_B_periph(AT91_PIN_PB0, 0);	/* RTS2 */
+	if (pins & ATMEL_UART_CTS)
+		at91_set_B_periph(AT91_PIN_PB1, 0);	/* CTS2 */
+
+	return AT91SAM9N12_BASE_USART2;
+}
+
+resource_size_t __init at91_configure_usart3(unsigned pins)
+{
+	at91_set_B_periph(AT91_PIN_PC22, 1);		/* TXD3 */
+	at91_set_B_periph(AT91_PIN_PC23, 0);		/* RXD3 */
+
+	if (pins & ATMEL_UART_RTS)
+		at91_set_B_periph(AT91_PIN_PC24, 0);	/* RTS3 */
+	if (pins & ATMEL_UART_CTS)
+		at91_set_B_periph(AT91_PIN_PC25, 0);	/* CTS3 */
+
+	return AT91SAM9N12_BASE_USART3;
+}
+#endif
diff --git a/arch/arm/mach-at91/clock.c b/arch/arm/mach-at91/clock.c
index fd9ba46..e911270 100644
--- a/arch/arm/mach-at91/clock.c
+++ b/arch/arm/mach-at91/clock.c
@@ -46,7 +46,8 @@
 
 #define cpu_has_800M_plla()	(  cpu_is_at91sam9g20() \
 				|| cpu_is_at91sam9g45() \
-				|| cpu_is_at91sam9x5())
+				|| cpu_is_at91sam9x5() \
+				|| cpu_is_at91sam9n12())
 
 #define cpu_has_300M_plla()	(cpu_is_at91sam9g10())
 
@@ -58,7 +59,8 @@
 
 #define cpu_has_pllb()		(!(cpu_is_at91sam9rl() \
 				|| cpu_is_at91sam9g45() \
-				|| cpu_is_at91sam9x5()))
+				|| cpu_is_at91sam9x5() \
+				|| cpu_is_at91sam9n12()))
 
 #define cpu_has_upll()		(cpu_is_at91sam9g45() \
 				|| cpu_is_at91sam9x5())
@@ -72,12 +74,15 @@
 				|| cpu_is_at91sam9x5()))
 
 #define cpu_has_plladiv2()	(cpu_is_at91sam9g45() \
-				|| cpu_is_at91sam9x5())
+				|| cpu_is_at91sam9x5() \
+				|| cpu_is_at91sam9n12())
 
 #define cpu_has_mdiv3()		(cpu_is_at91sam9g45() \
-				|| cpu_is_at91sam9x5())
+				|| cpu_is_at91sam9x5() \
+				|| cpu_is_at91sam9n12())
 
-#define cpu_has_alt_prescaler()	(cpu_is_at91sam9x5())
+#define cpu_has_alt_prescaler()	(cpu_is_at91sam9x5() \
+				|| cpu_is_at91sam9n12())
 
 static LIST_HEAD(clocks);
 
diff --git a/arch/arm/mach-at91/gpio.c b/arch/arm/mach-at91/gpio.c
index c303326..c35f00e 100644
--- a/arch/arm/mach-at91/gpio.c
+++ b/arch/arm/mach-at91/gpio.c
@@ -364,7 +364,7 @@ int at91_gpio_init(struct at91_gpio_bank *data, int nr_banks)
 		clk_enable(data->clock);
 	}
 
-	cpu_has_pio3 = cpu_is_at91sam9x5();
+	cpu_has_pio3 = cpu_is_at91sam9x5() || cpu_is_at91sam9n12();
 
 	return 0;
 }
diff --git a/arch/arm/mach-at91/include/mach/at91sam9n12.h b/arch/arm/mach-at91/include/mach/at91sam9n12.h
new file mode 100644
index 0000000..dcbdb1b
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/at91sam9n12.h
@@ -0,0 +1,166 @@
+/*
+ * Chip-specific header file for the AT91SAM9N12 SoC
+ *
+ *  Copyright (C) 2011 Atmel Corporation
+ *
+ * Common definitions.
+ * Based on AT91SAM9N12 preliminary datasheet
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
+#ifndef __MACH_AT91SAM9N12_H_
+#define __MACH_AT91SAM9N12_H_
+
+/*
+ * Peripheral identifiers/interrupts.
+ */
+#define AT91_ID_FIQ		0	/* Advanced Interrupt Controller (FIQ) */
+#define AT91_ID_SYS		1	/* System Controller Interrupt */
+#define AT91SAM9N12_ID_PIOAB	2	/* Parallel I/O Controller A and B */
+#define AT91SAM9N12_ID_PIOCD	3	/* Parallel I/O Controller C and D */
+/* Reserved			4	*/
+#define AT91SAM9N12_ID_USART0	5	/* USART 0 */
+#define AT91SAM9N12_ID_USART1	6	/* USART 1 */
+#define AT91SAM9N12_ID_USART2	7	/* USART 2 */
+#define AT91SAM9N12_ID_USART3	8	/* USART 3 */
+#define AT91SAM9N12_ID_TWI0	9	/* Two-Wire Interface 0 */
+#define AT91SAM9N12_ID_TWI1	10	/* Two-Wire Interface 1 */
+/* Reserved			11	*/
+#define AT91SAM9N12_ID_MCI	12	/* High Speed Multimedia Card Interface 0 */
+#define AT91SAM9N12_ID_SPI0	13	/* Serial Peripheral Interface 0 */
+#define AT91SAM9N12_ID_SPI1	14	/* Serial Peripheral Interface 1 */
+#define AT91SAM9N12_ID_UART0	15	/* UART 0 */
+#define AT91SAM9N12_ID_UART1	16	/* UART 1 */
+#define AT91SAM9N12_ID_TCB	17	/* Timer Counter 0, 1, 2, 3, 4 and 5 */
+#define AT91SAM9N12_ID_PWM	18	/* Pulse Width Modulation Controller */
+#define AT91SAM9N12_ID_ADC	19	/* ADC Controller */
+#define AT91SAM9N12_ID_DMA	20	/* DMA Controller 0 */
+/* Reserved			21	*/
+#define AT91SAM9N12_ID_UHPFS	22	/* USB Host Full Speed */
+#define AT91SAM9N12_ID_UDPFS	23	/* USB Device Full Speed */
+/* Reserved			24	*/
+#define AT91SAM9N12_ID_LCDC	25	/* LCD Controller */
+/* Reserved			26	*/
+/* Reserved			27	*/
+#define AT91SAM9N12_ID_SSC	28	/* Synchronous Serial Controller */
+/* Reserved			29	*/
+#define AT91SAM9N12_ID_TRNG	30	/* True Random Number Generator */
+#define AT91SAM9N12_ID_IRQ0	31	/* Advanced Interrupt Controller */
+
+/*
+ * User Peripheral physical base addresses.
+ */
+#define AT91SAM9N12_BASE_SPI0		0xf0000000
+#define AT91SAM9N12_BASE_SPI1		0xf0004000
+#define AT91SAM9N12_BASE_MCI		0xf0008000
+#define AT91SAM9N12_BASE_SSC		0xf0010000
+#define AT91SAM9N12_BASE_TCB0		0xf8008000
+#define AT91SAM9N12_BASE_TC0		0xf8008000
+#define AT91SAM9N12_BASE_TC1		0xf8008040
+#define AT91SAM9N12_BASE_TC2		0xf8008080
+#define AT91SAM9N12_BASE_TCB1		0xf800c000
+#define AT91SAM9N12_BASE_TC3		0xf800c000
+#define AT91SAM9N12_BASE_TC4		0xf800c040
+#define AT91SAM9N12_BASE_TC5		0xf800c080
+#define AT91SAM9N12_BASE_TWI0		0xf8010000
+#define AT91SAM9N12_BASE_TWI1		0xf8014000
+#define AT91SAM9N12_BASE_USART0		0xf801c000
+#define AT91SAM9N12_BASE_USART1		0xf8020000
+#define AT91SAM9N12_BASE_USART2		0xf8024000
+#define AT91SAM9N12_BASE_USART3		0xf8028000
+#define AT91SAM9N12_BASE_PWMC		0xf8034000
+#define AT91SAM9N12_BASE_LCDC		0xf8038000
+#define AT91SAM9N12_BASE_UDPFS		0xf803c000
+#define AT91SAM9N12_BASE_UART0		0xf8040000
+#define AT91SAM9N12_BASE_UART1		0xf8044000
+#define AT91SAM9N12_BASE_TRNG		0xf8048000
+#define AT91SAM9N12_BASE_ADC		0xf804c000
+#define AT91_BASE_SYS			0xffffc000
+
+/*
+ * System Peripherals (offset from AT91_BASE_SYS)
+ */
+#define AT91_FUSE	(0xffffdc00 - AT91_BASE_SYS)
+#define AT91_MATRIX	(0xffffde00 - AT91_BASE_SYS)
+#define AT91_PMECC	(0xffffe000 - AT91_BASE_SYS)
+#define AT91_PMERRLOC	(0xffffe600 - AT91_BASE_SYS)
+#define AT91_DDRSDRC0	(0xffffe800 - AT91_BASE_SYS)
+#define AT91_SMC	(0xffffea00 - AT91_BASE_SYS)
+#define AT91_DMA	(0xffffec00 - AT91_BASE_SYS)
+#define AT91_AIC	(0xfffff000 - AT91_BASE_SYS)
+#define AT91_DBGU	(0xfffff200 - AT91_BASE_SYS)
+#define AT91_PMC	(0xfffffc00 - AT91_BASE_SYS)
+#define AT91_RSTC	(0xfffffe00 - AT91_BASE_SYS)
+#define AT91_SHDWC	(0xfffffe10 - AT91_BASE_SYS)
+#define AT91_PIT	(0xfffffe30 - AT91_BASE_SYS)
+#define AT91_WDT	(0xfffffe40 - AT91_BASE_SYS)
+#define AT91_GPBR	(0xfffffe60 - AT91_BASE_SYS)
+#define AT91_RTC	(0xfffffeb0 - AT91_BASE_SYS)
+
+#define AT91_BASE_PIOA	0xfffff400
+#define AT91_BASE_PIOB	0xfffff600
+#define AT91_BASE_PIOC	0xfffff800
+#define AT91_BASE_PIOD	0xfffffa00
+
+#define AT91_USART0	AT91SAM9X5_BASE_US0
+#define AT91_USART1	AT91SAM9X5_BASE_US1
+#define AT91_USART2	AT91SAM9X5_BASE_US2
+#define AT91_USART3	AT91SAM9X5_BASE_US3
+#define AT91_NB_USART	5
+
+
+/*
+ * Internal Memory.
+ */
+#define AT91SAM9N12_SRAM_BASE	0x00300000	/* Internal SRAM base address */
+#define AT91SAM9N12_SRAM_SIZE	SZ_32K		/* Internal SRAM size (32Kb) */
+
+#define AT91SAM9N12_ROM_BASE	0x00100000	/* Internal ROM base address */
+#define AT91SAM9N12_ROM_SIZE	SZ_1M		/* Internal ROM size (1Mb) */
+
+#define AT91SAM9N12_SMD_BASE	0x00400000	/* SMD Controller */
+#define AT91SAM9N12_OHCI_BASE	0x00500000	/* USB Host controller (OHCI) */
+
+#define CONFIG_DRAM_BASE	AT91_CHIPSELECT_1
+
+#define CONSISTENT_DMA_SIZE	(14 * SZ_1M)
+
+/*
+ * DMA0 peripheral identifiers
+ * for hardware handshaking interface
+ */
+#define AT_DMA_ID_MCI		0
+#define AT_DMA_ID_SPI0_TX	1
+#define AT_DMA_ID_SPI0_RX	2
+#define AT_DMA_ID_SPI1_TX	3
+#define AT_DMA_ID_SPI1_RX	4
+#define AT_DMA_ID_USART0_TX	5
+#define AT_DMA_ID_USART0_RX	6
+#define AT_DMA_ID_USART1_TX	7
+#define AT_DMA_ID_USART1_RX	8
+#define AT_DMA_ID_USART2_TX	9
+#define AT_DMA_ID_USART2_RX	10
+#define AT_DMA_ID_USART3_TX	11
+#define AT_DMA_ID_USART3_RX	12
+#define AT_DMA_ID_TWI0_TX	13
+#define AT_DMA_ID_TWI0_RX	14
+#define AT_DMA_ID_TWI1_TX	15
+#define AT_DMA_ID_TWI1_RX	16
+#define AT_DMA_ID_UART0_TX	17
+#define AT_DMA_ID_UART0_RX	18
+#define AT_DMA_ID_UART1_TX	19
+#define AT_DMA_ID_UART1_RX	20
+#define AT_DMA_ID_SSC_TX	21
+#define AT_DMA_ID_SSC_RX	22
+#define AT_DMA_ID_ADC_RX	23
+#define AT_DMA_ID_DBGU_TX	24
+#define AT_DMA_ID_DBGU_RX	25
+#define AT_DMA_ID_AES_TX	26
+#define AT_DMA_ID_AES_RX	27
+#define AT_DMA_ID_SHA_RX	28
+
+#endif
diff --git a/arch/arm/mach-at91/include/mach/at91sam9n12_matrix.h b/arch/arm/mach-at91/include/mach/at91sam9n12_matrix.h
new file mode 100644
index 0000000..0e42918
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/at91sam9n12_matrix.h
@@ -0,0 +1,98 @@
+/*
+ * Matrix-Centric header file for the AT91SAM9N12 SoC
+ *
+ *  Copyright (C) 2011 Atmel Corporation
+ *
+ * Memory Controllers (MATRIX, EBI) - System peripherals registers.
+ * Based on AT91SAM9N12 preliminary datasheet.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
+#ifndef _AT91SAM9N12_MATRIX_H_
+#define _AT91SAM9N12_MATRIX_H_
+
+#define AT91_MATRIX_MCFG0	(AT91_MATRIX + 0x00)	/* Master Configuration Register 0 */
+#define AT91_MATRIX_MCFG1	(AT91_MATRIX + 0x04)	/* Master Configuration Register 1 */
+#define AT91_MATRIX_MCFG2	(AT91_MATRIX + 0x08)	/* Master Configuration Register 2 */
+#define AT91_MATRIX_MCFG3	(AT91_MATRIX + 0x0C)	/* Master Configuration Register 3 */
+#define AT91_MATRIX_MCFG4	(AT91_MATRIX + 0x10)	/* Master Configuration Register 4 */
+#define AT91_MATRIX_MCFG5	(AT91_MATRIX + 0x14)	/* Master Configuration Register 5 */
+#define		AT91_MATRIX_ULBT	(7 << 0)	/* Undefined Length Burst Type */
+#define			AT91_MATRIX_ULBT_INFINITE	(0 << 0)
+#define			AT91_MATRIX_ULBT_SINGLE		(1 << 0)
+#define			AT91_MATRIX_ULBT_FOUR		(2 << 0)
+#define			AT91_MATRIX_ULBT_EIGHT		(3 << 0)
+#define			AT91_MATRIX_ULBT_SIXTEEN	(4 << 0)
+#define			AT91_MATRIX_ULBT_THIRTYTWO	(5 << 0)
+#define			AT91_MATRIX_ULBT_SIXTYFOUR	(6 << 0)
+#define			AT91_MATRIX_ULBT_128		(7 << 0)
+
+#define AT91_MATRIX_SCFG0	(AT91_MATRIX + 0x40)	/* Slave Configuration Register 0 */
+#define AT91_MATRIX_SCFG1	(AT91_MATRIX + 0x44)	/* Slave Configuration Register 1 */
+#define AT91_MATRIX_SCFG2	(AT91_MATRIX + 0x48)	/* Slave Configuration Register 2 */
+#define AT91_MATRIX_SCFG3	(AT91_MATRIX + 0x4C)	/* Slave Configuration Register 3 */
+#define AT91_MATRIX_SCFG4	(AT91_MATRIX + 0x50)	/* Slave Configuration Register 4 */
+#define		AT91_MATRIX_SLOT_CYCLE		(0x1ff << 0)	/* Maximum Number of Allowed Cycles for a Burst */
+#define		AT91_MATRIX_DEFMSTR_TYPE	(3 << 16)	/* Default Master Type */
+#define			AT91_MATRIX_DEFMSTR_TYPE_NONE	(0 << 16)
+#define			AT91_MATRIX_DEFMSTR_TYPE_LAST	(1 << 16)
+#define			AT91_MATRIX_DEFMSTR_TYPE_FIXED	(2 << 16)
+#define		AT91_MATRIX_FIXED_DEFMSTR	(0xf << 18)	/* Fixed Index of Default Master */
+
+#define AT91_MATRIX_PRAS0	(AT91_MATRIX + 0x80)	/* Priority Register A for Slave 0 */
+#define AT91_MATRIX_PRAS1	(AT91_MATRIX + 0x88)	/* Priority Register A for Slave 1 */
+#define AT91_MATRIX_PRAS2	(AT91_MATRIX + 0x90)	/* Priority Register A for Slave 2 */
+#define AT91_MATRIX_PRAS3	(AT91_MATRIX + 0x98)	/* Priority Register A for Slave 3 */
+#define AT91_MATRIX_PRAS4	(AT91_MATRIX + 0xA0)	/* Priority Register A for Slave 4 */
+#define		AT91_MATRIX_M0PR		(3 << 0)	/* Master 0 Priority */
+#define		AT91_MATRIX_M1PR		(3 << 4)	/* Master 1 Priority */
+#define		AT91_MATRIX_M2PR		(3 << 8)	/* Master 2 Priority */
+#define		AT91_MATRIX_M3PR		(3 << 12)	/* Master 3 Priority */
+#define		AT91_MATRIX_M4PR		(3 << 16)	/* Master 4 Priority */
+#define		AT91_MATRIX_M5PR		(3 << 20)	/* Master 5 Priority */
+
+#define AT91_MATRIX_MRCR	(AT91_MATRIX + 0x100)	/* Master Remap Control Register */
+#define		AT91_MATRIX_RCB0		(1 << 0)	/* Remap Command for AHB Master 0 (ARM926EJ-S Instruction Master) */
+#define		AT91_MATRIX_RCB1		(1 << 1)	/* Remap Command for AHB Master 1 (ARM926EJ-S Data Master) */
+#define		AT91_MATRIX_RCB2		(1 << 2)
+#define		AT91_MATRIX_RCB3		(1 << 3)
+#define		AT91_MATRIX_RCB4		(1 << 4)
+#define		AT91_MATRIX_RCB5		(1 << 5)
+
+#define AT91_MATRIX_EBICSA	(AT91_MATRIX + 0x118)	/* EBI Chip Select Assignment Register */
+#define		AT91_MATRIX_EBI_CS1A		(1 << 1)	/* Chip Select 1 Assignment */
+#define			AT91_MATRIX_EBI_CS1A_SMC		(0 << 1)
+#define			AT91_MATRIX_EBI_CS1A_SDRAMC		(1 << 1)
+#define		AT91_MATRIX_EBI_CS3A		(1 << 3)	/* Chip Select 3 Assignment */
+#define			AT91_MATRIX_EBI_CS3A_SMC		(0 << 3)
+#define			AT91_MATRIX_EBI_CS3A_SMC_NANDFLASH	(1 << 3)
+#define		AT91_MATRIX_EBI_DBPUC		(1 << 8)	/* Data Bus Pull-up Configuration */
+#define			AT91_MATRIX_EBI_DBPU_ON			(0 << 8)
+#define			AT91_MATRIX_EBI_DBPU_OFF		(1 << 8)
+#define		AT91_MATRIX_EBI_DBPDC		(1 << 9)	/* Data Bus Pull-up Configuration */
+#define			AT91_MATRIX_EBI_DBPD_ON			(0 << 9)
+#define			AT91_MATRIX_EBI_DBPD_OFF		(1 << 9)
+#define		AT91_MATRIX_EBI_DRIVE		(1 << 17)	/* EBI I/O Drive Configuration */
+#define			AT91_MATRIX_EBI_LOW_DRIVE		(0 << 17)
+#define			AT91_MATRIX_EBI_HIGH_DRIVE		(1 << 17)
+#define		AT91_MATRIX_NFD0_SELECT		(1 << 24)	/* NAND Flash Data Bus Selection */
+#define			AT91_MATRIX_NFD0_ON_D0			(0 << 24)
+#define			AT91_MATRIX_NFD0_ON_D16			(1 << 24)
+
+#define AT91_MATRIX_WPMR	(AT91_MATRIX + 0x1E4)	/* Write Protect Mode Register */
+#define		AT91_MATRIX_WPMR_WPEN		(1 << 0)	/* Write Protect ENable */
+#define			AT91_MATRIX_WPMR_WP_WPDIS		(0 << 0)
+#define			AT91_MATRIX_WPMR_WP_WPEN		(1 << 0)
+#define		AT91_MATRIX_WPMR_WPKEY		(0xFFFFFF << 8)	/* Write Protect KEY */
+
+#define AT91_MATRIX_WPSR	(AT91_MATRIX + 0x1E8)	/* Write Protect Status Register */
+#define		AT91_MATRIX_WPSR_WPVS		(1 << 0)	/* Write Protect Violation Status */
+#define			AT91_MATRIX_WPSR_NO_WPV		(0 << 0)
+#define			AT91_MATRIX_WPSR_WPV		(1 << 0)
+#define		AT91_MATRIX_WPSR_WPVSRC		(0xFFFF << 8)	/* Write Protect Violation Source */
+
+#endif
diff --git a/arch/arm/mach-at91/include/mach/board.h b/arch/arm/mach-at91/include/mach/board.h
index dcea9f3..98c69f9 100644
--- a/arch/arm/mach-at91/include/mach/board.h
+++ b/arch/arm/mach-at91/include/mach/board.h
@@ -54,6 +54,7 @@ struct atmel_nand_data {
 	u8		bus_width_16;	/* buswidth is 16 bit */
 	u8		ecc_mode;	/* NAND_ECC_* */
 	u8		on_flash_bbt;	/* Use flash based bbt */
+	u8		bus_on_d0;
 
 	u8		pmecc_corr_cap;
 	u16		pmecc_sector_size;
diff --git a/arch/arm/mach-at91/include/mach/cpu.h b/arch/arm/mach-at91/include/mach/cpu.h
index 0700f21..90b9f8a 100644
--- a/arch/arm/mach-at91/include/mach/cpu.h
+++ b/arch/arm/mach-at91/include/mach/cpu.h
@@ -28,6 +28,7 @@
 #define ARCH_ID_AT91SAM9G45MRL	0x819b05a2	/* aka 9G45-ES2 & non ES lots */
 #define ARCH_ID_AT91SAM9G45ES	0x819b05a1	/* 9G45-ES (Engineering Sample) */
 #define ARCH_ID_AT91SAM9X5	0x819a05a0
+#define ARCH_ID_AT91SAM9N12	0x819a07a0
 #define ARCH_ID_AT91CAP9	0x039A03A0
 
 #define ARCH_ID_AT91SAM9XE128	0x329973a0
@@ -171,6 +172,12 @@ static inline unsigned long at91cap9_rev_identify(void)
 #define cpu_is_at91sam9x25()	(0)
 #endif
 
+#ifdef CONFIG_ARCH_AT91SAM9N12
+#define cpu_is_at91sam9n12()	(at91_cpu_identify() == ARCH_ID_AT91SAM9N12)
+#else
+#define cpu_is_at91sam9n12()	(0)
+#endif
+
 #ifdef CONFIG_ARCH_AT91CAP9
 #define cpu_is_at91cap9()	(at91_cpu_identify() == ARCH_ID_AT91CAP9)
 #define cpu_is_at91cap9_revB()	(at91cap9_rev_identify() == ARCH_REVISION_CAP9_B)
diff --git a/arch/arm/mach-at91/include/mach/hardware.h b/arch/arm/mach-at91/include/mach/hardware.h
index 7af8803..f8ac791 100644
--- a/arch/arm/mach-at91/include/mach/hardware.h
+++ b/arch/arm/mach-at91/include/mach/hardware.h
@@ -26,6 +26,8 @@
 #include <mach/at91sam9rl.h>
 #elif defined(CONFIG_ARCH_AT91SAM9G45)
 #include <mach/at91sam9g45.h>
+#elif defined(CONFIG_ARCH_AT91SAM9N12)
+#include <mach/at91sam9n12.h>
 #elif defined(CONFIG_ARCH_AT91SAM9X5)
 #include <mach/at91sam9x5.h>
 #elif defined(CONFIG_ARCH_AT91CAP9)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
