Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJzJb-00029V-I8
 for barebox@lists.infradead.org; Mon, 14 Oct 2019 12:19:11 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2019 14:19:01 +0200
Message-Id: <20191014121901.19471-13-a.fatoum@pengutronix.de>
In-Reply-To: <20191014121901.19471-1-a.fatoum@pengutronix.de>
References: <20191014121901.19471-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 12/12] ARM: at91: add basic sama5d2-som1-ek1 support
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The ATSAMA5D27-SOM1-EK1 is Microchip's evaluation kit for the SAMA5D2
System in Packages (SiPs). The ATSAMA5D27C-D1G-CU SIP embeds 128 MB
of DDR2 DRAM and the SoM has a PMIC, QSPI flash and a 100Mbps PHY.

barebox already supports the sama5d2 clocks, GPIO/Pinctrl, QSPI
controller and Ethernet MAC. Most notable omission is the sama5d2
variant of the SDHCI, which differs from the MCI used by previous AT91
boards, but we kernel boot over the network works, so lets add the board
now and have the SDHCI follow later.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/Makefile                    |  1 +
 arch/arm/boards/sama5d27-som1/Makefile      |  1 +
 arch/arm/boards/sama5d27-som1/lowlevel.c    | 81 +++++++++++++++++++
 arch/arm/configs/sama5d27_som1_ek_defconfig | 88 +++++++++++++++++++++
 arch/arm/dts/Makefile                       |  1 +
 arch/arm/dts/at91-sama5d27_som1_ek.dts      | 36 +++++++++
 arch/arm/mach-at91/Kconfig                  |  8 ++
 images/Makefile.at91                        |  4 +
 8 files changed, 220 insertions(+)
 create mode 100644 arch/arm/boards/sama5d27-som1/Makefile
 create mode 100644 arch/arm/boards/sama5d27-som1/lowlevel.c
 create mode 100644 arch/arm/configs/sama5d27_som1_ek_defconfig
 create mode 100644 arch/arm/dts/at91-sama5d27_som1_ek.dts

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 61c98adbdcaa..6cb40d084b3d 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -112,6 +112,7 @@ obj-$(CONFIG_MACH_RPI_COMMON)			+= raspberry-pi/
 obj-$(CONFIG_MACH_SABRELITE)			+= freescale-mx6-sabrelite/
 obj-$(CONFIG_MACH_SABRESD)			+= freescale-mx6-sabresd/
 obj-$(CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB)	+= freescale-mx6sx-sabresdb/
+obj-$(CONFIG_MACH_SAMA5D27_SOM1)		+= sama5d27-som1/
 obj-$(CONFIG_MACH_SAMA5D3XEK)			+= sama5d3xek/
 obj-$(CONFIG_MACH_SAMA5D3_XPLAINED)		+= sama5d3_xplained/
 obj-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB)	+= microchip-ksz9477-evb/
diff --git a/arch/arm/boards/sama5d27-som1/Makefile b/arch/arm/boards/sama5d27-som1/Makefile
new file mode 100644
index 000000000000..b08c4a93ca27
--- /dev/null
+++ b/arch/arm/boards/sama5d27-som1/Makefile
@@ -0,0 +1 @@
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/sama5d27-som1/lowlevel.c b/arch/arm/boards/sama5d27-som1/lowlevel.c
new file mode 100644
index 000000000000..7df5a4772d0b
--- /dev/null
+++ b/arch/arm/boards/sama5d27-som1/lowlevel.c
@@ -0,0 +1,81 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 Ahmad Fatoum, Pengutronix
+ */
+
+#include <common.h>
+#include <init.h>
+
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/at91_pmc_ll.h>
+
+#include <mach/hardware.h>
+#include <mach/iomux.h>
+#include <debug_ll.h>
+#include <mach/at91_dbgu.h>
+
+#define RGB_LED_GREEN (1 << 0)
+#define RGB_LED_RED   (1 << 1)
+#define RGB_LED_BLUE  (1 << 2)
+
+/* PCK = 492MHz, MCK = 164MHz */
+#define MASTER_CLOCK	164000000
+
+#define sama5d2_pmc_enable_periph_clock(clk) \
+	at91_pmc_sam9x5_enable_periph_clock(IOMEM(SAMA5D2_BASE_PMC), clk)
+
+static void ek_turn_led(unsigned color)
+{
+	struct {
+		unsigned long pio;
+		unsigned bit;
+		unsigned color;
+	} *led, leds[] = {
+		{ .pio = SAMA5D2_BASE_PIOA, .bit = 10, .color = color & RGB_LED_RED },
+		{ .pio = SAMA5D2_BASE_PIOB, .bit =  1, .color = color & RGB_LED_GREEN },
+		{ .pio = SAMA5D2_BASE_PIOA, .bit = 31, .color = color & RGB_LED_BLUE },
+		{ /* sentinel */ },
+	};
+
+	for (led = leds; led->pio; led++) {
+		at91_mux_gpio4_enable(IOMEM(led->pio), BIT(led->bit));
+		at91_mux_gpio4_input(IOMEM(led->pio), BIT(led->bit), false);
+		at91_mux_gpio4_set(IOMEM(led->pio), BIT(led->bit), led->color);
+	}
+}
+
+static void ek_dbgu_init(void)
+{
+	unsigned mck = MASTER_CLOCK / 2;
+
+	sama5d2_pmc_enable_periph_clock(SAMA5D2_ID_PIOD);
+
+	at91_mux_pio4_set_A_periph(IOMEM(SAMA5D2_BASE_PIOD),
+				   pin_to_mask(AT91_PIN_PD3)); /* DBGU TXD */
+
+	sama5d2_pmc_enable_periph_clock(SAMA5D2_ID_UART1);
+
+	at91_dbgu_setup_ll(IOMEM(SAMA5D2_BASE_UART1), mck, 115200);
+
+	putc_ll('>');
+}
+
+extern char __dtb_z_at91_sama5d27_som1_ek_start[];
+
+ENTRY_FUNCTION(start_sama5d27_som1_ek, r0, r1, r2)
+{
+	void *fdt;
+
+	arm_cpu_lowlevel_init();
+
+	arm_setup_stack(SAMA5D2_SRAM_BASE + SAMA5D2_SRAM_SIZE - 16);
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		ek_dbgu_init();
+
+	fdt = __dtb_z_at91_sama5d27_som1_ek_start + get_runtime_offset();
+
+	ek_turn_led(RGB_LED_GREEN);
+	barebox_arm_entry(SAMA5_DDRCS, SZ_128M, fdt);
+}
diff --git a/arch/arm/configs/sama5d27_som1_ek_defconfig b/arch/arm/configs/sama5d27_som1_ek_defconfig
new file mode 100644
index 000000000000..8ed07a780f49
--- /dev/null
+++ b/arch/arm/configs/sama5d27_som1_ek_defconfig
@@ -0,0 +1,88 @@
+CONFIG_ARCH_SAMA5D2=y
+CONFIG_AT91_MULTI_BOARDS=y
+CONFIG_MACH_SAMA5D27_SOM1=y
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
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_MM=y
+CONFIG_CMD_DETECT=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_WD=y
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
+CONFIG_SPI_ATMEL_QUADSPI=y
+CONFIG_MTD=y
+CONFIG_MTD_DATAFLASH=y
+CONFIG_MTD_M25P80=y
+CONFIG_MTD_SST25L=y
+CONFIG_MTD_DOCG3=y
+CONFIG_MTD_MTDRAM=y
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+CONFIG_MCI_MMC_BOOT_PARTITIONS=y
+CONFIG_MCI_ATMEL=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_GPIO_OF=y
+CONFIG_LED_TRIGGERS=y
+CONFIG_WATCHDOG=y
+CONFIG_WATCHDOG_AT91SAM9=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 680f2ac2f1f0..294a0bfa5525 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -135,6 +135,7 @@ lwl-dtb-$(CONFIG_MACH_ZII_VF610_DEV) += \
 	vf610-zii-ssmb-dtu.dtb.o
 lwl-dtb-$(CONFIG_MACH_AT91SAM9263EK_DT) += at91sam9263ek.dtb.o
 lwl-dtb-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += at91-microchip-ksz9477-evb.dtb.o
+lwl-dtb-$(CONFIG_MACH_SAMA5D27_SOM1) += at91-sama5d27_som1_ek.dtb.o
 lwl-dtb-$(CONFIG_MACH_AT91SAM9X5EK) += at91sam9x5ek.dtb.o
 lwl-dtb-$(CONFIG_MACH_XILINX_ZCU104) += zynqmp-zcu104-revA.dtb.o
 
diff --git a/arch/arm/dts/at91-sama5d27_som1_ek.dts b/arch/arm/dts/at91-sama5d27_som1_ek.dts
new file mode 100644
index 000000000000..936f07eac45e
--- /dev/null
+++ b/arch/arm/dts/at91-sama5d27_som1_ek.dts
@@ -0,0 +1,36 @@
+// SPDX-License-Identifier: GPL-2.0 OR X11
+/*
+ * Copyright (C) 2019 Oleksij Rempel - Pengutronix
+ */
+
+#include <arm/at91-sama5d27_som1_ek.dts>
+
+/ {
+	chosen {
+		environment {
+			compatible = "barebox,environment";
+			device-path = &barebox_env;
+		};
+	};
+
+	memory {
+		reg = <0x20000000 0x8000000>;
+	};
+};
+
+&qspi1 {
+	flash@0 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "barebox";
+			reg = <0x0 0x80000>;
+		};
+
+		barebox_env: partition@80000 {
+			label = "barebox-environment";
+			reg = <0x80000 0x80000>;
+		};
+	};
+};
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 6be9bf646d05..ef00e32e380d 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -573,6 +573,14 @@ config MACH_MICROCHIP_KSZ9477_EVB
 	help
 	  Select this if you are using Microchip's EVB-KSZ9477 Evaluation Kit.
 
+config MACH_SAMA5D27_SOM1
+	bool "Microchip SAMA5D27 SoM-1 Evaluation Kit"
+	select SOC_SAMA5D2
+	select OFDEVICE
+	select COMMON_CLK_OF_PROVIDER
+	help
+	  Select this if you are using Microchip's sama5d27 SoM evaluation kit
+
 endif
 
 comment "AT91 Board Options"
diff --git a/images/Makefile.at91 b/images/Makefile.at91
index acdb591d2452..f321bdec3696 100644
--- a/images/Makefile.at91
+++ b/images/Makefile.at91
@@ -13,3 +13,7 @@ image-$(CONFIG_MACH_AT91SAM9263EK) += barebox-at91sam9263ek.img
 pblb-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += start_sama5d3_xplained_ung8071
 FILE_barebox-microchip-ksz9477-evb.img = start_sama5d3_xplained_ung8071.pblb
 image-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += barebox-microchip-ksz9477-evb.img
+
+pblb-$(CONFIG_MACH_SAMA5D27_SOM1) += start_sama5d27_som1_ek
+FILE_barebox-sama5d27-som1-ek.img = start_sama5d27_som1_ek.pblb
+image-$(CONFIG_MACH_SAMA5D27_SOM1) += barebox-sama5d27-som1-ek.img
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
