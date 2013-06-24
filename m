Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ur4cZ-0005pY-0A
 for barebox@lists.infradead.org; Mon, 24 Jun 2013 11:07:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Jun 2013 13:07:18 +0200
Message-Id: <1372072039-22759-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1372072039-22759-1-git-send-email-s.hauer@pengutronix.de>
References: <1372072039-22759-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] ARM: i.MX53 LOCO: Switch to devicetree probing
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx53-loco/board.c    | 201 ++++------------
 arch/arm/configs/freescale_mx53_loco_defconfig |  11 +-
 arch/arm/dts/Makefile                          |   1 +
 arch/arm/dts/imx53-qsb.dts                     | 314 +++++++++++++++++++++++++
 4 files changed, 364 insertions(+), 163 deletions(-)
 create mode 100644 arch/arm/dts/imx53-qsb.dts

diff --git a/arch/arm/boards/freescale-mx53-loco/board.c b/arch/arm/boards/freescale-mx53-loco/board.c
index e041de6..2f51128 100644
--- a/arch/arm/boards/freescale-mx53-loco/board.c
+++ b/arch/arm/boards/freescale-mx53-loco/board.c
@@ -14,99 +14,30 @@
  *
  */
 
-#include <common.h>
 #include <environment.h>
-#include <fcntl.h>
-#include <fec.h>
-#include <fs.h>
-#include <init.h>
-#include <nand.h>
-#include <net.h>
 #include <partition.h>
+#include <common.h>
 #include <sizes.h>
+#include <gpio.h>
+#include <init.h>
+#include <fs.h>
+#include <io.h>
+
+#include <mfd/mc34708.h>
+#include <i2c/i2c.h>
+
+#include <asm/armlinux.h>
+#include <asm/mmu.h>
 
 #include <generated/mach-types.h>
 
+#include <mach/imx-flash-header.h>
 #include <mach/imx53-regs.h>
-#include <mach/iomux-mx53.h>
-#include <mach/devices-imx53.h>
+#include <mach/revision.h>
 #include <mach/generic.h>
-#include <mach/gpio.h>
-#include <mach/imx-nand.h>
-#include <mach/iim.h>
 #include <mach/imx5.h>
-#include <mach/revision.h>
 #include <mach/bbu.h>
-#include <mach/imx-flash-header.h>
-
-#include <i2c/i2c.h>
-#include <mfd/mc34708.h>
-
-#include <asm/armlinux.h>
-#include <io.h>
-#include <asm/mmu.h>
-
-static struct fec_platform_data fec_info = {
-	.xcv_type = PHY_INTERFACE_MODE_RMII,
-};
-
-static iomux_v3_cfg_t loco_pads[] = {
-	/* UART1 */
-	MX53_PAD_CSI0_DAT10__UART1_TXD_MUX,
-	MX53_PAD_CSI0_DAT11__UART1_RXD_MUX,
-
-	/* FEC */
-	MX53_PAD_FEC_MDC__FEC_MDC,
-	MX53_PAD_FEC_MDIO__FEC_MDIO,
-	MX53_PAD_FEC_REF_CLK__FEC_TX_CLK,
-	MX53_PAD_FEC_RX_ER__FEC_RX_ER,
-	MX53_PAD_FEC_CRS_DV__FEC_RX_DV,
-	MX53_PAD_FEC_RXD1__FEC_RDATA_1,
-	MX53_PAD_FEC_RXD0__FEC_RDATA_0,
-	MX53_PAD_FEC_TX_EN__FEC_TX_EN,
-	MX53_PAD_FEC_TXD1__FEC_TDATA_1,
-	MX53_PAD_FEC_TXD0__FEC_TDATA_0,
-	/* FEC_nRST */
-	MX53_PAD_PATA_DA_0__GPIO7_6,
-
-	/* SD1 */
-	MX53_PAD_SD1_CMD__ESDHC1_CMD,
-	MX53_PAD_SD1_CLK__ESDHC1_CLK,
-	MX53_PAD_SD1_DATA0__ESDHC1_DAT0,
-	MX53_PAD_SD1_DATA1__ESDHC1_DAT1,
-	MX53_PAD_SD1_DATA2__ESDHC1_DAT2,
-	MX53_PAD_SD1_DATA3__ESDHC1_DAT3,
-	/* SD1_CD */
-	MX53_PAD_EIM_DA13__GPIO3_13,
-
-	/* SD3 */
-	MX53_PAD_PATA_DATA8__ESDHC3_DAT0,
-	MX53_PAD_PATA_DATA9__ESDHC3_DAT1,
-	MX53_PAD_PATA_DATA10__ESDHC3_DAT2,
-	MX53_PAD_PATA_DATA11__ESDHC3_DAT3,
-	MX53_PAD_PATA_DATA0__ESDHC3_DAT4,
-	MX53_PAD_PATA_DATA1__ESDHC3_DAT5,
-	MX53_PAD_PATA_DATA2__ESDHC3_DAT6,
-	MX53_PAD_PATA_DATA3__ESDHC3_DAT7,
-	MX53_PAD_PATA_IORDY__ESDHC3_CLK,
-	MX53_PAD_PATA_RESET_B__ESDHC3_CMD,
-	/* SD3_CD */
-	MX53_PAD_EIM_DA11__GPIO3_11,
-	/* SD3_WP */
-	MX53_PAD_EIM_DA12__GPIO3_12,
-
-	/* I2C0 */
-	MX53_PAD_CSI0_DAT8__I2C1_SDA,
-	MX53_PAD_CSI0_DAT9__I2C1_SCL,
-
-	MX53_PAD_PATA_DA_2__GPIO7_8,
-};
-
-static struct i2c_board_info i2c_devices[] = {
-	{
-		I2C_BOARD_INFO("mc34708-i2c", 0x08),
-	},
-};
+#include <mach/iim.h>
 
 /*
  * Revision to be passed to kernel. The kernel provided
@@ -142,106 +73,60 @@ static void loco_fec_reset(void)
 	gpio_set_value(LOCO_FEC_PHY_RST, 1);
 }
 
-#define LOCO_SD3_CD			IMX_GPIO_NR(3, 11)
-#define LOCO_SD3_WP			IMX_GPIO_NR(3, 12)
-#define LOCO_SD1_CD			IMX_GPIO_NR(3, 13)
 #define MX53_LOCO_USB_PWREN		IMX_GPIO_NR(7, 8)
 
-static struct esdhc_platform_data loco_sd1_data = {
-	.cd_gpio = LOCO_SD1_CD,
-	.cd_type = ESDHC_CD_GPIO,
-	.wp_type = ESDHC_WP_NONE,
-};
+#define DCD_NAME static struct imx_dcd_v2_entry dcd_entry
 
-static struct esdhc_platform_data loco_sd3_data = {
-	.cd_gpio = LOCO_SD3_CD,
-	.wp_gpio = LOCO_SD3_WP,
-	.cd_type = ESDHC_CD_GPIO,
-	.wp_type = ESDHC_WP_GPIO,
-};
+#include "dcd-data.h"
 
-static void loco_ehci_init(void)
+static int loco_late_init(void)
 {
-	/* USB PWR enable */
-	gpio_direction_output(MX53_LOCO_USB_PWREN, 0);
-	gpio_set_value(MX53_LOCO_USB_PWREN, 1);
+	struct device_d *dev = get_device_by_name("mmc0");
+	struct mc34708 *mc34708;
+	int rev;
 
-	writel(0, MX53_OTG_BASE_ADDR + 0x384); /* setup portsc */
-	add_generic_usb_ehci_device(1, MX53_OTG_BASE_ADDR + 0x200, NULL);
-}
+	if (dev)
+		device_detect(dev);
 
-#define DCD_NAME static struct imx_dcd_v2_entry dcd_entry
+	devfs_add_partition("mmc0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env0");
 
-#include "dcd-data.h"
+	mc34708 = mc34708_get();
+	if (mc34708) {
+		/* get the board revision from fuse */
+		rev = readl(MX53_IIM_BASE_ADDR + 0x878);
+		set_board_rev(rev);
+		printf("MCIMX53-START-R board 1.0 rev %c\n", (rev == 1) ? 'A' : 'B' );
+		armlinux_set_revision(loco_system_rev);
+	} else {
+		/* so we have a DA9053 based board */
+		printf("MCIMX53-START board 1.0\n");
+		armlinux_set_revision(loco_system_rev);
+		return 0;
+	}
 
-static int loco_devices_init(void)
-{
+	/* USB PWR enable */
+	gpio_direction_output(MX53_LOCO_USB_PWREN, 0);
+	gpio_set_value(MX53_LOCO_USB_PWREN, 1);
 
-	imx53_iim_register_fec_ethaddr();
 	loco_fec_reset();
-	imx53_add_fec(&fec_info);
-	imx53_add_mmc0(&loco_sd1_data);
-	imx53_add_mmc2(&loco_sd3_data);
-	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
-	imx53_add_i2c0(NULL);
-
-	if (IS_ENABLED(CONFIG_USB_EHCI))
-		loco_ehci_init();
 
 	set_silicon_rev(imx_silicon_revision());
 
 	armlinux_set_bootparams((void *)0x70000100);
 	armlinux_set_architecture(MACH_TYPE_MX53_LOCO);
 
-	imx53_bbu_internal_mmc_register_handler("mmc", "/dev/disk0",
+	imx53_bbu_internal_mmc_register_handler("mmc", "/dev/mmc0",
 		BBU_HANDLER_FLAG_DEFAULT, dcd_entry, sizeof(dcd_entry), 0);
 
-	return 0;
-}
-
-device_initcall(loco_devices_init);
-
-static int loco_part_init(void)
-{
-	devfs_add_partition("disk0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self0");
-	devfs_add_partition("disk0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env0");
 
 	return 0;
 }
-late_initcall(loco_part_init);
+late_initcall(loco_late_init);
 
-static int loco_console_init(void)
+static int loco_core_init(void)
 {
-	mxc_iomux_v3_setup_multiple_pads(loco_pads, ARRAY_SIZE(loco_pads));
-
 	imx53_init_lowlevel(1000);
 
-	imx53_add_uart0();
-	return 0;
-}
-
-console_initcall(loco_console_init);
-
-static int loco_pmic_init(void)
-{
-	struct mc34708 *mc34708;
-	int rev;
-
-	mc34708 = mc34708_get();
-	if (!mc34708) {
-		/* so we have a DA9053 based board */
-		printf("MCIMX53-START board 1.0\n");
-		armlinux_set_revision(loco_system_rev);
-		return 0;
-	}
-
-	/* get the board revision from fuse */
-	rev = readl(MX53_IIM_BASE_ADDR + 0x878);
-	set_board_rev(rev);
-	printf("MCIMX53-START-R board 1.0 rev %c\n", (rev == 1) ? 'A' : 'B' );
-	armlinux_set_revision(loco_system_rev);
-
 	return 0;
 }
-
-late_initcall(loco_pmic_init);
+core_initcall(loco_core_init);
diff --git a/arch/arm/configs/freescale_mx53_loco_defconfig b/arch/arm/configs/freescale_mx53_loco_defconfig
index fb6fcf8..e45863c 100644
--- a/arch/arm/configs/freescale_mx53_loco_defconfig
+++ b/arch/arm/configs/freescale_mx53_loco_defconfig
@@ -1,3 +1,5 @@
+CONFIG_BUILTIN_DTB=y
+CONFIG_BUILTIN_DTB_NAME="imx53-qsb"
 CONFIG_ARCH_IMX=y
 CONFIG_ARCH_IMX53=y
 CONFIG_IMX_IIM=y
@@ -8,8 +10,7 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
-CONFIG_TEXT_BASE=0x7ff00000
-CONFIG_MALLOC_SIZE=0x2000000
+CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
 CONFIG_LONGHELP=y
@@ -17,6 +18,7 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
+CONFIG_CONSOLE_ACTIVATE_NONE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/freescale-mx53-loco/env/"
 CONFIG_RESET_SOURCE=y
@@ -31,9 +33,7 @@ CONFIG_CMD_READLINE=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
 CONFIG_CMD_TIME=y
-CONFIG_CMD_DIRNAME=y
 CONFIG_CMD_LN=y
-CONFIG_CMD_READLINK=y
 CONFIG_CMD_TFTP=y
 CONFIG_CMD_FILETYPE=y
 CONFIG_CMD_ECHO_E=y
@@ -62,11 +62,13 @@ CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_I2C=y
 CONFIG_CMD_MIITOOL=y
 CONFIG_CMD_CLK=y
+CONFIG_CMD_DETECT=y
 CONFIG_CMD_WD=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_PING=y
 CONFIG_NET_NETCONSOLE=y
+CONFIG_OFDEVICE=y
 CONFIG_SMSC_PHY=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 # CONFIG_SPI is not set
@@ -77,7 +79,6 @@ CONFIG_USB=y
 CONFIG_USB_EHCI=y
 CONFIG_USB_STORAGE=y
 CONFIG_MCI=y
-CONFIG_MCI_STARTUP=y
 CONFIG_MCI_IMX_ESDHC=y
 CONFIG_MFD_MC34708=y
 CONFIG_WATCHDOG=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index fa6a330..f22cc2b 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -1,4 +1,5 @@
 dtb-$(CONFIG_ARCH_IMX51) += imx51-babbage.dtb
+dtb-$(CONFIG_ARCH_IMX53) += imx53-qsb.dtb
 dtb-$(CONFIG_ARCH_IMX6) += imx6q-sabrelite.dtb \
 	imx6q-sabresd.dtb
 
diff --git a/arch/arm/dts/imx53-qsb.dts b/arch/arm/dts/imx53-qsb.dts
new file mode 100644
index 0000000..1dfb48b
--- /dev/null
+++ b/arch/arm/dts/imx53-qsb.dts
@@ -0,0 +1,314 @@
+/*
+ * Copyright 2011 Freescale Semiconductor, Inc.
+ * Copyright 2011 Linaro Ltd.
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+/dts-v1/;
+#include "imx53.dtsi"
+
+/ {
+	model = "Freescale i.MX53 Quick Start Board";
+	compatible = "fsl,imx53-qsb", "fsl,imx53";
+
+	chosen {
+		linux,stdout-path = "/soc/aips@50000000/serial@53fbc000";
+	};
+
+	memory {
+		reg = <0x70000000 0x40000000>;
+	};
+
+	display@di0 {
+		compatible = "fsl,imx-parallel-display";
+		crtcs = <&ipu 0>;
+		interface-pix-fmt = "rgb565";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_ipu_disp0_1>;
+		status = "disabled";
+		display-timings {
+			claawvga {
+				native-mode;
+				clock-frequency = <27000000>;
+				hactive = <800>;
+				vactive = <480>;
+				hback-porch = <40>;
+				hfront-porch = <60>;
+				vback-porch = <10>;
+				vfront-porch = <10>;
+				hsync-len = <20>;
+				vsync-len = <10>;
+				hsync-active = <0>;
+				vsync-active = <0>;
+				de-active = <1>;
+				pixelclk-active = <0>;
+			};
+		};
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+
+		power {
+			label = "Power Button";
+			gpios = <&gpio1 8 0>;
+			linux,code = <116>; /* KEY_POWER */
+			gpio-key,wakeup;
+		};
+
+		volume-up {
+			label = "Volume Up";
+			gpios = <&gpio2 14 0>;
+			linux,code = <115>; /* KEY_VOLUMEUP */
+		};
+
+		volume-down {
+			label = "Volume Down";
+			gpios = <&gpio2 15 0>;
+			linux,code = <114>; /* KEY_VOLUMEDOWN */
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&led_pin_gpio7_7>;
+
+		user {
+			label = "Heartbeat";
+			gpios = <&gpio7 7 0>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
+
+	regulators {
+		compatible = "simple-bus";
+
+		reg_3p2v: 3p2v {
+			compatible = "regulator-fixed";
+			regulator-name = "3P2V";
+			regulator-min-microvolt = <3200000>;
+			regulator-max-microvolt = <3200000>;
+			regulator-always-on;
+		};
+	};
+
+	sound {
+		compatible = "fsl,imx53-qsb-sgtl5000",
+			     "fsl,imx-audio-sgtl5000";
+		model = "imx53-qsb-sgtl5000";
+		ssi-controller = <&ssi2>;
+		audio-codec = <&sgtl5000>;
+		audio-routing =
+			"MIC_IN", "Mic Jack",
+			"Mic Jack", "Mic Bias",
+			"Headphone Jack", "HP_OUT";
+		mux-int-port = <2>;
+		mux-ext-port = <5>;
+	};
+};
+
+&esdhc1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_esdhc1_1>;
+	cd-gpios = <&gpio3 13 0>;
+	status = "okay";
+};
+
+&ssi2 {
+	fsl,mode = "i2s-slave";
+	status = "okay";
+};
+
+&esdhc3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_esdhc3_1>;
+	cd-gpios = <&gpio3 11 0>;
+	wp-gpios = <&gpio3 12 0>;
+	status = "okay";
+};
+
+&iim {
+	barebox,provide-mac-address = <&fec 1 9>;
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	hog {
+		pinctrl_hog: hoggrp {
+			fsl,pins = <
+				MX53_PAD_GPIO_0__CCM_SSI_EXT1_CLK 0x80000000
+				MX53_PAD_GPIO_8__GPIO1_8          0x80000000
+				MX53_PAD_PATA_DATA14__GPIO2_14    0x80000000
+				MX53_PAD_PATA_DATA15__GPIO2_15    0x80000000
+				MX53_PAD_EIM_DA11__GPIO3_11       0x80000000
+				MX53_PAD_EIM_DA12__GPIO3_12       0x80000000
+				MX53_PAD_EIM_DA13__GPIO3_13       0x80000000
+				MX53_PAD_PATA_DA_0__GPIO7_6       0x80000000
+				MX53_PAD_GPIO_16__GPIO7_11        0x80000000
+			>;
+		};
+
+		led_pin_gpio7_7: led_gpio7_7@0 {
+			fsl,pins = <
+				MX53_PAD_PATA_DA_1__GPIO7_7 0x80000000
+			>;
+		};
+	};
+
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1_1>;
+	status = "okay";
+};
+
+&i2c2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2_1>;
+	status = "okay";
+
+	sgtl5000: codec@0a {
+		compatible = "fsl,sgtl5000";
+		reg = <0x0a>;
+		VDDA-supply = <&reg_3p2v>;
+		VDDIO-supply = <&reg_3p2v>;
+		clocks = <&clks 150>;
+	};
+};
+
+&i2c1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1_1>;
+	status = "okay";
+
+	accelerometer: mma8450@1c {
+		compatible = "fsl,mma8450";
+		reg = <0x1c>;
+	};
+
+	pmic: dialog@48 {
+		compatible = "dlg,da9053-aa", "dlg,da9052";
+		reg = <0x48>;
+		interrupt-parent = <&gpio7>;
+		interrupts = <11 0x8>; /* low-level active IRQ at GPIO7_11 */
+
+		regulators {
+			buck1_reg: buck1 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <2075000>;
+				regulator-always-on;
+			};
+
+			buck2_reg: buck2 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <2075000>;
+				regulator-always-on;
+			};
+
+			buck3_reg: buck3 {
+				regulator-min-microvolt = <925000>;
+				regulator-max-microvolt = <2500000>;
+				regulator-always-on;
+			};
+
+			buck4_reg: buck4 {
+				regulator-min-microvolt = <925000>;
+				regulator-max-microvolt = <2500000>;
+				regulator-always-on;
+			};
+
+			ldo1_reg: ldo1 {
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo2_reg: ldo2 {
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-always-on;
+			};
+
+			ldo3_reg: ldo3 {
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-always-on;
+			};
+
+			ldo4_reg: ldo4 {
+				regulator-min-microvolt = <1725000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			ldo5_reg: ldo5 {
+				regulator-min-microvolt = <1725000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			ldo6_reg: ldo6 {
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <3600000>;
+				regulator-always-on;
+			};
+
+			ldo7_reg: ldo7 {
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <3600000>;
+				regulator-always-on;
+			};
+
+			ldo8_reg: ldo8 {
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <3600000>;
+				regulator-always-on;
+			};
+
+			ldo9_reg: ldo9 {
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <3600000>;
+				regulator-always-on;
+			};
+
+			ldo10_reg: ldo10 {
+				regulator-min-microvolt = <1250000>;
+				regulator-max-microvolt = <3650000>;
+				regulator-always-on;
+			};
+		};
+	};
+};
+
+&audmux {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_audmux_1>;
+	status = "okay";
+};
+
+&fec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_fec_1>;
+	phy-mode = "rmii";
+	phy-reset-gpios = <&gpio7 6 0>;
+	status = "okay";
+};
+
+&usbh1 {
+       status = "okay";
+};
+
+&usbotg {
+       status = "okay";
+};
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
