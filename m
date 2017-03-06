Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cl1Wj-0001LH-Jd
 for barebox@lists.infradead.org; Mon, 06 Mar 2017 22:54:51 +0000
Received: by mail-pf0-x241.google.com with SMTP id v190so8047832pfb.0
 for <barebox@lists.infradead.org>; Mon, 06 Mar 2017 14:54:26 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  6 Mar 2017 14:53:25 -0800
Message-Id: <20170306225356.31475-15-andrew.smirnov@gmail.com>
In-Reply-To: <20170306225356.31475-1-andrew.smirnov@gmail.com>
References: <20170306225356.31475-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 14/45] at91sam9x5ek: Convert to use DT clock tree
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Convert board code to use clock tree form DT as well as converting UART,
GPIO and PIT devices to be instantiated from devicetree as well (to make
sure codebase is still bootable).

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/at91sam9x5ek/init.c |  14 +-
 arch/arm/mach-at91/Kconfig          |   4 +
 arch/arm/mach-at91/Makefile         |   9 +-
 arch/arm/mach-at91/at91sam9x5.c     | 311 ------------------------------------
 arch/arm/mach-at91/setup.c          |   4 +-
 5 files changed, 19 insertions(+), 323 deletions(-)
 delete mode 100644 arch/arm/mach-at91/at91sam9x5.c

diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
index 9fe117c..796ae84 100644
--- a/arch/arm/boards/at91sam9x5ek/init.c
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -87,6 +87,11 @@ static struct sam9_smc_config cm_nand_smc_config = {
 
 static void ek_add_device_nand(void)
 {
+	add_generic_device("at91sam9-smc",
+			   DEVICE_ID_SINGLE, NULL,
+			   AT91SAM9X5_BASE_SMC, 0x200,
+			   IORESOURCE_MEM, NULL);
+
 	/* setup bus-width (8 or 16) */
 	if (nand_pdata.bus_width_16)
 		cm_nand_smc_config.mode |= AT91_SMC_DBW_16;
@@ -333,15 +338,6 @@ static int at91sam9x5ek_console_init(void)
 	barebox_set_model("Atmel at91sam9x5-ek");
 	barebox_set_hostname("at91sam9x5-ek");
 
-	at91_register_uart(0, 0);
-	at91_register_uart(1, 0);
 	return 0;
 }
 console_initcall(at91sam9x5ek_console_init);
-
-static int at91sam9x5ek_main_clock(void)
-{
-	at91_set_main_clock(12000000);
-	return 0;
-}
-pure_initcall(at91sam9x5ek_main_clock);
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 2870bf3..28f66ac 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -38,6 +38,10 @@ config AT91SAM9_SMC
 config SOC_AT91SAM9
 	bool
 	select CPU_ARM926T
+	select HAVE_AT91_SMD
+	select HAVE_AT91_USB_CLK
+	select HAVE_AT91_UTMI
+	select COMMON_CLK_OF_PROVIDER
 	select AT91SAM9_SMC
 	select CLOCKSOURCE_ATMEL_PIT
 
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 1f63b09..edfa258 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -1,4 +1,9 @@
-obj-y += setup.o clock.o irq_fixup.o
+obj-y += setup.o irq_fixup.o
+
+ifeq ($(CONFIG_COMMON_CLK_OF_PROVIDER),)
+	obj-y + =clock.o
+endif
+
 obj-$(CONFIG_CMD_AT91_BOOT_TEST) += boot_test_cmd.o
 
 obj-$(CONFIG_AT91_BOOTSTRAP) += bootstrap.o
@@ -28,7 +33,7 @@ obj-$(CONFIG_ARCH_AT91SAM9263) += at91sam9263.o at91sam9263_devices.o
 obj-$(CONFIG_ARCH_AT91SAM9G10) += at91sam9261.o at91sam9261_devices.o
 obj-$(CONFIG_ARCH_AT91SAM9G20) += at91sam9260.o at91sam9260_devices.o
 obj-$(CONFIG_ARCH_AT91SAM9G45) += at91sam9g45.o at91sam9g45_devices.o
-obj-$(CONFIG_ARCH_AT91SAM9X5)	+= at91sam9x5.o at91sam9x5_devices.o
+obj-$(CONFIG_ARCH_AT91SAM9X5)	+= at91sam9x5_devices.o
 obj-$(CONFIG_ARCH_AT91SAM9N12)	+= at91sam9n12.o at91sam9n12_devices.o
 obj-$(CONFIG_ARCH_SAMA5D3)	+= sama5d3.o sama5d3_devices.o
 obj-$(CONFIG_ARCH_SAMA5D4)	+= sama5d4.o sama5d4_devices.o
diff --git a/arch/arm/mach-at91/at91sam9x5.c b/arch/arm/mach-at91/at91sam9x5.c
deleted file mode 100644
index 000b748..0000000
--- a/arch/arm/mach-at91/at91sam9x5.c
+++ /dev/null
@@ -1,311 +0,0 @@
-#include <common.h>
-#include <gpio.h>
-#include <init.h>
-#include <mach/hardware.h>
-#include <mach/at91_pmc.h>
-#include <mach/io.h>
-#include <mach/cpu.h>
-
-#include "soc.h"
-#include "generic.h"
-#include "clock.h"
-
-/* --------------------------------------------------------------------
- *  Clocks
- * -------------------------------------------------------------------- */
-
-/*
- * The peripheral clocks.
- */
-static struct clk pioAB_clk = {
-	.name		= "pioAB_clk",
-	.pmc_mask	= 1 << AT91SAM9X5_ID_PIOAB,
-	.type		= CLK_TYPE_PERIPHERAL,
-};
-static struct clk pioCD_clk = {
-	.name		= "pioCD_clk",
-	.pmc_mask	= 1 << AT91SAM9X5_ID_PIOCD,
-	.type		= CLK_TYPE_PERIPHERAL,
-};
-static struct clk smd_clk = {
-	.name		= "smd_clk",
-	.pmc_mask	= 1 << AT91SAM9X5_ID_SMD,
-	.type		= CLK_TYPE_PERIPHERAL,
-};
-static struct clk usart0_clk = {
-	.name		= "usart0_clk",
-	.pmc_mask	= 1 << AT91SAM9X5_ID_USART0,
-	.type		= CLK_TYPE_PERIPHERAL,
-};
-static struct clk usart1_clk = {
-	.name		= "usart1_clk",
-	.pmc_mask	= 1 << AT91SAM9X5_ID_USART1,
-	.type		= CLK_TYPE_PERIPHERAL,
-};
-static struct clk usart2_clk = {
-	.name		= "usart2_clk",
-	.pmc_mask	= 1 << AT91SAM9X5_ID_USART2,
-	.type		= CLK_TYPE_PERIPHERAL,
-};
-/* USART3 clock - Only for sam9g25/sam9x25 */
-static struct clk usart3_clk = {
-	.name		= "usart3_clk",
-	.pmc_mask	= 1 << AT91SAM9X5_ID_USART3,
-	.type		= CLK_TYPE_PERIPHERAL,
-};
-static struct clk twi0_clk = {
-	.name		= "twi0_clk",
-	.pmc_mask	= 1 << AT91SAM9X5_ID_TWI0,
-	.type		= CLK_TYPE_PERIPHERAL,
-};
-static struct clk twi1_clk = {
-	.name		= "twi1_clk",
-	.pmc_mask	= 1 << AT91SAM9X5_ID_TWI1,
-	.type		= CLK_TYPE_PERIPHERAL,
-};
-static struct clk twi2_clk = {
-	.name		= "twi2_clk",
-	.pmc_mask	= 1 << AT91SAM9X5_ID_TWI2,
-	.type		= CLK_TYPE_PERIPHERAL,
-};
-static struct clk mmc0_clk = {
-	.name		= "mci0_clk",
-	.pmc_mask	= 1 << AT91SAM9X5_ID_MCI0,
-	.type		= CLK_TYPE_PERIPHERAL,
-};
-static struct clk spi0_clk = {
-	.name		= "spi0_clk",
-	.pmc_mask	= 1 << AT91SAM9X5_ID_SPI0,
-	.type		= CLK_TYPE_PERIPHERAL,
-};
-static struct clk spi1_clk = {
-	.name		= "spi1_clk",
-	.pmc_mask	= 1 << AT91SAM9X5_ID_SPI1,
-	.type		= CLK_TYPE_PERIPHERAL,
-};
-static struct clk uart0_clk = {
-	.name		= "uart0_clk",
-	.pmc_mask	= 1 << AT91SAM9X5_ID_UART0,
-	.type		= CLK_TYPE_PERIPHERAL,
-};
-static struct clk uart1_clk = {
-	.name		= "uart1_clk",
-	.pmc_mask	= 1 << AT91SAM9X5_ID_UART1,
-	.type		= CLK_TYPE_PERIPHERAL,
-};
-static struct clk tcb0_clk = {
-	.name		= "tcb0_clk",
-	.pmc_mask	= 1 << AT91SAM9X5_ID_TCB,
-	.type		= CLK_TYPE_PERIPHERAL,
-};
-static struct clk pwm_clk = {
-	.name		= "pwm_clk",
-	.pmc_mask	= 1 << AT91SAM9X5_ID_PWM,
-	.type		= CLK_TYPE_PERIPHERAL,
-};
-static struct clk adc_clk = {
-	.name		= "adc_clk",
-	.pmc_mask	= 1 << AT91SAM9X5_ID_ADC,
-	.type	= CLK_TYPE_PERIPHERAL,
-};
-static struct clk dma0_clk = {
-	.name		= "dma0_clk",
-	.pmc_mask	= 1 << AT91SAM9X5_ID_DMA0,
-	.type	= CLK_TYPE_PERIPHERAL,
-};
-static struct clk dma1_clk = {
-	.name		= "dma1_clk",
-	.pmc_mask	= 1 << AT91SAM9X5_ID_DMA1,
-	.type		= CLK_TYPE_PERIPHERAL,
-};
-static struct clk uhphs_clk = {
-	.name		= "uhphs",
-	.pmc_mask	= 1 << AT91SAM9X5_ID_UHPHS,
-	.type		= CLK_TYPE_PERIPHERAL,
-};
-static struct clk udphs_clk = {
-	.name		= "udphs_clk",
-	.pmc_mask	= 1 << AT91SAM9X5_ID_UDPHS,
-	.type		= CLK_TYPE_PERIPHERAL,
-};
-/* emac0 clock - Only for sam9g25/sam9x25/sam9g35/sam9x35 */
-static struct clk macb0_clk = {
-	.name		= "macb0_clk",
-	.pmc_mask	= 1 << AT91SAM9X5_ID_EMAC0,
-	.type		= CLK_TYPE_PERIPHERAL,
-};
-/* lcd clock - Only for sam9g15/sam9g35/sam9x35 */
-static struct clk lcdc_clk = {
-	.name		= "lcdc_clk",
-	.pmc_mask	= 1 << AT91SAM9X5_ID_LCDC,
-	.type		= CLK_TYPE_PERIPHERAL,
-};
-/* isi clock - Only for sam9g25 */
-static struct clk isi_clk = {
-	.name		= "isi_clk",
-	.pmc_mask	= 1 << AT91SAM9X5_ID_ISI,
-	.type		= CLK_TYPE_PERIPHERAL,
-};
-static struct clk mmc1_clk = {
-	.name		= "mci1_clk",
-	.pmc_mask	= 1 << AT91SAM9X5_ID_MCI1,
-	.type		= CLK_TYPE_PERIPHERAL,
-};
-/* emac1 clock - Only for sam9x25 */
-static struct clk macb1_clk = {
-	.name		= "macb1_clk",
-	.pmc_mask	= 1 << AT91SAM9X5_ID_EMAC1,
-	.type		= CLK_TYPE_PERIPHERAL,
-};
-static struct clk ssc_clk = {
-	.name		= "ssc_clk",
-	.pmc_mask	= 1 << AT91SAM9X5_ID_SSC,
-	.type		= CLK_TYPE_PERIPHERAL,
-};
-/* can0 clock - Only for sam9x35 */
-static struct clk can0_clk = {
-	.name		= "can0_clk",
-	.pmc_mask	= 1 << AT91SAM9X5_ID_CAN0,
-	.type		= CLK_TYPE_PERIPHERAL,
-};
-/* can1 clock - Only for sam9x35 */
-static struct clk can1_clk = {
-	.name		= "can1_clk",
-	.pmc_mask	= 1 << AT91SAM9X5_ID_CAN1,
-	.type		= CLK_TYPE_PERIPHERAL,
-};
-
-static struct clk *periph_clocks[] __initdata = {
-	&pioAB_clk,
-	&pioCD_clk,
-	&smd_clk,
-	&usart0_clk,
-	&usart1_clk,
-	&usart2_clk,
-	&twi0_clk,
-	&twi1_clk,
-	&twi2_clk,
-	&mmc0_clk,
-	&spi0_clk,
-	&spi1_clk,
-	&uart0_clk,
-	&uart1_clk,
-	&tcb0_clk,
-	&pwm_clk,
-	&adc_clk,
-	&dma0_clk,
-	&dma1_clk,
-	&uhphs_clk,
-	&udphs_clk,
-	&mmc1_clk,
-	&ssc_clk,
-	// irq0
-};
-
-static struct clk_lookup periph_clocks_lookups[] = {
-	CLKDEV_CON_DEV_ID("macb_clk", "macb0", &macb0_clk),
-	CLKDEV_CON_DEV_ID("macb_clk", "macb1", &macb1_clk),
-	CLKDEV_CON_ID("ohci_clk", &uhphs_clk),
-	CLKDEV_CON_DEV_ID("ehci_clk", "atmel-ehci", &uhphs_clk),
-	CLKDEV_CON_DEV_ID("spi_clk", "atmel_spi0", &spi0_clk),
-	CLKDEV_CON_DEV_ID("spi_clk", "atmel_spi1", &spi1_clk),
-	CLKDEV_CON_DEV_ID("mci_clk", "atmel_mci0", &mmc0_clk),
-	CLKDEV_CON_DEV_ID("mci_clk", "atmel_mci1", &mmc1_clk),
-	CLKDEV_DEV_ID("at91sam9x5-gpio0", &pioAB_clk),
-	CLKDEV_DEV_ID("at91sam9x5-gpio1", &pioAB_clk),
-	CLKDEV_DEV_ID("at91sam9x5-gpio2", &pioCD_clk),
-	CLKDEV_DEV_ID("at91sam9x5-gpio3", &pioCD_clk),
-	CLKDEV_DEV_ID("at91-pit", &mck),
-	CLKDEV_CON_DEV_ID("hck1", "atmel_hlcdfb", &lcdc_clk),
-};
-
-static struct clk_lookup usart_clocks_lookups[] = {
-	CLKDEV_CON_DEV_ID("usart", "atmel_usart0", &mck),
-	CLKDEV_CON_DEV_ID("usart", "atmel_usart1", &usart0_clk),
-	CLKDEV_CON_DEV_ID("usart", "atmel_usart2", &usart1_clk),
-	CLKDEV_CON_DEV_ID("usart", "atmel_usart3", &usart2_clk),
-	CLKDEV_CON_DEV_ID("usart", "atmel_usart4", &usart3_clk),
-};
-
-/*
- * The two programmable clocks.
- * You must configure pin multiplexing to bring these signals out.
- */
-static struct clk pck0 = {
-	.name		= "pck0",
-	.pmc_mask	= AT91_PMC_PCK0,
-	.type		= CLK_TYPE_PROGRAMMABLE,
-	.id		= 0,
-};
-static struct clk pck1 = {
-	.name		= "pck1",
-	.pmc_mask	= AT91_PMC_PCK1,
-	.type		= CLK_TYPE_PROGRAMMABLE,
-	.id		= 1,
-};
-
-static void __init at91sam9x5_register_clocks(void)
-{
-	int i;
-
-	for (i = 0; i < ARRAY_SIZE(periph_clocks); i++)
-		clk_register(periph_clocks[i]);
-
-	clkdev_add_table(periph_clocks_lookups,
-			 ARRAY_SIZE(periph_clocks_lookups));
-	clkdev_add_table(usart_clocks_lookups,
-			 ARRAY_SIZE(usart_clocks_lookups));
-
-	if (cpu_is_at91sam9g25()
-	|| cpu_is_at91sam9x25())
-		clk_register(&usart3_clk);
-
-	if (cpu_is_at91sam9g25()
-	|| cpu_is_at91sam9x25()
-	|| cpu_is_at91sam9g35()
-	|| cpu_is_at91sam9x35())
-		clk_register(&macb0_clk);
-
-	if (cpu_is_at91sam9g15()
-	|| cpu_is_at91sam9g35()
-	|| cpu_is_at91sam9x35())
-		clk_register(&lcdc_clk);
-
-	if (cpu_is_at91sam9g25())
-		clk_register(&isi_clk);
-
-	if (cpu_is_at91sam9x25())
-		clk_register(&macb1_clk);
-
-	if (cpu_is_at91sam9x25()
-	|| cpu_is_at91sam9x35()) {
-		clk_register(&can0_clk);
-		clk_register(&can1_clk);
-	}
-
-	clk_register(&pck0);
-	clk_register(&pck1);
-}
-
-/* --------------------------------------------------------------------
- *  AT91SAM9x5 processor initialization
- * -------------------------------------------------------------------- */
-
-static void at91sam9x5_initialize(void)
-{
-	/* Register the processor-specific clocks */
-	at91sam9x5_register_clocks();
-
-	/* Register GPIO subsystem */
-	at91_add_sam9x5_gpio(0, AT91SAM9X5_BASE_PIOA);
-	at91_add_sam9x5_gpio(1, AT91SAM9X5_BASE_PIOB);
-	at91_add_sam9x5_gpio(2, AT91SAM9X5_BASE_PIOC);
-	at91_add_sam9x5_gpio(3, AT91SAM9X5_BASE_PIOD);
-
-	at91_add_pit(AT91SAM9X5_BASE_PIT);
-	at91_add_sam9_smc(DEVICE_ID_SINGLE, AT91SAM9X5_BASE_SMC, 0x200);
-}
-
-AT91_SOC_START(sam9x5)
-	.init = at91sam9x5_initialize,
-AT91_SOC_END
diff --git a/arch/arm/mach-at91/setup.c b/arch/arm/mach-at91/setup.c
index 1fa50ac..8f32af0 100644
--- a/arch/arm/mach-at91/setup.c
+++ b/arch/arm/mach-at91/setup.c
@@ -85,7 +85,6 @@ static void __init soc_detect(u32 dbgu_base)
 
 	case ARCH_ID_AT91SAM9X5:
 		at91_soc_initdata.type = AT91_SOC_SAM9X5;
-		at91_boot_soc = at91sam9x5_soc;
 		break;
 
 	case ARCH_ID_AT91SAM9N12:
@@ -284,6 +283,9 @@ static int at91_detect(void)
 	pr_info("AT91: Detected soc subtype: %s\n",
 		at91_get_soc_subtype(&at91_soc_initdata));
 
+	if (IS_ENABLED(CONFIG_COMMON_CLK_OF_PROVIDER))
+		return 0;
+
 	if (!at91_soc_is_enabled())
 		panic("AT91: Soc not enabled");
 
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
