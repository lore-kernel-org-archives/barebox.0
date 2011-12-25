Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Reuql-0006DZ-9L
 for barebox@lists.infradead.org; Sun, 25 Dec 2011 20:39:23 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1ReuqA-0000hS-N9
 for barebox@lists.infradead.org; Sun, 25 Dec 2011 21:38:42 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1ReuqA-0001Lx-IQ
 for barebox@lists.infradead.org; Sun, 25 Dec 2011 21:38:42 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sun, 25 Dec 2011 21:38:37 +0100
Message-Id: <1324845517-4601-15-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1324845517-4601-1-git-send-email-jbe@pengutronix.de>
References: <1324845517-4601-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 14/14] MACH SAMSUNG/S3C: Re-work the GPIO handling for S3C24xx
 CPUs
To: barebox@lists.infradead.org

a) use the more CPU specific S3C* macro names
b) move the register description out of the way, as more recent CPUs using a
   different layout and more features

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/boards/a9m2410/a9m2410.c                 |   41 ++++++------
 arch/arm/boards/a9m2440/a9m2410dev.c              |   53 +++++++-------
 arch/arm/boards/a9m2440/a9m2440.c                 |    5 +-
 arch/arm/boards/a9m2440/lowlevel_init.S           |    3 +-
 arch/arm/boards/mini2440/mini2440.c               |    5 +-
 arch/arm/mach-samsung/generic.c                   |    3 +-
 arch/arm/mach-samsung/gpio-s3c24x0.c              |   31 ++++----
 arch/arm/mach-samsung/include/mach/s3c-iomap.h    |   62 +----------------
 arch/arm/mach-samsung/include/mach/s3c24xx-gpio.h |   77 +++++++++++++++++++++
 9 files changed, 152 insertions(+), 128 deletions(-)
 create mode 100644 arch/arm/mach-samsung/include/mach/s3c24xx-gpio.h

diff --git a/arch/arm/boards/a9m2410/a9m2410.c b/arch/arm/boards/a9m2410/a9m2410.c
index daaa5c1..adeaacc 100644
--- a/arch/arm/boards/a9m2410/a9m2410.c
+++ b/arch/arm/boards/a9m2410/a9m2410.c
@@ -36,6 +36,7 @@
 #include <mach/s3c24xx-nand.h>
 #include <mach/s3c-generic.h>
 #include <mach/s3c-busctl.h>
+#include <mach/s3c24xx-gpio.h>
 
 // {"NAND 1MiB 3,3V 8-bit", 0xec, 256, 1, 0x1000, 0},
 static struct s3c24x0_nand_platform_data nand_info = {
@@ -53,29 +54,29 @@ static int a9m2410_mem_init(void)
 	size = s3c24xx_get_memory_size();
 
 	/* ---------- configure the GPIOs ------------- */
-	writel(0x007FFFFF, GPACON);
-	writel(0x00000000, GPCCON);
-	writel(0x00000000, GPCUP);
-	writel(0x00000000, GPDCON);
-	writel(0x00000000, GPDUP);
-	writel(0xAAAAAAAA, GPECON);
-	writel(0x0000E03F, GPEUP);
-	writel(0x00000000, GPBCON);	/* all inputs */
-	writel(0x00000007, GPBUP);	/* pullup disabled for GPB0..3 */
-	writel(0x00009000, GPFCON);	/* GPF7 CLK_INT#, GPF6 Debug-LED */
-	writel(0x000000FF, GPFUP);
-	writel(readl(GPGDAT) | 0x0010, GPGDAT);	/* switch off LCD backlight */
-	writel(0xFF00A938, GPGCON);	/* switch off USB device */
-	writel(0x0000F000, GPGUP);
-	writel(readl(GPHDAT) | 0x100, GPHDAT);	/* switch BOOTINT/GPIO_ON# to high */
-	writel(0x000007FF, GPHUP);
-	writel(0x0029FAAA, GPHCON);
+	writel(0x007FFFFF, S3C_GPACON);
+	writel(0x00000000, S3C_GPCCON);
+	writel(0x00000000, S3C_GPCUP);
+	writel(0x00000000, S3C_GPDCON);
+	writel(0x00000000, S3C_GPDUP);
+	writel(0xAAAAAAAA, S3C_GPECON);
+	writel(0x0000E03F, S3C_GPEUP);
+	writel(0x00000000, S3C_GPBCON);	/* all inputs */
+	writel(0x00000007, S3C_GPBUP);	/* pullup disabled for GPB0..3 */
+	writel(0x00009000, S3C_GPFCON);	/* GPF7 CLK_INT#, GPF6 Debug-LED */
+	writel(0x000000FF, S3C_GPFUP);
+	writel(readl(S3C_GPGDAT) | 0x0010, S3C_GPGDAT);	/* switch off LCD backlight */
+	writel(0xFF00A938, S3C_GPGCON);	/* switch off USB device */
+	writel(0x0000F000, S3C_GPGUP);
+	writel(readl(S3C_GPHDAT) | 0x100, S3C_GPHDAT);	/* switch BOOTINT/GPIO_ON# to high */
+	writel(0x000007FF, S3C_GPHUP);
+	writel(0x0029FAAA, S3C_GPHCON);
 	/*
 	 * USB port1 normal, USB port0 normal, USB1 pads for device
 	 * PCLK output on CLKOUT0, UPLL CLK output on CLKOUT1,
 	 * 2nd SDRAM bank off (only bank 1 is used)
 	 */
-	writel(0x40140, MISCCR);
+	writel(0x40140, S3C_MISCCR);
 
 	arm_add_mem_device("ram0", S3C_SDRAM_BASE, size);
 
@@ -103,9 +104,9 @@ static int a9m2410_devices_init(void)
 	writel(reg, S3C_BWSCON);
 
 	/* release the reset signal to the network and UART device */
-        reg = readl(MISCCR);
+	reg = readl(S3C_MISCCR);
 	reg |= 0x10000;
-	writel(reg, MISCCR);
+	writel(reg, S3C_MISCCR);
 
 	/* ----------- the devices the boot loader should work with -------- */
 	add_generic_device("s3c24x0_nand", -1, NULL, S3C24X0_NAND_BASE, 0,
diff --git a/arch/arm/boards/a9m2440/a9m2410dev.c b/arch/arm/boards/a9m2440/a9m2410dev.c
index 1da69eb..bedb0f7 100644
--- a/arch/arm/boards/a9m2440/a9m2410dev.c
+++ b/arch/arm/boards/a9m2440/a9m2410dev.c
@@ -30,6 +30,7 @@
 #include <io.h>
 #include <mach/s3c-iomap.h>
 #include <mach/s3c-busctl.h>
+#include <mach/s3c24xx-gpio.h>
 
 /**
  * Initialize the CPU to be able to work with the a9m2410dev evaluation board
@@ -39,38 +40,38 @@ int a9m2410dev_devices_init(void)
 	unsigned int reg;
 
 	/* ---------- configure the GPIOs ------------- */
-	writel(0x007FFFFF, GPACON);
-	writel(0x00000000, GPCCON);
-	writel(0x00000000, GPCUP);
-	writel(0x00000000, GPDCON);
-	writel(0x00000000, GPDUP);
-	writel(0xAAAAAAAA, GPECON);
-	writel(0x0000E03F, GPEUP);
-	writel(0x00000000, GPBCON);	/* all inputs */
-	writel(0x00000007, GPBUP);	/* pullup disabled for GPB0..3 */
-	writel(0x00009000, GPFCON);	/* GPF7 CLK_INT#, GPF6 Debug-LED */
-	writel(0x000000FF, GPFUP);
-	writel(readl(GPGDAT) | 0x1010, GPGDAT);	/* switch off IDLE_SW#, switch off LCD backlight */
-	writel(0x0100A93A, GPGCON);	/* switch on USB device */
-	writel(0x0000F000, GPGUP);
-	writel(0x0029FAAA, GPHCON);
+	writel(0x007FFFFF, S3C_GPACON);
+	writel(0x00000000, S3C_GPCCON);
+	writel(0x00000000, S3C_GPCUP);
+	writel(0x00000000, S3C_GPDCON);
+	writel(0x00000000, S3C_GPDUP);
+	writel(0xAAAAAAAA, S3C_GPECON);
+	writel(0x0000E03F, S3C_GPEUP);
+	writel(0x00000000, S3C_GPBCON);	/* all inputs */
+	writel(0x00000007, S3C_GPBUP);	/* pullup disabled for GPB0..3 */
+	writel(0x00009000, S3C_GPFCON);	/* GPF7 CLK_INT#, GPF6 Debug-LED */
+	writel(0x000000FF, S3C_GPFUP);
+	writel(readl(S3C_GPGDAT) | 0x1010, S3C_GPGDAT);	/* switch off IDLE_SW#, switch off LCD backlight */
+	writel(0x0100A93A, S3C_GPGCON);	/* switch on USB device */
+	writel(0x0000F000, S3C_GPGUP);
+	writel(0x0029FAAA, S3C_GPHCON);
 
-	writel((1 << 12) | (0 << 11), GPJDAT);
-	writel(0x0016aaaa, GPJCON);
-	writel(~((0<<12)| (1<<11)), GPJUP);
+	writel((1 << 12) | (0 << 11), S3C_GPJDAT);
+	writel(0x0016aaaa, S3C_GPJCON);
+	writel(~((0<<12)| (1<<11)), S3C_GPJUP);
 
-	writel((0 << 12) | (0 << 11), GPJDAT);
-	writel(0x0016aaaa, GPJCON);
-	writel(0x00001fff, GPJUP);
+	writel((0 << 12) | (0 << 11), S3C_GPJDAT);
+	writel(0x0016aaaa, S3C_GPJCON);
+	writel(0x00001fff, S3C_GPJUP);
 
-	writel(0x00000000, DSC0);
-	writel(0x00000000, DSC1);
+	writel(0x00000000, S3C_DSC0);
+	writel(0x00000000, S3C_DSC1);
 
 	/*
 	 * USB port1 normal, USB port0 normal, USB1 pads for device
 	 * PCLK output on CLKOUT0, UPLL CLK output on CLKOUT1,
 	 */
-	writel((readl(MISCCR) & ~0xFFFF) | 0x0140, MISCCR);
+	writel((readl(S3C_MISCCR) & ~0xFFFF) | 0x0140, S3C_MISCCR);
 
 	/* ----------- configure the access to the outer space ---------- */
 	reg = readl(S3C_BWSCON);
@@ -88,9 +89,9 @@ int a9m2410dev_devices_init(void)
 	writel(reg, S3C_BWSCON);
 
 	/* release the reset signal to the network and UART device */
-        reg = readl(MISCCR);
+	reg = readl(S3C_MISCCR);
 	reg |= 0x10000;
-	writel(reg, MISCCR);
+	writel(reg, S3C_MISCCR);
 
 	return 0;
 }
diff --git a/arch/arm/boards/a9m2440/a9m2440.c b/arch/arm/boards/a9m2440/a9m2440.c
index 56ae914..6c6ccdb 100644
--- a/arch/arm/boards/a9m2440/a9m2440.c
+++ b/arch/arm/boards/a9m2440/a9m2440.c
@@ -36,6 +36,7 @@
 #include <mach/s3c24xx-nand.h>
 #include <mach/s3c-generic.h>
 #include <mach/s3c-busctl.h>
+#include <mach/s3c24xx-gpio.h>
 
 #include "baseboards.h"
 
@@ -123,9 +124,9 @@ static int a9m2440_devices_init(void)
 #endif
 
 	/* release the reset signal to external devices */
-	reg = readl(MISCCR);
+	reg = readl(S3C_MISCCR);
 	reg |= 0x10000;
-	writel(reg, MISCCR);
+	writel(reg, S3C_MISCCR);
 
 	/* ----------- the devices the boot loader should work with -------- */
 	add_generic_device("s3c24x0_nand", -1, NULL, S3C24X0_NAND_BASE, 0,
diff --git a/arch/arm/boards/a9m2440/lowlevel_init.S b/arch/arm/boards/a9m2440/lowlevel_init.S
index 57ebe3f..e915a16 100644
--- a/arch/arm/boards/a9m2440/lowlevel_init.S
+++ b/arch/arm/boards/a9m2440/lowlevel_init.S
@@ -4,6 +4,7 @@
 
 #include <config.h>
 #include <mach/s3c-iomap.h>
+#include <mach/s3c24xx-gpio.h>
 
 	.section ".text_bare_init.board_init_lowlevel","ax"
 
@@ -33,7 +34,7 @@ sdram_init:
 	 * configured yet, these pins show external settings, to detect
 	 * the SDRAM size.
 	 */
-	ldr r1, =GPBDAT
+	ldr r1, =S3C_GPBDAT
 	ldr r4, [r1]
 	and r4, r4, #0x3
 
diff --git a/arch/arm/boards/mini2440/mini2440.c b/arch/arm/boards/mini2440/mini2440.c
index 29fd5a8..97e56db 100644
--- a/arch/arm/boards/mini2440/mini2440.c
+++ b/arch/arm/boards/mini2440/mini2440.c
@@ -44,6 +44,7 @@
 #include <mach/s3c-mci.h>
 #include <mach/s3c24xx-fb.h>
 #include <mach/s3c-busctl.h>
+#include <mach/s3c24xx-gpio.h>
 
 static struct s3c24x0_nand_platform_data nand_info = {
 	.nand_timing = CALC_NFCONF_TIMING(MINI2440_TACLS, MINI2440_TWRPH0,
@@ -292,9 +293,9 @@ static int mini2440_devices_init(void)
 	writel(reg, S3C_BWSCON);
 
 	/* release the reset signal to external devices */
-	reg = readl(MISCCR);
+	reg = readl(S3C_MISCCR);
 	reg |= 0x10000;
-	writel(reg, MISCCR);
+	writel(reg, S3C_MISCCR);
 
 	add_generic_device("s3c24x0_nand", -1, NULL, S3C24X0_NAND_BASE, 0,
 			   IORESOURCE_MEM, &nand_info);
diff --git a/arch/arm/mach-samsung/generic.c b/arch/arm/mach-samsung/generic.c
index cbe0321..7706be2 100644
--- a/arch/arm/mach-samsung/generic.c
+++ b/arch/arm/mach-samsung/generic.c
@@ -31,6 +31,7 @@
 #include <mach/s3c-iomap.h>
 #include <mach/s3c-generic.h>
 #include <mach/s3c-busctl.h>
+#include <mach/s3c24xx-gpio.h>
 
 /**
  * Calculate the amount of connected and available memory
@@ -81,7 +82,7 @@ uint32_t s3c24xx_get_memory_size(void)
 void s3c24xx_disable_second_sdram_bank(void)
 {
 	writel(readl(S3C_BANKCON7) & ~(0x3 << 15), S3C_BANKCON7);
-	writel(readl(MISCCR) | (1 << 18), MISCCR); /* disable its clock */
+	writel(readl(S3C_MISCCR) | (1 << 18), S3C_MISCCR); /* disable its clock */
 }
 
 #define S3C_WTCON (S3C_WATCHDOG_BASE)
diff --git a/arch/arm/mach-samsung/gpio-s3c24x0.c b/arch/arm/mach-samsung/gpio-s3c24x0.c
index 23b2609..4f1c5cc 100644
--- a/arch/arm/mach-samsung/gpio-s3c24x0.c
+++ b/arch/arm/mach-samsung/gpio-s3c24x0.c
@@ -20,6 +20,7 @@
 #include <io.h>
 #include <mach/s3c-iomap.h>
 #include <mach/gpio.h>
+#include <mach/s3c24xx-gpio.h>
 
 static const unsigned char group_offset[] =
 {
@@ -45,10 +46,10 @@ void gpio_set_value(unsigned gpio, int value)
 
 	offset = group_offset[group];
 
-	reg = readl(GPADAT + offset);
+	reg = readl(S3C_GPADAT + offset);
 	reg &= ~(1 << bit);
 	reg |= (!!value) << bit;
-	writel(reg, GPADAT + offset);
+	writel(reg, S3C_GPADAT + offset);
 }
 
 int gpio_direction_input(unsigned gpio)
@@ -60,9 +61,9 @@ int gpio_direction_input(unsigned gpio)
 
 	offset = group_offset[group];
 
-	reg = readl(GPACON + offset);
+	reg = readl(S3C_GPACON + offset);
 	reg &= ~(0x3 << (bit << 1));
-	writel(reg, GPACON + offset);
+	writel(reg, S3C_GPACON + offset);
 
 	return 0;
 }
@@ -81,14 +82,14 @@ int gpio_direction_output(unsigned gpio, int value)
 	gpio_set_value(gpio,value);
 	/* direction */
 	if (group == 0) {	/* GPA is special */
-		reg = readl(GPACON);
+		reg = readl(S3C_GPACON);
 		reg &= ~(1 << bit);
-		writel(reg, GPACON);
+		writel(reg, S3C_GPACON);
 	} else {
-		reg = readl(GPACON + offset);
+		reg = readl(S3C_GPACON + offset);
 		reg &= ~(0x3 << (bit << 1));
 		reg |= 0x1 << (bit << 1);
-		writel(reg, GPACON + offset);
+		writel(reg, S3C_GPACON + offset);
 	}
 
 	return 0;
@@ -107,7 +108,7 @@ int gpio_get_value(unsigned gpio)
 	offset = group_offset[group];
 
 	/* value */
-	reg = readl(GPADAT + offset);
+	reg = readl(S3C_GPADAT + offset);
 
 	return !!(reg & (1 << bit));
 }
@@ -132,9 +133,9 @@ void s3c_gpio_mode(unsigned gpio_mode)
 			gpio_direction_output(bit, GET_GPIOVAL(gpio_mode));
 			break;
 		default:
-			reg = readl(GPACON);
+			reg = readl(S3C_GPACON);
 			reg |= 1 << bit;
-			writel(reg, GPACON);
+			writel(reg, S3C_GPACON);
 			break;
 		}
 		return;
@@ -143,12 +144,12 @@ void s3c_gpio_mode(unsigned gpio_mode)
 	offset = group_offset[group];
 
 	if (PU_PRESENT(gpio_mode)) {
-		reg = readl(GPACON + offset + 8);
+		reg = readl(S3C_GPACON + offset + 8);
 		if (GET_PU(gpio_mode))
 			reg |= (1 << bit);	/* set means _disabled_ */
 		else
 			reg &= ~(1 << bit);
-		writel(reg, GPACON + offset + 8);
+		writel(reg, S3C_GPACON + offset + 8);
 	}
 
 	switch (func) {
@@ -160,10 +161,10 @@ void s3c_gpio_mode(unsigned gpio_mode)
 		break;
 	case 2: /* function one */
 	case 3: /* function two */
-		reg = readl(GPACON + offset);
+		reg = readl(S3C_GPACON + offset);
 		reg &= ~(0x3 << (bit << 1));
 		reg |= func << (bit << 1);
-		writel(reg, GPACON + offset);
+		writel(reg, S3C_GPACON + offset);
 		break;
 	}
 }
diff --git a/arch/arm/mach-samsung/include/mach/s3c-iomap.h b/arch/arm/mach-samsung/include/mach/s3c-iomap.h
index 4f713be..9e867f8 100644
--- a/arch/arm/mach-samsung/include/mach/s3c-iomap.h
+++ b/arch/arm/mach-samsung/include/mach/s3c-iomap.h
@@ -32,7 +32,7 @@
 #define S3C_WATCHDOG_BASE		0x53000000
 #define S3C2410_I2C_BASE		0x54000000
 #define S3C2410_I2S_BASE		0x55000000
-#define S3C24X0_GPIO_BASE		0x56000000
+#define S3C_GPIO_BASE			0x56000000
 #define S3C2410_RTC_BASE		0x57000000
 #define S3C2410_ADC_BASE		0x58000000
 #define S3C2410_SPI_BASE		0x59000000
@@ -67,63 +67,3 @@
 #define S3C_UART2_SIZE 0x4000
 #define S3C_UART3_BASE (S3C_UART_BASE + 0x8000)
 #define S3C_UART3_SIZE 0x4000
-
-/* GPIO registers (direct access) */
-#define GPACON (S3C24X0_GPIO_BASE)
-#define GPADAT (S3C24X0_GPIO_BASE + 0x04)
-
-#define GPBCON (S3C24X0_GPIO_BASE + 0x10)
-#define GPBDAT (S3C24X0_GPIO_BASE + 0x14)
-#define GPBUP (S3C24X0_GPIO_BASE + 0x18)
-
-#define GPCCON (S3C24X0_GPIO_BASE + 0x20)
-#define GPCDAT (S3C24X0_GPIO_BASE + 0x24)
-#define GPCUP (S3C24X0_GPIO_BASE + 0x28)
-
-#define GPDCON (S3C24X0_GPIO_BASE + 0x30)
-#define GPDDAT (S3C24X0_GPIO_BASE + 0x34)
-#define GPDUP (S3C24X0_GPIO_BASE + 0x38)
-
-#define GPECON (S3C24X0_GPIO_BASE + 0x40)
-#define GPEDAT (S3C24X0_GPIO_BASE + 0x44)
-#define GPEUP (S3C24X0_GPIO_BASE + 0x48)
-
-#define GPFCON (S3C24X0_GPIO_BASE + 0x50)
-#define GPFDAT (S3C24X0_GPIO_BASE + 0x54)
-#define GPFUP (S3C24X0_GPIO_BASE + 0x58)
-
-#define GPGCON (S3C24X0_GPIO_BASE + 0x60)
-#define GPGDAT (S3C24X0_GPIO_BASE + 0x64)
-#define GPGUP (S3C24X0_GPIO_BASE + 0x68)
-
-#define GPHCON (S3C24X0_GPIO_BASE + 0x70)
-#define GPHDAT (S3C24X0_GPIO_BASE + 0x74)
-#define GPHUP (S3C24X0_GPIO_BASE + 0x78)
-
-#ifdef CONFIG_CPU_S3C2440
-# define GPJCON (S3C24X0_GPIO_BASE + 0xd0)
-# define GPJDAT (S3C24X0_GPIO_BASE + 0xd4)
-# define GPJUP (S3C24X0_GPIO_BASE + 0xd8)
-#endif
-
-#define MISCCR  (S3C24X0_GPIO_BASE + 0x80)
-#define DCLKCON (S3C24X0_GPIO_BASE + 0x84)
-#define EXTINT0 (S3C24X0_GPIO_BASE + 0x88)
-#define EXTINT1 (S3C24X0_GPIO_BASE + 0x8c)
-#define EXTINT2 (S3C24X0_GPIO_BASE + 0x90)
-#define EINTFLT0 (S3C24X0_GPIO_BASE + 0x94)
-#define EINTFLT1 (S3C24X0_GPIO_BASE + 0x98)
-#define EINTFLT2 (S3C24X0_GPIO_BASE + 0x9c)
-#define EINTFLT3 (S3C24X0_GPIO_BASE + 0xa0)
-#define EINTMASK (S3C24X0_GPIO_BASE + 0xa4)
-#define EINTPEND (S3C24X0_GPIO_BASE + 0xa8)
-#define GSTATUS0 (S3C24X0_GPIO_BASE + 0xac)
-#define GSTATUS1 (S3C24X0_GPIO_BASE + 0xb0)
-#define GSTATUS2 (S3C24X0_GPIO_BASE + 0xb4)
-#define GSTATUS3 (S3C24X0_GPIO_BASE + 0xb8)
-#define GSTATUS4 (S3C24X0_GPIO_BASE + 0xbc)
-
-#ifdef CONFIG_CPU_S3C2440
-# define DSC0 (S3C24X0_GPIO_BASE + 0xc4)
-# define DSC1 (S3C24X0_GPIO_BASE + 0xc8)
-#endif
diff --git a/arch/arm/mach-samsung/include/mach/s3c24xx-gpio.h b/arch/arm/mach-samsung/include/mach/s3c24xx-gpio.h
new file mode 100644
index 0000000..c835974
--- /dev/null
+++ b/arch/arm/mach-samsung/include/mach/s3c24xx-gpio.h
@@ -0,0 +1,77 @@
+/*
+ * Copyright (C) 2011 Juergen Beisert, Pengutronix
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#ifndef __MACH_S3C24XX_GPIO_H
+# define __MACH_S3C24XX_GPIO_H
+
+#define S3C_GPACON (S3C_GPIO_BASE)
+#define S3C_GPADAT (S3C_GPIO_BASE + 0x04)
+
+#define S3C_GPBCON (S3C_GPIO_BASE + 0x10)
+#define S3C_GPBDAT (S3C_GPIO_BASE + 0x14)
+#define S3C_GPBUP (S3C_GPIO_BASE + 0x18)
+
+#define S3C_GPCCON (S3C_GPIO_BASE + 0x20)
+#define S3C_GPCDAT (S3C_GPIO_BASE + 0x24)
+#define S3C_GPCUP (S3C_GPIO_BASE + 0x28)
+
+#define S3C_GPDCON (S3C_GPIO_BASE + 0x30)
+#define S3C_GPDDAT (S3C_GPIO_BASE + 0x34)
+#define S3C_GPDUP (S3C_GPIO_BASE + 0x38)
+
+#define S3C_GPECON (S3C_GPIO_BASE + 0x40)
+#define S3C_GPEDAT (S3C_GPIO_BASE + 0x44)
+#define S3C_GPEUP (S3C_GPIO_BASE + 0x48)
+
+#define S3C_GPFCON (S3C_GPIO_BASE + 0x50)
+#define S3C_GPFDAT (S3C_GPIO_BASE + 0x54)
+#define S3C_GPFUP (S3C_GPIO_BASE + 0x58)
+
+#define S3C_GPGCON (S3C_GPIO_BASE + 0x60)
+#define S3C_GPGDAT (S3C_GPIO_BASE + 0x64)
+#define S3C_GPGUP (S3C_GPIO_BASE + 0x68)
+
+#define S3C_GPHCON (S3C_GPIO_BASE + 0x70)
+#define S3C_GPHDAT (S3C_GPIO_BASE + 0x74)
+#define S3C_GPHUP (S3C_GPIO_BASE + 0x78)
+
+#ifdef CONFIG_CPU_S3C2440
+# define S3C_GPJCON (S3C_GPIO_BASE + 0xd0)
+# define S3C_GPJDAT (S3C_GPIO_BASE + 0xd4)
+# define S3C_GPJUP (S3C_GPIO_BASE + 0xd8)
+#endif
+
+#define S3C_MISCCR  (S3C_GPIO_BASE + 0x80)
+#define S3C_DCLKCON (S3C_GPIO_BASE + 0x84)
+#define S3C_EXTINT0 (S3C_GPIO_BASE + 0x88)
+#define S3C_EXTINT1 (S3C_GPIO_BASE + 0x8c)
+#define S3C_EXTINT2 (S3C_GPIO_BASE + 0x90)
+#define S3C_EINTFLT0 (S3C_GPIO_BASE + 0x94)
+#define S3C_EINTFLT1 (S3C_GPIO_BASE + 0x98)
+#define S3C_EINTFLT2 (S3C_GPIO_BASE + 0x9c)
+#define S3C_EINTFLT3 (S3C_GPIO_BASE + 0xa0)
+#define S3C_EINTMASK (S3C_GPIO_BASE + 0xa4)
+#define S3C_EINTPEND (S3C_GPIO_BASE + 0xa8)
+#define S3C_GSTATUS0 (S3C_GPIO_BASE + 0xac)
+#define S3C_GSTATUS1 (S3C_GPIO_BASE + 0xb0)
+#define S3C_GSTATUS2 (S3C_GPIO_BASE + 0xb4)
+#define S3C_GSTATUS3 (S3C_GPIO_BASE + 0xb8)
+#define S3C_GSTATUS4 (S3C_GPIO_BASE + 0xbc)
+
+#ifdef CONFIG_CPU_S3C2440
+# define S3C_DSC0 (S3C_GPIO_BASE + 0xc4)
+# define S3C_DSC1 (S3C_GPIO_BASE + 0xc8)
+#endif
+
+#endif /* __MACH_S3C24XX_GPIO_H */
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
