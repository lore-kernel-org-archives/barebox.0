Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gIVQq-0003l8-DQ
 for barebox@lists.infradead.org; Fri, 02 Nov 2018 09:07:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  2 Nov 2018 10:07:43 +0100
Message-Id: <20181102090743.25128-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] Add initial support for the EVB-KSZ9477 eval board
To: Barebox List <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

The EVB-KSZ9477 is an evaluation board for the KSZ9477 ethernet switch.
This board is equipped with a atsama5d3 SoC with 256MiB of SDRAM, 256MiB
of NAND flash and a SD card slot.

For now only second stage booting is supported with AT91bootstrap as
first stage loader.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/Makefile                      |   1 +
 .../arm/boards/microchip-ksz9477-evb/Makefile |   1 +
 .../boards/microchip-ksz9477-evb/lowlevel.c   |  28 ++++
 .../configs/microchip_ksz9477_evb_defconfig   |  74 +++++++++
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/at91-microchip-ksz9477-evb.dts   | 153 ++++++++++++++++++
 arch/arm/mach-at91/Kconfig                    |   7 +
 arch/arm/mach-at91/Makefile                   |   2 +-
 images/Makefile.at91                          |   4 +
 9 files changed, 270 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/microchip-ksz9477-evb/Makefile
 create mode 100644 arch/arm/boards/microchip-ksz9477-evb/lowlevel.c
 create mode 100644 arch/arm/configs/microchip_ksz9477_evb_defconfig
 create mode 100644 arch/arm/dts/at91-microchip-ksz9477-evb.dts

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index c737cf3413..c183b89051 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -110,6 +110,7 @@ obj-$(CONFIG_MACH_SABRESD)			+= freescale-mx6-sabresd/
 obj-$(CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB)	+= freescale-mx6sx-sabresdb/
 obj-$(CONFIG_MACH_SAMA5D3XEK)			+= sama5d3xek/
 obj-$(CONFIG_MACH_SAMA5D3_XPLAINED)		+= sama5d3_xplained/
+obj-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB)	+= microchip-ksz9477-evb/
 obj-$(CONFIG_MACH_SAMA5D4_XPLAINED)		+= sama5d4_xplained/
 obj-$(CONFIG_MACH_SAMA5D4EK)			+= sama5d4ek/
 obj-$(CONFIG_MACH_SCB9328)			+= scb9328/
diff --git a/arch/arm/boards/microchip-ksz9477-evb/Makefile b/arch/arm/boards/microchip-ksz9477-evb/Makefile
new file mode 100644
index 0000000000..b08c4a93ca
--- /dev/null
+++ b/arch/arm/boards/microchip-ksz9477-evb/Makefile
@@ -0,0 +1 @@
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c b/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c
new file mode 100644
index 0000000000..639958a459
--- /dev/null
+++ b/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c
@@ -0,0 +1,28 @@
+/*
+ * Copyright (C) 2018 Ahmad Fatoum, Pengutronix
+ *
+ * Under GPLv2
+ */
+
+#include <common.h>
+#include <init.h>
+
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+
+#include <mach/hardware.h>
+
+extern char __dtb_at91_microchip_ksz9477_evb_start[];
+
+ENTRY_FUNCTION(start_sama5d3_xplained_ung8071, r0, r1, r2)
+{
+	void *fdt;
+
+	arm_cpu_lowlevel_init();
+
+	arm_setup_stack(SAMA5D3_SRAM_BASE + SAMA5D3_SRAM_SIZE - 16);
+
+	fdt = __dtb_at91_microchip_ksz9477_evb_start + get_runtime_offset();
+
+	barebox_arm_entry(SAMA5_DDRCS, SZ_256M, fdt);
+}
diff --git a/arch/arm/configs/microchip_ksz9477_evb_defconfig b/arch/arm/configs/microchip_ksz9477_evb_defconfig
new file mode 100644
index 0000000000..e7d05bd13b
--- /dev/null
+++ b/arch/arm/configs/microchip_ksz9477_evb_defconfig
@@ -0,0 +1,74 @@
+CONFIG_ARCH_SAMA5D3=y
+CONFIG_AT91_MULTI_BOARDS=y
+CONFIG_MACH_MICROCHIP_KSZ9477_EVB=y
+CONFIG_AEABI=y
+CONFIG_MMU=y
+CONFIG_MALLOC_SIZE=0x0
+CONFIG_MALLOC_TLSF=y
+CONFIG_KALLSYMS=y
+CONFIG_RELOCATABLE=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
+CONFIG_CONSOLE_ALLOW_COLOR=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_DEBUG_INFO=y
+CONFIG_CMD_DMESG=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_AT91_BOOT_TEST=y
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_GO=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_DEFAULTENV=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_LET=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_READF=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_MM=y
+CONFIG_CMD_CLK=y
+CONFIG_CMD_DETECT=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_BAREBOX_UPDATE=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
+CONFIG_NET=y
+CONFIG_NET_NFS=y
+CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_OF_BAREBOX_ENV_IN_FS=y
+CONFIG_DRIVER_NET_MACB=y
+CONFIG_DRIVER_NET_MICREL=y
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+CONFIG_MCI_MMC_BOOT_PARTITIONS=y
+CONFIG_MCI_ATMEL=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 1caeca35b4..809ecf67b9 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -115,6 +115,7 @@ pbl-dtb-$(CONFIG_MACH_ZII_VF610_DEV) += \
 	vf610-zii-ssmb-spu3.dtb.o	\
 	vf610-zii-scu4-aib-rev-c.dtb.o
 pbl-dtb-$(CONFIG_MACH_AT91SAM9263EK_DT) += at91sam9263ek.dtb.o
+pbl-dtb-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += at91-microchip-ksz9477-evb.dtb.o
 pbl-dtb-$(CONFIG_MACH_AT91SAM9X5EK) += at91sam9x5ek.dtb.o
 
 pbl-dtb-$(CONFIG_MACH_ZII_IMX7D_RPU2) += imx7d-zii-rpu2.dtb.o
diff --git a/arch/arm/dts/at91-microchip-ksz9477-evb.dts b/arch/arm/dts/at91-microchip-ksz9477-evb.dts
new file mode 100644
index 0000000000..075cdcd088
--- /dev/null
+++ b/arch/arm/dts/at91-microchip-ksz9477-evb.dts
@@ -0,0 +1,153 @@
+/*
+ * at91-microchip-ksz9477-evb.dts - Device Tree file for the EVB-KSZ9477 board
+ *
+ *  Copyright (C) 2014 Atmel,
+ *		  2014 Nicolas Ferre <nicolas.ferre@atmel.com>
+ *		  2018 Ahmad Fatoum <a.fatoum@pengutronix.de>
+ *
+ * Licensed under GPLv2 or later.
+ */
+/dts-v1/;
+#include <arm/sama5d36.dtsi>
+
+/ {
+	model = "Microchip EVB-KSZ9477";
+	compatible = "atmel,sama5d3-ksz9477-evb", "atmel,sama5d3", "atmel,sama5";
+
+	aliases {
+		mmc0 = &mmc0;
+	};
+
+	chosen {
+		stdout-path = &dbgu;
+
+		environment {
+			compatible = "barebox,environment";
+			device-path = &mmc0, "partname:0";
+			file-path = "barebox.env";
+		};
+	};
+
+	memory {
+		reg = <0x20000000 0x10000000>;
+	};
+};
+
+&pinctrl {
+	board {
+		pinctrl_mmc0_cd: mmc0_cd {
+			atmel,pins =
+				<AT91_PIOE 0 AT91_PERIPH_GPIO AT91_PINCTRL_PULL_UP_DEGLITCH>;
+		};
+
+		pinctrl_spi_ksz: spi_ksz {
+			atmel,pins =
+				<
+				AT91_PIOB 28 AT91_PERIPH_GPIO AT91_PINCTRL_DEGLITCH
+				AT91_PIOC 31 AT91_PERIPH_GPIO AT91_PINCTRL_DEGLITCH
+				>;
+		};
+	};
+};
+
+&slow_xtal {
+	clock-frequency = <32768>;
+};
+
+&main_xtal {
+	clock-frequency = <12000000>;
+};
+
+&dbgu {
+	status = "okay";
+};
+
+&macb0 {
+	phy-mode = "rgmii";
+	gpios = <&pioB 28 GPIO_ACTIVE_LOW>;
+	status = "okay";
+
+	fixed-link {
+		speed = <1000>;
+		full-duplex;
+	};
+};
+
+&mmc0 {
+	pinctrl-0 = <&pinctrl_mmc0_clk_cmd_dat0 &pinctrl_mmc0_dat1_3 &pinctrl_mmc0_dat4_7 &pinctrl_mmc0_cd>;
+	status = "okay";
+	slot@0 {
+		reg = <0>;
+		bus-width = <8>;
+		cd-gpios = <&pioE 0 GPIO_ACTIVE_LOW>;
+	};
+};
+
+&pmc {
+	main: mainck {
+		clock-frequency = <12000000>;
+	};
+};
+
+&spi1 {
+	pinctrl-0 = <&pinctrl_spi_ksz>;
+	cs-gpios = <&pioC 25 0>;
+	id = <1>;
+	status = "okay";
+
+	ksz9477: ksz9477@0 {
+		compatible = "microchip,ksz9477", "microchip,ksz9893";
+		reg = <0>;
+
+		/* Bus clock is 132 MHz. */
+		spi-max-frequency = <44000000>;
+		spi-cpha;
+		spi-cpol;
+		gpios = <&pioB 28 GPIO_ACTIVE_LOW>;
+		status = "okay";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				label = "lan0";
+			};
+
+			port@1 {
+				reg = <1>;
+				label = "lan1";
+			};
+
+			port@2 {
+				reg = <2>;
+				label = "lan2";
+			};
+
+			port@3 {
+				reg = <3>;
+				label = "lan3";
+			};
+
+			port@4 {
+				reg = <4>;
+				label = "lan4";
+			};
+
+			port@5 {
+				reg = <5>;
+				label = "cpu";
+				ethernet = <&macb0>;
+				phy-mode = "rgmii-id";
+
+				fixed-link {
+					speed = <1000>;
+					full-duplex;
+				};
+			};
+
+			/* port 6 is connected to eth0 */
+		};
+	};
+};
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 0a9cf3ad13..2c949098f0 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -550,6 +550,13 @@ config MACH_AT91SAM9X5EK
 	  Select this if you re using Atmel's AT91SAM9x5-EK Evaluation Kit.
 	  Supported chips are sam9g15, sam9g25, sam9x25, sam9g35 and sam9x35.
 
+config MACH_MICROCHIP_KSZ9477_EVB
+	bool "Microchip EVB-KSZ9477 Evaluation Kit"
+	select OFDEVICE
+	select COMMON_CLK_OF_PROVIDER
+	help
+	  Select this if you are using Microchip's EVB-KSZ9477 Evaluation Kit.
+
 endif
 
 comment "AT91 Board Options"
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 664201ceb6..afbc896eea 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -20,10 +20,10 @@ obj-$(CONFIG_ARCH_AT91SAM9261) += at91sam9261.o at91sam9261_devices.o
 obj-$(CONFIG_ARCH_AT91SAM9G10) += at91sam9261.o at91sam9261_devices.o
 ifeq ($(CONFIG_OFDEVICE),)
 obj-$(CONFIG_ARCH_AT91SAM9263) += at91sam9263.o at91sam9263_devices.o
+obj-$(CONFIG_ARCH_SAMA5D3)	+= sama5d3.o sama5d3_devices.o
 endif
 obj-$(CONFIG_ARCH_AT91SAM9G20) += at91sam9260.o at91sam9260_devices.o
 obj-$(CONFIG_ARCH_AT91SAM9G45) += at91sam9g45.o at91sam9g45_devices.o
 obj-$(CONFIG_ARCH_AT91SAM9X5)	+= at91sam9x5_devices.o
 obj-$(CONFIG_ARCH_AT91SAM9N12)	+= at91sam9n12.o at91sam9n12_devices.o
-obj-$(CONFIG_ARCH_SAMA5D3)	+= sama5d3.o sama5d3_devices.o
 obj-$(CONFIG_ARCH_SAMA5D4)	+= sama5d4.o sama5d4_devices.o
diff --git a/images/Makefile.at91 b/images/Makefile.at91
index c7d86563a7..90860fcc15 100644
--- a/images/Makefile.at91
+++ b/images/Makefile.at91
@@ -9,3 +9,7 @@ image-$(CONFIG_MACH_AT91SAM9X5EK) += barebox-at91sam9x5ek.img
 pblx-$(CONFIG_MACH_AT91SAM9263EK) += start_at91sam9263ek
 FILE_barebox-at91sam9263ek.img = start_at91sam9263ek.pblx
 image-$(CONFIG_MACH_AT91SAM9263EK) += barebox-at91sam9263ek.img
+
+pblx-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += start_sama5d3_xplained_ung8071
+FILE_barebox-microchip-ksz9477-evb.img = start_sama5d3_xplained_ung8071.pblx
+image-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += barebox-microchip-ksz9477-evb.img
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
