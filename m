Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXoHg-00005l-PW
 for barebox@lists.infradead.org; Fri, 14 Dec 2018 14:18:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Dec 2018 15:17:29 +0100
Message-Id: <20181214141730.26181-23-s.hauer@pengutronix.de>
In-Reply-To: <20181214141730.26181-1-s.hauer@pengutronix.de>
References: <20181214141730.26181-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 22/23] ARM: omap: Add board support for WAGO pfc200 platform
To: Barebox List <barebox@lists.infradead.org>

This adds support for the AM3517 based WAGO pfc100/200 SPS.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/Makefile                      |   1 +
 arch/arm/boards/wago-pfc-am35xx/Makefile      |   6 +
 arch/arm/boards/wago-pfc-am35xx/board-mlo.c   |  73 +++
 arch/arm/boards/wago-pfc-am35xx/board.c       |  39 ++
 arch/arm/boards/wago-pfc-am35xx/lowlevel.c    | 231 +++++++++
 .../arm/configs/am35xx_pfc200_xload_defconfig |  40 ++
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/am35xx-pfc-750_820x.dts          | 487 ++++++++++++++++++
 arch/arm/dts/am3xxx-pfc-nandparts.dtsi        |  63 +++
 arch/arm/mach-omap/Kconfig                    |   9 +
 images/Makefile                               |   1 +
 images/Makefile.am35xx                        |  24 +
 12 files changed, 975 insertions(+)
 create mode 100644 arch/arm/boards/wago-pfc-am35xx/Makefile
 create mode 100644 arch/arm/boards/wago-pfc-am35xx/board-mlo.c
 create mode 100644 arch/arm/boards/wago-pfc-am35xx/board.c
 create mode 100644 arch/arm/boards/wago-pfc-am35xx/lowlevel.c
 create mode 100644 arch/arm/configs/am35xx_pfc200_xload_defconfig
 create mode 100644 arch/arm/dts/am35xx-pfc-750_820x.dts
 create mode 100644 arch/arm/dts/am3xxx-pfc-nandparts.dtsi
 create mode 100644 images/Makefile.am35xx

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 3bf176b14d..b546274244 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -157,3 +157,4 @@ obj-$(CONFIG_MACH_ZII_RDU1)			+= zii-imx51-rdu1/
 obj-$(CONFIG_MACH_ZII_RDU2)			+= zii-imx6q-rdu2/
 obj-$(CONFIG_MACH_ZII_VF610_DEV)		+= zii-vf610-dev/
 obj-$(CONFIG_MACH_ZII_IMX7D_RPU2)		+= zii-imx7d-rpu2/
+obj-$(CONFIG_MACH_WAGO_PFC_AM35XX)		+= wago-pfc-am35xx/
diff --git a/arch/arm/boards/wago-pfc-am35xx/Makefile b/arch/arm/boards/wago-pfc-am35xx/Makefile
new file mode 100644
index 0000000000..7bd3009f31
--- /dev/null
+++ b/arch/arm/boards/wago-pfc-am35xx/Makefile
@@ -0,0 +1,6 @@
+lwl-y += lowlevel.o
+ifdef CONFIG_OMAP_BUILD_IFT
+obj-y += board-mlo.o
+else
+obj-y += board.o
+endif
diff --git a/arch/arm/boards/wago-pfc-am35xx/board-mlo.c b/arch/arm/boards/wago-pfc-am35xx/board-mlo.c
new file mode 100644
index 0000000000..49fcd0b30b
--- /dev/null
+++ b/arch/arm/boards/wago-pfc-am35xx/board-mlo.c
@@ -0,0 +1,73 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2015 WAGO Kontakttechnik GmbH & Co. KG <http://global.wago.com>
+ * Author: Heinrich Toews <heinrich.toews@wago.com>
+ */
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <linux/sizes.h>
+#include <mach/omap3-silicon.h>
+#include <mach/gpmc.h>
+#include <mach/gpmc_nand.h>
+#include <errno.h>
+#include <mach/omap3-devices.h>
+#include <mach/generic.h>
+
+/* map first four erase blocks */
+static struct omap_barebox_part pfc200_mlo_part = {
+	/* start of boot0..boot3 (stage2 bootcode),
+	 * we have 4x partitions
+	 */
+	.nand_offset = 4 * SZ_128K,
+	.nand_size = 4 * SZ_128K,
+};
+
+/**
+ * @brief Initialize the serial port to be used as console.
+ *
+ * @return result of device registration
+ */
+static int pfc200_init_console(void)
+{
+	barebox_set_model("Wago PFC200 MLO Stage #1");
+	barebox_set_hostname("pfc200-mlo");
+
+	omap3_add_uart3();
+
+	return 0;
+}
+console_initcall(pfc200_init_console);
+
+static int pfc200_mem_init(void)
+{
+	omap_add_ram0(SZ_256M);
+
+	return 0;
+}
+mem_initcall(pfc200_mem_init);
+
+static struct gpmc_nand_platform_data nand_plat = {
+	.cs = 0,
+	.device_width = 8,
+	.ecc_mode = OMAP_ECC_BCH8_CODE_HW_DETECTION_SW,
+	.nand_cfg = &omap3_nand_cfg,
+};
+
+static int pfc200_init_devices(void)
+{
+#ifdef CONFIG_OMAP_GPMC
+	/*
+	 * WP is made high and WAIT1 active Low
+	 */
+	gpmc_generic_init(0x10);
+#endif
+	omap_add_gpmc_nand_device(&nand_plat);
+	omap_set_barebox_part(&pfc200_mlo_part);
+
+	omap3_add_mmc1(NULL);
+
+	return 0;
+}
+device_initcall(pfc200_init_devices);
diff --git a/arch/arm/boards/wago-pfc-am35xx/board.c b/arch/arm/boards/wago-pfc-am35xx/board.c
new file mode 100644
index 0000000000..2bad40912d
--- /dev/null
+++ b/arch/arm/boards/wago-pfc-am35xx/board.c
@@ -0,0 +1,39 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2014 WAGO Kontakttechnik GmbH & Co. KG <http://global.wago.com>
+ * Author: Heinrich Toews <heinrich.toews@wago.com>
+ */
+
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <gpio.h>
+#include <linux/sizes.h>
+#include <linux/err.h>
+#include <asm/memory.h>
+#include <mach/generic.h>
+
+static int pfc200_mem_init(void)
+{
+	if (!of_machine_is_compatible("ti,pfc200"))
+		return 0;
+
+	arm_add_mem_device("ram0", 0x80000000, SZ_256M);
+	return 0;
+}
+mem_initcall(pfc200_mem_init);
+
+#define GPIO_KSZ886x_RESET	136
+
+static int pfc200_devices_init(void)
+{
+	if (!of_machine_is_compatible("ti,pfc200"))
+		return 0;
+
+	gpio_direction_output(GPIO_KSZ886x_RESET, 1);
+
+	omap_set_bootmmc_devname("mmc0");
+
+	return 0;
+}
+coredevice_initcall(pfc200_devices_init);
diff --git a/arch/arm/boards/wago-pfc-am35xx/lowlevel.c b/arch/arm/boards/wago-pfc-am35xx/lowlevel.c
new file mode 100644
index 0000000000..7da8fd0331
--- /dev/null
+++ b/arch/arm/boards/wago-pfc-am35xx/lowlevel.c
@@ -0,0 +1,231 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2014 WAGO Kontakttechnik GmbH & Co. KG <http://global.wago.com>
+ * Author: Heinrich Toews <heinrich.toews@wago.com>
+ */
+
+#include <common.h>
+#include <init.h>
+#include <linux/sizes.h>
+#include <io.h>
+#include <linux/string.h>
+#include <debug_ll.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/generic.h>
+#include <mach/sdrc.h>
+#include <mach/sys_info.h>
+#include <mach/syslib.h>
+#include <mach/wdt.h>
+#include <mach/omap3-mux.h>
+#include <mach/omap3-silicon.h>
+#include <mach/omap3-generic.h>
+#include <mach/omap3-clock.h>
+#include <mach/control.h>
+#include <asm/common.h>
+#include <asm-generic/memory_layout.h>
+
+#include <mach/emif4.h>
+
+static void mux_config(void)
+{
+	/* SDRC */
+	MUX_VAL(CP(SDRC_D0),		(IEN  | PTD | DIS | M0));
+	MUX_VAL(CP(SDRC_D1),		(IEN  | PTD | DIS | M0));
+	MUX_VAL(CP(SDRC_D2),		(IEN  | PTD | DIS | M0));
+	MUX_VAL(CP(SDRC_D3),		(IEN  | PTD | DIS | M0));
+	MUX_VAL(CP(SDRC_D4),		(IEN  | PTD | DIS | M0));
+	MUX_VAL(CP(SDRC_D5),		(IEN  | PTD | DIS | M0));
+	MUX_VAL(CP(SDRC_D6),		(IEN  | PTD | DIS | M0));
+	MUX_VAL(CP(SDRC_D7),		(IEN  | PTD | DIS | M0));
+	MUX_VAL(CP(SDRC_D8),		(IEN  | PTD | DIS | M0));
+	MUX_VAL(CP(SDRC_D9),		(IEN  | PTD | DIS | M0));
+	MUX_VAL(CP(SDRC_D10),		(IEN  | PTD | DIS | M0));
+	MUX_VAL(CP(SDRC_D11),		(IEN  | PTD | DIS | M0));
+	MUX_VAL(CP(SDRC_D12),		(IEN  | PTD | DIS | M0));
+	MUX_VAL(CP(SDRC_D13),		(IEN  | PTD | DIS | M0));
+	MUX_VAL(CP(SDRC_D14),		(IEN  | PTD | DIS | M0));
+	MUX_VAL(CP(SDRC_D15),		(IEN  | PTD | DIS | M0));
+	MUX_VAL(CP(SDRC_D16),		(IEN  | PTD | DIS | M0));
+	MUX_VAL(CP(SDRC_D17),		(IEN  | PTD | DIS | M0));
+	MUX_VAL(CP(SDRC_D18),		(IEN  | PTD | DIS | M0));
+	MUX_VAL(CP(SDRC_D19),		(IEN  | PTD | DIS | M0));
+	MUX_VAL(CP(SDRC_D20),		(IEN  | PTD | DIS | M0));
+	MUX_VAL(CP(SDRC_D21),		(IEN  | PTD | DIS | M0));
+	MUX_VAL(CP(SDRC_D22),		(IEN  | PTD | DIS | M0));
+	MUX_VAL(CP(SDRC_D23),		(IEN  | PTD | DIS | M0));
+	MUX_VAL(CP(SDRC_D24),		(IEN  | PTD | DIS | M0));
+	MUX_VAL(CP(SDRC_D25),		(IEN  | PTD | DIS | M0));
+	MUX_VAL(CP(SDRC_D26),		(IEN  | PTD | DIS | M0));
+	MUX_VAL(CP(SDRC_D27),		(IEN  | PTD | DIS | M0));
+	MUX_VAL(CP(SDRC_D28),		(IEN  | PTD | DIS | M0));
+	MUX_VAL(CP(SDRC_D29),		(IEN  | PTD | DIS | M0));
+	MUX_VAL(CP(SDRC_D30),		(IEN  | PTD | DIS | M0));
+	MUX_VAL(CP(SDRC_D31),		(IEN  | PTD | DIS | M0));
+	MUX_VAL(CP(SDRC_CLK),		(IEN  | PTD | DIS | M0));
+	MUX_VAL(CP(SDRC_DQS0),		(IEN  | PTD | DIS | M0));
+	MUX_VAL(CP(SDRC_DQS1),		(IEN  | PTD | DIS | M0));
+	MUX_VAL(CP(SDRC_DQS2),		(IEN  | PTD | DIS | M0));
+	MUX_VAL(CP(SDRC_DQS3),		(IEN  | PTD | DIS | M0));
+	MUX_VAL(CP(SDRC_DQS0N),		(IEN  | PTD | EN  | M0));
+	MUX_VAL(CP(SDRC_DQS1N),		(IEN  | PTD | EN  | M0));
+	MUX_VAL(CP(SDRC_DQS2N),		(IEN  | PTD | EN  | M0));
+	MUX_VAL(CP(SDRC_DQS3N),		(IEN  | PTD | EN  | M0));
+	MUX_VAL(CP(SDRC_CKE0),		(M0));
+	MUX_VAL(CP(SDRC_CKE1),		(M0));
+	/* sdrc_strben_dly0 */
+	MUX_VAL(CP(STRBEN_DLY0),	(IEN  | PTD | EN  | M0));
+	 /*sdrc_strben_dly1*/
+	MUX_VAL(CP(STRBEN_DLY1),	(IEN  | PTD | EN  | M0));
+
+	/* GPMC */
+	MUX_VAL(CP(GPMC_A1),		(IDIS | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_A2),		(IDIS | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_A3),		(IDIS | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_A4),		(IDIS | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_A5),		(IDIS | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_A6),		(IDIS | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_A7),		(IDIS | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_A8),		(IDIS | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_A9),		(IDIS | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_A10),		(IDIS | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_D0),		(IEN  | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_D1),		(IEN  | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_D2),		(IEN  | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_D3),		(IEN  | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_D4),		(IEN  | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_D5),		(IEN  | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_D6),		(IEN  | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_D7),		(IEN  | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_D8),		(IEN  | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_D9),		(IEN  | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_D10),		(IEN  | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_D11),		(IEN  | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_D12),		(IEN  | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_D13),		(IEN  | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_D14),		(IEN  | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_D15),		(IEN  | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_NCS0),		(IDIS | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_NCS1),		(IDIS | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_NCS2),		(IDIS | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_NCS3),		(IDIS | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_NCS4),		(IEN  | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_NCS5),		(IDIS | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_NCS6),		(IEN  | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_NCS7),		(IEN  | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_CLK),		(IDIS | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_NADV_ALE),	(IDIS | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_NOE),		(IDIS | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_NWE),		(IDIS | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_NBE0_CLE),	(IDIS | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_NBE1),		(IEN  | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_NWP),		(IEN  | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_WAIT0),		(IEN  | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_WAIT1),		(IEN  | PTU | EN  | M0));
+	MUX_VAL(CP(GPMC_WAIT2),		(IEN  | PTU | EN  | M4)); /*GPIO_64*/
+							 /* - ETH_nRESET*/
+	MUX_VAL(CP(GPMC_WAIT3),		(IEN  | PTU | EN  | M0));
+
+	/* MMC */
+	MUX_VAL(CP(MMC1_CLK),		(IEN  | PTU | EN  | M0));
+	MUX_VAL(CP(MMC1_CMD),		(IEN  | PTU | DIS | M0));
+	MUX_VAL(CP(MMC1_DAT0),		(IEN  | PTU | DIS | M0));
+	MUX_VAL(CP(MMC1_DAT1),		(IEN  | PTU | DIS | M0));
+	MUX_VAL(CP(MMC1_DAT2),		(IEN  | PTU | DIS | M0));
+	MUX_VAL(CP(MMC1_DAT3),		(IEN  | PTU | DIS | M0));
+
+	/* MMC GPIOs */
+	MUX_VAL(CP(MCBSP2_FSX),		(IEN  | PTD | DIS | M4)); /* McBSP2_FSX    -> SD-MMC1-CD (GPIO_116) */
+	MUX_VAL(CP(MCBSP2_CLKX),	(IDIS | PTU | DIS | M4)); /* McBSP2_CLKX   -> SD-MMC1-EN (GPIO_117) */
+	MUX_VAL(CP(MCBSP2_DR),		(IEN  | PTD | DIS | M4)); /* McBSP2_DR     -> SD-MMC1-WP (GPIO_118) */
+	MUX_VAL(CP(MMC2_DAT7),		(IDIS | PTU | DIS | M4)); /* MMC2_DAT7     -> SD-MMC1-RW (GPIO_139) */
+
+	/* UART1 */
+	MUX_VAL(CP(UART1_TX),		(IDIS | PTD | DIS | M0));
+	MUX_VAL(CP(UART1_RTS),		(IDIS | PTD | DIS | M0)); /* M4, GPIO_149 */
+	MUX_VAL(CP(UART1_CTS),		(IEN  | PTU | DIS | M0));
+	MUX_VAL(CP(UART1_RX),		(IEN  | PTD | DIS | M0));
+
+	MUX_VAL(CP(MCSPI1_CS2),		(IDIS | PTU | DIS | M4)); /* MCSPI1_CS2    -> SEL_RS232/485_GPIO176 (GPIO_176) */
+
+	/* UART2 */
+	MUX_VAL(CP(UART2_TX),		(IDIS | PTD | DIS | M0));
+	MUX_VAL(CP(UART2_RX),		(IEN  | PTD | DIS | M0));
+
+	/* WATCHDOG */
+	MUX_VAL(CP(UART3_RTS_SD),	(IDIS | PTD | DIS | M4)); /* Trigger Event <1,6s */
+	MUX_VAL(CP(UART3_CTS_RCTX),	(IDIS | PTD | DIS | M4)); /* Enable */
+
+	/* I2C1: PMIC */
+	MUX_VAL(CP(I2C1_SCL),		(IEN  | PTU | EN  | M0));
+	MUX_VAL(CP(I2C1_SDA),		(IEN  | PTU | EN  | M0));
+	MUX_VAL(CP(SYS_NIRQ),		(IEN  | PTU | EN  | M4)); /* SYS_nIRQ      -> PMIC_nINT1      (GPIO_0) */
+
+	/* I2C2: RTC, EEPROM */
+	MUX_VAL(CP(I2C2_SCL),		(IEN  | PTU | EN  | M0)); /* RTC_EEPROM_SCL2 */
+	MUX_VAL(CP(I2C2_SDA),		(IEN  | PTU | EN  | M0)); /* RTC_EEPROM_SDA2 */
+	MUX_VAL(CP(HDQ_SIO),		(IDIS | PTD | DIS  | M4)); /* HDQ_SIO       -> WD_nWP   GPIO_170 */
+	MUX_VAL(CP(SYS_CLKREQ),		(IEN  | PTD | DIS | M4));  /* SYS_CLKREQ    -> RTC_nINT (GPIO_1) */
+
+	/* GPIO_BANK3: operating mode switch and reset all pushbutton */
+	MUX_VAL(CP(DSS_DATA20),  (IEN  | PTU | EN  | M4));  //    DSS_DATA20    -> BAS_RUN      /* GPIO 90 */ (sync, changed)
+	MUX_VAL(CP(DSS_DATA21),  (IEN  | PTU | EN  | M4));  //    DSS_DATA21    -> BAS_STOP     /* GPIO 91 */ (sync, changed)
+	MUX_VAL(CP(DSS_DATA22),  (IEN  | PTU | EN  | M4));  //    DSS_DATA22    -> BAS_RESET    /* GPIO 92 */ (sync, changed)
+	MUX_VAL(CP(DSS_DATA23),  (IEN  | PTU | EN  | M4));  //    DSS_DATA23    -> RESET_ALL    /* GPIO 93 */ (sync, changed)
+	MUX_VAL(CP(CCDC_PCLK) , (IEN  | PTU | EN  | M4));   //    CCDC_PCLK     -> System Reset /* GPIO 94 */ (sync, changed) Reserved for later use!
+
+	/* *********** ADDED FOR JTAG DEBUGGING ************* */
+	MUX_VAL(CP(SYS_NRESWARM),     	(IDIS | PTU | DIS | M4));
+}
+
+static noinline void pfc200_board_init(void)
+{
+	int in_sdram = omap3_running_in_sdram();
+	u32 r0;
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
+		am33xx_uart_soft_reset(IOMEM(OMAP3_UART3_BASE));
+		omap_uart_lowlevel_init(IOMEM(OMAP3_UART3_BASE));
+		putc_ll('>');
+	}
+
+	omap3_core_init();
+
+	mux_config();
+
+#define CONTROL_DEVCONF3   0x48002584
+	/* activate DDR2 CPU Termination */
+	r0 = readl(CONTROL_DEVCONF3);
+	writel(r0 | 0x2, CONTROL_DEVCONF3);
+
+	/* Dont reconfigure SDRAM while running in SDRAM */
+	if (!in_sdram)
+		am35xx_emif4_init();
+
+	barebox_arm_entry(0x80000000, SZ_256M, NULL);
+}
+
+ENTRY_FUNCTION(start_am35xx_pfc_750_820x_sram, bootinfo, r1, r2)
+{
+	omap3_save_bootinfo((void *)bootinfo);
+
+	arm_cpu_lowlevel_init();
+
+	omap3_gp_romcode_call(OMAP3_GP_ROMCODE_API_L2_INVAL, 0);
+
+	relocate_to_current_adr();
+	setup_c();
+
+	pfc200_board_init();
+}
+
+extern char __dtb_am35xx_pfc_750_820x_start[];
+
+ENTRY_FUNCTION(start_am35xx_pfc_750_820x_sdram, r0, r1, r2)
+{
+	void *fdt = __dtb_am35xx_pfc_750_820x_start;
+
+	fdt += get_runtime_offset();
+
+	barebox_arm_entry(0x80000000, SZ_256M, fdt);
+}
diff --git a/arch/arm/configs/am35xx_pfc200_xload_defconfig b/arch/arm/configs/am35xx_pfc200_xload_defconfig
new file mode 100644
index 0000000000..da55382f05
--- /dev/null
+++ b/arch/arm/configs/am35xx_pfc200_xload_defconfig
@@ -0,0 +1,40 @@
+CONFIG_ARCH_OMAP=y
+CONFIG_OMAP_BUILD_IFT=y
+CONFIG_OMAP_MULTI_BOARDS=y
+CONFIG_MACH_WAGO_PFC_AM35XX=y
+CONFIG_THUMB2_BAREBOX=y
+# CONFIG_ARM_EXCEPTIONS is not set
+# CONFIG_MEMINFO is not set
+CONFIG_MMU=y
+# CONFIG_MMU_EARLY is not set
+CONFIG_STACK_SIZE=0xc00
+CONFIG_MALLOC_SIZE=0x0
+CONFIG_MALLOC_DUMMY=y
+CONFIG_RELOCATABLE=y
+CONFIG_PROMPT="X-load pfc200>"
+CONFIG_SHELL_NONE=y
+# CONFIG_ERRNO_MESSAGES is not set
+# CONFIG_TIMESTAMP is not set
+CONFIG_CONSOLE_SIMPLE=y
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
+# CONFIG_SPI is not set
+CONFIG_MTD=y
+# CONFIG_MTD_WRITE is not set
+# CONFIG_MTD_OOB_DEVICE is not set
+CONFIG_NAND=y
+# CONFIG_NAND_ECC_SOFT is not set
+# CONFIG_NAND_ECC_HW_SYNDROME is not set
+# CONFIG_NAND_ECC_HW_NONE is not set
+# CONFIG_NAND_INFO is not set
+# CONFIG_NAND_BBT is not set
+CONFIG_NAND_OMAP_GPMC=y
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+# CONFIG_MCI_WRITE is not set
+CONFIG_MCI_MMC_BOOT_PARTITIONS=y
+CONFIG_MCI_OMAP_HSMMC=y
+# CONFIG_FS_RAMFS is not set
+# CONFIG_FS_DEVFS is not set
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index c08b35a101..cdbaf8189f 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -122,5 +122,6 @@ pbl-dtb-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += at91-microchip-ksz9477-evb.dtb.o
 pbl-dtb-$(CONFIG_MACH_AT91SAM9X5EK) += at91sam9x5ek.dtb.o
 
 pbl-dtb-$(CONFIG_MACH_ZII_IMX7D_RPU2) += imx7d-zii-rpu2.dtb.o
+pbl-dtb-$(CONFIG_MACH_WAGO_PFC_AM35XX) += am35xx-pfc-750_820x.dtb.o
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.lzo
diff --git a/arch/arm/dts/am35xx-pfc-750_820x.dts b/arch/arm/dts/am35xx-pfc-750_820x.dts
new file mode 100644
index 0000000000..707778dfac
--- /dev/null
+++ b/arch/arm/dts/am35xx-pfc-750_820x.dts
@@ -0,0 +1,487 @@
+/*
+ * Copyright (C) 2011 Texas Instruments Incorporated - http://www.ti.com/
+ *
+ * Copyright (C) 2014 WAGO Kontakttechnik GmbH & Co. KG <http://global.wago.com>
+ * Author: Heinrich Toews <heinrich.toews@wago.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+/dts-v1/;
+
+#include <arm/am3517.dtsi>
+
+/ {
+	model = "Wago PFC200 (AM3505)";
+	compatible = "ti,pfc200", "ti,am3517", "ti,omap3";
+
+	chosen {
+		stdout-path = &uart3;
+	};
+
+	memory {
+		device_type = "memory";
+		reg = <0x80000000 0x10000000>; /* 256 MB */
+	};
+
+	vmmc_fixed: vmmc {
+		compatible = "regulator-fixed";
+		regulator-name = "vmmc_fixed";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
+
+	aliases {
+		serial3 = &uart3;
+		gpio0 = &gpio1;
+		gpio1 = &gpio2;
+		gpio2 = &gpio3;
+		gpio3 = &gpio4;
+		gpio4 = &gpio5;
+		gpio5 = &gpio6;
+		mmc0 = &mmc1;
+		mmc1 = &mmc2;
+		mmc2 = &mmc3;
+	};
+
+	gpio-leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&led_pins>;
+
+		u1-green@0 {
+			label = "u1-green";
+			gpios = <&gpio3 22 0>;
+			linux,default-trigger = "none";
+		};
+
+		u1-red@1 {
+			label = "u1-red";
+			gpios = <&gpio3 23 0>;
+			linux,default-trigger = "none";
+		};
+
+		u2-green@2 {
+			label = "u2-green";
+			gpios = <&gpio3 18 0>;
+			linux,default-trigger = "none";
+		};
+
+		u2-red@3 {
+			label = "u2-red";
+			gpios = <&gpio3 19 0>;
+			linux,default-trigger = "none";
+		};
+
+		u3-green@4 {
+			label = "u3-green";
+			gpios = <&gpio3 14 0>;
+			linux,default-trigger = "none";
+		};
+
+		u3-red@5 {
+			label = "u3-red";
+			gpios = <&gpio3 15 0>;
+			linux,default-trigger = "none";
+		};
+
+		u4-green@6 {
+			label = "u4-green";
+			gpios = <&gpio3 10 0>;
+			linux,default-trigger = "none";
+		};
+
+		u4-red@7 {
+			label = "u4-red";
+			gpios = <&gpio3 11 0>;
+			linux,default-trigger = "none";
+		};
+
+		dia-green@8 {
+			label = "dia-green";
+			gpios = <&gpio3 6 0>;
+			linux,default-trigger = "none";
+		};
+
+		dia-red@9 {
+			label = "dia-red";
+			gpios = <&gpio3 7 0>;
+			linux,default-trigger = "none";
+		};
+
+		bf-green@10 {
+			label = "bf-green";
+			gpios = <&gpio3 2 0>;
+			linux,default-trigger = "none";
+		};
+
+		bf-red@11 {
+			label = "bf-red";
+			gpios = <&gpio3 3 0>;
+			linux,default-trigger = "none";
+		};
+
+		sys-green@12 {
+			label = "sys-green";
+			gpios = <&gpio3 4 0>;
+			linux,default-trigger = "none";
+		};
+
+		sys-red@13 {
+			label = "sys-red";
+			gpios = <&gpio3 5 0>;
+			linux,default-trigger = "none";
+		};
+
+
+		run-green@14 {
+			label = "run-green";
+			gpios = <&gpio3 8 0>;
+			linux,default-trigger = "none";
+		};
+
+		run-red@15 {
+			label = "run-red";
+			gpios = <&gpio3 9 0>;
+			linux,default-trigger = "none";
+		};
+
+
+		io-green@16 {
+			label = "io-green";
+			gpios = <&gpio3 12 0>;
+			linux,default-trigger = "none";
+		};
+
+		io-red@17 {
+			label = "io-red";
+			gpios = <&gpio3 13 0>;
+			linux,default-trigger = "none";
+		};
+
+
+		ms-green@18 {
+			label = "ms-green";
+			gpios = <&gpio3 16 0>;
+			linux,default-trigger = "none";
+		};
+
+		ms-red@19 {
+			label = "ms-red";
+			gpios = <&gpio3 17 0>;
+			linux,default-trigger = "none";
+		};
+
+
+		ns-green@20 {
+			label = "ns-green";
+			gpios = <&gpio3 20 0>;
+			linux,default-trigger = "none";
+		};
+
+		ns-red@21 {
+			label = "ns-red";
+			gpios = <&gpio3 21 0>;
+			linux,default-trigger = "none";
+		};
+
+
+		can-green@22 {
+			label = "can-green";
+			gpios = <&gpio3 24 0>;
+			linux,default-trigger = "none";
+		};
+
+		can-red@23 {
+			label = "can-red";
+			gpios = <&gpio3 25 0>;
+			linux,default-trigger = "none";
+		};
+
+	};
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart1_pins>;
+	status = "disabled";
+};
+
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart2_pins>;
+	status = "disabled";
+};
+
+&uart3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart3_pins>;
+        status = "okay";
+};
+
+&davinci_emac {
+	pinctrl-names = "default";
+	pinctrl-0 = <&emac_pins>;
+        status = "okay";
+        phy-mode = "rmii";
+
+	fixed-link {
+		speed = <100>;
+		full-duplex;
+	};
+};
+
+&davinci_mdio {
+	status = "okay";
+	reset-gpios = <&gpio5 8 GPIO_ACTIVE_LOW>;
+};
+
+&i2c1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c1_pins>;
+	clock-frequency = <100000>;
+};
+
+&i2c2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c2_pins>;
+	clock-frequency = <400000>;
+};
+
+&i2c3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c3_pins>;
+	clock-frequency = <100000>;
+};
+
+&mmc1 {
+        status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc1_pins>;
+	vmmc-supply = <&vmmc_fixed>;
+	bus-width = <4>;
+	cd-gpios = <&gpio4 20 GPIO_ACTIVE_HIGH>; /* GPIO 116 */
+	cd-inverted;
+};
+
+&mmc2 {
+      status = "disabled";
+};
+
+&mmc3 {
+      status = "disabled";
+};
+
+&omap3_pmx_core {
+	pinctrl-names = "default";
+	pinctrl-0 = <&bas_pins>;
+
+	uart1_pins: pinmux_uart1_pins {
+		pinctrl-single,pins = <
+                        0x150 (PIN_INPUT | MUX_MODE0)		  /* uart1_cts.uart1_cts */
+                        0x14e (PIN_OUTPUT | MUX_MODE0)		  /* uart1_rts.uart1_rts */
+                        0x152 (WAKEUP_EN | PIN_INPUT | MUX_MODE0) /* uart1_rx.uart1_rx   */
+                        0x14c (PIN_OUTPUT | MUX_MODE0)		  /* uart1_tx.uart1_tx   */
+		        0x1a2 (PIN_OUTPUT | MUX_MODE4)            /* mcspi1_cs2.gpio_176: sel_rs232/485_gpio176 */
+		>;
+	};
+
+	uart2_pins: pinmux_uart2_pins {
+		pinctrl-single,pins = <
+                        0x14a (WAKEUP_EN | PIN_INPUT | MUX_MODE0) /* uart2_rx.uart2_rx */
+                        0x148 (PIN_OUTPUT | MUX_MODE0)		/* uart2_tx.uart2_tx */
+		>;
+	};
+
+	uart3_pins: pinmux_uart3_pins {
+		pinctrl-single,pins = <
+			0x16e (PIN_INPUT | PIN_OFF_WAKEUPENABLE | MUX_MODE0) /* uart3_rx_irrx.uart3_rx_irrx */
+			0x170 (PIN_OUTPUT | MUX_MODE0) /* uart3_tx_irtx.uart3_tx_irtx */
+		>;
+	};
+
+	i2c1_pins: pinmux_i2c1_pins {
+		pinctrl-single,pins = <
+			0x18a (PIN_INPUT_PULLUP | MUX_MODE0)   /* i2c1_scl.i2c1_scl */
+			0x18c (PIN_INPUT_PULLUP | MUX_MODE0)   /* i2c1_sda.i2c1_sda */
+		>;
+	};
+
+	i2c2_pins: pinmux_i2c2_pins {
+		pinctrl-single,pins = <
+			0x18e (PIN_INPUT_PULLUP | MUX_MODE0)   /* i2c2_scl.i2c2_scl */
+			0x190 (PIN_INPUT_PULLUP | MUX_MODE0)   /* i2c2_sda.i2c2_sda */
+		        0x196 (PIN_OUTPUT | MUX_MODE4)  /* hdq_sio.gpio_170: wd_nwp */
+		>;
+	};
+
+	i2c3_pins: pinmux_i2c3_pins {
+		pinctrl-single,pins = <
+			0x192 (PIN_INPUT | MUX_MODE0)   /* i2c3_scl.i2c3_scl */
+			0x194 (PIN_INPUT | MUX_MODE0)   /* i2c3_sda.i2c3_sda */
+		>;
+	};
+
+	mmc1_pins: pinmux_mmc1_pins {
+		pinctrl-single,pins = <
+			0x114 (PIN_INPUT_PULLUP | MUX_MODE0)	/* sdmmc1_clk.sdmmc1_clk */
+			0x116 (PIN_INPUT | MUX_MODE0)	/* sdmmc1_cmd.sdmmc1_cmd */
+			0x118 (PIN_INPUT | MUX_MODE0)	/* sdmmc1_dat0.sdmmc1_dat0 */
+			0x11a (PIN_INPUT | MUX_MODE0)	/* sdmmc1_dat1.sdmmc1_dat1 */
+			0x11c (PIN_INPUT | MUX_MODE0)	/* sdmmc1_dat2.sdmmc1_dat2 */
+			0x11e (PIN_INPUT | MUX_MODE0)	/* sdmmc1_dat3.sdmmc1_dat3 */
+		>;
+	};
+
+	emac_pins: pinmux_emac_pins {
+		pinctrl-single,pins = <
+		        0x1ce (PIN_INPUT | MUX_MODE0)           /* rmii_mdio_data.rmii_mdio_data */
+		        0x1d0 (PIN_OUTPUT_PULLUP | MUX_MODE0)   /* rmii_mdio_clk.rmii_mdio_clk   */
+		        0x1d2 (PIN_INPUT | MUX_MODE0)           /* rmii_rxd0.rmii_rxd0           */
+		        0x1d4 (PIN_INPUT | MUX_MODE0)           /* rmii_rxd1.rmii_rxd1           */
+		        0x1d6 (PIN_INPUT | MUX_MODE0)           /* rmii_crs_dv.rmii_crs_dv       */
+		        0x1d8 (PIN_INPUT | MUX_MODE0)           /* rmii_rxer.rmii_rxer           */
+		        0x1da (PIN_OUTPUT_PULLUP | MUX_MODE0)   /* rmii_txd0.rmii_txd0           */
+		        0x1dc (PIN_INPUT | MUX_MODE0)           /* rmii_txd1.rmii_txd1           */
+		        0x1de (PIN_INPUT | MUX_MODE0)           /* rmii_txen.rmii_txen           */
+		        0x1e0 (PIN_INPUT | MUX_MODE0)           /* rmii_50mhz_clk.rmii_50mhz_clk */
+		        0x134 (PIN_OUTPUT | MUX_MODE4)          /* mmc2_dat4.gpio_136: nrst_switch */
+		>;
+	};
+
+	led_pins: pinmux_led_pins {
+		pinctrl-single,pins = <
+		        0x0a4 (PIN_OUTPUT_PULLDOWN | MUX_MODE4)  /* dss_pclk.gpio_66: led_1_1_green */
+		        0x0a6 (PIN_OUTPUT_PULLDOWN | MUX_MODE4)  /* dss_hsync.gpio_67: led_1_1_red */
+		        0x0a8 (PIN_OUTPUT_PULLDOWN | MUX_MODE4)  /* dss_vsync.gpio_68: led_1_2_green */
+		        0x0aa (PIN_OUTPUT_PULLDOWN | MUX_MODE4)  /* dss_acbias.gpio_69: led_1_2_red */
+
+		        0x0ac (PIN_OUTPUT_PULLDOWN | MUX_MODE4)  /* dss_data0.gpio_70: led_2_1_green */
+		        0x0ae (PIN_OUTPUT_PULLDOWN | MUX_MODE4)  /* dss_data1.gpio_71: led_2_1_red */
+		        0x0b0 (PIN_OUTPUT_PULLDOWN | MUX_MODE4)  /* dss_data2.gpio_72: led_2_2_green */
+		        0x0b2 (PIN_OUTPUT_PULLDOWN | MUX_MODE4)  /* dss_data3.gpio_73: led_2_2_red */
+
+		        0x0b4 (PIN_OUTPUT_PULLDOWN | MUX_MODE4)  /* dss_data4.gpio_74: led_3_1_green */
+		        0x0b6 (PIN_OUTPUT_PULLDOWN | MUX_MODE4)  /* dss_data5.gpio_75: led_3_1_red */
+		        0x0b8 (PIN_OUTPUT_PULLDOWN | MUX_MODE4)  /* dss_data6.gpio_76: led_3_2_green */
+		        0x0ba (PIN_OUTPUT_PULLDOWN | MUX_MODE4)  /* dss_data7.gpio_77: led_3_2_red */
+
+		        0x0bc (PIN_OUTPUT_PULLDOWN | MUX_MODE4)  /* dss_data8.gpio_78: led_4_1_green */
+		        0x0be (PIN_OUTPUT_PULLDOWN | MUX_MODE4)  /* dss_data9.gpio_79: led_4_1_red */
+		        0x0c0 (PIN_OUTPUT_PULLDOWN | MUX_MODE4)  /* dss_data10.gpio_80: led_4_2_green */
+		        0x0c2 (PIN_OUTPUT_PULLDOWN | MUX_MODE4)  /* dss_data11.gpio_81: led_4_2_red */
+
+		        0x0c4 (PIN_OUTPUT_PULLDOWN | MUX_MODE4)  /* dss_data12.gpio_82: led_5_1_green */
+		        0x0c6 (PIN_OUTPUT_PULLDOWN | MUX_MODE4)  /* dss_data13.gpio_83: led_5_1_red */
+		        0x0c8 (PIN_OUTPUT_PULLDOWN | MUX_MODE4)  /* dss_data14.gpio_84: led_5_2_green */
+		        0x0ca (PIN_OUTPUT_PULLDOWN | MUX_MODE4)  /* dss_data15.gpio_85: led_5_2_red */
+
+		        0x0cc (PIN_OUTPUT_PULLDOWN | MUX_MODE4)  /* dss_data16.gpio_86: led_6_1_green */
+		        0x0ce (PIN_OUTPUT_PULLDOWN | MUX_MODE4)  /* dss_data17.gpio_87: led_6_1_red */
+		        0x0d0 (PIN_OUTPUT_PULLDOWN | MUX_MODE4)  /* dss_data18.gpio_88: led_6_2_green */
+		        0x0d2 (PIN_OUTPUT_PULLDOWN | MUX_MODE4)  /* dss_data19.gpio_89: led_6_2_red */
+		>;
+	};
+
+	bas_pins: pinmux_bas_pins {
+		pinctrl-single,pins = <
+			0x0d4 (PIN_INPUT_PULLUP | MUX_MODE4)	/* dss_data20.gpio_90: bas_run */
+			0x0d6 (PIN_INPUT_PULLUP | MUX_MODE4)	/* dss_data21.gpio_91: bas_stop */
+			0x0d8 (PIN_INPUT_PULLUP | MUX_MODE4)	/* dss_data22.gpio_92: bas_reset */
+			0x0da (PIN_INPUT_PULLUP | MUX_MODE4)	/* dss_data23.gpio_93: reset_all */
+		>;
+	};
+
+	gpmc_pins: pinmux_gpmc_pins {
+		pinctrl-single,pins = <
+			0x04a (PIN_OUTPUT_PULLUP | MUX_MODE0)	/* gpmc_a1.gpmc_a1 */
+			0x04c (PIN_OUTPUT_PULLUP | MUX_MODE0)	/* gpmc_a2.gpmc_a2 */
+			0x04e (PIN_OUTPUT_PULLUP | MUX_MODE0)	/* gpmc_a3.gpmc_a3 */
+			0x050 (PIN_OUTPUT_PULLUP | MUX_MODE0)	/* gpmc_a4.gpmc_a4 */
+			0x052 (PIN_OUTPUT_PULLUP | MUX_MODE0)	/* gpmc_a5.gpmc_a5 */
+			0x054 (PIN_OUTPUT_PULLUP | MUX_MODE0)	/* gpmc_a6.gpmc_a6 */
+			0x056 (PIN_OUTPUT_PULLUP | MUX_MODE0)	/* gpmc_a7.gpmc_a7 */
+			0x058 (PIN_OUTPUT_PULLUP | MUX_MODE0)	/* gpmc_a8.gpmc_a8 */
+			0x05a (PIN_OUTPUT_PULLUP | MUX_MODE0)	/* gpmc_a9.gpmc_a9 */
+			0x05c (PIN_OUTPUT_PULLUP | MUX_MODE0)	/* gpmc_a10.gpmc_a10 */
+
+			0x06c (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_d8.gpmc_d8 */
+			0x06e (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_d9.gpmc_d9 */
+			0x070 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_d10.gpmc_d10 */
+			0x072 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_d11.gpmc_d11 */
+			0x074 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_d12.gpmc_d12 */
+			0x076 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_d13.gpmc_d13 */
+			0x078 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_d14.gpmc_d14 */
+			0x07a (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_d15.gpmc_d15 */
+
+			0x07e (PIN_OUTPUT_PULLUP | MUX_MODE0)	/* gpmc_ncs0.gpmc_ncs0 */
+			0x080 (PIN_OUTPUT_PULLUP | MUX_MODE0)	/* gpmc_ncs1.gpmc_ncs1 */
+			0x082 (PIN_OUTPUT_PULLUP | MUX_MODE0)	/* gpmc_ncs2.gpmc_ncs2 */
+			0x08c (PIN_OUTPUT_PULLUP | MUX_MODE0)	/* gpmc_clk.gpmc_clk */
+
+			0x090 (PIN_OUTPUT | MUX_MODE0)	/* gpmc_nadv_ale.gpmc_nadv_ale */
+			0x092 (PIN_OUTPUT | MUX_MODE0)	/* gpmc_noe.gpmc_noe */
+			0x094 (PIN_OUTPUT | MUX_MODE0)	/* gpmc_nwe */
+
+			0x096 (PIN_OUTPUT_PULLUP | MUX_MODE0)	/* gpmc_nbe0_cle.gpmc_nbe0_cle */
+
+			0x098 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_nbe1.gpmc_nbe1 */
+			0x09a (PIN_INPUT | MUX_MODE0)	/* gpmc_nwp.gpmc_nwp */
+
+			0x09c (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_wait0.gpmc_wait0 */
+			0x09e (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_wait1.gpmc_wait1 */
+			0x0a0 (PIN_INPUT_PULLUP | MUX_MODE4)	/* gpmc_wait2.gpio_64 */
+			0x0a2 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_wait3.gpmc_wait3 */
+		>;
+	};
+};
+
+&gpmc {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&gpmc_pins>;
+	num-cs = <2>;
+	num-waitpins = <1>;
+	ranges = <
+		0 0 0x08000000 0x01000000	/* CS0: NAND */
+	>;
+
+	nand: nand@0,0 {
+		reg = <0 0 0>; /* CS0, offset 0 */
+		nand-bus-width = <8>;
+		ti,nand-ecc-opt = "bch8";
+		gpmc,device-nand = "true";
+		gpmc,device-width = <1>;
+
+		gpmc,sync-clk-ps = <0>;
+		gpmc,cs-on-ns = <0>;
+		gpmc,cs-rd-off-ns = <36>;
+		gpmc,cs-wr-off-ns = <36>;
+		gpmc,adv-on-ns = <6>;
+		gpmc,adv-rd-off-ns = <24>;
+		gpmc,adv-wr-off-ns = <36>;
+		gpmc,we-on-ns = <0>;
+		gpmc,we-off-ns = <30>;
+		gpmc,oe-on-ns = <0>;
+		gpmc,oe-off-ns = <48>;
+		gpmc,access-ns = <54>;
+		gpmc,rd-cycle-ns = <72>;
+		gpmc,wr-cycle-ns = <72>;
+
+		gpmc,wait-on-read = "true";
+		gpmc,wait-on-write = "true";
+		gpmc,bus-turnaround-ns = <0>;
+		gpmc,cycle2cycle-delay-ns = <0>;
+		gpmc,clk-activation-ns = <0>;
+		gpmc,wait-monitoring-ns = <0>;
+
+		gpmc,wr-access-ns = <30>;
+		gpmc,wr-data-mux-bus-ns = <0>;
+
+		#address-cells = <1>;
+		#size-cells = <1>;
+	};
+};
+
+/include/ "am3xxx-pfc-nandparts.dtsi"
diff --git a/arch/arm/dts/am3xxx-pfc-nandparts.dtsi b/arch/arm/dts/am3xxx-pfc-nandparts.dtsi
new file mode 100644
index 0000000000..65dd56b815
--- /dev/null
+++ b/arch/arm/dts/am3xxx-pfc-nandparts.dtsi
@@ -0,0 +1,63 @@
+/*
+ * Copyright (C) 2012 Texas Instruments Incorporated - http://www.ti.com/
+ *
+ * Copyright (C) 2015 WAGO Kontakttechnik GmbH & Co. KG <http://global.wago.com>
+ * Author: Oleg Karfich <oleg.karfich@wago.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+&nand {
+	        /* 4 x 128k MLOs */
+		partition@0 {
+			label = "mlo0";
+			reg = <0x0 0x20000>;
+		};
+
+		partition@20000 {
+			label = "mlo1";
+			reg = <0x20000 0x20000>;
+		};
+
+		partition@40000 {
+			label = "mlo2";
+			reg = <0x40000 0x20000>;
+		};
+
+		partition@60000 {
+			label = "mlo3";
+			reg = <0x60000 0x20000>;
+		};
+
+	        /* 16 x 128k: 4 x stage2 (4x128k) */
+		partition@80000 {
+			label = "boot0";
+			reg = <0x80000 0x80000>;
+		};
+
+		partition@100000 {
+			label = "boot1";
+			reg = <0x100000 0x80000>;
+		};
+
+		partition@180000 {
+			label = "boot2";
+			reg = <0x180000 0x80000>;
+		};
+
+		partition@200000 {
+			label = "boot3";
+			reg = <0x200000 0x80000>;
+		};
+
+		partition@280000 {
+			label = "ubidata";
+			/*
+			 * Size 0x0 extends partition to
+			 * end of nand flash.
+			 */
+			reg = <0x280000 0x0>;
+		};
+};
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 5537f5101a..e793175f38 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -183,6 +183,15 @@ config MACH_VSCOM_BALTOS
 	help
 	  Say Y here if you are using a am335x based VScom Baltos devices
 
+config MACH_WAGO_PFC_AM35XX
+        bool "Wago PFC200 Fieldbus Controller"
+        select ARCH_AM35XX
+        select HAVE_DEFAULT_ENVIRONMENT_NEW
+        select HAVE_PBL_MULTI_IMAGES
+        select HAVE_CONFIGURABLE_MEMORY_LAYOUT
+        help
+          Say Y here if you are using a the AM3505 based PFC200 controller
+
 endif
 
 source arch/arm/boards/phytec-som-am335x/Kconfig
diff --git a/images/Makefile b/images/Makefile
index 4c6d486f08..90cb2ba29e 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -94,6 +94,7 @@ board = $(srctree)/arch/$(ARCH)/boards
 objboard = $(objtree)/arch/$(ARCH)/boards
 
 include $(srctree)/images/Makefile.am33xx
+include $(srctree)/images/Makefile.am35xx
 include $(srctree)/images/Makefile.bcm283x
 include $(srctree)/images/Makefile.imx
 include $(srctree)/images/Makefile.mvebu
diff --git a/images/Makefile.am35xx b/images/Makefile.am35xx
new file mode 100644
index 0000000000..6d30baee64
--- /dev/null
+++ b/images/Makefile.am35xx
@@ -0,0 +1,24 @@
+
+# %.mlo - convert into mlo image
+# ----------------------------------------------------------------
+quiet_cmd_mlo_image_am35xx = MLO     $@
+      cmd_mlo_image_am35xx = scripts/omap_signGP -o $@ -l 0x40200000 -c $<
+
+$(obj)/%.mlo-am35xx: $(obj)/% FORCE
+	$(call if_changed,mlo_image_am35xx)
+
+ifdef CONFIG_OMAP_BUILD_IFT
+pblb-$(CONFIG_MACH_WAGO_PFC_AM35XX) += start_am35xx_pfc_750_820x_sram
+FILE_barebox-am35xx-pfc-750-820x-mlo.img = start_am35xx_pfc_750_820x_sram.pblb.mlo-am35xx
+am35xx-mlo-$(CONFIG_MACH_WAGO_PFC_AM35XX) += barebox-am35xx-pfc-750-820x-mlo.img
+endif
+
+pblb-$(CONFIG_MACH_WAGO_PFC_AM35XX) += start_am35xx_pfc_750_820x_sdram
+FILE_barebox-am35xx-pfc-750-820x.img = start_am35xx_pfc_750_820x_sdram.pblb
+am35xx-barebox-$(CONFIG_MACH_WAGO_PFC_AM35XX) += barebox-am35xx-pfc-750-820x.img
+
+ifdef CONFIG_OMAP_BUILD_IFT
+image-y += $(am35xx-mlo-y)
+else
+image-y += $(am35xx-barebox-y)
+endif
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
