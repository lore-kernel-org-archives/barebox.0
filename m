Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3.mail.ru ([94.100.176.131])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SN8vE-0007Ts-Jh
 for barebox@lists.infradead.org; Wed, 25 Apr 2012 20:34:47 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu, 26 Apr 2012 00:35:38 +0400
Message-Id: <1335386138-15103-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] PCM038: Added config option for PCM970 development board
To: barebox@lists.infradead.org

This change includes:
- Adding Kconfig option for PCM970 development board.
- Moving some devices from PCM038, which really not installed on module.
- Some reformatting source code.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/pcm038/Makefile   |    5 +-
 arch/arm/boards/pcm038/pcm038.c   |  279 ++++++++++---------------------------
 arch/arm/boards/pcm038/pcm038.dox |    5 +-
 arch/arm/boards/pcm038/pcm970.c   |  149 ++++++++++++++++++++
 arch/arm/mach-imx/Kconfig         |    8 +
 5 files changed, 238 insertions(+), 208 deletions(-)
 create mode 100644 arch/arm/boards/pcm038/pcm970.c

diff --git a/arch/arm/boards/pcm038/Makefile b/arch/arm/boards/pcm038/Makefile
index 970804e..6cd3a5b 100644
--- a/arch/arm/boards/pcm038/Makefile
+++ b/arch/arm/boards/pcm038/Makefile
@@ -1,3 +1,2 @@
-
-obj-y += lowlevel.o
-obj-y += pcm038.o
+obj-y					+= lowlevel.o pcm038.o
+obj-$(CONFIG_MACH_PCM970_BASEBOARD)	+= pcm970.o
diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index d481bdc..81fea95 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -19,9 +19,7 @@
  */
 
 #include <common.h>
-#include <net.h>
 #include <init.h>
-#include <environment.h>
 #include <mach/imx-regs.h>
 #include <fec.h>
 #include <notifier.h>
@@ -30,17 +28,12 @@
 #include <generated/mach-types.h>
 #include <partition.h>
 #include <fs.h>
-#include <fcntl.h>
 #include <nand.h>
-#include <command.h>
 #include <spi/spi.h>
 #include <io.h>
 #include <mach/imx-nand.h>
 #include <mach/imx-pll.h>
-#include <mach/imxfb.h>
-#include <asm/mmu.h>
 #include <i2c/i2c.h>
-#include <usb/ulpi.h>
 #include <mach/spi.h>
 #include <mach/iomux-mx27.h>
 #include <mach/devices-imx27.h>
@@ -48,24 +41,26 @@
 
 #include "pll.h"
 
+#define GPIO_SPI_CS0	(GPIO_PORTD + 28)
+
 static struct fec_platform_data fec_info = {
-	.xcv_type = MII100,
-	.phy_addr = 1,
+	.xcv_type	= MII100,
+	.phy_addr	= 1,
 };
 
-static int pcm038_spi_cs[] = {GPIO_PORTD + 28};
+static int pcm038_spi_cs[] = { GPIO_SPI_CS0, };
 
 static struct spi_imx_master pcm038_spi_0_data = {
-	.chipselect = pcm038_spi_cs,
-	.num_chipselect = ARRAY_SIZE(pcm038_spi_cs),
+	.chipselect	= pcm038_spi_cs,
+	.num_chipselect	= ARRAY_SIZE(pcm038_spi_cs),
 };
 
 static struct spi_board_info pcm038_spi_board_info[] = {
 	{
-		.name = "mc13xxx-spi",
-		.max_speed_hz = 3000000,
-		.bus_num = 0,
-		.chip_select = 0,
+		.name		= "mc13xxx-spi",
+		.max_speed_hz	= 3000000,
+		.bus_num	= 0,
+		.chip_select	= 0,
 	}
 };
 
@@ -75,71 +70,76 @@ static struct imx_nand_platform_data nand_info = {
 	.flash_bbt	= 1,
 };
 
-static struct imx_fb_videomode imxfb_mode = {
-	.mode = {
-		.name		= "Sharp-LQ035Q7",
-		.refresh	= 60,
-		.xres		= 240,
-		.yres		= 320,
-		.pixclock	= 188679, /* in ps (5.3MHz) */
-		.hsync_len	= 7,
-		.left_margin	= 5,
-		.right_margin	= 16,
-		.vsync_len	= 1,
-		.upper_margin	= 7,
-		.lower_margin	= 9,
-	},
-	/*
-	 * - HSYNC active high
-	 * - VSYNC active high
-	 * - clk notenabled while idle
-	 * - clock not inverted
-	 * - data not inverted
-	 * - data enable low active
-	 * - enable sharp mode
-	 */
-	.pcr		= 0xF00080C0,
-	.bpp		= 16,
-};
+static int pcm038_mem_init(void)
+{
+	arm_add_mem_device("ram0", 0xa0000000, 128 * 1024 * 1024);
 
-static struct imx_fb_platform_data pcm038_fb_data = {
-	.mode	= &imxfb_mode,
-	.num_modes = 1,
-	.pwmr	= 0x00A903FF,
-	.lscr1	= 0x00120300,
-	.dmacr	= 0x00020010,
-};
+	add_mem_device("ram1", IMX_CS1_BASE, 512 * 1024, /* Can be up to 2MiB */
+				   IORESOURCE_MEM_WRITEABLE);
+	return 0;
+}
+mem_initcall(pcm038_mem_init);
 
-#ifdef CONFIG_USB
-static void pcm038_usbh_init(void)
+/**
+ * The spctl0 register is a beast: Seems you can read it
+ * only one times without writing it again.
+ */
+static inline uint32_t get_pll_spctl10(void)
 {
-	uint32_t temp;
+	uint32_t reg;
 
-	temp = readl(IMX_OTG_BASE + 0x600);
-	temp &= ~((3 << 21) | 1);
-	temp |= (1 << 5) | (1 << 16) | (1 << 19) | (1 << 20);
-	writel(temp, IMX_OTG_BASE + 0x600);
+	reg = SPCTL0;
+	SPCTL0 = reg;
 
-	temp = readl(IMX_OTG_BASE + 0x584);
-	temp &= ~(3 << 30);
-	temp |= 2 << 30;
-	writel(temp, IMX_OTG_BASE + 0x584);
+	return reg;
+}
 
-	mdelay(10);
+/**
+ * If the PLL settings are in place switch the CPU core frequency to the max. value
+ */
+static int pcm038_power_init(void)
+{
+#ifdef CONFIG_MFD_MC13XXX
+	uint32_t spctl0 = get_pll_spctl10();
+	struct mc13xxx *mc13xxx = mc13xxx_get();
 
-	ulpi_setup((void *)(IMX_OTG_BASE + 0x570), 1);
-}
+	/* PLL registers already set to their final values? */
+	if (spctl0 == SPCTL0_VAL && MPCTL0 == MPCTL0_VAL) {
+		console_flush();
+		if (mc13xxx) {
+			mc13xxx_reg_write(mc13xxx, MC13783_REG_SWITCHERS(0),
+				MC13783_SWX_VOLTAGE(MC13783_SWX_VOLTAGE_1_450) |
+				MC13783_SWX_VOLTAGE_DVS(MC13783_SWX_VOLTAGE_1_450) |
+				MC13783_SWX_VOLTAGE_STANDBY(MC13783_SWX_VOLTAGE_1_450));
+
+			mc13xxx_reg_write(mc13xxx, MC13783_REG_SWITCHERS(4),
+				MC13783_SW1A_MODE(MC13783_SWX_MODE_NO_PULSE_SKIP) |
+				MC13783_SW1A_MODE_STANDBY(MC13783_SWX_MODE_NO_PULSE_SKIP) |
+				MC13783_SW1A_SOFTSTART |
+				MC13783_SW1B_MODE(MC13783_SWX_MODE_NO_PULSE_SKIP) |
+				MC13783_SW1B_MODE_STANDBY(MC13783_SWX_MODE_NO_PULSE_SKIP) |
+				MC13783_SW1B_SOFTSTART |
+				MC13783_SW_PLL_FACTOR(32));
+
+			/* Wait for required power level to run the CPU at 400 MHz */
+			udelay(100000);
+
+			CSCR = CSCR_VAL_FINAL;
+			PCDR0 = 0x130410c3;
+			PCDR1 = 0x09030911;
+
+			/* Clocks have changed. Notify clients */
+			clock_notifier_call_chain();
+		} else
+			printf("Failed to initialize PMIC. Will continue with low CPU speed\n");
+	}
 #endif
 
-static int pcm038_mem_init(void)
-{
-	arm_add_mem_device("ram0", 0xa0000000, 128 * 1024 * 1024);
+	/* Clock gating enable */
+	GPCR = 0x00050f08;
 
-	add_mem_device("ram1", 0xc8000000, 512 * 1024, /* Can be up to 2MiB */
-				   IORESOURCE_MEM_WRITEABLE);
 	return 0;
 }
-mem_initcall(pcm038_mem_init);
 
 static int pcm038_devices_init(void)
 {
@@ -147,6 +147,7 @@ static int pcm038_devices_init(void)
 	char *envdev;
 
 	unsigned int mode[] = {
+		/* FEC */
 		PD0_AIN_FEC_TXD0,
 		PD1_AIN_FEC_TXD1,
 		PD2_AIN_FEC_TXD2,
@@ -165,56 +166,17 @@ static int pcm038_devices_init(void)
 		PD15_AOUT_FEC_COL,
 		PD16_AIN_FEC_TX_ER,
 		PF23_AIN_FEC_TX_EN,
+		/* UART1 */
 		PE12_PF_UART1_TXD,
 		PE13_PF_UART1_RXD,
 		PE14_PF_UART1_CTS,
 		PE15_PF_UART1_RTS,
+		/* SPI */
 		PD25_PF_CSPI1_RDY,
-		GPIO_PORTD | 28 | GPIO_GPIO | GPIO_OUT,
+		GPIO_SPI_CS0 | GPIO_GPIO | GPIO_OUT,
 		PD29_PF_CSPI1_SCLK,
 		PD30_PF_CSPI1_MISO,
 		PD31_PF_CSPI1_MOSI,
-		/* display */
-		PA5_PF_LSCLK,
-		PA6_PF_LD0,
-		PA7_PF_LD1,
-		PA8_PF_LD2,
-		PA9_PF_LD3,
-		PA10_PF_LD4,
-		PA11_PF_LD5,
-		PA12_PF_LD6,
-		PA13_PF_LD7,
-		PA14_PF_LD8,
-		PA15_PF_LD9,
-		PA16_PF_LD10,
-		PA17_PF_LD11,
-		PA18_PF_LD12,
-		PA19_PF_LD13,
-		PA20_PF_LD14,
-		PA21_PF_LD15,
-		PA22_PF_LD16,
-		PA23_PF_LD17,
-		PA24_PF_REV,
-		PA25_PF_CLS,
-		PA26_PF_PS,
-		PA27_PF_SPL_SPR,
-		PA28_PF_HSYNC,
-		PA29_PF_VSYNC,
-		PA30_PF_CONTRAST,
-		PA31_PF_OE_ACD,
-		/* USB host 2 */
-		PA0_PF_USBH2_CLK,
-		PA1_PF_USBH2_DIR,
-		PA2_PF_USBH2_DATA7,
-		PA3_PF_USBH2_NXT,
-		PA4_PF_USBH2_STP,
-		PD19_AF_USBH2_DATA4,
-		PD20_AF_USBH2_DATA3,
-		PD21_AF_USBH2_DATA6,
-		PD22_AF_USBH2_DATA0,
-		PD23_AF_USBH2_DATA2,
-		PD24_AF_USBH2_DATA1,
-		PD26_AF_USBH2_DATA5,
 		/* I2C1 */
 		PD17_PF_I2C_DATA | GPIO_PUEN,
 		PD18_PF_I2C_CLK,
@@ -229,9 +191,6 @@ static int pcm038_devices_init(void)
 	/* configure SRAM on cs1 */
 	imx27_setup_weimcs(1, 0x0000d843, 0x22252521, 0x22220a00);
 
-	/* configure SJA1000 on cs4 */
-	imx27_setup_weimcs(4, 0x0000DCF6, 0x444A0301, 0x44443302);
-
 	/* initizalize gpios */
 	for (i = 0; i < ARRAY_SIZE(mode); i++)
 		imx_gpio_mode(mode[i]);
@@ -239,25 +198,18 @@ static int pcm038_devices_init(void)
 	PCCR0 |= PCCR0_CSPI1_EN;
 	PCCR1 |= PCCR1_PERCLK2_EN;
 
-	gpio_direction_output(GPIO_PORTD | 28, 0);
-	gpio_set_value(GPIO_PORTD | 28, 0);
-
 	spi_register_board_info(pcm038_spi_board_info, ARRAY_SIZE(pcm038_spi_board_info));
 	imx27_add_spi0(&pcm038_spi_0_data);
 
-	add_cfi_flash_device(-1, 0xC0000000, 32 * 1024 * 1024, 0);
+	pcm038_power_init();
+
+	add_cfi_flash_device(-1, IMX_CS0_BASE, 32 * 1024 * 1024, 0);
 	imx27_add_nand(&nand_info);
-	imx27_add_fb(&pcm038_fb_data);
 
 	PCCR0 |= PCCR0_I2C1_EN | PCCR0_I2C2_EN;
 	imx27_add_i2c0(NULL);
 	imx27_add_i2c1(NULL);
 
-#ifdef CONFIG_USB
-	pcm038_usbh_init();
-	add_generic_usb_ehci_device(-1, IMX_OTG_BASE + 0x400, NULL);
-#endif
-
 	/* Register the fec device after the PLL re-initialisation
 	 * as the fec depends on the (now higher) ipg clock
 	 */
@@ -294,7 +246,6 @@ static int pcm038_devices_init(void)
 
 	return 0;
 }
-
 device_initcall(pcm038_devices_init);
 
 static int pcm038_console_init(void)
@@ -303,82 +254,4 @@ static int pcm038_console_init(void)
 
 	return 0;
 }
-
 console_initcall(pcm038_console_init);
-
-#ifdef CONFIG_MFD_MC13XXX
-static int pmic_power(void)
-{
-	struct mc13xxx *mc13xxx;
-
-	mc13xxx = mc13xxx_get();
-	if (!mc13xxx)
-		return -ENODEV;
-
-	mc13xxx_reg_write(mc13xxx, MC13783_REG_SWITCHERS(0),
-		MC13783_SWX_VOLTAGE(MC13783_SWX_VOLTAGE_1_450) |
-		MC13783_SWX_VOLTAGE_DVS(MC13783_SWX_VOLTAGE_1_450) |
-		MC13783_SWX_VOLTAGE_STANDBY(MC13783_SWX_VOLTAGE_1_450));
-
-	mc13xxx_reg_write(mc13xxx, MC13783_REG_SWITCHERS(4),
-		MC13783_SW1A_MODE(MC13783_SWX_MODE_NO_PULSE_SKIP) |
-		MC13783_SW1A_MODE_STANDBY(MC13783_SWX_MODE_NO_PULSE_SKIP) |
-		MC13783_SW1A_SOFTSTART |
-		MC13783_SW1B_MODE(MC13783_SWX_MODE_NO_PULSE_SKIP) |
-		MC13783_SW1B_MODE_STANDBY(MC13783_SWX_MODE_NO_PULSE_SKIP) |
-		MC13783_SW1B_SOFTSTART |
-		MC13783_SW_PLL_FACTOR(32));
-
-	return 0;
-}
-#else
-# define pmic_power()	(1)
-#endif
-
-/**
- * The spctl0 register is a beast: Seems you can read it
- * only one times without writing it again.
- */
-static inline uint32_t get_pll_spctl10(void)
-{
-	uint32_t reg;
-
-	reg = SPCTL0;
-	SPCTL0 = reg;
-
-	return reg;
-}
-
-/**
- * If the PLL settings are in place switch the CPU core frequency to the max. value
- */
-static int pcm038_power_init(void)
-{
-	uint32_t spctl0;
-
-	spctl0 = get_pll_spctl10();
-
-	/* PLL registers already set to their final values? */
-	if (spctl0 == SPCTL0_VAL && MPCTL0 == MPCTL0_VAL) {
-		console_flush();
-		if (!pmic_power()) {
-			/* wait for required power level to run the CPU at 400 MHz */
-			udelay(100000);
-			CSCR = CSCR_VAL_FINAL;
-			PCDR0 = 0x130410c3;
-			PCDR1 = 0x09030911;
-			/* Clocks have changed. Notify clients */
-			clock_notifier_call_chain();
-		} else {
-			printf("Failed to initialize PMIC. Will continue with low CPU speed\n");
-		}
-	}
-
-	/* clock gating enable */
-	GPCR = 0x00050f08;
-
-	return 0;
-}
-
-late_initcall(pcm038_power_init);
-
diff --git a/arch/arm/boards/pcm038/pcm038.dox b/arch/arm/boards/pcm038/pcm038.dox
index 9b17674..85177d2 100644
--- a/arch/arm/boards/pcm038/pcm038.dox
+++ b/arch/arm/boards/pcm038/pcm038.dox
@@ -2,7 +2,8 @@
 
 This CPU card is based on a Freescale i.MX27 CPU. The card is shipped with:
 
-- up to 32MiB NOR type Flash Memory
-- 32MiB synchronous dynamic RAM
+- up to 64MB NOR Flash Memory
+- up to 1GB NAND Flash Memory
+- up to 256MB DRAM
 
 */
diff --git a/arch/arm/boards/pcm038/pcm970.c b/arch/arm/boards/pcm038/pcm970.c
new file mode 100644
index 0000000..1a6118a
--- /dev/null
+++ b/arch/arm/boards/pcm038/pcm970.c
@@ -0,0 +1,149 @@
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <io.h>
+#include <init.h>
+#include <common.h>
+#include <mach/imx-regs.h>
+#include <mach/iomux-mx27.h>
+#include <mach/devices-imx27.h>
+#include <mach/gpio.h>
+#include <mach/imxfb.h>
+#include <usb/ulpi.h>
+
+static struct imx_fb_videomode imxfb_mode = {
+	.mode = {
+		.name		= "Sharp-LQ035Q7",
+		.refresh	= 60,
+		.xres		= 240,
+		.yres		= 320,
+		.pixclock	= 188679, /* in ps (5.3MHz) */
+		.hsync_len	= 7,
+		.left_margin	= 5,
+		.right_margin	= 16,
+		.vsync_len	= 1,
+		.upper_margin	= 7,
+		.lower_margin	= 9,
+	},
+	/*
+	 * - HSYNC active high
+	 * - VSYNC active high
+	 * - clk notenabled while idle
+	 * - clock not inverted
+	 * - data not inverted
+	 * - data enable low active
+	 * - enable sharp mode
+	 */
+	.pcr	= 0xF00080C0,
+	.bpp	= 16,
+};
+
+static struct imx_fb_platform_data pcm038_fb_data = {
+	.mode		= &imxfb_mode,
+	.num_modes	= 1,
+	.pwmr		= 0x00A903FF,
+	.lscr1		= 0x00120300,
+	.dmacr		= 0x00020010,
+};
+
+#ifdef CONFIG_USB
+static void pcm038_usbh2_init(void)
+{
+	uint32_t temp;
+
+	temp = readl(IMX_OTG_BASE + 0x600);
+	temp &= ~((3 << 21) | 1);
+	temp |= (1 << 5) | (1 << 16) | (1 << 19) | (1 << 20);
+	writel(temp, IMX_OTG_BASE + 0x600);
+
+	temp = readl(IMX_OTG_BASE + 0x584);
+	temp &= ~(3 << 30);
+	temp |= 2 << 30;
+	writel(temp, IMX_OTG_BASE + 0x584);
+
+	mdelay(10);
+
+	ulpi_setup((void *)(IMX_OTG_BASE + 0x570), 1);
+}
+#endif
+
+static int pcm970_init(void)
+{
+	int i;
+
+	unsigned int mode[] = {
+		/* Display */
+		PA5_PF_LSCLK,
+		PA6_PF_LD0,
+		PA7_PF_LD1,
+		PA8_PF_LD2,
+		PA9_PF_LD3,
+		PA10_PF_LD4,
+		PA11_PF_LD5,
+		PA12_PF_LD6,
+		PA13_PF_LD7,
+		PA14_PF_LD8,
+		PA15_PF_LD9,
+		PA16_PF_LD10,
+		PA17_PF_LD11,
+		PA18_PF_LD12,
+		PA19_PF_LD13,
+		PA20_PF_LD14,
+		PA21_PF_LD15,
+		PA22_PF_LD16,
+		PA23_PF_LD17,
+		PA24_PF_REV,
+		PA25_PF_CLS,
+		PA26_PF_PS,
+		PA27_PF_SPL_SPR,
+		PA28_PF_HSYNC,
+		PA29_PF_VSYNC,
+		PA30_PF_CONTRAST,
+		PA31_PF_OE_ACD,
+		/* USB Host 2 */
+		PA0_PF_USBH2_CLK,
+		PA1_PF_USBH2_DIR,
+		PA2_PF_USBH2_DATA7,
+		PA3_PF_USBH2_NXT,
+		PA4_PF_USBH2_STP,
+		PD19_AF_USBH2_DATA4,
+		PD20_AF_USBH2_DATA3,
+		PD21_AF_USBH2_DATA6,
+		PD22_AF_USBH2_DATA0,
+		PD23_AF_USBH2_DATA2,
+		PD24_AF_USBH2_DATA1,
+		PD26_AF_USBH2_DATA5,
+	};
+
+	/* Initizalize GPIOs */
+	for (i = 0; i < ARRAY_SIZE(mode); i++)
+		imx_gpio_mode(mode[i]);
+
+	/* Configure SJA1000 on cs4 */
+	imx27_setup_weimcs(4, 0x0000DCF6, 0x444A0301, 0x44443302);
+
+	imx27_add_fb(&pcm038_fb_data);
+
+#ifdef CONFIG_USB
+	pcm038_usbh2_init();
+	add_generic_usb_ehci_device(-1, IMX_OTG_BASE + 0x400, NULL);
+#endif
+
+	return 0;
+}
+
+late_initcall(pcm970_init);
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 3236762..b402677 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -294,6 +294,14 @@ config MACH_PCM038
 	  Say Y here if you are using Phytec's phyCORE-i.MX27 (pcm038) equipped
 	  with a Freescale i.MX27 Processor
 
+config MACH_PCM970_BASEBOARD
+	bool "PHYTEC PCM970 development board"
+	depends on MACH_PCM038
+	default y
+	help
+	  This adds board specific devices that can be found on Phytec's
+	  PCM970 evaluation board.
+
 config MACH_NESO
 	bool "Garz+Fricke Neso"
 	select MACH_HAS_LOWLEVEL_INIT
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
