Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TjGex-0006hy-4s
 for barebox@lists.infradead.org; Thu, 13 Dec 2012 21:49:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Dec 2012 22:49:08 +0100
Message-Id: <1355435350-20348-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1355435350-20348-1-git-send-email-s.hauer@pengutronix.de>
References: <1355435350-20348-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/7] ARM i.MX51: Add support for the Efika MX Smartbook
To: barebox@lists.infradead.org

The Efika MX Smartbook is a i.MX51 based netbook. This patch adds
nearly full support for it including:

- USB
- SD card slots
- Internal SPI NOR flash
- Internal flash PATA drive
- LEDs

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile                                  |    1 +
 arch/arm/boards/efika-mx-smartbook/Makefile        |    3 +
 arch/arm/boards/efika-mx-smartbook/board.c         |  511 ++++++++++++++++++++
 arch/arm/boards/efika-mx-smartbook/config.h        |   24 +
 arch/arm/boards/efika-mx-smartbook/dcd-data.h      |   56 +++
 .../boards/efika-mx-smartbook/env/bin/lvds_init    |   22 +
 .../boards/efika-mx-smartbook/env/boot/hd-internal |   17 +
 .../boards/efika-mx-smartbook/env/boot/mmc-left    |   19 +
 arch/arm/boards/efika-mx-smartbook/env/config      |   29 ++
 .../boards/efika-mx-smartbook/env/init/automount   |   29 ++
 .../boards/efika-mx-smartbook/env/init/bootsource  |   10 +
 .../efika-mx-smartbook/env/init/config-board       |    9 +
 .../efika-mx-smartbook/env/network/eth0-discover   |    4 +
 arch/arm/boards/efika-mx-smartbook/flash_header.c  |   29 ++
 arch/arm/mach-imx/Kconfig                          |    8 +
 defaultenv-2/base/boot/net                         |    4 +-
 drivers/usb/core/usb.c                             |    8 +-
 drivers/usb/host/ehci-hcd.c                        |    6 +
 drivers/usb/otg/ulpi.c                             |   33 +-
 include/usb/ulpi.h                                 |   43 +-
 20 files changed, 843 insertions(+), 22 deletions(-)
 create mode 100644 arch/arm/boards/efika-mx-smartbook/Makefile
 create mode 100644 arch/arm/boards/efika-mx-smartbook/board.c
 create mode 100644 arch/arm/boards/efika-mx-smartbook/config.h
 create mode 100644 arch/arm/boards/efika-mx-smartbook/dcd-data.h
 create mode 100644 arch/arm/boards/efika-mx-smartbook/env/bin/lvds_init
 create mode 100644 arch/arm/boards/efika-mx-smartbook/env/boot/hd-internal
 create mode 100644 arch/arm/boards/efika-mx-smartbook/env/boot/mmc-left
 create mode 100644 arch/arm/boards/efika-mx-smartbook/env/config
 create mode 100644 arch/arm/boards/efika-mx-smartbook/env/init/automount
 create mode 100644 arch/arm/boards/efika-mx-smartbook/env/init/bootsource
 create mode 100644 arch/arm/boards/efika-mx-smartbook/env/init/config-board
 create mode 100644 arch/arm/boards/efika-mx-smartbook/env/network/eth0-discover
 create mode 100644 arch/arm/boards/efika-mx-smartbook/flash_header.c

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 3bd645f..478b0d8 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -150,6 +150,7 @@ board-$(CONFIG_MACH_TINY210)			:= friendlyarm-tiny210
 board-$(CONFIG_MACH_SABRELITE)			:= freescale-mx6-sabrelite
 board-$(CONFIG_MACH_TX53)			:= karo-tx53
 board-$(CONFIG_MACH_GUF_VINCELL)		:= guf-vincell
+board-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK)		:= efika-mx-smartbook
 
 machdirs := $(patsubst %,arch/arm/mach-%/,$(machine-y))
 
diff --git a/arch/arm/boards/efika-mx-smartbook/Makefile b/arch/arm/boards/efika-mx-smartbook/Makefile
new file mode 100644
index 0000000..d08bb68
--- /dev/null
+++ b/arch/arm/boards/efika-mx-smartbook/Makefile
@@ -0,0 +1,3 @@
+obj-y += board.o
+obj-y += flash_header.o
+pbl-y += flash_header.o
diff --git a/arch/arm/boards/efika-mx-smartbook/board.c b/arch/arm/boards/efika-mx-smartbook/board.c
new file mode 100644
index 0000000..aef2750
--- /dev/null
+++ b/arch/arm/boards/efika-mx-smartbook/board.c
@@ -0,0 +1,511 @@
+/*
+ * Copyright (C) 2007 Sascha Hauer, Pengutronix
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
+ *
+ */
+
+#include <common.h>
+#include <net.h>
+#include <init.h>
+#include <environment.h>
+#include <mach/gpio.h>
+#include <asm/armlinux.h>
+#include <partition.h>
+#include <notifier.h>
+#include <fs.h>
+#include <led.h>
+#include <fcntl.h>
+#include <nand.h>
+#include <usb/ulpi.h>
+#include <usb/chipidea-imx.h>
+#include <spi/spi.h>
+#include <mfd/mc13xxx.h>
+#include <mfd/mc13892.h>
+#include <asm/io.h>
+#include <asm/mmu.h>
+#include <mach/imx-nand.h>
+#include <mach/spi.h>
+#include <mach/generic.h>
+#include <mach/imx5.h>
+#include <mach/bbu.h>
+#include <mach/iomux-mx51.h>
+#include <mach/imx51-regs.h>
+#include <mach/devices-imx51.h>
+#include <mach/imx-flash-header.h>
+#include <mach/revision.h>
+
+#define GPIO_EFIKA_SDHC1_WP	IMX_GPIO_NR(1, 1)
+#define GPIO_EFIKAMX_SDHC1_CD	IMX_GPIO_NR(1, 0)
+#define GPIO_EFIKASB_SDHC1_CD	IMX_GPIO_NR(2, 27)
+#define GPIO_EFIKASB_SDHC2_CD	IMX_GPIO_NR(1, 8)
+#define GPIO_EFIKASB_SDHC2_WP	IMX_GPIO_NR(1, 7)
+
+#define GPIO_BACKLIGHT_POWER	IMX_GPIO_NR(4, 12)
+#define GPIO_BACKLIGHT_PWM	IMX_GPIO_NR(1, 2)
+#define GPIO_LVDS_POWER		IMX_GPIO_NR(3, 7)
+#define GPIO_LVDS_RESET		IMX_GPIO_NR(3, 5)
+#define GPIO_LVDS_ENABLE	IMX_GPIO_NR(3, 12)
+#define GPIO_LCD_ENABLE		IMX_GPIO_NR(3, 13)
+
+#define GPIO_BLUETOOTH		IMX_GPIO_NR(2, 11)
+#define GPIO_WIFI_ENABLE	IMX_GPIO_NR(2, 16)
+#define GPIO_WIFI_RESET		IMX_GPIO_NR(2, 10)
+#define GPIO_HUB_RESET		IMX_GPIO_NR(1, 5)
+#define GPIO_SMSC3317_RESET	IMX_GPIO_NR(2, 9)
+
+static iomux_v3_cfg_t efika_pads[] = {
+	/* ECSPI1 */
+	MX51_PAD_CSPI1_MOSI__ECSPI1_MOSI,
+	MX51_PAD_CSPI1_MISO__ECSPI1_MISO,
+	MX51_PAD_CSPI1_SCLK__ECSPI1_SCLK,
+	MX51_PAD_CSPI1_SS0__GPIO4_24,
+	MX51_PAD_CSPI1_SS1__GPIO4_25,
+	MX51_PAD_GPIO1_6__GPIO1_6,
+
+	/* ESDHC1 */
+	MX51_PAD_SD1_CMD__SD1_CMD,
+	MX51_PAD_SD1_CLK__SD1_CLK,
+	MX51_PAD_SD1_DATA0__SD1_DATA0,
+	MX51_PAD_SD1_DATA1__SD1_DATA1,
+	MX51_PAD_SD1_DATA2__SD1_DATA2,
+	MX51_PAD_SD1_DATA3__SD1_DATA3,
+	MX51_PAD_GPIO1_1__GPIO1_1,
+
+	/* USB HOST2 */
+	MX51_PAD_EIM_D27__GPIO2_9,
+	MX51_PAD_GPIO1_5__GPIO1_5,
+	MX51_PAD_EIM_D16__USBH2_DATA0,
+	MX51_PAD_EIM_D17__USBH2_DATA1,
+	MX51_PAD_EIM_D18__USBH2_DATA2,
+	MX51_PAD_EIM_D19__USBH2_DATA3,
+	MX51_PAD_EIM_D20__USBH2_DATA4,
+	MX51_PAD_EIM_D21__USBH2_DATA5,
+	MX51_PAD_EIM_D22__USBH2_DATA6,
+	MX51_PAD_EIM_D23__USBH2_DATA7,
+	MX51_PAD_EIM_A24__USBH2_CLK,
+	MX51_PAD_EIM_A25__USBH2_DIR,
+	MX51_PAD_EIM_A26__GPIO2_20,
+	MX51_PAD_EIM_A27__USBH2_NXT,
+
+	/* USB HOST1 */
+        MX51_PAD_USBH1_CLK__USBH1_CLK,
+        MX51_PAD_USBH1_DIR__USBH1_DIR,
+        MX51_PAD_USBH1_NXT__USBH1_NXT,
+        MX51_PAD_USBH1_DATA0__USBH1_DATA0,
+        MX51_PAD_USBH1_DATA1__USBH1_DATA1,
+        MX51_PAD_USBH1_DATA2__USBH1_DATA2,
+        MX51_PAD_USBH1_DATA3__USBH1_DATA3,
+        MX51_PAD_USBH1_DATA4__USBH1_DATA4,
+        MX51_PAD_USBH1_DATA5__USBH1_DATA5,
+        MX51_PAD_USBH1_DATA6__USBH1_DATA6,
+        MX51_PAD_USBH1_DATA7__USBH1_DATA7,
+	MX51_PAD_USBH1_STP__GPIO1_27,
+	MX51_PAD_EIM_A16__GPIO2_10,
+
+	/* PATA */
+	MX51_PAD_NANDF_WE_B__PATA_DIOW,
+	MX51_PAD_NANDF_RE_B__PATA_DIOR,
+	MX51_PAD_NANDF_ALE__PATA_BUFFER_EN,
+	MX51_PAD_NANDF_CLE__PATA_RESET_B,
+	MX51_PAD_NANDF_WP_B__PATA_DMACK,
+	MX51_PAD_NANDF_RB0__PATA_DMARQ,
+	MX51_PAD_NANDF_RB1__PATA_IORDY,
+	MX51_PAD_GPIO_NAND__PATA_INTRQ,
+	MX51_PAD_NANDF_CS2__PATA_CS_0,
+	MX51_PAD_NANDF_CS3__PATA_CS_1,
+	MX51_PAD_NANDF_CS4__PATA_DA_0,
+	MX51_PAD_NANDF_CS5__PATA_DA_1,
+	MX51_PAD_NANDF_CS6__PATA_DA_2,
+	MX51_PAD_NANDF_D15__PATA_DATA15,
+	MX51_PAD_NANDF_D14__PATA_DATA14,
+	MX51_PAD_NANDF_D13__PATA_DATA13,
+	MX51_PAD_NANDF_D12__PATA_DATA12,
+	MX51_PAD_NANDF_D11__PATA_DATA11,
+	MX51_PAD_NANDF_D10__PATA_DATA10,
+	MX51_PAD_NANDF_D9__PATA_DATA9,
+	MX51_PAD_NANDF_D8__PATA_DATA8,
+	MX51_PAD_NANDF_D7__PATA_DATA7,
+	MX51_PAD_NANDF_D6__PATA_DATA6,
+	MX51_PAD_NANDF_D5__PATA_DATA5,
+	MX51_PAD_NANDF_D4__PATA_DATA4,
+	MX51_PAD_NANDF_D3__PATA_DATA3,
+	MX51_PAD_NANDF_D2__PATA_DATA2,
+	MX51_PAD_NANDF_D1__PATA_DATA1,
+	MX51_PAD_NANDF_D0__PATA_DATA0,
+
+	/* USB U-Boot */
+	MX51_PAD_EIM_A22__GPIO2_16, /* WLAN enable (1 = on) */
+	MX51_PAD_EIM_A17__GPIO2_11,
+
+	/* I2C2 */
+	MX51_PAD_KEY_COL4__I2C2_SCL,
+	MX51_PAD_KEY_COL5__I2C2_SDA,
+
+	MX51_PAD_GPIO1_2__GPIO1_2, /* Backlight (should be pwm) (1 = on) */
+	MX51_PAD_CSI2_D19__GPIO4_12, /* Backlight power (0 = on) */
+
+	MX51_PAD_DISPB2_SER_CLK__GPIO3_7, /* LVDS power (1 = on) */
+	MX51_PAD_DISPB2_SER_DIN__GPIO3_5, /* LVDS reset (1 = reset) */
+	MX51_PAD_CSI1_D8__GPIO3_12, /* LVDS enable (1 = enable) */
+	MX51_PAD_CSI1_D9__GPIO3_13, /* LCD enable (1 = on) */
+
+	MX51_PAD_DI1_PIN12__GPIO3_1, /* WLAN switch (0 = on) */
+
+	MX51_PAD_GPIO1_4__WDOG1_WDOG_B,
+};
+
+static iomux_v3_cfg_t efikasb_pads[] = {
+	/* LEDs */
+	MX51_PAD_EIM_CS0__GPIO2_25,
+	MX51_PAD_GPIO1_3__GPIO1_3,
+
+	/* ESHC2 */
+	MX51_PAD_SD2_CMD__SD2_CMD,
+	MX51_PAD_SD2_CLK__SD2_CLK,
+	MX51_PAD_SD2_DATA0__SD2_DATA0,
+	MX51_PAD_SD2_DATA1__SD2_DATA1,
+	MX51_PAD_SD2_DATA2__SD2_DATA2,
+	MX51_PAD_SD2_DATA3__SD2_DATA3,
+	MX51_PAD_GPIO1_7__GPIO1_7,
+	MX51_PAD_GPIO1_8__GPIO1_8,
+
+	MX51_PAD_EIM_CS2__GPIO2_27,
+};
+
+static iomux_v3_cfg_t efikamx_pads[] = {
+	MX51_PAD_GPIO1_0__GPIO1_0,
+};
+
+/*
+ * Generally this should work on the Efika MX smarttop aswell,
+ * but I do not have the hardware to test it, so hardcode this
+ * for the smartbook for now.
+ */
+static inline int machine_is_efikasb(void)
+{
+	return 1;
+}
+
+static int efikamx_mem_init(void)
+{
+	arm_add_mem_device("ram0", 0x90000000, SZ_512M);
+
+        return 0;
+}
+mem_initcall(efikamx_mem_init);
+
+static int spi_0_cs[] = { IMX_GPIO_NR(4, 24), IMX_GPIO_NR(4, 25) };
+
+static struct spi_imx_master spi_0_data = {
+	.chipselect = spi_0_cs,
+	.num_chipselect = ARRAY_SIZE(spi_0_cs),
+};
+
+static const struct spi_board_info efikamx_spi_board_info[] = {
+	{
+		.name = "mc13xxx-spi",
+		.max_speed_hz = 30 * 1000 * 1000,
+		.bus_num = 0,
+		.chip_select = 0,
+	}, {
+		.name = "m25p80",
+		.chip_select = 1,
+		.max_speed_hz = 20 * 1000 * 1000,
+		.bus_num = 0,
+        },
+};
+
+static void efikamx_power_init(void)
+{
+	unsigned int val;
+	struct mc13xxx *mc;
+
+	mc = mc13xxx_get();
+	if (!mc) {
+		printf("could not get mc13892\n");
+		return;
+	}
+
+	/* Write needed to Power Gate 2 register */
+	mc13xxx_reg_read(mc, MC13892_REG_POWER_MISC, &val);
+	val &= ~MC13892_POWER_MISC_PWGT2SPIEN;
+	mc13xxx_reg_write(mc, MC13892_REG_POWER_MISC, val);
+
+	/* Externally powered */
+	mc13xxx_reg_read(mc, MC13892_REG_CHARGE, &val);
+	val |= MC13782_CHARGE_ICHRG0 | MC13782_CHARGE_ICHRG1 |
+		MC13782_CHARGE_ICHRG2 | MC13782_CHARGE_ICHRG3 |
+		MC13782_CHARGE_CHGAUTOB;
+	mc13xxx_reg_write(mc, MC13892_REG_CHARGE, val);
+
+	/* power up the system first */
+	mc13xxx_reg_write(mc, MC13892_REG_POWER_MISC,
+			MC13892_POWER_MISC_PWUP);
+
+	/* Set core voltage to 1.1V */
+	mc13xxx_reg_read(mc, MC13892_REG_SW_0, &val);
+	val &= ~MC13892_SWx_SWx_VOLT_MASK;
+	val |= MC13892_SWx_SWx_1_100V;
+	mc13xxx_reg_write(mc, MC13892_REG_SW_0, val);
+
+	/* Setup VCC (SW2) to 1.25 */
+	mc13xxx_reg_read(mc, MC13892_REG_SW_1, &val);
+	val &= ~MC13892_SWx_SWx_VOLT_MASK;
+	val |= MC13892_SWx_SWx_1_250V;
+	mc13xxx_reg_write(mc, MC13892_REG_SW_1, val);
+
+	/* Setup 1V2_DIG1 (SW3) to 1.25 */
+	mc13xxx_reg_read(mc, MC13892_REG_SW_2, &val);
+	val &= ~MC13892_SWx_SWx_VOLT_MASK;
+	val |= MC13892_SWx_SWx_1_250V;
+	mc13xxx_reg_write(mc, MC13892_REG_SW_2, val);
+	udelay(50);
+
+	/* Raise the core frequency to 800MHz */
+	console_flush();	
+	imx51_init_lowlevel(800);
+	clock_notifier_call_chain();
+
+	/* Set switchers in Auto in NORMAL mode & STANDBY mode */
+	/* Setup the switcher mode for SW1 & SW2*/
+	mc13xxx_reg_read(mc, MC13892_REG_SW_4, &val);
+	val = (val & ~((MC13892_SWMODE_MASK << MC13892_SWMODE1_SHIFT) |
+			(MC13892_SWMODE_MASK << MC13892_SWMODE2_SHIFT)));
+	val |= (MC13892_SWMODE_AUTO_AUTO << MC13892_SWMODE1_SHIFT) |
+		(MC13892_SWMODE_AUTO_AUTO << MC13892_SWMODE2_SHIFT);
+	mc13xxx_reg_write(mc, MC13892_REG_SW_4, val);
+
+	/* Setup the switcher mode for SW3 & SW4 */
+	mc13xxx_reg_read(mc, MC13892_REG_SW_5, &val);
+	val = (val & ~((MC13892_SWMODE_MASK << MC13892_SWMODE3_SHIFT) |
+			(MC13892_SWMODE_MASK << MC13892_SWMODE4_SHIFT)));
+	val |= (MC13892_SWMODE_AUTO_AUTO << MC13892_SWMODE3_SHIFT) |
+		(MC13892_SWMODE_AUTO_AUTO << MC13892_SWMODE4_SHIFT);
+	mc13xxx_reg_write(mc, MC13892_REG_SW_5, val);
+
+	/* Set VDIG to 1.8V, VGEN3 to 1.8V, VCAM to 2.6V */
+	mc13xxx_reg_read(mc, MC13892_REG_SETTING_0, &val);
+	val &= ~(MC13892_SETTING_0_VCAM_MASK |
+                        MC13892_SETTING_0_VGEN3_MASK |
+                        MC13892_SETTING_0_VDIG_MASK);
+	val |= MC13892_SETTING_0_VDIG_1_8 |
+                MC13892_SETTING_0_VGEN3_1_8 |
+                MC13892_SETTING_0_VCAM_2_6;
+	mc13xxx_reg_write(mc, MC13892_REG_SETTING_0, val);
+
+	/* Set VVIDEO to 2.775V, VAUDIO to 3V, VSD to 3.15V */
+	mc13xxx_reg_read(mc, MC13892_REG_SETTING_1, &val);
+	val &= ~(MC13892_SETTING_1_VVIDEO_MASK |
+			MC13892_SETTING_1_VSD_MASK |
+			MC13892_SETTING_1_VAUDIO_MASK);
+	val |= MC13892_SETTING_1_VSD_3_15 |
+		MC13892_SETTING_1_VAUDIO_3_0 |
+		MC13892_SETTING_1_VVIDEO_2_775 |
+		MC13892_SETTING_1_VGEN1_1_2 |
+		MC13892_SETTING_1_VGEN2_3_15;
+	mc13xxx_reg_write(mc, MC13892_REG_SETTING_1, val);
+
+	/* Enable VGEN1, VGEN2, VDIG, VPLL */
+	mc13xxx_reg_read(mc, MC13892_REG_MODE_0, &val);
+	val |= MC13892_MODE_0_VGEN1EN |
+		MC13892_MODE_0_VDIGEN |
+		MC13892_MODE_0_VGEN2EN |
+		MC13892_MODE_0_VPLLEN;
+	mc13xxx_reg_write(mc, MC13892_REG_MODE_0, val);
+
+	/* Configure VGEN3 and VCAM regulators to use external PNP */
+	val = MC13892_MODE_1_VGEN3CONFIG |
+		MC13892_MODE_1_VCAMCONFIG;
+	mc13xxx_reg_write(mc, MC13892_REG_MODE_1, val);
+	udelay(200);
+
+	/* Enable VGEN3, VCAM, VAUDIO, VVIDEO, VSD regulators */
+	val = MC13892_MODE_1_VGEN3EN |
+		MC13892_MODE_1_VGEN3CONFIG |
+		MC13892_MODE_1_VCAMEN |
+		MC13892_MODE_1_VCAMCONFIG |
+		MC13892_MODE_1_VVIDEOEN |
+		MC13892_MODE_1_VAUDIOEN |
+		MC13892_MODE_1_VSDEN;
+	mc13xxx_reg_write(mc, MC13892_REG_MODE_1, val);
+
+	mc13xxx_reg_read(mc, MC13892_REG_POWER_CTL2, &val);
+	val |= MC13892_POWER_CONTROL_2_WDIRESET;
+	mc13xxx_reg_write(mc, MC13892_REG_POWER_CTL2, val);
+
+	udelay(2500);
+}
+
+static struct esdhc_platform_data efikasb_sd2_data = {
+	.cd_gpio = GPIO_EFIKASB_SDHC2_CD,
+	.wp_gpio = GPIO_EFIKASB_SDHC2_WP,
+	.cd_type = ESDHC_CD_GPIO,
+	.wp_type = ESDHC_WP_GPIO,
+	.devname = "mmc_left",
+};
+
+static struct esdhc_platform_data efikamx_sd1_data = {
+	.cd_gpio = GPIO_EFIKAMX_SDHC1_CD,
+	.wp_gpio = GPIO_EFIKA_SDHC1_WP,
+	.cd_type = ESDHC_CD_GPIO,
+	.wp_type = ESDHC_WP_GPIO,
+};
+
+static struct esdhc_platform_data efikasb_sd1_data = {
+	.cd_gpio = GPIO_EFIKASB_SDHC1_CD,
+	.wp_gpio = GPIO_EFIKA_SDHC1_WP,
+	.cd_type = ESDHC_CD_GPIO,
+	.wp_type = ESDHC_WP_GPIO,
+	.devname = "mmc_back",
+};
+
+struct imxusb_platformdata efikamx_usbh1_pdata = {
+	.flags = MXC_EHCI_MODE_ULPI | MXC_EHCI_INTERFACE_DIFF_UNI,
+	.mode = IMX_USB_MODE_HOST,
+};
+
+static int efikamx_usb_init(void)
+{
+	gpio_direction_output(GPIO_BLUETOOTH, 0);
+	gpio_direction_output(GPIO_WIFI_ENABLE, 1);
+	gpio_direction_output(GPIO_WIFI_RESET, 0);
+	gpio_direction_output(GPIO_SMSC3317_RESET, 0);
+	gpio_direction_output(GPIO_HUB_RESET, 0);
+
+	mdelay(10);
+
+	gpio_set_value(GPIO_HUB_RESET, 1);
+	gpio_set_value(GPIO_SMSC3317_RESET, 1);
+	gpio_set_value(GPIO_BLUETOOTH, 1);
+	gpio_set_value(GPIO_WIFI_RESET, 1);
+
+	mxc_iomux_v3_setup_pad(MX51_PAD_USBH1_STP__GPIO1_27);
+	gpio_set_value(IMX_GPIO_NR(1, 27), 1);
+	mdelay(1);
+	mxc_iomux_v3_setup_pad(MX51_PAD_USBH1_STP__USBH1_STP);
+
+	if (machine_is_efikasb()) {
+		mxc_iomux_v3_setup_pad(MX51_PAD_EIM_A26__GPIO2_20);
+		gpio_set_value(IMX_GPIO_NR(2, 20), 1);
+		mdelay(1);
+		mxc_iomux_v3_setup_pad(MX51_PAD_EIM_A26__USBH2_STP);
+	}
+
+	imx51_add_usbh1(&efikamx_usbh1_pdata);
+
+	/*
+	 * At least for the EfikaSB these do not seem to be interesting.
+	 * The external ports are all connected to host1.
+	 *
+	 * imx51_add_usbotg(pdata);
+	 * imx51_add_usbh2(pdate);
+	 */
+
+	return 0;
+}
+
+static struct gpio_led leds[] = {
+	{
+		.gpio = IMX_GPIO_NR(1, 3),
+		.active_low = 1,
+		.led.name = "mail",
+	}, {
+		.gpio = IMX_GPIO_NR(2, 25),
+		.led.name = "white",
+	},
+};
+
+#define DCD_NAME static struct imx_dcd_entry dcd_entry
+
+#include "dcd-data.h"
+
+static int efikamx_devices_init(void)
+{
+	int i;
+
+	mxc_iomux_v3_setup_multiple_pads(efika_pads, ARRAY_SIZE(efika_pads));
+	if (machine_is_efikasb()) {
+		gpio_direction_output(GPIO_BACKLIGHT_POWER, 1);
+		mxc_iomux_v3_setup_multiple_pads(efikasb_pads,
+				ARRAY_SIZE(efikasb_pads));
+	} else {
+		mxc_iomux_v3_setup_multiple_pads(efikamx_pads,
+				ARRAY_SIZE(efikamx_pads));
+	}
+
+	spi_register_board_info(efikamx_spi_board_info,
+			ARRAY_SIZE(efikamx_spi_board_info));
+	imx51_add_spi0(&spi_0_data);
+
+	efikamx_power_init();
+
+	if (machine_is_efikasb())
+		imx51_add_mmc0(&efikasb_sd1_data);
+	else
+		imx51_add_mmc0(&efikamx_sd1_data);
+
+	imx51_add_mmc1(&efikasb_sd2_data);
+
+	for (i = 0; i < ARRAY_SIZE(leds); i++)
+                led_gpio_register(&leds[i]);
+
+	imx51_add_i2c1(NULL);
+
+	efikamx_usb_init();
+
+	imx51_add_pata();
+
+	writew(0x0, MX51_WDOG_BASE_ADDR + 0x8);
+
+	imx51_bbu_internal_mmc_register_handler("mmc", "/dev/mmc_left",
+			BBU_HANDLER_FLAG_DEFAULT, dcd_entry, sizeof(dcd_entry),
+			0);
+
+	armlinux_set_bootparams((void *)0x90000100);
+	armlinux_set_architecture(2370);
+	armlinux_set_revision(0x5100 | imx_silicon_revision());
+
+	return 0;
+}
+device_initcall(efikamx_devices_init);
+
+static int efikamx_part_init(void)
+{
+	if (imx_bootsource() == bootsource_mmc) {
+		devfs_add_partition("mmc_left", 0x00000, 0x80000,
+				DEVFS_PARTITION_FIXED, "self0");
+		devfs_add_partition("mmc_left", 0x80000, 0x80000,
+				DEVFS_PARTITION_FIXED, "env0");
+	}
+
+	return 0;
+}
+late_initcall(efikamx_part_init);
+
+static iomux_v3_cfg_t efika_uart_pads[] = {
+	/* UART */
+	MX51_PAD_UART1_RXD__UART1_RXD,
+	MX51_PAD_UART1_TXD__UART1_TXD,
+	MX51_PAD_UART1_RTS__UART1_RTS,
+	MX51_PAD_UART1_CTS__UART1_CTS,
+};
+
+static int efikamx_console_init(void)
+{
+	mxc_iomux_v3_setup_multiple_pads(efika_uart_pads,
+			ARRAY_SIZE(efika_uart_pads));
+
+	imx51_add_uart0();
+
+	return 0;
+}
+console_initcall(efikamx_console_init);
diff --git a/arch/arm/boards/efika-mx-smartbook/config.h b/arch/arm/boards/efika-mx-smartbook/config.h
new file mode 100644
index 0000000..b7effe5
--- /dev/null
+++ b/arch/arm/boards/efika-mx-smartbook/config.h
@@ -0,0 +1,24 @@
+/**
+ * @file
+ * @brief Global defintions for the ARM i.MX51 based babbage board
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/efika-mx-smartbook/dcd-data.h b/arch/arm/boards/efika-mx-smartbook/dcd-data.h
new file mode 100644
index 0000000..6795e19
--- /dev/null
+++ b/arch/arm/boards/efika-mx-smartbook/dcd-data.h
@@ -0,0 +1,56 @@
+DCD_NAME[] = {
+	{ .ptr_type = 4, .addr = 0x73fa88a0, .val = 0x00000000, },
+	{ .ptr_type = 4, .addr = 0x73fa850c, .val = 0x000020c5, },
+	{ .ptr_type = 4, .addr = 0x73fa8510, .val = 0x000020c5, },
+	{ .ptr_type = 4, .addr = 0x73fa883c, .val = 0x00000005, },
+	{ .ptr_type = 4, .addr = 0x73fa8848, .val = 0x00000005, },
+	{ .ptr_type = 4, .addr = 0x73fa84b8, .val = 0x000000e7, },
+	{ .ptr_type = 4, .addr = 0x73fa84bc, .val = 0x00000045, },
+	{ .ptr_type = 4, .addr = 0x73fa84c0, .val = 0x00000045, },
+	{ .ptr_type = 4, .addr = 0x73fa84c4, .val = 0x00000045, },
+	{ .ptr_type = 4, .addr = 0x73fa84c8, .val = 0x00000045, },
+	{ .ptr_type = 4, .addr = 0x73fa8820, .val = 0x00000000, },
+	{ .ptr_type = 4, .addr = 0x73fa84a4, .val = 0x00000005, },
+	{ .ptr_type = 4, .addr = 0x73fa84a8, .val = 0x00000005, },
+	{ .ptr_type = 4, .addr = 0x73fa84ac, .val = 0x000000e5, },
+	{ .ptr_type = 4, .addr = 0x73fa84b0, .val = 0x000000e5, },
+	{ .ptr_type = 4, .addr = 0x73fa84b4, .val = 0x000000e5, },
+	{ .ptr_type = 4, .addr = 0x73fa84cc, .val = 0x000000e5, },
+	{ .ptr_type = 4, .addr = 0x73fa84d0, .val = 0x000000e4, },
+	{ .ptr_type = 4, .addr = 0x73fa882c, .val = 0x00000004, },
+	{ .ptr_type = 4, .addr = 0x73fa88a4, .val = 0x00000004, },
+	{ .ptr_type = 4, .addr = 0x73fa88ac, .val = 0x00000004, },
+	{ .ptr_type = 4, .addr = 0x73fa88b8, .val = 0x00000004, },
+	{ .ptr_type = 4, .addr = 0x83fd9000, .val = 0x82a20000, },
+	{ .ptr_type = 4, .addr = 0x83fd9008, .val = 0x82a20000, },
+	{ .ptr_type = 4, .addr = 0x83fd9010, .val = 0xcaaaf6d0, },
+	{ .ptr_type = 4, .addr = 0x83fd9004, .val = 0x333574aa, },
+	{ .ptr_type = 4, .addr = 0x83fd900c, .val = 0x333574aa, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x04008008, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0000801a, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0000801b, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00448019, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x07328018, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x04008008, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00008010, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00008010, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x06328018, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x03808019, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00008000, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0400800c, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0000801e, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0000801f, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0000801d, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0732801c, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0400800c, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00008014, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00008014, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0632801c, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0380801d, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00008004, },
+	{ .ptr_type = 4, .addr = 0x83fd9000, .val = 0xb2a20000, },
+	{ .ptr_type = 4, .addr = 0x83fd9008, .val = 0xb2a20000, },
+	{ .ptr_type = 4, .addr = 0x83fd9010, .val = 0x000ad6d0, },
+	{ .ptr_type = 4, .addr = 0x83fd9034, .val = 0x90000000, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00000000, },
+};
diff --git a/arch/arm/boards/efika-mx-smartbook/env/bin/lvds_init b/arch/arm/boards/efika-mx-smartbook/env/bin/lvds_init
new file mode 100644
index 0000000..692392c
--- /dev/null
+++ b/arch/arm/boards/efika-mx-smartbook/env/bin/lvds_init
@@ -0,0 +1,22 @@
+#!/bin/sh
+
+# Initialize lvds and backlight in case your Kernel does not handle this...
+
+GPIO_BACKLIGHT_POWER=108
+GPIO_BACKLIGHT_PWM=2
+GPIO_LVDS_POWER=71
+GPIO_LVDS_RESET=69
+GPIO_LVDS_ENABLE=76
+GPIO_LCD_ENABLE=77
+
+gpio_direction_output $GPIO_BACKLIGHT_PWM 0
+gpio_direction_output $GPIO_LVDS_RESET 1
+gpio_direction_output $GPIO_LVDS_POWER 1
+msleep 5
+gpio_direction_output $GPIO_LVDS_RESET 0
+msleep 5
+gpio_direction_output $GPIO_LVDS_ENABLE 1
+gpio_direction_output $GPIO_BACKLIGHT_POWER 0
+gpio_direction_output $GPIO_LCD_ENABLE 1
+msleep 300
+gpio_direction_output $GPIO_BACKLIGHT_PWM 1
diff --git a/arch/arm/boards/efika-mx-smartbook/env/boot/hd-internal b/arch/arm/boards/efika-mx-smartbook/env/boot/hd-internal
new file mode 100644
index 0000000..ccd0f69
--- /dev/null
+++ b/arch/arm/boards/efika-mx-smartbook/env/boot/hd-internal
@@ -0,0 +1,17 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	boot-menu-add-entry "$0" "internal harddisk"
+	exit
+fi
+
+path="/mnt/internal-hd0.0"
+
+global.bootm.image="${path}/linuximage"
+
+oftree=${path}/oftree
+if [ -f $oftree ]; then
+	global.bootm.oftree="$oftree"
+fi
+
+global.linux.bootargs.dyn.root="root=/dev/sda2"
diff --git a/arch/arm/boards/efika-mx-smartbook/env/boot/mmc-left b/arch/arm/boards/efika-mx-smartbook/env/boot/mmc-left
new file mode 100644
index 0000000..21935c6
--- /dev/null
+++ b/arch/arm/boards/efika-mx-smartbook/env/boot/mmc-left
@@ -0,0 +1,19 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	boot-menu-add-entry "$0" "left MMC slot"
+	exit
+fi
+
+path="/mnt/mmc-left.0"
+
+global.bootm.image="${path}/linuximage"
+
+oftree=${path}/oftree
+if [ -f $oftree ]; then
+	global.bootm.oftree="$oftree"
+fi
+
+# The rootdevice may actually be mmcblk1p2 if a card
+# is inserted to the back MMC slot
+global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2"
diff --git a/arch/arm/boards/efika-mx-smartbook/env/config b/arch/arm/boards/efika-mx-smartbook/env/config
new file mode 100644
index 0000000..46aff49
--- /dev/null
+++ b/arch/arm/boards/efika-mx-smartbook/env/config
@@ -0,0 +1,29 @@
+#!/bin/sh
+
+# change network settings in /env/network/eth0
+# change mtd partition settings and automountpoints in /env/init/*
+
+#global.hostname=
+
+# set to false if you do not want to have colors
+global.allow_color=true
+
+# user (used for network filenames)
+global.user=none
+
+# timeout in seconds before the default boot entry is started
+global.autoboot_timeout=1
+
+# default boot entry (one of /env/boot/*)
+# (if not overwritten here, the bootdevice barebox comes from
+# is used)
+#global.boot.default=net
+
+# base bootargs
+global.linux.bootargs.base="console=ttymxc0,115200 console=tty1"
+
+# suitable for 800MHz
+global linux.bootargs.lpj="lpj=3997696"
+
+# speed up booting by being more quiet
+global linux.bootargs.quiet="quiet"
diff --git a/arch/arm/boards/efika-mx-smartbook/env/init/automount b/arch/arm/boards/efika-mx-smartbook/env/init/automount
new file mode 100644
index 0000000..8cb5eaf
--- /dev/null
+++ b/arch/arm/boards/efika-mx-smartbook/env/init/automount
@@ -0,0 +1,29 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "Automountpoints"
+	exit
+fi
+
+# automount tftp server based on $eth0.serverip
+
+mkdir -p /mnt/tftp
+automount /mnt/tftp 'ifup eth0 && mount -t tftp $eth0.serverip /mnt/tftp'
+
+# automount nfs server example
+
+# internal harddisk /boot partition
+mkdir -p /mnt/internal-hd0.0
+automount -d /mnt/internal-hd0.0 'mount /dev/ata0.0 /mnt/internal-hd0.0'
+
+# internal harddisk rootfs
+mkdir -p /mnt/internal-hd0.1
+automount -d /mnt/internal-hd0.1 'mount /dev/ata0.1 /mnt/internal-hd0.1'
+
+# left SD card slot, first partition
+mkdir -p /mnt/mmc-left.0
+automount -d /mnt/mmc-left.0 'mount /dev/mmc_left.0 /mnt/mmc-left.0'
+
+# back SD card slot, first partition
+mkdir -p /mnt/mmc-back.0
+automount -d /mnt/mmc-back.0 'mount /dev/mmc_back.0 /mnt/mmc-back.0'
diff --git a/arch/arm/boards/efika-mx-smartbook/env/init/bootsource b/arch/arm/boards/efika-mx-smartbook/env/init/bootsource
new file mode 100644
index 0000000..fb08469
--- /dev/null
+++ b/arch/arm/boards/efika-mx-smartbook/env/init/bootsource
@@ -0,0 +1,10 @@
+#!/bin/sh
+
+# by default pick kernel from MMC card if booting from
+# it, otherwise default to boot from internal harddisk
+
+if [ $barebox_loc = mmc ]; then
+	global.boot.default=mmc-left
+else
+	global.boot.default=hd-internal
+fi
diff --git a/arch/arm/boards/efika-mx-smartbook/env/init/config-board b/arch/arm/boards/efika-mx-smartbook/env/init/config-board
new file mode 100644
index 0000000..22993f9
--- /dev/null
+++ b/arch/arm/boards/efika-mx-smartbook/env/init/config-board
@@ -0,0 +1,9 @@
+#!/bin/sh
+
+# board defaults, do not change in running system. Change /env/config
+# instead
+
+global.hostname=efikasb
+global.linux.bootargs.base="console=ttymxc0,115200"
+
+[ -f /env/config ] && /env/config
diff --git a/arch/arm/boards/efika-mx-smartbook/env/network/eth0-discover b/arch/arm/boards/efika-mx-smartbook/env/network/eth0-discover
new file mode 100644
index 0000000..f8368a5
--- /dev/null
+++ b/arch/arm/boards/efika-mx-smartbook/env/network/eth0-discover
@@ -0,0 +1,4 @@
+#!/bin/sh
+
+usb
+sleep 3
diff --git a/arch/arm/boards/efika-mx-smartbook/flash_header.c b/arch/arm/boards/efika-mx-smartbook/flash_header.c
new file mode 100644
index 0000000..f3f1e4b
--- /dev/null
+++ b/arch/arm/boards/efika-mx-smartbook/flash_header.c
@@ -0,0 +1,29 @@
+#include <common.h>
+#include <mach/imx-flash-header.h>
+#include <asm/barebox-arm-head.h>
+
+void __naked __flash_header_start go(void)
+{
+	barebox_arm_head();
+}
+
+#define DCD_NAME struct imx_dcd_entry __dcd_entry_section dcd_entry
+
+#include "dcd-data.h"
+
+#define APP_DEST	0x90000000
+
+struct imx_flash_header __flash_header_section flash_header = {
+	.app_code_jump_vector	= APP_DEST + 0x1000,
+	.app_code_barker	= APP_CODE_BARKER,
+	.app_code_csf		= 0,
+	.dcd_ptr_ptr		= APP_DEST + 0x400 + offsetof(struct imx_flash_header, dcd),
+	.super_root_key		= 0,
+	.dcd			= APP_DEST + 0x400 + offsetof(struct imx_flash_header, dcd_barker),
+	.app_dest		= APP_DEST,
+	.dcd_barker		= DCD_BARKER,
+	.dcd_block_len		= sizeof (dcd_entry),
+};
+
+unsigned long __image_len_section barebox_len = DCD_BAREBOX_SIZE;
+
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index ec4f864..ea67731 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -29,6 +29,7 @@ config ARCH_TEXT_BASE
 	default 0x4fc00000 if MACH_SABRELITE
 	default 0x8fe00000 if MACH_TX53
 	default 0x7fc00000 if MACH_GUF_VINCELL
+	default 0x97f00000 if MACH_EFIKA_MX_SMARTBOOK
 
 config BOARDINFO
 	default "Eukrea CPUIMX25" if MACH_EUKREA_CPUIMX25
@@ -48,6 +49,7 @@ config BOARDINFO
 	default "Freescale i.MX51 PDK" if MACH_FREESCALE_MX51_PDK
 	default "Freescale i.MX53 LOCO" if MACH_FREESCALE_MX53_LOCO
 	default "Freescale i.MX53 SMD" if MACH_FREESCALE_MX53_SMD
+	default "Efika MX smartbook" if MACH_EFIKA_MX_SMARTBOOK
 	default "Garz+Fricke Cupid" if MACH_GUF_CUPID
 	default "Ka-Ro tx25" if MACH_TX25
 	default "TQ tqma53" if MACH_TQMA53
@@ -428,6 +430,12 @@ config MACH_CCMX51_BASEBOARD
 	  This adds board specific devices that can be found on Digi
 	  evaluation board for CCMX51 module.
 
+config MACH_EFIKA_MX_SMARTBOOK
+	bool "Efika MX smartbook"
+	select HAVE_DEFAULT_ENVIRONMENT_NEW
+	help
+	  Choose this to compile barebox for the Efika MX Smartbook
+
 endchoice
 
 endif
diff --git a/defaultenv-2/base/boot/net b/defaultenv-2/base/boot/net
index 90c25aa..0eac84b 100644
--- a/defaultenv-2/base/boot/net
+++ b/defaultenv-2/base/boot/net
@@ -8,7 +8,7 @@ fi
 path="/mnt/tftp"
 
 global.bootm.image="${path}/${global.user}-linux-${global.hostname}"
-#global.bootm.oftree="${path}/${global.user}-oftree-${global.hostname}"
+global.bootm.oftree="${path}/${global.user}-oftree-${global.hostname}"
 nfsroot="/home/${global.user}/nfsroot/${global.hostname}"
 bootargs-ip
-global.linux.bootargs.dyn.root="root=/dev/nfs nfsroot=$nfsroot,v3,tcp"
+global.linux.bootargs.dyn.root="root=/dev/nfs nfsroot=$nfsroot,v3,tcp rootwait"
diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 9dc931b..3b147fb 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -454,14 +454,14 @@ static struct usb_device *usb_alloc_new_device(void)
 	if (!usbdev)
 		return NULL;
 
-	usbdev->devnum = dev_index + 1;
+	dev_index++;
+
+	usbdev->devnum = dev_index;
 	usbdev->maxchild = 0;
 	usbdev->dev.bus = &usb_bus_type;
 	usbdev->setup_packet = dma_alloc(sizeof(*usbdev->setup_packet));
 	usbdev->descriptor = dma_alloc(sizeof(*usbdev->descriptor));
 
-	dev_index++;
-
 	return usbdev;
 }
 
@@ -494,7 +494,7 @@ void usb_rescan(void)
 		usb_new_device(dev);
 	}
 
-	printf("%d USB Device(s) found\n", dev_index);
+	printf("%d USB Device(s) found\n", dev_index - 1);
 }
 
 /*
diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index d6083e0..02ec714 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -33,6 +33,7 @@
 #include "ehci.h"
 
 struct ehci_priv {
+	struct device_d *dev;
 	int rootdev;
 	struct ehci_hccr *hccr;
 	struct ehci_hcor *hcor;
@@ -610,7 +611,10 @@ ehci_submit_root(struct usb_device *dev, unsigned long pipe, void *buffer,
 				 * usb 2.0 specification say 50 ms resets on
 				 * root
 				 */
+				ehci_powerup_fixup(ehci->dev, &reg);
+
 				wait_ms(50);
+
 				ehci->portreset |= 1 << le16_to_cpu(req->index);
 				/* terminate the reset */
 				ehci_writel(status_reg, reg & ~EHCI_PS_PR);
@@ -816,6 +820,8 @@ int ehci_register(struct device_d *dev, struct ehci_data *data)
 	ehci = xzalloc(sizeof(struct ehci_priv));
 	host = &ehci->host;
 	dev->priv = ehci;
+	ehci->dev = dev;
+
 	ehci->flags = data->flags;
 	ehci->hccr = data->hccr;
 	ehci->hcor = data->hcor;
diff --git a/drivers/usb/otg/ulpi.c b/drivers/usb/otg/ulpi.c
index 61cbada..19f64e0 100644
--- a/drivers/usb/otg/ulpi.c
+++ b/drivers/usb/otg/ulpi.c
@@ -111,6 +111,23 @@ int ulpi_clear(u8 bits, int reg, void __iomem *view)
 }
 EXPORT_SYMBOL(ulpi_clear);
 
+int ulpi_write(u8 bits, int reg, void __iomem *view)
+{
+	int ret;
+
+	writel((ULPIVW_RUN | ULPIVW_WRITE |
+		      (reg << ULPIVW_ADDR_SHIFT) |
+		      ((bits & ULPIVW_WDATA_MASK) << ULPIVW_WDATA_SHIFT)),
+		     view);
+
+	/* wait for completion */
+	ret = ulpi_poll(view, ULPIVW_RUN);
+	if (ret < 0)
+		return ret;
+	return 0;
+}
+EXPORT_SYMBOL(ulpi_write);
+
 struct ulpi_info {
 	uint32_t	id;
 	char		*name;
@@ -161,18 +178,18 @@ int ulpi_set_vbus(void __iomem *view, int on)
 	int ret;
 
 	if (on) {
-		ret = ulpi_set(DRV_VBUS_EXT |		/* enable external Vbus */
-				DRV_VBUS |		/* enable internal Vbus */
-				USE_EXT_VBUS_IND |	/* use external indicator */
-				CHRG_VBUS,		/* charge Vbus */
+		ret = ulpi_set(ULPI_OTG_DRV_VBUS_EXT |		/* enable external Vbus */
+				ULPI_OTG_DRV_VBUS |		/* enable internal Vbus */
+				ULPI_OTG_USE_EXT_VBUS_IND |	/* use external indicator */
+				ULPI_OTG_CHRG_VBUS,		/* charge Vbus */
 				ULPI_OTGCTL, view);
 	} else {
-		ret = ulpi_clear(DRV_VBUS_EXT |		/* disable external Vbus */
-				DRV_VBUS,		/* disable internal Vbus */
+		ret = ulpi_clear(ULPI_OTG_DRV_VBUS_EXT |		/* disable external Vbus */
+				ULPI_OTG_DRV_VBUS,		/* disable internal Vbus */
 				ULPI_OTGCTL, view);
 
-		ret |= ulpi_set(USE_EXT_VBUS_IND |	/* use external indicator */
-				DISCHRG_VBUS,		/* discharge Vbus */
+		ret |= ulpi_set(ULPI_OTG_USE_EXT_VBUS_IND |	/* use external indicator */
+				ULPI_OTG_DISCHRG_VBUS,		/* discharge Vbus */
 				ULPI_OTGCTL, view);
 	}
 
diff --git a/include/usb/ulpi.h b/include/usb/ulpi.h
index 542993c..e45ea6e 100644
--- a/include/usb/ulpi.h
+++ b/include/usb/ulpi.h
@@ -1,6 +1,7 @@
 #ifndef __MACH_ULPI_H
 #define __MACH_ULPI_H
 
+int ulpi_write(u8 bits, int reg, void __iomem *view);
 int ulpi_set(u8 bits, int reg, void __iomem *view);
 int ulpi_clear(u8 bits, int reg, void __iomem *view);
 int ulpi_read(int reg, void __iomem *view);
@@ -11,6 +12,7 @@ int ulpi_setup(void __iomem *view, int on);
 #define ULPI_VID_HIGH		0x01	/* Vendor ID high */
 #define ULPI_PID_LOW		0x02	/* Product ID low */
 #define ULPI_PID_HIGH		0x03	/* Product ID high */
+#define ULPI_FUNCTION_CTRL	0x04
 #define ULPI_ITFCTL		0x07	/* Interface Control */
 #define ULPI_OTGCTL		0x0A	/* OTG Control */
 
@@ -18,15 +20,40 @@ int ulpi_setup(void __iomem *view, int on);
 #define ULPI_REG_SET		0x01
 #define ULPI_REG_CLEAR		0x02
 
+/* Function Control */
+#define ULPI_FC_XCVRSEL_MASK		(3 << 0)
+#define ULPI_FC_HIGH_SPEED		(0 << 0)
+#define ULPI_FC_FULL_SPEED		(1 << 0)
+#define ULPI_FC_LOW_SPEED		(2 << 0)
+#define ULPI_FC_FS4LS			(3 << 0)
+#define ULPI_FC_TERMSELECT		(1 << 2)
+#define ULPI_FC_OPMODE_MASK		(3 << 3)
+#define ULPI_FC_OPMODE_NORMAL		(0 << 3)
+#define ULPI_FC_OPMODE_NONDRIVING	(1 << 3)
+#define ULPI_FC_OPMODE_DISABLE_NRZI	(2 << 3)
+#define ULPI_FC_OPMODE_NOSYNC_NOEOP	(3 << 3)
+#define ULPI_FC_RESET			(1 << 5)
+#define ULPI_FC_SUSPENDM		(1 << 6)
+
+/* Interface Control */
+#define ULPI_IFACE_6_PIN_SERIAL_MODE	(1 << 0)
+#define ULPI_IFACE_3_PIN_SERIAL_MODE	(1 << 1)
+#define ULPI_IFACE_CARKITMODE		(1 << 2)
+#define ULPI_IFACE_CLOCKSUSPENDM	(1 << 3)
+#define ULPI_IFACE_AUTORESUME		(1 << 4)
+#define ULPI_IFACE_EXTVBUS_COMPLEMENT	(1 << 5)
+#define ULPI_IFACE_PASSTHRU		(1 << 6)
+#define ULPI_IFACE_PROTECT_IFC_DISABLE	(1 << 7)
+
 /* ULPI OTG Control Register bits */
-#define USE_EXT_VBUS_IND	(1 << 7)	/* Use ext. Vbus indicator */
-#define DRV_VBUS_EXT		(1 << 6)	/* Drive Vbus external */
-#define DRV_VBUS		(1 << 5)	/* Drive Vbus */
-#define CHRG_VBUS		(1 << 4)	/* Charge Vbus */
-#define DISCHRG_VBUS		(1 << 3)	/* Discharge Vbus */
-#define DM_PULL_DOWN		(1 << 2)	/* enable DM Pull Down */
-#define DP_PULL_DOWN		(1 << 1)	/* enable DP Pull Down */
-#define ID_PULL_UP		(1 << 0)	/* enable ID Pull Up */
+#define ULPI_OTG_USE_EXT_VBUS_IND	(1 << 7)	/* Use ext. Vbus indicator */
+#define ULPI_OTG_DRV_VBUS_EXT		(1 << 6)	/* Drive Vbus external */
+#define ULPI_OTG_DRV_VBUS		(1 << 5)	/* Drive Vbus */
+#define ULPI_OTG_CHRG_VBUS		(1 << 4)	/* Charge Vbus */
+#define ULPI_OTG_DISCHRG_VBUS		(1 << 3)	/* Discharge Vbus */
+#define ULPI_OTG_DM_PULL_DOWN		(1 << 2)	/* enable DM Pull Down */
+#define ULPI_OTG_DP_PULL_DOWN		(1 << 1)	/* enable DP Pull Down */
+#define ULPI_OTG_ID_PULL_UP		(1 << 0)	/* enable ID Pull Up */
 
 #endif /* __MACH_ULPI_H */
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
