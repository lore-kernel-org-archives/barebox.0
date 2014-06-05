Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp42.i.mail.ru ([94.100.177.102])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WsbTs-0005oy-Ka
 for barebox@lists.infradead.org; Thu, 05 Jun 2014 17:29:41 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu,  5 Jun 2014 21:24:47 +0400
Message-Id: <1401989087-24755-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] ARM: PCM038: Switch to devicetree probe
To: barebox@lists.infradead.org

This patch removes non-DT support for PCM-038/PCM-970 and switch
to devicetree probe for these targets.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/phytec-phycore-imx27/Makefile      |   5 +-
 arch/arm/boards/phytec-phycore-imx27/env/boot/nor  |   9 +
 .../boards/phytec-phycore-imx27/env/config-board   |   7 +-
 .../phytec-phycore-imx27/env/init/mtdparts-nand    |  11 -
 .../phytec-phycore-imx27/env/init/mtdparts-nor     |  11 -
 arch/arm/boards/phytec-phycore-imx27/pcm038.c      | 407 +++++----------------
 arch/arm/boards/phytec-phycore-imx27/pcm970.c      | 200 ++++------
 arch/arm/configs/phytec-phycore-imx27_defconfig    |  88 +++--
 arch/arm/dts/Makefile                              |   3 +-
 arch/arm/dts/imx27-phytec-phycore-rdk.dts          |  71 ++++
 arch/arm/mach-imx/Kconfig                          |  12 -
 11 files changed, 298 insertions(+), 526 deletions(-)
 create mode 100644 arch/arm/boards/phytec-phycore-imx27/env/boot/nor
 delete mode 100644 arch/arm/boards/phytec-phycore-imx27/env/init/mtdparts-nand
 delete mode 100644 arch/arm/boards/phytec-phycore-imx27/env/init/mtdparts-nor
 create mode 100644 arch/arm/dts/imx27-phytec-phycore-rdk.dts

diff --git a/arch/arm/boards/phytec-phycore-imx27/Makefile b/arch/arm/boards/phytec-phycore-imx27/Makefile
index bfb55d3..eb82f0d 100644
--- a/arch/arm/boards/phytec-phycore-imx27/Makefile
+++ b/arch/arm/boards/phytec-phycore-imx27/Makefile
@@ -1,3 +1,2 @@
-obj-y					+= pcm038.o
-lwl-y				+= lowlevel.o
-obj-$(CONFIG_MACH_PCM970_BASEBOARD)	+= pcm970.o
+obj-y	+= pcm038.o pcm970.o
+lwl-y	+= lowlevel.o
diff --git a/arch/arm/boards/phytec-phycore-imx27/env/boot/nor b/arch/arm/boards/phytec-phycore-imx27/env/boot/nor
new file mode 100644
index 0000000..0d10584
--- /dev/null
+++ b/arch/arm/boards/phytec-phycore-imx27/env/boot/nor
@@ -0,0 +1,9 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	boot-menu-add-entry "$0" "nor"
+	exit
+fi
+
+global.bootm.image="/dev/nor0.kernel"
+global.linux.bootargs.dyn.root="root=/dev/mtdblock3 ro"
diff --git a/arch/arm/boards/phytec-phycore-imx27/env/config-board b/arch/arm/boards/phytec-phycore-imx27/env/config-board
index e8e8378..9fec434 100644
--- a/arch/arm/boards/phytec-phycore-imx27/env/config-board
+++ b/arch/arm/boards/phytec-phycore-imx27/env/config-board
@@ -1,6 +1,7 @@
 #!/bin/sh
 
-# board defaults, do not change in running system. Change /env/config
-# instead
+# Default boot entry (one of /env/boot/*)
+global.boot.default=nor
 
-global.linux.bootargs.base="console=ttymxc0,115200"
+# Board bootargs
+global.linux.bootargs.base="earlyprintk"
diff --git a/arch/arm/boards/phytec-phycore-imx27/env/init/mtdparts-nand b/arch/arm/boards/phytec-phycore-imx27/env/init/mtdparts-nand
deleted file mode 100644
index 84220b7..0000000
--- a/arch/arm/boards/phytec-phycore-imx27/env/init/mtdparts-nand
+++ /dev/null
@@ -1,11 +0,0 @@
-#!/bin/sh
-
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "NAND partitions"
-	exit
-fi
-
-mtdparts="512k(nand0.barebox)ro,128k(nand0.bareboxenv),4M(nand0.kernel),-(nand0.root)"
-kernelname="mxc_nand"
-
-mtdparts-add -b -d nand0 -k ${kernelname} -p ${mtdparts}
diff --git a/arch/arm/boards/phytec-phycore-imx27/env/init/mtdparts-nor b/arch/arm/boards/phytec-phycore-imx27/env/init/mtdparts-nor
deleted file mode 100644
index c2c4065..0000000
--- a/arch/arm/boards/phytec-phycore-imx27/env/init/mtdparts-nor
+++ /dev/null
@@ -1,11 +0,0 @@
-#!/bin/sh
-
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "NOR partitions"
-	exit
-fi
-
-mtdparts="512k(nor0.barebox)ro,128k(nor0.bareboxenv),4M(nor0.kernel),-(nor0.root)"
-kernelname="physmap-flash.0"
-
-mtdparts-add -d nor0 -k ${kernelname} -p ${mtdparts}
diff --git a/arch/arm/boards/phytec-phycore-imx27/pcm038.c b/arch/arm/boards/phytec-phycore-imx27/pcm038.c
index 7df0ddc..07982fa 100644
--- a/arch/arm/boards/phytec-phycore-imx27/pcm038.c
+++ b/arch/arm/boards/phytec-phycore-imx27/pcm038.c
@@ -10,79 +10,28 @@
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
- *
- *
  */
+
 #define pr_fmt(fmt) "pcm038: " fmt
 
-#include <common.h>
 #include <bootsource.h>
-#include <net.h>
-#include <init.h>
-#include <environment.h>
-#include <mach/imx27-regs.h>
-#include <fec.h>
-#include <sizes.h>
-#include <notifier.h>
+#include <common.h>
 #include <gpio.h>
-#include <asm/armlinux.h>
-#include <generated/mach-types.h>
-#include <partition.h>
-#include <fs.h>
-#include <nand.h>
-#include <spi/spi.h>
+#include <init.h>
 #include <io.h>
-#include <mach/imx-nand.h>
+#include <notifier.h>
+#include <sizes.h>
+#include <mach/devices-imx27.h>
 #include <mach/imx-pll.h>
-#include <mach/weim.h>
+#include <mach/imx27-regs.h>
 #include <mach/imxfb.h>
-#include <i2c/i2c.h>
-#include <mach/spi.h>
 #include <mach/iomux-mx27.h>
-#include <mach/devices-imx27.h>
-#include <mach/iim.h>
 #include <mfd/mc13xxx.h>
-#include <mach/generic.h>
 
 #include "pll.h"
 
-#define PCM038_GPIO_PMIC_IRQ	(GPIO_PORTB + 23)
-#define PCM038_GPIO_FEC_RST	(GPIO_PORTC + 30)
-#define PCM970_GPIO_SPI_CS1	(GPIO_PORTD + 27)
-#define PCM038_GPIO_SPI_CS0	(GPIO_PORTD + 28)
 #define PCM038_GPIO_OTG_STP	(GPIO_PORTE + 1)
 
-static struct fec_platform_data fec_info = {
-	.xcv_type = PHY_INTERFACE_MODE_MII,
-	.phy_addr = 1,
-};
-
-static int pcm038_spi_cs[] = {
-	PCM038_GPIO_SPI_CS0,
-#ifdef CONFIG_MACH_PCM970_BASEBOARD
-	PCM970_GPIO_SPI_CS1,
-#endif
-};
-
-static struct spi_imx_master pcm038_spi_0_data = {
-	.chipselect = pcm038_spi_cs,
-	.num_chipselect = ARRAY_SIZE(pcm038_spi_cs),
-};
-
-static struct spi_board_info pcm038_spi_board_info[] = {
-	{
-		.name = "mc13783",
-		.bus_num = 0,
-		.chip_select = 0,
-	}
-};
-
-static struct imx_nand_platform_data nand_info = {
-	.width		= 1,
-	.hw_ecc		= 1,
-	.flash_bbt	= 1,
-};
-
 static struct imx_fb_videomode imxfb_mode = {
 	.mode = {
 		.name		= "Sharp-LQ035Q7",
@@ -106,299 +55,125 @@ static struct imx_fb_videomode imxfb_mode = {
 	 * - data enable low active
 	 * - enable sharp mode
 	 */
-	.pcr		= 0xF00080C0,
+	.pcr		= 0xf00080c0,
 	.bpp		= 16,
 };
 
 static struct imx_fb_platform_data pcm038_fb_data = {
 	.mode	= &imxfb_mode,
 	.num_modes = 1,
-	.pwmr	= 0x00A903FF,
+	.pwmr	= 0x00a903ff,
 	.lscr1	= 0x00120300,
 	.dmacr	= 0x00020010,
 };
 
-/**
- * The spctl0 register is a beast: Seems you can read it
- * only one times without writing it again.
- */
-static inline uint32_t get_pll_spctl10(void)
-{
-	uint32_t reg;
-
-	reg = readl(MX27_CCM_BASE_ADDR + MX27_SPCTL0);
-	writel(reg, MX27_CCM_BASE_ADDR + MX27_SPCTL0);
-
-	return reg;
-}
-
-/**
- * If the PLL settings are in place switch the CPU core frequency to the max. value
- */
-static int pcm038_power_init(void)
-{
-	uint32_t spctl0 = get_pll_spctl10();
-	struct mc13xxx *mc13xxx = mc13xxx_get();
-
-	/* PLL registers already set to their final values? */
-	if (spctl0 == SPCTL0_VAL &&
-	    readl(MX27_CCM_BASE_ADDR + MX27_MPCTL0) == MPCTL0_VAL) {
-		console_flush();
-		if (mc13xxx) {
-			mc13xxx_reg_write(mc13xxx, MC13783_REG_SWITCHERS(0),
-				MC13783_SWX_VOLTAGE(MC13783_SWX_VOLTAGE_1_450) |
-				MC13783_SWX_VOLTAGE_DVS(MC13783_SWX_VOLTAGE_1_450) |
-				MC13783_SWX_VOLTAGE_STANDBY(MC13783_SWX_VOLTAGE_1_450));
-
-			mc13xxx_reg_write(mc13xxx, MC13783_REG_SWITCHERS(4),
-				MC13783_SW1A_MODE(MC13783_SWX_MODE_NO_PULSE_SKIP) |
-				MC13783_SW1A_MODE_STANDBY(MC13783_SWX_MODE_NO_PULSE_SKIP) |
-				MC13783_SW1A_SOFTSTART |
-				MC13783_SW1B_MODE(MC13783_SWX_MODE_NO_PULSE_SKIP) |
-				MC13783_SW1B_MODE_STANDBY(MC13783_SWX_MODE_NO_PULSE_SKIP) |
-				MC13783_SW1B_SOFTSTART |
-				MC13783_SW_PLL_FACTOR(32));
-
-			/* Setup VMMC voltage */
-			if (IS_ENABLED(CONFIG_MCI_IMX)) {
-				u32 val;
-
-				mc13xxx_reg_read(mc13xxx, MC13783_REG_REG_SETTING(1), &val);
-				/* VMMC1 = 3.00 V */
-				val &= ~(7 << 6);
-				val |= 6 << 6;
-				mc13xxx_reg_write(mc13xxx, MC13783_REG_REG_SETTING(1), val);
-
-				mc13xxx_reg_read(mc13xxx, MC13783_REG_REG_MODE(1), &val);
-				/* Enable VMMC1 */
-				val |= 1 << 18;
-				mc13xxx_reg_write(mc13xxx, MC13783_REG_REG_MODE(1), val);
-			}
-
-			/* wait for required power level to run the CPU at 400 MHz */
-			udelay(100000);
-			writel(CSCR_VAL_FINAL, MX27_CCM_BASE_ADDR + MX27_CSCR);
-			writel(0x130410c3, MX27_CCM_BASE_ADDR + MX27_PCDR0);
-			writel(0x09030911, MX27_CCM_BASE_ADDR + MX27_PCDR1);
-
-			/* Clocks have changed. Notify clients */
-			clock_notifier_call_chain();
-		} else {
-			pr_err("Failed to initialize PMIC. Will continue with low CPU speed\n");
-		}
-	}
-
-	/* clock gating enable */
-	writel(0x00050f08, MX27_SYSCTRL_BASE_ADDR + MX27_GPCR);
-
-	return 0;
-}
-
-struct imxusb_platformdata pcm038_otg_pdata = {
-	.mode	= IMX_USB_MODE_DEVICE,
-	.flags	= MXC_EHCI_MODE_ULPI | MXC_EHCI_INTERFACE_DIFF_UNI,
-};
-
-static const struct devfs_partition pcm038_nand0_partitions[] = {
-	{
-		.offset = 0,
-		.size = SZ_512K,
-		.flags = DEVFS_PARTITION_FIXED,
-		.name = "self_raw",
-		.bbname = "self0",
-	}, {
-		.offset = DEVFS_PARTITION_APPEND, /* 512 KiB */
-		.size = SZ_128K,
-		.flags = DEVFS_PARTITION_FIXED,
-		.name = "env_raw",
-		.bbname = "env0",
-	}, {
-		/* sentinel */
-	}
+static const unsigned int pcm038_pins[] = {
+	/* Display */
+	PA5_PF_LSCLK,
+	PA6_PF_LD0,
+	PA7_PF_LD1,
+	PA8_PF_LD2,
+	PA9_PF_LD3,
+	PA10_PF_LD4,
+	PA11_PF_LD5,
+	PA12_PF_LD6,
+	PA13_PF_LD7,
+	PA14_PF_LD8,
+	PA15_PF_LD9,
+	PA16_PF_LD10,
+	PA17_PF_LD11,
+	PA18_PF_LD12,
+	PA19_PF_LD13,
+	PA20_PF_LD14,
+	PA21_PF_LD15,
+	PA22_PF_LD16,
+	PA23_PF_LD17,
+	PA24_PF_REV,
+	PA25_PF_CLS,
+	PA26_PF_PS,
+	PA27_PF_SPL_SPR,
+	PA28_PF_HSYNC,
+	PA29_PF_VSYNC,
+	PA30_PF_CONTRAST,
+	PA31_PF_OE_ACD,
+	/* USB */
+	PE1_PF_USBOTG_STP,
 };
 
-static const struct devfs_partition pcm038_nor0_partitions[] = {
-	{
-		.offset = 0,
-		.size = SZ_512K,
-		.flags = DEVFS_PARTITION_FIXED,
-		.name = "self0",
-	}, {
-		.offset = DEVFS_PARTITION_APPEND, /* 512 KiB */
-		.size = SZ_128K,
-		.flags = DEVFS_PARTITION_FIXED,
-		.name = "env0",
-	}, {
-		/* sentinel */
-	}
-};
-
-static int pcm038_devices_init(void)
+static int pcm038_init(void)
 {
-	int i;
-	u64 uid = 0;
+	struct mc13xxx *mc13xxx = mc13xxx_get();
 	char *envdev;
-	long sram_size;
-
-	unsigned int mode[] = {
-		/* FEC */
-		PD0_AIN_FEC_TXD0,
-		PD1_AIN_FEC_TXD1,
-		PD2_AIN_FEC_TXD2,
-		PD3_AIN_FEC_TXD3,
-		PD4_AOUT_FEC_RX_ER,
-		PD5_AOUT_FEC_RXD1,
-		PD6_AOUT_FEC_RXD2,
-		PD7_AOUT_FEC_RXD3,
-		PD8_AF_FEC_MDIO,
-		PD9_AIN_FEC_MDC | GPIO_PUEN,
-		PD10_AOUT_FEC_CRS,
-		PD11_AOUT_FEC_TX_CLK,
-		PD12_AOUT_FEC_RXD0,
-		PD13_AOUT_FEC_RX_DV,
-		PD14_AOUT_FEC_RX_CLK,
-		PD15_AOUT_FEC_COL,
-		PD16_AIN_FEC_TX_ER,
-		PF23_AIN_FEC_TX_EN,
-		/* UART1 */
-		PE12_PF_UART1_TXD,
-		PE13_PF_UART1_RXD,
-		PE14_PF_UART1_CTS,
-		PE15_PF_UART1_RTS,
-		/* CSPI1 */
-		PD25_PF_CSPI1_RDY,
-		PD29_PF_CSPI1_SCLK,
-		PD30_PF_CSPI1_MISO,
-		PD31_PF_CSPI1_MOSI,
-		/* Display */
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
-		/* USB OTG */
-		PC7_PF_USBOTG_DATA5,
-		PC8_PF_USBOTG_DATA6,
-		PC9_PF_USBOTG_DATA0,
-		PC10_PF_USBOTG_DATA2,
-		PC11_PF_USBOTG_DATA1,
-		PC12_PF_USBOTG_DATA4,
-		PC13_PF_USBOTG_DATA3,
-		PE0_PF_USBOTG_NXT,
-		PCM038_GPIO_OTG_STP | GPIO_GPIO | GPIO_OUT,
-		PE2_PF_USBOTG_DIR,
-		PE24_PF_USBOTG_CLK,
-		PE25_PF_USBOTG_DATA7,
-		/* I2C1 */
-		PD17_PF_I2C_DATA | GPIO_PUEN,
-		PD18_PF_I2C_CLK,
-		/* I2C2 */
-		PC5_PF_I2C2_SDA,
-		PC6_PF_I2C2_SCL,
-		/* Misc */
-		PCM038_GPIO_FEC_RST | GPIO_GPIO | GPIO_OUT,
-		PCM038_GPIO_SPI_CS0 | GPIO_GPIO | GPIO_OUT,
-#ifdef CONFIG_MACH_PCM970_BASEBOARD
-		PCM970_GPIO_SPI_CS1 | GPIO_GPIO | GPIO_OUT,
-#endif
-		PCM038_GPIO_PMIC_IRQ | GPIO_GPIO | GPIO_IN,
-	};
-
-	/* configure 16 bit nor flash on cs0 */
-	imx27_setup_weimcs(0, 0x22C2CF00, 0x75000D01, 0x00000900);
-
-	/* configure SRAM on cs1 */
-	imx27_setup_weimcs(1, 0x0000d843, 0x22252521, 0x22220a00);
-
-	/* SRAM can be up to 2MiB */
-	sram_size = get_ram_size((ulong *)MX27_CS1_BASE_ADDR, SZ_2M);
-	if (sram_size)
-		add_mem_device("ram1", MX27_CS1_BASE_ADDR, sram_size,
-			       IORESOURCE_MEM_WRITEABLE);
-
-	/* initizalize gpios */
-	for (i = 0; i < ARRAY_SIZE(mode); i++)
-		imx_gpio_mode(mode[i]);
-
-	spi_register_board_info(pcm038_spi_board_info, ARRAY_SIZE(pcm038_spi_board_info));
-	imx27_add_spi0(&pcm038_spi_0_data);
-
-	pcm038_power_init();
-
-	add_cfi_flash_device(DEVICE_ID_DYNAMIC, 0xC0000000, 32 * 1024 * 1024, 0);
-	imx27_add_nand(&nand_info);
-	imx27_add_fb(&pcm038_fb_data);
-
-	imx27_add_i2c0(NULL);
-	imx27_add_i2c1(NULL);
+	uint32_t i;
 
-	/* Register the fec device after the PLL re-initialisation
-	 * as the fec depends on the (now higher) ipg clock
-	 */
-	gpio_set_value(PCM038_GPIO_FEC_RST, 1);
-	imx27_add_fec(&fec_info);
+	if (!of_machine_is_compatible("phytec,imx27-pcm038"))
+		return 0;
 
 	/* Apply delay for STP line to stop ULPI */
+	imx_gpio_mode(PCM038_GPIO_OTG_STP | GPIO_GPIO);
 	gpio_direction_output(PCM038_GPIO_OTG_STP, 1);
 	mdelay(1);
-	imx_gpio_mode(PE1_PF_USBOTG_STP);
 
-	if (IS_ENABLED(CONFIG_USB_GADGET_DRIVER_ARC))
-		imx27_add_usbotg(&pcm038_otg_pdata);
+	for (i = 0; i < ARRAY_SIZE(pcm038_pins); i++)
+		imx_gpio_mode(pcm038_pins[i]);
+
+	imx27_add_fb(&pcm038_fb_data);
 
 	switch (bootsource_get()) {
 	case BOOTSOURCE_NAND:
-		devfs_create_partitions("nand0", pcm038_nand0_partitions);
-
+		of_device_enable_path("/chosen/environment-nand");
 		envdev = "NAND";
 		break;
 	default:
-		devfs_create_partitions("nor0", pcm038_nor0_partitions);
-		protect_file("/dev/env0", 1);
+		of_device_enable_path("/chosen/environment-nor");
 		envdev = "NOR";
+		break;
 	}
 
 	pr_notice("Using environment in %s Flash\n", envdev);
 
-	if (imx_iim_read(1, 0, &uid, 6) == 6)
-		armlinux_set_serial(uid);
-	armlinux_set_architecture(MACH_TYPE_PCM038);
+	if (!mc13xxx) {
+		pr_err("Failed to initialize PMIC. Will continue with low CPU speed\n");
+		return 0;
+	}
 
-	return 0;
-}
+	mc13xxx_reg_write(mc13xxx, MC13783_REG_SWITCHERS(0),
+				MC13783_SWX_VOLTAGE(MC13783_SWX_VOLTAGE_1_450) |
+				MC13783_SWX_VOLTAGE_DVS(MC13783_SWX_VOLTAGE_1_450) |
+				MC13783_SWX_VOLTAGE_STANDBY(MC13783_SWX_VOLTAGE_1_450));
 
-device_initcall(pcm038_devices_init);
+	mc13xxx_reg_write(mc13xxx, MC13783_REG_SWITCHERS(4),
+				MC13783_SW1A_MODE(MC13783_SWX_MODE_NO_PULSE_SKIP) |
+				MC13783_SW1A_MODE_STANDBY(MC13783_SWX_MODE_NO_PULSE_SKIP) |
+				MC13783_SW1A_SOFTSTART |
+				MC13783_SW1B_MODE(MC13783_SWX_MODE_NO_PULSE_SKIP) |
+				MC13783_SW1B_MODE_STANDBY(MC13783_SWX_MODE_NO_PULSE_SKIP) |
+				MC13783_SW1B_SOFTSTART |
+				MC13783_SW_PLL_FACTOR(32));
 
-static int pcm038_console_init(void)
-{
-	barebox_set_model("Phytec phyCORE-i.MX27");
-	barebox_set_hostname("phycore-imx27");
+	if (IS_ENABLED(CONFIG_MCI_IMX)) {
+		/* VMMC1 = 3.00 V */
+		mc13xxx_set_bits(mc13xxx, MC13783_REG_REG_SETTING(1),
+				 7 << 6, 6 << 6);
+		/* Enable VMMC */
+		mc13xxx_set_bits(mc13xxx, MC13783_REG_REG_MODE(1),
+				 1 << 18, 1 << 18);
+	}
+
+	/* Wait for required power level to run the CPU at 400 MHz */
+	mdelay(100);
+
+	console_flush();
+	writel(CSCR_VAL_FINAL, MX27_CCM_BASE_ADDR + MX27_CSCR);
+	writel(0x130410c3, MX27_CCM_BASE_ADDR + MX27_PCDR0);
+	writel(0x09030911, MX27_CCM_BASE_ADDR + MX27_PCDR1);
 
-	imx27_add_uart0();
+	/* Clocks have changed. Notify clients */
+	clock_notifier_call_chain();
+
+	/* Clock gating enable */
+	writel(0x00050f08, MX27_SYSCTRL_BASE_ADDR + MX27_GPCR);
 
 	return 0;
 }
-
-console_initcall(pcm038_console_init);
+device_initcall(pcm038_init);
diff --git a/arch/arm/boards/phytec-phycore-imx27/pcm970.c b/arch/arm/boards/phytec-phycore-imx27/pcm970.c
index 2b2483b..b0c177e 100644
--- a/arch/arm/boards/phytec-phycore-imx27/pcm970.c
+++ b/arch/arm/boards/phytec-phycore-imx27/pcm970.c
@@ -12,27 +12,20 @@
  */
 
 #include <common.h>
-#include <io.h>
-#include <init.h>
-#include <sizes.h>
 #include <gpio.h>
+#include <init.h>
+#include <io.h>
 #include <platform_ide.h>
+#include <sizes.h>
 #include <mach/imx27-regs.h>
 #include <mach/iomux-mx27.h>
-#include <mach/weim.h>
-#include <mach/devices-imx27.h>
-#include <usb/chipidea-imx.h>
 
 #define GPIO_IDE_POWER	(GPIO_PORTE + 18)
 #define GPIO_IDE_PCOE	(GPIO_PORTF + 7)
 #define GPIO_IDE_RESET	(GPIO_PORTF + 10)
 
 static struct resource pcm970_ide_resources[] = {
-	{
-		.start	= MX27_PCMCIA_MEM_BASE_ADDR,
-		.end	= MX27_PCMCIA_MEM_BASE_ADDR + SZ_1K - 1,
-		.flags	= IORESOURCE_MEM,
-	},
+	DEFINE_RES_MEM(MX27_PCMCIA_MEM_BASE_ADDR, SZ_1K),
 };
 
 static void pcm970_ide_reset(int state)
@@ -54,142 +47,83 @@ static struct device_d pcm970_ide_device = {
 	.platform_data	= &pcm970_ide_pdata,
 };
 
-static void pcm970_ide_init(void)
+static const unsigned int pcmcia_pins[] = {
+	PF20_PF_PC_CD1,
+	PF19_PF_PC_CD2,
+	PF18_PF_PC_WAIT,
+	PF17_PF_PC_READY,
+	PF16_PF_PC_PWRON,
+	PF14_PF_PC_VS1,
+	PF13_PF_PC_VS2,
+	PF12_PF_PC_BVD1,
+	PF11_PF_PC_BVD2,
+	PF9_PF_PC_IOIS16,
+	PF8_PF_PC_RW,
+	GPIO_IDE_PCOE | GPIO_GPIO | GPIO_OUT,	/* PCOE */
+	GPIO_IDE_RESET | GPIO_GPIO | GPIO_OUT,	/* Reset */
+	GPIO_IDE_POWER | GPIO_GPIO | GPIO_OUT,	/* Power */
+};
+
+static int pcm970_init(void)
 {
-	uint32_t i;
-	unsigned int mode[] = {
-		/* PCMCIA */
-		PF20_PF_PC_CD1,
-		PF19_PF_PC_CD2,
-		PF18_PF_PC_WAIT,
-		PF17_PF_PC_READY,
-		PF16_PF_PC_PWRON,
-		PF14_PF_PC_VS1,
-		PF13_PF_PC_VS2,
-		PF12_PF_PC_BVD1,
-		PF11_PF_PC_BVD2,
-		PF9_PF_PC_IOIS16,
-		PF8_PF_PC_RW,
-		GPIO_IDE_PCOE | GPIO_GPIO | GPIO_OUT,	/* PCOE */
-		GPIO_IDE_RESET | GPIO_GPIO | GPIO_OUT,	/* Reset */
-		GPIO_IDE_POWER | GPIO_GPIO | GPIO_OUT,	/* Power */
-	};
-
-	for (i = 0; i < ARRAY_SIZE(mode); i++)
-		imx_gpio_mode(mode[i] | GPIO_PUEN);
-
-	/* Always set PCOE signal to low */
-	gpio_set_value(GPIO_IDE_PCOE, 0);
-
-	/* Assert RESET line */
-	gpio_set_value(GPIO_IDE_RESET, 0);
-
-	/* Power up CF-card (Also switched on User-LED) */
-	gpio_set_value(GPIO_IDE_POWER, 1);
-	mdelay(10);
-
-	/* Reset PCMCIA Status Change Register */
-	writel(0x00000fff, MX27_PCMCIA_CTL_BASE_ADDR + MX27_PCMCIA_PSCR);
-	mdelay(10);
-
-	/* Check PCMCIA Input Pins Register for Card Detect & Power */
-	if ((readl(MX27_PCMCIA_CTL_BASE_ADDR + MX27_PCMCIA_PIPR) &
-				((1 << 8) | (3 << 3))) != (1 << 8)) {
-		printf("CompactFlash card not found. Driver not enabled.\n");
-		return;
-	}
+	if (!of_machine_is_compatible("phytec,imx27-pcm970"))
+		return 0;
 
-	/* Disable all interrupts */
-	writel(0, MX27_PCMCIA_CTL_BASE_ADDR + MX27_PCMCIA_PER);
+	if (IS_ENABLED(CONFIG_DISK_INTF_PLATFORM_IDE)) {
+		uint32_t i;
 
-	/* Disable all PCMCIA banks */
-	for (i = 0; i < 5; i++)
-		writel(0, MX27_PCMCIA_CTL_BASE_ADDR + MX27_PCMCIA_POR(i));
+		for (i = 0; i < ARRAY_SIZE(pcmcia_pins); i++)
+			imx_gpio_mode(pcmcia_pins[i] | GPIO_PUEN);
 
-	/* Not use internal PCOE */
-	writel(0, MX27_PCMCIA_CTL_BASE_ADDR + MX27_PCMCIA_PGCR);
+		/* Always set PCOE signal to low */
+		gpio_set_value(GPIO_IDE_PCOE, 0);
 
-	/* Setup PCMCIA bank0 for Common memory mode */
-	writel(0, MX27_PCMCIA_CTL_BASE_ADDR + MX27_PCMCIA_PBR(0));
-	writel(0, MX27_PCMCIA_CTL_BASE_ADDR + MX27_PCMCIA_POFR(0));
-	writel((0 << 25) | (17 << 17) | (4 << 11) | (3 << 5) | 0xf,
-			MX27_PCMCIA_CTL_BASE_ADDR + MX27_PCMCIA_POR(0));
+		/* Assert RESET line */
+		gpio_set_value(GPIO_IDE_RESET, 0);
 
-	/* Clear PCMCIA General Status Register */
-	writel(0x0000001f, MX27_PCMCIA_CTL_BASE_ADDR + MX27_PCMCIA_PGSR);
+		/* Power up CF-card (Also switched on User-LED) */
+		gpio_set_value(GPIO_IDE_POWER, 1);
+		mdelay(10);
 
-	/* Make PCMCIA bank0 valid */
-	i = readl(MX27_PCMCIA_CTL_BASE_ADDR + MX27_PCMCIA_POR(0));
-	writel(i | (1 << 29), MX27_PCMCIA_CTL_BASE_ADDR + MX27_PCMCIA_POR(0));
+		/* Reset PCMCIA Status Change Register */
+		writel(0x00000fff, MX27_PCMCIA_CTL_BASE_ADDR + MX27_PCMCIA_PSCR);
+		mdelay(10);
 
-	platform_device_register(&pcm970_ide_device);
-}
+		/* Check PCMCIA Input Pins Register for Card Detect & Power */
+		if ((readl(MX27_PCMCIA_CTL_BASE_ADDR + MX27_PCMCIA_PIPR) &
+			   ((1 << 8) | (3 << 3))) != (1 << 8)) {
+			printf("CF card not found. Driver not enabled.\n");
+			return 0;
+		}
 
-static void pcm970_mmc_init(void)
-{
-	uint32_t i;
-	unsigned int mode[] = {
-		/* SD2 */
-		PB4_PF_SD2_D0,
-		PB5_PF_SD2_D1,
-		PB6_PF_SD2_D2,
-		PB7_PF_SD2_D3,
-		PB8_PF_SD2_CMD,
-		PB9_PF_SD2_CLK,
-	};
-
-	for (i = 0; i < ARRAY_SIZE(mode); i++)
-		imx_gpio_mode(mode[i]);
-
-	imx27_add_mmc1(NULL);
-}
+		/* Disable all interrupts */
+		writel(0, MX27_PCMCIA_CTL_BASE_ADDR + MX27_PCMCIA_PER);
 
-struct imxusb_platformdata pcm970_usbh2_pdata = {
-	.flags = MXC_EHCI_MODE_ULPI | MXC_EHCI_INTERFACE_DIFF_UNI,
-	.mode = IMX_USB_MODE_HOST,
-};
+		/* Disable all PCMCIA banks */
+		for (i = 0; i < 5; i++)
+			writel(0, MX27_PCMCIA_CTL_BASE_ADDR +
+			       MX27_PCMCIA_POR(i));
 
-static int pcm970_init(void)
-{
-	int i;
-	unsigned int mode[] = {
-		/* USB Host 2 */
-		PA0_PF_USBH2_CLK,
-		PA1_PF_USBH2_DIR,
-		PA2_PF_USBH2_DATA7,
-		PA3_PF_USBH2_NXT,
-		4 | GPIO_PORTA | GPIO_GPIO | GPIO_OUT,
-		PD19_AF_USBH2_DATA4,
-		PD20_AF_USBH2_DATA3,
-		PD21_AF_USBH2_DATA6,
-		PD22_AF_USBH2_DATA0,
-		PD23_AF_USBH2_DATA2,
-		PD24_AF_USBH2_DATA1,
-		PD26_AF_USBH2_DATA5,
-	};
-
-	for (i = 0; i < ARRAY_SIZE(mode); i++)
-		imx_gpio_mode(mode[i]);
-
-	/* Configure SJA1000 on cs4 */
-	imx27_setup_weimcs(4, 0x0000DCF6, 0x444A0301, 0x44443302);
-
-	if (IS_ENABLED(CONFIG_USB)) {
-		/* Stop ULPI */
-		gpio_direction_output(4, 1);
-		mdelay(1);
-		imx_gpio_mode(PA4_PF_USBH2_STP);
-
-		imx27_add_usbh2(&pcm970_usbh2_pdata);
-	}
+		/* Not use internal PCOE */
+		writel(0, MX27_PCMCIA_CTL_BASE_ADDR + MX27_PCMCIA_PGCR);
+
+		/* Setup PCMCIA bank0 for Common memory mode */
+		writel(0, MX27_PCMCIA_CTL_BASE_ADDR + MX27_PCMCIA_PBR(0));
+		writel(0, MX27_PCMCIA_CTL_BASE_ADDR + MX27_PCMCIA_POFR(0));
+		writel((0 << 25) | (17 << 17) | (4 << 11) | (3 << 5) | 0xf,
+		       MX27_PCMCIA_CTL_BASE_ADDR + MX27_PCMCIA_POR(0));
 
-	if (IS_ENABLED(CONFIG_DISK_INTF_PLATFORM_IDE))
-		pcm970_ide_init();
+		/* Clear PCMCIA General Status Register */
+		writel(0x0000001f, MX27_PCMCIA_CTL_BASE_ADDR + MX27_PCMCIA_PGSR);
 
-	if (IS_ENABLED(CONFIG_MCI_IMX))
-		pcm970_mmc_init();
+		/* Make PCMCIA bank0 valid */
+		i = readl(MX27_PCMCIA_CTL_BASE_ADDR + MX27_PCMCIA_POR(0));
+		writel(i | (1 << 29), MX27_PCMCIA_CTL_BASE_ADDR +
+		       MX27_PCMCIA_POR(0));
+
+		platform_device_register(&pcm970_ide_device);
+	}
 
 	return 0;
 }
-
 late_initcall(pcm970_init);
diff --git a/arch/arm/configs/phytec-phycore-imx27_defconfig b/arch/arm/configs/phytec-phycore-imx27_defconfig
index 5cb9202..b70b078 100644
--- a/arch/arm/configs/phytec-phycore-imx27_defconfig
+++ b/arch/arm/configs/phytec-phycore-imx27_defconfig
@@ -1,68 +1,79 @@
+CONFIG_BUILTIN_DTB=y
+CONFIG_BUILTIN_DTB_NAME="imx27-phytec-phycore-rdk"
 CONFIG_ARCH_IMX=y
 CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND=y
-CONFIG_ARCH_IMX27=y
 CONFIG_MACH_PCM038=y
+CONFIG_IMX_IIM=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_ARM_UNWIND=y
+# CONFIG_MEMINFO is not set
+CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
 CONFIG_TEXT_BASE=0xa7f00000
 CONFIG_MALLOC_SIZE=0x1000000
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
-CONFIG_LONGHELP=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
+CONFIG_PARTITION_DISK_EFI=y
+CONFIG_DEFAULT_COMPRESSION_LZO=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/phytec-phycore-imx27/env"
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_TIME=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_MEMINFO=y
+CONFIG_POLLER=y
 CONFIG_CMD_IOMEM=y
-CONFIG_CMD_FLASH=y
+CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
 CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_SPLASH=y
-CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_UBIFORMAT=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_GPIO=y
+CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+# CONFIG_CMD_MEMCMP is not set
+CONFIG_CMD_MM=y
+CONFIG_CMD_CLK=y
+CONFIG_CMD_DETECT=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_I2C=y
+CONFIG_CMD_SPI=y
+CONFIG_CMD_BAREBOX_UPDATE=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_PING=y
-CONFIG_NET_NETCONSOLE=y
-CONFIG_NET_RESOLV=y
+CONFIG_OFDEVICE=y
+CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_DRIVER_NET_FEC_IMX=y
-CONFIG_NET_USB=y
-CONFIG_NET_USB_ASIX=y
+CONFIG_DRIVER_SPI_IMX=y
+CONFIG_I2C=y
+CONFIG_I2C_IMX=y
+CONFIG_MTD=y
 CONFIG_DRIVER_CFI=y
 CONFIG_CFI_BUFFER_WRITE=y
-CONFIG_MTD=y
 CONFIG_NAND=y
-# CONFIG_NAND_ECC_SOFT is not set
 # CONFIG_NAND_ECC_HW_SYNDROME is not set
+CONFIG_NAND_ALLOW_ERASE_BAD=y
 CONFIG_NAND_IMX=y
+CONFIG_NAND_IMX_BBM=y
+CONFIG_MTD_UBI=y
+CONFIG_DISK_INTF_PLATFORM_IDE=y
 CONFIG_USB=y
 CONFIG_USB_IMX_CHIPIDEA=y
 CONFIG_USB_EHCI=y
@@ -70,8 +81,13 @@ CONFIG_USB_ULPI=y
 CONFIG_USB_STORAGE=y
 CONFIG_VIDEO=y
 CONFIG_DRIVER_VIDEO_IMX=y
-CONFIG_IMXFB_DRIVER_VIDEO_IMX_OVERLAY=y
-CONFIG_FS_TFTP=y
-CONFIG_FS_NFS=y
-CONFIG_ZLIB=y
+CONFIG_MCI=y
+CONFIG_MCI_IMX=y
+CONFIG_MFD_MC13XXX=y
+CONFIG_SRAM=y
+CONFIG_EEPROM_AT24=y
+CONFIG_IMX_WEIM=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
 CONFIG_LZO_DECOMPRESS=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 63d59f7..b97bc9e 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -3,7 +3,8 @@ dtb-$(CONFIG_ARCH_AM33XX) += \
 	am335x-boneblack.dtb \
 	am335x-phytec-phycore.dtb
 dtb-$(CONFIG_ARCH_IMX25) += imx25-karo-tx25.dtb
-dtb-$(CONFIG_ARCH_IMX27) += imx27-phytec-phycard-s-rdk-bb.dtb
+dtb-$(CONFIG_ARCH_IMX27) += imx27-phytec-phycard-s-rdk-bb.dtb \
+	imx27-phytec-phycore-rdk.dtb
 dtb-$(CONFIG_ARCH_IMX51) += imx51-babbage.dtb \
 	imx51-genesi-efika-sb.dtb
 dtb-$(CONFIG_ARCH_IMX53) += imx53-mba53.dtb \
diff --git a/arch/arm/dts/imx27-phytec-phycore-rdk.dts b/arch/arm/dts/imx27-phytec-phycore-rdk.dts
new file mode 100644
index 0000000..3a4604d
--- /dev/null
+++ b/arch/arm/dts/imx27-phytec-phycore-rdk.dts
@@ -0,0 +1,71 @@
+/*
+ * Barebox specific DT overlay for Phytec PCM-970 RDK
+ */
+
+#include <arm/imx27-phytec-phycore-rdk.dts>
+
+/ {
+	chosen {
+		linux,stdout-path = &uart1;
+
+		environment-nor {
+			compatible = "barebox,environment";
+			device-path = &nor, "partname:env";
+			status = "disabled";
+		};
+
+		environment-nand {
+			compatible = "barebox,environment";
+			device-path = &nfc, "partname:env";
+			status = "disabled";
+		};
+	};
+};
+
+&iim {
+	barebox,provide-mac-address = <&fec 1 0>;
+};
+
+&nfc {
+	partition@0 {
+		label = "boot";
+		reg = <0x00000000 0x00080000>;
+	};
+
+	partition@1 {
+		label = "env";
+		reg = <0x00080000 0x00020000>;
+	};
+
+	partition@2 {
+		label = "kernel";
+		reg = <0x000a0000 0x00400000>;
+	};
+
+	partition@3 {
+		label = "root";
+		reg = <0x004a0000 0>;
+	};
+};
+
+&nor {
+	partition@0 {
+		label = "boot";
+		reg = <0x00000000 0x00080000>;
+	};
+
+	partition@1 {
+		label = "env";
+		reg = <0x00080000 0x00020000>;
+	};
+
+	partition@2 {
+		label = "kernel";
+		reg = <0x000a0000 0x00400000>;
+	};
+
+	partition@3 {
+		label = "root";
+		reg = <0x004a0000 0>;
+	};
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 3b85f45..b84bf64 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -347,23 +347,11 @@ config MACH_IMX27ADS
 config MACH_PCM038
 	bool "phyCORE-i.MX27"
 	select ARCH_IMX27
-	select IMX_IIM
-	select SPI
-	select DRIVER_SPI_IMX
-	select MFD_MC13XXX
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	help
 	  Say Y here if you are using Phytec's phyCORE-i.MX27 (pcm038) equipped
 	  with a Freescale i.MX27 Processor
 
-config MACH_PCM970_BASEBOARD
-	bool "PHYTEC PCM970 development board"
-	depends on MACH_PCM038
-	default y
-	help
-	  This adds board specific devices that can be found on Phytec's
-	  PCM970 evaluation board.
-
 config MACH_NESO
 	bool "Garz+Fricke Neso"
 	select ARCH_IMX27
-- 
1.8.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
