Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from nasmtp01.atmel.com ([192.199.1.245]
 helo=DVREDG01.corp.atmel.com)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XWLTu-0005jm-6t
 for barebox@lists.infradead.org; Tue, 23 Sep 2014 08:29:56 +0000
From: Bo Shen <voice.shen@atmel.com>
Date: Tue, 23 Sep 2014 16:29:17 +0800
Message-ID: <1411460958-27491-4-git-send-email-voice.shen@atmel.com>
In-Reply-To: <1411460958-27491-1-git-send-email-voice.shen@atmel.com>
References: <1411460958-27491-1-git-send-email-voice.shen@atmel.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 3/4] ARM: at91: add sama5d4 soc support #2
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

Signed-off-by: Bo Shen <voice.shen@atmel.com>
---
Changes in v2:
  - Using clkdev_add_physbase to define GPIO clock.

 arch/arm/mach-at91/include/mach/sama5d4.h | 134 ++++++++
 arch/arm/mach-at91/sama5d4.c              | 304 ++++++++++++++++++
 arch/arm/mach-at91/sama5d4_devices.c      | 495 ++++++++++++++++++++++++++++++
 3 files changed, 933 insertions(+)
 create mode 100644 arch/arm/mach-at91/include/mach/sama5d4.h
 create mode 100644 arch/arm/mach-at91/sama5d4.c
 create mode 100644 arch/arm/mach-at91/sama5d4_devices.c

diff --git a/arch/arm/mach-at91/include/mach/sama5d4.h b/arch/arm/mach-at91/include/mach/sama5d4.h
new file mode 100644
index 0000000..046fdb0
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/sama5d4.h
@@ -0,0 +1,134 @@
+/*
+ * Chip-specific header file for the SAMA5D4 family
+ *
+ * Copyright (C) 2014 Atmel Corporation,
+ *		      Bo Shen <voice.shen@atmel.com>
+ *
+ * Common definitions.
+ * Based on SAMA5D4 datasheet.
+ *
+ * Licensed under GPLv2 or later.
+ */
+
+#ifndef SAMA5D4_H
+#define SAMA5D4_H
+
+/*
+ * Peripheral identifiers/interrupts.
+ */
+#define SAMA5D4_ID_PIT		 3
+#define SAMA5D4_ID_WDT		 4
+#define SAMA5D4_ID_PIOD		 5
+#define SAMA5D4_ID_USART0	 6
+#define SAMA5D4_ID_USART1	 7
+#define SAMA5D4_ID_DMA0		 8
+#define SAMA5D4_ID_ICM		 9
+#define SAMA5D4_ID_PKCC		10
+#define SAMA5D4_ID_SCI		11
+#define SAMA5D4_ID_AES		12
+#define SAMA5D4_ID_AESB		13
+#define SAMA5D4_ID_TDES		14
+#define SAMA5D4_ID_SHA		15
+#define SAMA5D4_ID_MPDDRC	16
+#define SAMA5D4_ID_MATRIX1	17
+#define SAMA5D4_ID_MATRIX0	18
+#define SAMA5D4_ID_VDEC		19
+#define SAMA5D4_ID_SECUMOD	20
+#define SAMA5D4_ID_MSADCC	21
+#define SAMA5D4_ID_HSMC		22
+#define SAMA5D4_ID_PIOA		23
+#define SAMA5D4_ID_PIOB		24
+#define SAMA5D4_ID_PIOC		25
+#define SAMA5D4_ID_PIOE		26
+#define SAMA5D4_ID_UART0	27
+#define SAMA5D4_ID_UART1	28
+#define SAMA5D4_ID_USART2	29
+#define SAMA5D4_ID_USART3	30
+#define SAMA5D4_ID_USART4	31
+#define SAMA5D4_ID_TWI0		32
+#define SAMA5D4_ID_TWI1		33
+#define SAMA5D4_ID_TWI2		34
+#define SAMA5D4_ID_HSMCI0	35
+#define SAMA5D4_ID_HSMCI1	36
+#define SAMA5D4_ID_SPI0		37
+#define SAMA5D4_ID_SPI1		38
+#define SAMA5D4_ID_SPI2		39
+#define SAMA5D4_ID_TC0		40
+#define SAMA5D4_ID_TC1		41
+#define SAMA5D4_ID_TC2		42
+#define SAMA5D4_ID_PWM		43
+#define SAMA5D4_ID_ADC		44
+#define SAMA5D4_ID_DBGU		45
+#define SAMA5D4_ID_UHPHS	46
+#define SAMA5D4_ID_UDPHS	47
+#define SAMA5D4_ID_SSC0		48
+#define SAMA5D4_ID_SSC1		49
+#define SAMA5D4_ID_DMA1		50
+#define SAMA5D4_ID_LCDC		51
+#define SAMA5D4_ID_ISI		52
+#define SAMA5D4_ID_TRNG		53
+#define SAMA5D4_ID_GMAC0	54
+#define SAMA5D4_ID_IRQ		56
+#define SAMA5D4_ID_IRQ		56
+#define SAMA5D4_ID_SFC		57
+#define SAMA5D4_ID_SECURAM	59
+#define SAMA5D4_ID_CTB		60
+#define SAMA5D4_ID_SMD		61
+#define SAMA5D4_ID_TWI3		62
+#define SAMA5D4_ID_CATB		63
+#define SAMA5D4_ID_SFR		64
+#define SAMA5D4_ID_AIC		65
+#define SAMA5D4_ID_SAIC		66
+#define SAMA5D4_ID_L2CC		67
+
+/*
+ * User Peripheral physical base addresses.
+ */
+
+#define SAMA5D4_BASE_LCDC	0xf0000000 /* (HLCDC5) Base Address */
+#define SAMA5D4_BASE_MPDDRC	0xf0010000 /* (MPDDRC) Base Address */
+#define SAMA5D4_BASE_PMC	0xf0018000 /* (PMC) Base Address */
+#define SAMA5D4_BASE_HSMCI0	0xf8000000 /* (MMCI0) Base Address */
+#define SAMA5D4_BASE_UART0	0xf8004000 /* (UART0) Base Address */
+#define SAMA5D4_BASE_SPI0	0xf8010000 /* (SPI0) Base Address */
+#define SAMA5D4_BASE_TC0	0xf801c000 /* (TC0) Base Address */
+#define SAMA5D4_BASE_GMAC0	0xf8020000 /* (GMAC0) Base Address */
+#define SAMA5D4_BASE_USART0	0xf802c000 /* (USART0) Base Address */
+#define SAMA5D4_BASE_USART1	0xf8030000 /* (USART1) Base Address */
+#define SAMA5D4_BASE_HSMCI1	0xfc000000 /* (HSMCI1) Base Address */
+#define SAMA5D4_BASE_UART1	0xfc004000 /* (UART1) Base Address */
+#define SAMA5D4_BASE_USART2	0xfc008000 /* (USART2) Base Address */
+#define SAMA5D4_BASE_USART3	0xfc00c000 /* (USART3) Base Address */
+#define SAMA5D4_BASE_USART4	0xfc010000 /* (USART4) Base Address */
+#define SAMA5D4_BASE_SPI1	0xfc018000 /* (SPI1) Base Address */
+#define SAMA5D4_BASE_GMAC1	0xfc028000 /* (GMAC1) Base Address */
+#define SAMA5D4_BASE_HSMC	0xfc05c000 /* (HSMC) Base Address */
+#define SAMA5D4_BASE_PMECC	0xfc05c070 /* (PMECC) Base Address */
+#define SAMA5D4_BASE_PMERRLOC	0xfc05c500 /* (PMERRLOC) Base Address */
+#define SAMA5D4_BASE_PIOD	0xfc068000 /* (PIOD) Base Address */
+#define SAMA5D4_BASE_PIT	0xfc068630 /* (PIT) Base Address */
+#define SAMA5D4_BASE_DBGU	0xfc069000 /* (DBGU) Base Address */
+#define SAMA5D4_BASE_PIOA	0xfc06a000 /* (PIOA) Base Address */
+#define SAMA5D4_BASE_PIOB	0xfc06b000 /* (PIOB) Base Address */
+#define SAMA5D4_BASE_PIOC	0xfc06c000 /* (PIOC) Base Address */
+#define SAMA5D4_BASE_PIOE	0xfc06d000 /* (PIOE) Base Address */
+#define SAMA5D4_BASE_AIC	0xfc06e000 /* (AIC) Base Address */
+
+#define SAMA5D4_CHIPSELECT_3	0x80000000
+
+/*
+ * Internal Memory.
+ */
+#define SAMA5D4_SRAM_BASE	0x00200000	/* Internal SRAM base address */
+#define SAMA5D4_SRAM_SIZE	(128 * SZ_1K)	/* Internal SRAM size */
+
+#define AT91_NB_USART		7
+#define AT91_BASE_SYS		0xf0000000
+#define AT91_PMC		SAMA5D4_BASE_PMC
+#define AT91_DDRSDRC0		(0xf0010000 - AT91_BASE_SYS)
+#define AT91_RSTC		(0xfc068600 - AT91_BASE_SYS)
+#define SAMA5D3_BASE_MPDDRC	SAMA5D4_BASE_MPDDRC
+#define SAMA5D3_SRAM_BASE	SAMA5D4_SRAM_BASE
+#define SAMA5D3_SRAM_SIZE	SAMA5D4_SRAM_SIZE
+
+#endif
diff --git a/arch/arm/mach-at91/sama5d4.c b/arch/arm/mach-at91/sama5d4.c
new file mode 100644
index 0000000..4d380ed
--- /dev/null
+++ b/arch/arm/mach-at91/sama5d4.c
@@ -0,0 +1,304 @@
+/*
+ * Chip-specific setup code for the SAMA5D4 family
+ *
+ * Copyright (C) 2014 Atmel Corporation,
+ *		      Bo Shen <voice.shen@atmel.com>
+ *
+ * Licensed under GPLv2 or later.
+ */
+
+#include <common.h>
+#include <gpio.h>
+#include <init.h>
+#include <mach/hardware.h>
+#include <mach/at91_pmc.h>
+#include <mach/io.h>
+#include <mach/cpu.h>
+#include <linux/clk.h>
+
+#include "soc.h"
+#include "generic.h"
+#include "clock.h"
+
+/*
+ * The peripheral clocks.
+ */
+static struct clk pit_clk = {
+	.name		= "pit_clk",
+	.pid		= SAMA5D4_ID_PIT,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk smc_clk = {
+	.name		= "smc_clk",
+	.pid		= SAMA5D4_ID_HSMC,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk pioA_clk = {
+	.name		= "pioA_clk",
+	.pid		= SAMA5D4_ID_PIOA,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk pioB_clk = {
+	.name		= "pioB_clk",
+	.pid		= SAMA5D4_ID_PIOB,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk pioC_clk = {
+	.name		= "pioC_clk",
+	.pid		= SAMA5D4_ID_PIOC,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk pioD_clk = {
+	.name		= "pioD_clk",
+	.pid		= SAMA5D4_ID_PIOD,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk pioE_clk = {
+	.name		= "pioE_clk",
+	.pid		= SAMA5D4_ID_PIOE,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk usart0_clk = {
+	.name		= "usart0_clk",
+	.pid		= SAMA5D4_ID_USART0,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk usart2_clk = {
+	.name		= "usart2_clk",
+	.pid		= SAMA5D4_ID_USART2,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk usart3_clk = {
+	.name		= "usart3_clk",
+	.pid		= SAMA5D4_ID_USART3,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk usart4_clk = {
+	.name		= "usart4_clk",
+	.pid		= SAMA5D4_ID_USART4,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk mmc0_clk = {
+	.name		= "mci0_clk",
+	.pid		= SAMA5D4_ID_HSMCI0,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk mmc1_clk = {
+	.name		= "mci1_clk",
+	.pid		= SAMA5D4_ID_HSMCI1,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk tcb0_clk = {
+	.name		= "tcb0_clk",
+	.pid		= SAMA5D4_ID_TC0,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk tcb1_clk = {
+	.name		= "tcb1_clk",
+	.pid		= SAMA5D4_ID_TC1,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk adc_clk = {
+	.name		= "adc_clk",
+	.pid		= SAMA5D4_ID_ADC,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk dma0_clk = {
+	.name		= "dma0_clk",
+	.pid		= SAMA5D4_ID_DMA0,
+	.type		= CLK_TYPE_PERIPHERAL | CLK_TYPE_PERIPH_H64MX,
+};
+static struct clk dma1_clk = {
+	.name		= "dma1_clk",
+	.pid		= SAMA5D4_ID_DMA1,
+	.type		= CLK_TYPE_PERIPHERAL | CLK_TYPE_PERIPH_H64MX,
+};
+static struct clk uhphs_clk = {
+	.name		= "uhphs",
+	.pid		= SAMA5D4_ID_UHPHS,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk udphs_clk = {
+	.name		= "udphs_clk",
+	.pid		= SAMA5D4_ID_UDPHS,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk lcdc_clk = {
+	.name		= "lcdc_clk",
+	.pid		= SAMA5D4_ID_LCDC,
+	.type		= CLK_TYPE_PERIPHERAL | CLK_TYPE_PERIPH_H64MX,
+};
+static struct clk isi_clk = {
+	.name		= "isi_clk",
+	.pid		= SAMA5D4_ID_ISI,
+	.type		= CLK_TYPE_PERIPHERAL | CLK_TYPE_PERIPH_H64MX,
+};
+static struct clk macb0_clk = {
+	.name		= "macb0_clk",
+	.pid		= SAMA5D4_ID_GMAC0,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk twi0_clk = {
+	.name		= "twi0_clk",
+	.pid		= SAMA5D4_ID_TWI0,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk twi2_clk = {
+	.name		= "twi2_clk",
+	.pid		= SAMA5D4_ID_TWI2,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk spi0_clk = {
+	.name		= "spi0_clk",
+	.pid		= SAMA5D4_ID_SPI0,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk smd_clk = {
+	.name		= "smd_clk",
+	.pid		= SAMA5D4_ID_SMD,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk ssc0_clk = {
+	.name		= "ssc0_clk",
+	.pid		= SAMA5D4_ID_SSC0,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk ssc1_clk = {
+	.name		= "ssc1_clk",
+	.pid		= SAMA5D4_ID_SSC1,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk sha_clk = {
+	.name		= "sha_clk",
+	.pid		= SAMA5D4_ID_SHA,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk aes_clk = {
+	.name		= "aes_clk",
+	.pid		= SAMA5D4_ID_AES,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk tdes_clk = {
+	.name		= "tdes_clk",
+	.pid		= SAMA5D4_ID_TDES,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+
+static struct clk *periph_clocks[] __initdata = {
+	&pit_clk,
+	&smc_clk,
+	&pioA_clk,
+	&pioB_clk,
+	&pioC_clk,
+	&pioD_clk,
+	&pioE_clk,
+	&usart0_clk,
+	&usart2_clk,
+	&usart3_clk,
+	&usart4_clk,
+	&mmc0_clk,
+	&mmc1_clk,
+	&tcb0_clk,
+	&tcb1_clk,
+	&adc_clk,
+	&dma0_clk,
+	&dma1_clk,
+	&uhphs_clk,
+	&udphs_clk,
+	&lcdc_clk,
+	&isi_clk,
+	&macb0_clk,
+	&twi0_clk,
+	&twi2_clk,
+	&spi0_clk,
+	&smd_clk,
+	&ssc0_clk,
+	&ssc1_clk,
+	&sha_clk,
+	&aes_clk,
+	&tdes_clk,
+};
+
+static struct clk pck0 = {
+	.name		= "pck0",
+	.pmc_mask	= AT91_PMC_PCK0,
+	.type		= CLK_TYPE_PROGRAMMABLE,
+	.id		= 0,
+};
+
+static struct clk pck1 = {
+	.name		= "pck1",
+	.pmc_mask	= AT91_PMC_PCK1,
+	.type		= CLK_TYPE_PROGRAMMABLE,
+	.id		= 1,
+};
+
+static struct clk pck2 = {
+	.name		= "pck2",
+	.pmc_mask	= AT91_PMC_PCK2,
+	.type		= CLK_TYPE_PROGRAMMABLE,
+	.id		= 2,
+};
+
+static struct clk_lookup periph_clocks_lookups[] = {
+	CLKDEV_CON_DEV_ID("macb_clk", "macb0", &macb0_clk),
+	CLKDEV_CON_DEV_ID("mci_clk", "atmel_mci0", &mmc0_clk),
+	CLKDEV_CON_DEV_ID("mci_clk", "atmel_mci1", &mmc1_clk),
+	CLKDEV_CON_DEV_ID("spi_clk", "atmel_spi0", &spi0_clk),
+	CLKDEV_DEV_ID("at91-pit", &pit_clk),
+	CLKDEV_CON_DEV_ID("hck1", "atmel_hlcdfb", &lcdc_clk),
+};
+
+static struct clk_lookup usart_clocks_lookups[] = {
+	CLKDEV_CON_DEV_ID("usart", "atmel_usart0", &mck),
+	CLKDEV_CON_DEV_ID("usart", "atmel_usart1", &usart0_clk),
+	CLKDEV_CON_DEV_ID("usart", "atmel_usart3", &usart2_clk),
+	CLKDEV_CON_DEV_ID("usart", "atmel_usart4", &usart3_clk),
+};
+
+static void __init sama5d4_register_clocks(void)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(periph_clocks); i++)
+		clk_register(periph_clocks[i]);
+
+	clkdev_add_physbase(&pioA_clk, SAMA5D4_BASE_PIOA, 0);
+	clkdev_add_physbase(&pioB_clk, SAMA5D4_BASE_PIOB, 0);
+	clkdev_add_physbase(&pioC_clk, SAMA5D4_BASE_PIOC, 0);
+	clkdev_add_physbase(&pioD_clk, SAMA5D4_BASE_PIOD, 0);
+	clkdev_add_physbase(&pioE_clk, SAMA5D4_BASE_PIOE, 0);
+
+	clkdev_add_table(periph_clocks_lookups,
+			 ARRAY_SIZE(periph_clocks_lookups));
+
+	clkdev_add_table(usart_clocks_lookups,
+			 ARRAY_SIZE(usart_clocks_lookups));
+
+	clk_register(&pck0);
+	clk_register(&pck1);
+	clk_register(&pck2);
+}
+
+/* --------------------------------------------------------------------
+ *  Processor initialization
+ * -------------------------------------------------------------------- */
+static void sama5d4_initialize(void)
+{
+	/* Register the processor-specific clocks */
+	sama5d4_register_clocks();
+
+	/* Register GPIO subsystem */
+	at91_add_sam9x5_gpio(0, SAMA5D4_BASE_PIOA);
+	at91_add_sam9x5_gpio(1, SAMA5D4_BASE_PIOB);
+	at91_add_sam9x5_gpio(2, SAMA5D4_BASE_PIOC);
+	at91_add_sam9x5_gpio(3, SAMA5D4_BASE_PIOD);
+	at91_add_sam9x5_gpio(4, SAMA5D4_BASE_PIOE);
+
+	at91_add_pit(SAMA5D4_BASE_PIT);
+	at91_add_sam9_smc(DEVICE_ID_SINGLE, SAMA5D4_BASE_HSMC + 0x600, 0xa0);
+}
+
+AT91_SOC_START(sama5d4)
+	.init = sama5d4_initialize,
+AT91_SOC_END
diff --git a/arch/arm/mach-at91/sama5d4_devices.c b/arch/arm/mach-at91/sama5d4_devices.c
new file mode 100644
index 0000000..3806971
--- /dev/null
+++ b/arch/arm/mach-at91/sama5d4_devices.c
@@ -0,0 +1,495 @@
+/*
+ *  On-Chip devices setup code for the SAMA5D4 family
+ *
+ *  Copyright (C) 2014 Atmel Corporation.
+ *		       Bo Shen <voice.shen@atmel.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <sizes.h>
+#include <gpio.h>
+#include <asm/armlinux.h>
+#include <mach/hardware.h>
+#include <mach/board.h>
+#include <mach/at91_pmc.h>
+#include <mach/at91sam9x5_matrix.h>
+#include <mach/at91sam9_ddrsdr.h>
+#include <mach/iomux.h>
+#include <mach/io.h>
+#include <mach/cpu.h>
+#include <i2c/i2c-gpio.h>
+
+#include "generic.h"
+
+void at91_add_device_sdram(u32 size)
+{
+	if (!size)
+		size = at91sama5_get_ddram_size();
+
+	arm_add_mem_device("ram0", SAMA5_DDRCS, size);
+	add_mem_device("sram0", SAMA5D4_SRAM_BASE,
+		       SAMA5D4_SRAM_SIZE, IORESOURCE_MEM_WRITEABLE);
+}
+
+/* --------------------------------------------------------------------
+ *  NAND / SmartMedia
+ * -------------------------------------------------------------------- */
+#if defined(CONFIG_NAND_ATMEL)
+static struct resource nand_resources[] = {
+	[0] = {
+		.start	= SAMA5D4_CHIPSELECT_3,
+		.end	= SAMA5D4_CHIPSELECT_3 + SZ_128M - 1,
+		.flags	= IORESOURCE_MEM,
+	},
+	[1] = {
+		.start	= SAMA5D4_BASE_PMECC,
+		.end	= SAMA5D4_BASE_PMECC + 0x490 - 1,
+		.flags	= IORESOURCE_MEM,
+	},
+	[2] = {
+		.start	= SAMA5D4_BASE_PMERRLOC,
+		.end	= SAMA5D4_BASE_PMERRLOC + 0x100 - 1,
+		.flags	= IORESOURCE_MEM,
+	},
+};
+
+void __init at91_add_device_nand(struct atmel_nand_data *data)
+{
+	if (!data)
+		return;
+
+	at91_set_A_periph(AT91_PIN_PC5, 0);	/* D0 */
+	at91_set_A_periph(AT91_PIN_PC6, 0);	/* D1 */
+	at91_set_A_periph(AT91_PIN_PC7, 0);	/* D2 */
+	at91_set_A_periph(AT91_PIN_PC8, 0);	/* D3 */
+	at91_set_A_periph(AT91_PIN_PC9, 0);	/* D4 */
+	at91_set_A_periph(AT91_PIN_PC10, 0);	/* D5 */
+	at91_set_A_periph(AT91_PIN_PC11, 0);	/* D6 */
+	at91_set_A_periph(AT91_PIN_PC12, 0);	/* D7 */
+	at91_set_A_periph(AT91_PIN_PC13, 0);	/* RE */
+	at91_set_A_periph(AT91_PIN_PC14, 0);	/* WE */
+	at91_set_A_periph(AT91_PIN_PC15, 1);	/* NCS */
+	at91_set_A_periph(AT91_PIN_PC16, 1);	/* RDY */
+	at91_set_A_periph(AT91_PIN_PC17, 1);	/* ALE */
+	at91_set_A_periph(AT91_PIN_PC18, 1);	/* CLE */
+
+	/* enable pin */
+	if (gpio_is_valid(data->enable_pin))
+		at91_set_gpio_output(data->enable_pin, 1);
+
+	/* ready/busy pin */
+	if (gpio_is_valid(data->rdy_pin))
+		at91_set_gpio_input(data->rdy_pin, 1);
+
+	/* card detect pin */
+	if (gpio_is_valid(data->det_pin))
+		at91_set_gpio_input(data->det_pin, 1);
+
+	add_generic_device_res("atmel_nand", 0, nand_resources,
+			       ARRAY_SIZE(nand_resources), data);
+}
+#else
+void __init at91_add_device_nand(struct atmel_nand_data *data) {}
+#endif
+
+#if defined(CONFIG_DRIVER_NET_MACB)
+void at91_add_device_eth(int id, struct macb_platform_data *data)
+{
+	if (!data)
+		return;
+
+	switch (id) {
+	case 0:
+		at91_set_A_periph(AT91_PIN_PB16, 0);	/* GMDC */
+		at91_set_A_periph(AT91_PIN_PB17, 0);	/* GMDIO */
+
+		at91_set_A_periph(AT91_PIN_PB0, 0);	/* GTXCK */
+		at91_set_A_periph(AT91_PIN_PB2, 0);	/* GTXEN */
+		at91_set_A_periph(AT91_PIN_PB6, 0);	/* GRXDV */
+		at91_set_A_periph(AT91_PIN_PB7, 0);	/* GRXER */
+
+		switch (data->phy_interface) {
+		case PHY_INTERFACE_MODE_MII:
+			at91_set_A_periph(AT91_PIN_PB4, 0);	/* GCRS */
+			at91_set_A_periph(AT91_PIN_PB5, 0);	/* GCOL */
+			at91_set_A_periph(AT91_PIN_PB14, 0);	/* GTX2 */
+			at91_set_A_periph(AT91_PIN_PB15, 0);	/* GTX3 */
+			at91_set_A_periph(AT91_PIN_PB3, 0);	/* GTXER */
+			at91_set_A_periph(AT91_PIN_PB1, 0);	/* GRXCK */
+			at91_set_A_periph(AT91_PIN_PB10, 0);	/* GRX2 */
+			at91_set_A_periph(AT91_PIN_PB11, 0);	/* GRX3 */
+		case PHY_INTERFACE_MODE_RMII:
+			at91_set_A_periph(AT91_PIN_PB12, 0);	/* GTX0 */
+			at91_set_A_periph(AT91_PIN_PB13, 0);	/* GTX1 */
+			at91_set_A_periph(AT91_PIN_PB8, 0);	/* GRX0 */
+			at91_set_A_periph(AT91_PIN_PB9, 0);	/* GRX1 */
+			break;
+		default:
+			return;
+		}
+
+		add_generic_device("macb", id, NULL, SAMA5D4_BASE_GMAC0, SZ_16K,
+			   IORESOURCE_MEM, data);
+		break;
+	case 1:
+		at91_set_B_periph(AT91_PIN_PA22, 0);	/* GMDC */
+		at91_set_B_periph(AT91_PIN_PA23, 0);	/* GMDIO */
+
+		at91_set_B_periph(AT91_PIN_PA2, 0);	/* GTXCK */
+		at91_set_B_periph(AT91_PIN_PA4, 0);	/* GTXEN */
+		at91_set_B_periph(AT91_PIN_PA10, 0);	/* GRXDV */
+		at91_set_B_periph(AT91_PIN_PA11, 0);	/* GRXER */
+
+		switch (data->phy_interface) {
+		case PHY_INTERFACE_MODE_MII:
+			at91_set_B_periph(AT91_PIN_PA6, 0);	/* GCRS */
+			at91_set_B_periph(AT91_PIN_PA9, 0);	/* GCOL */
+			at91_set_B_periph(AT91_PIN_PA20, 0);	/* GTX2 */
+			at91_set_B_periph(AT91_PIN_PA21, 0);	/* GTX3 */
+			at91_set_B_periph(AT91_PIN_PA5, 0);	/* GTXER */
+			at91_set_B_periph(AT91_PIN_PA3, 0);	/* GRXCK */
+			at91_set_B_periph(AT91_PIN_PA18, 0);	/* GRX2 */
+			at91_set_B_periph(AT91_PIN_PA19, 0);	/* GRX3 */
+		case PHY_INTERFACE_MODE_RMII:
+			at91_set_B_periph(AT91_PIN_PA12, 0);	/* GTX0 */
+			at91_set_B_periph(AT91_PIN_PA13, 0);	/* GTX1 */
+			at91_set_B_periph(AT91_PIN_PA8, 0);	/* GRX0 */
+			at91_set_B_periph(AT91_PIN_PA9, 0);	/* GRX1 */
+			break;
+		default:
+			return;
+		}
+
+		add_generic_device("macb", id, NULL, SAMA5D4_BASE_GMAC1, SZ_16K,
+			   IORESOURCE_MEM, data);
+		break;
+	default:
+		return;
+	}
+
+}
+#else
+void at91_add_device_eth(int id, struct macb_platform_data *data) {}
+#endif
+
+#if defined(CONFIG_MCI_ATMEL)
+void __init at91_add_device_mci(short mmc_id,
+				struct atmel_mci_platform_data *data)
+{
+	resource_size_t start = ~0;
+
+	if (!data)
+		return;
+
+	/* Must have at least one usable slot */
+	if (!data->bus_width)
+		return;
+
+	/* input/irq */
+	if (gpio_is_valid(data->detect_pin)) {
+		at91_set_gpio_input(data->detect_pin, 1);
+		at91_set_deglitch(data->detect_pin, 1);
+	}
+
+	if (gpio_is_valid(data->wp_pin))
+		at91_set_gpio_input(data->wp_pin, 1);
+
+	switch (mmc_id) {
+	/* MCI0 */
+	case 0:
+		start = SAMA5D4_BASE_HSMCI0;
+
+		/* CLK */
+		at91_set_B_periph(AT91_PIN_PC4, 0);
+
+		/* CMD */
+		at91_set_B_periph(AT91_PIN_PC5, 1);
+
+		/* DAT0, maybe DAT1..DAT3 */
+		at91_set_B_periph(AT91_PIN_PC6, 1);
+		switch (data->bus_width) {
+		case 8:
+			at91_set_B_periph(AT91_PIN_PC10, 1);
+			at91_set_B_periph(AT91_PIN_PC11, 1);
+			at91_set_B_periph(AT91_PIN_PC12, 1);
+			at91_set_B_periph(AT91_PIN_PC13, 1);
+		case 4:
+			at91_set_B_periph(AT91_PIN_PC7, 1);
+			at91_set_B_periph(AT91_PIN_PC8, 1);
+			at91_set_B_periph(AT91_PIN_PC9, 1);
+		};
+
+		break;
+	/* MCI1 */
+	case 1:
+		start = SAMA5D4_BASE_HSMCI1;
+
+		/*
+		 * As the mci1 io internal pull down is to strong,
+		 * which cause external pull up doesn't work, so,
+		 * disable internal pull down.
+		 */
+
+		/* CLK */
+		at91_set_C_periph(AT91_PIN_PE18, 0);
+		at91_set_pulldown(AT91_PIN_PE18, 0);
+
+		/* CMD */
+		at91_set_C_periph(AT91_PIN_PE19, 1);
+		at91_set_pulldown(AT91_PIN_PE19, 0);
+
+		/* DAT0, maybe DAT1..DAT3 */
+		at91_set_C_periph(AT91_PIN_PE20, 1);
+		at91_set_pulldown(AT91_PIN_PE20, 0);
+		if (data->bus_width == 4) {
+			at91_set_C_periph(AT91_PIN_PE21, 1);
+			at91_set_pulldown(AT91_PIN_PE21, 0);
+			at91_set_C_periph(AT91_PIN_PE22, 1);
+			at91_set_pulldown(AT91_PIN_PE22, 0);
+			at91_set_C_periph(AT91_PIN_PE23, 1);
+			at91_set_pulldown(AT91_PIN_PE23, 0);
+		}
+
+		break;
+	}
+
+	add_generic_device("atmel_mci", mmc_id, NULL, start, SZ_16K,
+			   IORESOURCE_MEM, data);
+}
+#else
+void __init at91_add_device_mci(short mmc_id,
+				struct atmel_mci_platform_data *data) {}
+#endif
+
+#if defined(CONFIG_I2C_GPIO)
+static struct i2c_gpio_platform_data pdata_i2c[] = {
+	{
+		.sda_pin		= AT91_PIN_PA30,
+		.sda_is_open_drain	= 1,
+		.scl_pin		= AT91_PIN_PA31,
+		.scl_is_open_drain	= 1,
+		.udelay			= 5,		/* ~100 kHz */
+	}, {
+		.sda_pin		= AT91_PIN_PE29,
+		.sda_is_open_drain	= 1,
+		.scl_pin		= AT91_PIN_PE30,
+		.scl_is_open_drain	= 1,
+		.udelay			= 5,		/* ~100 kHz */
+	}, {
+		.sda_pin		= AT91_PIN_PB29,
+		.sda_is_open_drain	= 1,
+		.scl_pin		= AT91_PIN_PB30,
+		.scl_is_open_drain	= 1,
+		.udelay			= 5,		/* ~100 kHz */
+	}, {
+		.sda_pin		= AT91_PIN_PC25,
+		.sda_is_open_drain	= 1,
+		.scl_pin		= AT91_PIN_PC26,
+		.scl_is_open_drain	= 1,
+		.udelay			= 5,		/* ~100 kHz */
+	}
+};
+
+void at91_add_device_i2c(short i2c_id, struct i2c_board_info *devices,
+			 int nr_devices)
+{
+	struct i2c_gpio_platform_data *pdata;
+
+	if (i2c_id > ARRAY_SIZE(pdata_i2c))
+		return;
+
+	i2c_register_board_info(i2c_id, devices, nr_devices);
+
+	pdata = &pdata_i2c[i2c_id];
+
+	at91_set_GPIO_periph(pdata->sda_pin, 1);		/* TWD (SDA) */
+	at91_set_multi_drive(pdata->sda_pin, 1);
+
+	at91_set_GPIO_periph(pdata->scl_pin, 1);		/* TWCK (SCL) */
+	at91_set_multi_drive(pdata->scl_pin, 1);
+
+	add_generic_device_res("i2c-gpio", i2c_id, NULL, 0, pdata);
+}
+#else
+void at91_add_device_i2c(short i2c_id, struct i2c_board_info *devices,
+			 int nr_devices) {}
+#endif
+
+/* --------------------------------------------------------------------
+ *  SPI
+ * -------------------------------------------------------------------- */
+#if defined(CONFIG_DRIVER_SPI_ATMEL)
+static unsigned spi0_standard_cs[2] = { AT91_PIN_PC3, AT91_PIN_PC4 };
+static unsigned spi1_standard_cs[2] = { AT91_PIN_PB21, AT91_PIN_PB22 };
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
+		start = SAMA5D4_BASE_SPI0;
+		at91_set_A_periph(AT91_PIN_PC0, 0);	/* SPI0_MISO */
+		at91_set_A_periph(AT91_PIN_PC1, 0);	/* SPI0_MOSI */
+		at91_set_A_periph(AT91_PIN_PC2, 0);	/* SPI0_SPCK */
+		break;
+	case 1:
+		start = SAMA5D4_BASE_SPI1;
+		at91_set_A_periph(AT91_PIN_PB18, 0);	/* SPI1_MISO */
+		at91_set_A_periph(AT91_PIN_PB19, 0);	/* SPI1_MOSI */
+		at91_set_A_periph(AT91_PIN_PB20, 0);	/* SPI1_SPCK */
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
+ *  LCD Controller
+ * -------------------------------------------------------------------- */
+#if defined(CONFIG_DRIVER_VIDEO_ATMEL_HLCD)
+void __init at91_add_device_lcdc(struct atmel_lcdfb_platform_data *data)
+{
+	BUG_ON(!data);
+
+	at91_set_A_periph(AT91_PIN_PA24, 0);	/* LCDPWM */
+	at91_set_A_periph(AT91_PIN_PA25, 0);	/* LCDDISP */
+	at91_set_A_periph(AT91_PIN_PA26, 0);	/* LCDVSYNC */
+	at91_set_A_periph(AT91_PIN_PA27, 0);	/* LCDHSYNC */
+	at91_set_A_periph(AT91_PIN_PA28, 0);	/* LCDDOTCK */
+	at91_set_A_periph(AT91_PIN_PA29, 0);	/* LCDDEN */
+
+	at91_set_A_periph(AT91_PIN_PA2, 0);	/* LCDD2 */
+	at91_set_A_periph(AT91_PIN_PA3, 0);	/* LCDD3 */
+	at91_set_A_periph(AT91_PIN_PA4, 0);	/* LCDD4 */
+	at91_set_A_periph(AT91_PIN_PA5, 0);	/* LCDD5 */
+	at91_set_A_periph(AT91_PIN_PA6, 0);	/* LCDD6 */
+	at91_set_A_periph(AT91_PIN_PA7, 0);	/* LCDD7 */
+
+	at91_set_A_periph(AT91_PIN_PA10, 0);	/* LCDD10 */
+	at91_set_A_periph(AT91_PIN_PA11, 0);	/* LCDD11 */
+	at91_set_A_periph(AT91_PIN_PA12, 0);	/* LCDD12 */
+	at91_set_A_periph(AT91_PIN_PA13, 0);	/* LCDD13 */
+	at91_set_A_periph(AT91_PIN_PA14, 0);	/* LCDD14 */
+	at91_set_A_periph(AT91_PIN_PA15, 0);	/* LCDD15 */
+
+	at91_set_A_periph(AT91_PIN_PA18, 0);	/* LCDD18 */
+	at91_set_A_periph(AT91_PIN_PA19, 0);	/* LCDD19 */
+	at91_set_A_periph(AT91_PIN_PA20, 0);	/* LCDD20 */
+	at91_set_A_periph(AT91_PIN_PA21, 0);	/* LCDD21 */
+	at91_set_A_periph(AT91_PIN_PA22, 0);	/* LCDD22 */
+	at91_set_A_periph(AT91_PIN_PA23, 0);	/* LCDD23 */
+
+	add_generic_device("atmel_hlcdfb", DEVICE_ID_SINGLE, NULL,
+			   SAMA5D4_BASE_LCDC, SZ_4K, IORESOURCE_MEM, data);
+}
+#else
+void __init at91_add_device_lcdc(struct atmel_lcdfb_platform_data *data) {}
+#endif
+
+/* --------------------------------------------------------------------
+ *  UART
+ * -------------------------------------------------------------------- */
+#if defined(CONFIG_DRIVER_SERIAL_ATMEL)
+resource_size_t __init at91_configure_dbgu(void)
+{
+	at91_set_A_periph(AT91_PIN_PB25, 1);		/* TXD1 */
+	at91_set_A_periph(AT91_PIN_PB24, 0);		/* RXD1 */
+
+	return SAMA5D4_BASE_DBGU;
+}
+
+resource_size_t __init at91_configure_usart0(unsigned pins)
+{
+	at91_set_A_periph(AT91_PIN_PD13, 1);		/* TXD1 */
+	at91_set_A_periph(AT91_PIN_PD12, 0);		/* RXD1 */
+
+	return SAMA5D4_BASE_USART0;
+}
+
+resource_size_t __init at91_configure_usart1(unsigned pins)
+{
+	at91_set_A_periph(AT91_PIN_PD17, 1);		/* TXD1 */
+	at91_set_A_periph(AT91_PIN_PD16, 0);		/* RXD1 */
+
+	return SAMA5D4_BASE_USART1;
+}
+
+
+resource_size_t __init at91_configure_usart2(unsigned pins)
+{
+	at91_set_B_periph(AT91_PIN_PB5, 1);		/* TXD1 */
+	at91_set_B_periph(AT91_PIN_PB4, 0);		/* RXD1 */
+
+	return SAMA5D4_BASE_USART2;
+}
+
+resource_size_t __init at91_configure_usart3(unsigned pins)
+{
+	at91_set_B_periph(AT91_PIN_PE17, 1);		/* TXD1 */
+	at91_set_B_periph(AT91_PIN_PE16, 0);		/* RXD1 */
+
+	return SAMA5D4_BASE_USART3;
+}
+
+resource_size_t __init at91_configure_usart4(unsigned pins)
+{
+	at91_set_B_periph(AT91_PIN_PE27, 1);		/* TXD1 */
+	at91_set_B_periph(AT91_PIN_PE26, 0);		/* RXD1 */
+
+	return SAMA5D4_BASE_USART4;
+}
+
+resource_size_t __init at91_configure_usart5(unsigned pins)
+{
+	at91_set_B_periph(AT91_PIN_PE30, 1);		/* TXD1 */
+	at91_set_B_periph(AT91_PIN_PE29, 0);		/* RXD1 */
+
+	return SAMA5D4_BASE_UART0;
+}
+
+resource_size_t __init at91_configure_usart6(unsigned pins)
+{
+	at91_set_C_periph(AT91_PIN_PC26, 1);		/* TXD1 */
+	at91_set_C_periph(AT91_PIN_PC25, 0);		/* RXD1 */
+
+	return SAMA5D4_BASE_UART1;
+}
+#endif
-- 
2.1.0.24.g4109c28


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
