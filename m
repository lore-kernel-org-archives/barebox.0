Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SFiYB-0003Si-KH
 for barebox@lists.infradead.org; Thu, 05 Apr 2012 09:00:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Apr 2012 11:00:05 +0200
Message-Id: <1333616405-3310-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] pcm027: add board support
To: barebox@lists.infradead.org

From: Marc Kleine-Budde <mkl@pengutronix.de>

The pcm027 is a PXA270 based Phytec phyCORE board.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile                      |    1 +
 arch/arm/boards/pcm027/Makefile        |    2 +
 arch/arm/boards/pcm027/board.c         |  189 +++++++++++++
 arch/arm/boards/pcm027/config.h        |  328 +++++++++++++++++++++++
 arch/arm/boards/pcm027/env/config      |   46 ++++
 arch/arm/boards/pcm027/lowlevel_init.S |  456 ++++++++++++++++++++++++++++++++
 arch/arm/configs/pcm027_defconfig      |   61 +++++
 arch/arm/mach-pxa/Kconfig              |   10 +
 8 files changed, 1093 insertions(+)
 create mode 100644 arch/arm/boards/pcm027/Makefile
 create mode 100644 arch/arm/boards/pcm027/board.c
 create mode 100644 arch/arm/boards/pcm027/config.h
 create mode 100644 arch/arm/boards/pcm027/env/config
 create mode 100644 arch/arm/boards/pcm027/lowlevel_init.S
 create mode 100644 arch/arm/configs/pcm027_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 5299486..3dd7129 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -104,6 +104,7 @@ board-$(CONFIG_MACH_PCM049)			:= pcm049
 board-$(CONFIG_MACH_PCA100)			:= phycard-i.MX27
 board-$(CONFIG_MACH_PCAAL1)			:= phycard-a-l1
 board-$(CONFIG_MACH_PCAAXL2)			:= phycard-a-xl2
+board-$(CONFIG_MACH_PCM027)			:= pcm027
 board-$(CONFIG_MACH_PCM037)			:= pcm037
 board-$(CONFIG_MACH_PCM038)			:= pcm038
 board-$(CONFIG_MACH_PCM043)			:= pcm043
diff --git a/arch/arm/boards/pcm027/Makefile b/arch/arm/boards/pcm027/Makefile
new file mode 100644
index 0000000..e3830e4
--- /dev/null
+++ b/arch/arm/boards/pcm027/Makefile
@@ -0,0 +1,2 @@
+obj-y += board.o
+obj-y += lowlevel_init.o
diff --git a/arch/arm/boards/pcm027/board.c b/arch/arm/boards/pcm027/board.c
new file mode 100644
index 0000000..a98f265
--- /dev/null
+++ b/arch/arm/boards/pcm027/board.c
@@ -0,0 +1,189 @@
+/*
+ * (C) 2009 Pengutronix, Sascha Hauer <s.hauer@pengutronix.de>
+ *     2010 by Marc Kleine-Budde <kernel@pengutronix.de>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <environment.h>
+#include <fs.h>
+#include <init.h>
+#include <partition.h>
+#include <sizes.h>
+
+#include <plat/gpio.h>
+#include <mach/mfp-pxa27x.h>
+#include <mach/pxa-regs.h>
+#include <mach/pxafb.h>
+#include <mach/devices.h>
+
+#include <asm/armlinux.h>
+#include <asm/io.h>
+#include <generated/mach-types.h>
+#include <asm/mmu.h>
+
+#define PCM990_CTRL_PHYS	(void *)PXA_CS1_PHYS
+
+#define PCM990_CTRL_REG3	0x0006	/* LCD CTRL REGISTER 3 */
+#define PCM990_CTRL_LCDPWR	0x0001	/* RW LCD Power on */
+#define PCM990_CTRL_LCDON	0x0002	/* RW LCD Latch on */
+#define PCM990_CTRL_LCDPOS1	0x0004	/* RW POS 1 */
+#define PCM990_CTRL_LCDPOS2	0x0008	/* RW POS 2 */
+
+static void lcd_power(int on)
+{
+	void __iomem *ctrl3 = PCM990_CTRL_PHYS + PCM990_CTRL_REG3;
+
+	if (on)
+		writeb(PCM990_CTRL_LCDPWR | PCM990_CTRL_LCDON, ctrl3);
+	else
+		writeb(0x0, ctrl3);
+}
+
+static void backlight_power(int on)
+{
+	if (on) {
+		mdelay(20);
+		gpio_set_value(16, 1);
+	} else
+		gpio_set_value(16, 0);
+}
+
+static struct pxafb_videomode pxafb_mode = {
+	.mode = {
+		.pixclock	= 28000,
+		.xres		= 640,
+		.yres		= 480,
+		.hsync_len	= 20,
+		.left_margin	= 103,
+		.right_margin	= 47,
+		.vsync_len	= 6,
+		.upper_margin	= 28,
+		.lower_margin	= 5,
+		.sync		= 0,
+	},
+	.bpp			= 16,
+};
+
+static struct pxafb_platform_data fb_pdata = {
+	.mode			= &pxafb_mode,
+	.lcd_conn		= LCD_COLOR_TFT_16BPP | LCD_PCLK_EDGE_FALL,
+	.lcd_power		= lcd_power,
+	.backlight_power	= backlight_power,
+};
+
+static int pcm027_mem_init(void)
+{
+	arm_add_mem_device("ram0", 0xa0000000, SZ_64M);
+
+	return 0;
+}
+mem_initcall(pcm027_mem_init);
+
+static unsigned long pin_config[] = {
+	/* Chip Selects */
+	GPIO20_nSDCS_2,
+	GPIO21_nSDCS_3,
+	GPIO15_nCS_1,
+	GPIO78_nCS_2,
+	GPIO80_nCS_4,
+
+	/* Variable Latency I/O Ready Pin */
+	GPIO18_RDY,
+
+	/* FFUART */
+	GPIO85_nPCE_1,		/* enables RX */
+	GPIO34_FFUART_RXD,
+	GPIO35_FFUART_CTS,
+	GPIO36_FFUART_DCD,
+	GPIO37_FFUART_DSR,
+	GPIO38_FFUART_RI,
+	GPIO39_FFUART_TXD,
+	GPIO40_FFUART_DTR,
+	GPIO41_FFUART_RTS,
+
+	/* LCD */
+	GPIO58_LCD_LDD_0,
+	GPIO59_LCD_LDD_1,
+	GPIO60_LCD_LDD_2,
+	GPIO61_LCD_LDD_3,
+	GPIO62_LCD_LDD_4,
+	GPIO63_LCD_LDD_5,
+	GPIO64_LCD_LDD_6,
+	GPIO65_LCD_LDD_7,
+	GPIO66_LCD_LDD_8,
+	GPIO67_LCD_LDD_9,
+	GPIO68_LCD_LDD_10,
+	GPIO69_LCD_LDD_11,
+	GPIO70_LCD_LDD_12,
+	GPIO71_LCD_LDD_13,
+	GPIO72_LCD_LDD_14,
+	GPIO73_LCD_LDD_15,
+	GPIO74_LCD_FCLK,
+	GPIO75_LCD_LCLK,
+	GPIO76_LCD_PCLK,
+	GPIO77_LCD_BIAS,
+	MFP_CFG_OUT(GPIO16, AF0, DRIVE_LOW),	/* backlight */
+
+	/* NIC */
+	GPIO33_nCS_5,
+	GPIO49_nPWE,
+};
+
+static int pcm027_devices_init(void)
+{
+	void *cfi_iospace;
+
+	add_generic_device("smc91c111", -1, NULL, 0x14000300, 16,
+			IORESOURCE_MEM, NULL);
+
+	cfi_iospace = map_io_sections(0x0, (void *)0xe0000000, SZ_32M);
+	add_cfi_flash_device(-1, (unsigned long)cfi_iospace, SZ_32M, 0);
+
+	pxa_add_fb((void *)0x44000000, &fb_pdata);
+
+	armlinux_set_bootparams((void *)0xa0000100);
+	armlinux_set_architecture(MACH_TYPE_PCM027);
+
+	devfs_add_partition("nor0", 0x00000, SZ_512K, PARTITION_FIXED, "self0");
+	devfs_add_partition("nor0", SZ_512K, SZ_256K, PARTITION_FIXED, "env0");
+	protect_file("/dev/env0", 1);
+
+	return 0;
+}
+
+device_initcall(pcm027_devices_init);
+
+static int pcm027_console_init(void)
+{
+	/* route pins */
+	pxa2xx_mfp_config(ARRAY_AND_SIZE(pin_config));
+
+	/* enable clock */
+	CKEN |= CKEN_FFUART;
+
+	pxa_add_uart((void *)0x40100000, 0);
+
+	return 0;
+}
+
+console_initcall(pcm027_console_init);
diff --git a/arch/arm/boards/pcm027/config.h b/arch/arm/boards/pcm027/config.h
new file mode 100644
index 0000000..555a2be
--- /dev/null
+++ b/arch/arm/boards/pcm027/config.h
@@ -0,0 +1,328 @@
+/*
+ * Copyright (C) 2005 Phytec Messtechnik GmbH
+ * Juergen Kilb, H. Klaholz <armlinux@phytec.de>
+ *
+ * Copyright (C) 2006 Pengutronix
+ * Sascha Hauer <s.hauer@pengutronix.de>
+ * Robert Schwebel <r.schwebel@pengutronix.de>
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+/*
+ * phyCORE-PXA270 configuration settings
+ * Set these to 0/1 to enable or disable the features.
+ */
+
+#define PHYCORE_PXA270_USE_K3FLASH	0
+
+/* 260 MHz or 520 MHZ */
+#define PHYCORE_PXA270_SPEED		520
+
+/*********************************************************************
+ * CONFIG PXA270 GPIO settings                                       *
+ *********************************************************************/
+
+/*
+ * GPIO set "1"
+ *
+ *** REG GPSR0
+ * GP15 == nCS1      is 1
+ * GP20 == nSDCS2    is 1
+ * GP21 == nSDCS3    is 1
+ *** REG GPSR1
+ * GP33 == nCS5      is 1
+ *** REG GPSR2
+ * GP78 == nCS2      is 1
+ * GP80 == nCS4      is 1
+ */
+#define GPSR0_DFT		0x00308000
+#define GPSR1_DFT		0x00000002
+#define GPSR2_DFT		0x00014000
+
+#define CONFIG_GPSR0_VAL	GPSR0_DFT
+#define CONFIG_GPSR1_VAL	GPSR1_DFT
+#define CONFIG_GPSR2_VAL	GPSR2_DFT
+#define CONFIG_GPSR3_VAL	GPSR3_DFT
+
+/*
+ * set Direction "1" GPIO == output else input
+ *
+ ** REG GPDR0
+ * GP03 == PWR_SDA   is output
+ * GP04 == PWR_SCL   is output
+ * GP15 == nCS1      is output
+ * GP20 == nSDCS2    is output
+ * GP21 == nSDCS3    is output
+ ** REG GPDR1
+ * GP33 == nCS5      is output
+ ** REG GPDR2
+ * GP78 == nCS2      is output
+ * GP80 == nCS4      is output
+ * GP90 == LED0      is output
+ * GP91 == LED1      is output
+ */
+
+#define GPDR0_DFT		0x00308018
+#define GPDR1_DFT		0x00000002
+#define GPDR2_DFT		0x00014000
+
+#define CONFIG_GPDR0_VAL	GPDR0_DFT
+#define CONFIG_GPDR1_VAL	GPDR1_DFT
+#define CONFIG_GPDR2_VAL	GPDR2_DFT
+
+/*
+ * set Alternate Funktions
+ *
+ ** REG GAFR0_L
+ * GP15 == nCS1      is AF10
+ ** REG GAFR0_U
+ * GP18 == RDY       is AF01
+ * GP20 == nSDCS2    is AF01
+ * GP21 == nSDCS3    is AF01
+ ** REG GAFR1_L
+ * GP33 == nCS5      is AF10
+ ** REG GAFR2_L
+ * GP78 == nCS2      is AF10
+ ** REG GAFR2_U
+ * GP80 == nCS4      is AF10
+ */
+
+#define GAFR0_L_DFT		0x80000000
+#define GAFR0_U_DFT		0x00000510
+#define GAFR1_L_DFT		0x00000008
+#define GAFR1_U_DFT		0x00000000
+#define GAFR2_L_DFT		0x20000000
+#define GAFR2_U_DFT		0x00000002
+
+#define CONFIG_GAFR0_L_VAL	GAFR0_L_DFT
+#define CONFIG_GAFR0_U_VAL	GAFR0_U_DFT
+#define CONFIG_GAFR1_L_VAL	GAFR1_L_DFT
+#define CONFIG_GAFR1_U_VAL	GAFR1_U_DFT
+#define CONFIG_GAFR2_L_VAL	GAFR2_L_DFT
+#define CONFIG_GAFR2_U_VAL	GAFR2_U_DFT
+
+
+/*
+ * Power Manager Sleep Status Register (PSSR)
+ *
+ * [6] = 0   OTG pad is not holding it's state
+ * [5] = 1   Read Disable Hold: receivers of all gpio pins are disabled
+ * [4] = 1   gpio pins are held in their sleep mode state
+ * [3] = 0   The processor has not been placed in standby mode by
+ *           configuring the PWRMODE register since STS was cleared
+ *           by a reset or by software.
+ * [2] = 1   nVDD_FAULT has been asserted and caused the processor to
+ *           enter deep-sleep mode.
+ * [1] = 1   nBATT_FAULT has been asserted and caused the processor to
+ *           enter deep-sleep mode.
+ * [0] = 1   The processor was placed in sleep mode by configuring the
+ *           PWRMODE register.
+ */
+
+#define CONFIG_PSSR_VAL		0x37
+
+
+/*********************************************************************
+ * CONFIG PXA270 Chipselect settings                                 *
+ *********************************************************************/
+
+/*
+ * Memory settings
+ *
+ * This is the configuration for nCS1/0 -> PLD / flash
+ * configuration for nCS1:
+ * [31]    0    - Slower Device
+ * [30:28] 001  - CS deselect to CS time: 1*(2*MemClk) = 20 ns
+ * [27:24] 0010 - Address to data valid in bursts: (2+1)*MemClk = 30 ns
+ * [23:20] 1011 - " for first access: (11+2)*MemClk = 130 ns
+ * [19]    1    - 16 Bit bus width
+ * [18:16] 011  - burst RAM or FLASH
+ * configuration for nCS0 (J3 Flash):
+ * [15]    0    - Slower Device
+ * [14:12] 001  - CS deselect to CS time: 1*(2*MemClk) = 20 ns
+ * [11:08] 0010 - Address to data valid in bursts: (2+1)*MemClk = 30 ns
+ * [07:04] 1011 - " for first access: (11+2)*MemClk = 130 ns
+ * [03]    0    - 32 Bit bus width
+ * [02:00] 011  - burst RAM or FLASH
+ */
+#if PHYCORE_PXA270_USE_K3FLASH == 0
+#define CONFIG_MSC0_VAL		0x128C1262
+#else
+/* configuration for nCS0 (K3 Flash):
+ * [15]    0    - Slower Device
+ * [14:12] 001  - CS deselect to CS time: 1*(2*MemClk) = 20 ns
+ * [11:08] 0010 - Address to data valid in bursts: (2+1)*MemClk = 30 ns
+ * [07:04] 1011 - " for first access: (11+2)*MemClk = 130 ns
+ * [03]    0    - 32 Bit bus width
+ * [02:00] 011  - burst RAM or FLASH
+ */
+#define CONFIG_MSC0_VAL		0x128C12B3
+#endif
+
+/*
+ * This is the configuration for nCS3/2
+ * configuration for nCS3: POWER
+ *
+ * [31]    0    - Slower Device
+ * [30:28] 111  - RRR3: CS deselect to CS time: 7*(2*MemClk) = 140 ns
+ * [27:24] 1111 - RDN3: Address to data valid in bursts: (15+1)*MemClk = 160 ns
+ * [23:20] 1111 - RDF3: Address for first access: (23+1)*MemClk = 240 ns
+ * [19]    0    - 32 Bit bus width
+ * [18:16] 100  - variable latency I/O
+ * configuration for nCS2: PLD
+ * [15]    0    - Slower Device
+ * [14:12] 111  - RRR2: CS deselect to CS time: 7*(2*MemClk) = 140 ns
+ * [11:08] 1111 - RDN2: Address to data valid in bursts: (15+1)*MemClk = 160 ns
+ * [07:04] 1111 - RDF2: Address for first access: (23+1)*MemClk = 240 ns
+ * [03]    1    - 16 Bit bus width
+ * [02:00] 100  - variable latency I/O
+ */
+#define CONFIG_MSC1_VAL		0x128c128c
+
+/*
+ * This is the configuration for nCS5/4
+ *
+ * configuration for nCS5: LAN Controller
+ * [31]    0    - Slower Device
+ * [30:28] 001  - RRR5: CS deselect to CS time: 1*(2*MemClk) = 20 ns
+ * [27:24] 0010 - RDN5: Address to data valid in bursts: (2+1)*MemClk = 30 ns
+ * [23:20] 0011 - RDF5: Address for first access: (3+1)*MemClk = 40 ns
+ * [19]    0    - 32 Bit bus width
+ * [18:16] 100  - variable latency I/O
+ * configuration for nCS4: USB
+ * [15]    0    - Slower Device
+ * [14:12] 111  - RRR4: CS deselect to CS time: 7*(2*MemClk) = 140 ns
+ * [11:08] 1111 - RDN4: Address to data valid in bursts: (15+1)*MemClk = 160 ns
+ * [07:04] 1111 - RDF4: Address for first access: (23+1)*MemClk = 240 ns
+ * [03]    1    - 16 Bit bus width
+ * [02:00] 100  - variable latency I/O
+ */
+#define CONFIG_MSC2_VAL		0x1234128C
+
+/*********************************************************************
+ * CONFIG PXA270 SDRAM settings                                      *
+ *********************************************************************/
+
+#define CONFIG_DRAM_BASE	0xa0000000
+
+
+/* MDCNFG: SDRAM Configuration Register
+ *
+ * [31]      0	 - Stack1
+ * [30]      0   - dcacx2
+ * [20]      0   - reserved
+ * [31:29]   000 - reserved
+ * [28]      1	 - SA1111 compatiblity mode
+ * [27]      1   - latch return data with return clock
+ * [26]      0   - alternate addressing for pair 2/3
+ * [25:24]   10  - timings
+ * [23]      1   - internal banks in lower partition 2/3 (not used)
+ * [22:21]   10  - row address bits for partition 2/3 (not used)
+ * [20:19]   01  - column address bits for partition 2/3 (not used)
+ * [18]      0   - SDRAM partition 2/3 width is 32 bit
+ * [17]      0   - SDRAM partition 3 disabled
+ * [16]      0   - SDRAM partition 2 disabled
+ * [15]      0	 - Stack1
+ * [14]      0   - dcacx0
+ * [13]      0   - Stack0
+ * [12]      0	 - SA1110 compatiblity mode
+ * [11]      1   - always 1
+ * [10]      0   - no alternate addressing for pair 0/1
+ * [09:08]   10  - tRP=2*MemClk CL=2 tRCD=2*MemClk tRAS=5*MemClk tRC=8*MemClk
+ * [7]       1   - 4 internal banks in lower partition pair
+ * [06:05]   10  - 13 row address bits for partition 0/1
+ * [04:03]   01  - 9 column address bits for partition 0/1
+ * [02]      0   - SDRAM partition 0/1 width is 32 bit
+ * [01]      0   - disable SDRAM partition 1
+ * [00]      1   - enable  SDRAM partition 0
+ */
+
+/* K4S561633*/
+#define CONFIG_MDCNFG_VAL	0x0AC90AC9
+
+/* MDREFR: SDRAM Refresh Control Register
+ *
+ * [31]    0     - ALTREFA
+ * [30]    0     - ALTREFB
+ * [29]    1     - K0DB4
+ * [28]    0     - reserved
+ * [27]    0     - reserved
+ * [26]    0     - reserved
+ * [25]    1     - K2FREE: not free running
+ * [24]    0     - K1FREE: not free running
+ * [23]    1     - K0FREE: not free running
+ * [22]    0     - SLFRSH: self refresh disabled
+ * [21]    0     - reserved
+ * [20]    0     - APD: no auto power down
+ * [19]    0     - K2DB2: SDCLK2 is MemClk
+ * [18]    0     - K2RUN: disable SDCLK2
+ * [17]    0     - K1DB2: SDCLK1 is MemClk
+ * [16]    1     - K1RUN: enable SDCLK1
+ * [15]    1     - E1PIN: SDRAM clock enable
+ * [14]    1     - K0DB2: SDCLK0 is MemClk
+ * [13]    0     - K0RUN: disable SDCLK0
+ * [12]    0     - RESERVED
+ * [11:00] 000000011000 - (64ms/8192)*MemClkFreq/32 = 24
+ */
+#define CONFIG_MDREFR_VAL	0x2281C018
+
+/* MDMRS: Mode Register Set Configuration Register
+ *
+ * [31]      0       - reserved
+ * [30:23]   00000000- MDMRS2: SDRAM2/3 MRS Value. (not used)
+ * [22:20]   000     - MDCL2:  SDRAM2/3 Cas Latency.  (not used)
+ * [19]      0       - MDADD2: SDRAM2/3 burst Type. Fixed to sequential.  (not used)
+ * [18:16]   010     - MDBL2:  SDRAM2/3 burst Length. Fixed to 4.  (not used)
+ * [15]      0       - reserved
+ * [14:07]   00000000- MDMRS0: SDRAM0/1 MRS Value.
+ * [06:04]   010     - MDCL0:  SDRAM0/1 Cas Latency.
+ * [03]      0       - MDADD0: SDRAM0/1 burst Type. Fixed to sequential.
+ * [02:00]   010     - MDBL0:  SDRAM0/1 burst Length. Fixed to 4.
+ */
+#define CONFIG_MDMRS_VAL	0x00020022
+
+/*********************************************************************
+ * CONFIG PXA270 Clock generation                                    *
+ *********************************************************************/
+#define CONFIG_FLYCNFG_VAL	0x00010001
+#define CONFIG_SXCNFG_VAL	0x40044004
+#define CONFIG_CKEN		(CKEN_MEMC |  CKEN_OSTIMER)
+
+#if PHYCORE_PXA270_SPEED == 520
+#define CONFIG_CCCR		0x00000290	/* Memory Clock is f. Table;         N=2.5, L=16 => 16x13=208, 208x2,5=520 MHz */
+#elif PHYCORE_PXA270_SPEED == 260
+#define CONFIG_CCCR		0x02000288	/* Memory Clock is System-Bus Freq., N=2.5, L=8  =>  8x13=104, 104x2,5=260 MHz */
+#else
+#error You have specified an illegal speed.
+#endif
+
+/*********************************************************************
+ * CONFIG PXA270 CF interface                                        *
+ *********************************************************************/
+#define CONFIG_MECR_VAL		0x00000003
+#define CONFIG_MCMEM0_VAL	0x00010504
+#define CONFIG_MCMEM1_VAL	0x00010504
+#define CONFIG_MCATT0_VAL	0x00010504
+#define CONFIG_MCATT1_VAL	0x00010504
+#define CONFIG_MCIO0_VAL	0x00004715
+#define CONFIG_MCIO1_VAL	0x00004715
+
+#endif  /* __CONFIG_H */
diff --git a/arch/arm/boards/pcm027/env/config b/arch/arm/boards/pcm027/env/config
new file mode 100644
index 0000000..433f259
--- /dev/null
+++ b/arch/arm/boards/pcm027/env/config
@@ -0,0 +1,46 @@
+#!/bin/sh
+
+machine=pcm027
+eth0.serverip=
+user=
+
+# use 'dhcp' to do dhcp in barebox and in kernel
+# use 'none' if you want to skip kernel ip autoconfiguration
+ip=dhcp
+
+# or set your networking parameters here
+#eth0.ipaddr=a.b.c.d
+#eth0.netmask=a.b.c.d
+#eth0.gateway=a.b.c.d
+#eth0.serverip=a.b.c.d
+
+# can be either 'nfs', 'tftp', 'nor' or 'nand'
+kernel_loc=tftp
+# can be either 'net', 'nor', 'nand' or 'initrd'
+rootfs_loc=net
+
+# can be either 'jffs2' or 'ubifs'
+rootfs_type=ubifs
+rootfsimage=root-$machine.$rootfs_type
+
+kernelimage=zImage-$machine
+#kernelimage=uImage-$machine
+#kernelimage=Image-$machine
+#kernelimage=Image-$machine.lzo
+
+if [ -n $user ]; then
+	kernelimage="$user"-"$kernelimage"
+	nfsroot="$eth0.serverip:/home/$user/nfsroot/$machine"
+	rootfsimage="$user"-"$rootfsimage"
+else
+	nfsroot="$eth0.serverip:/path/to/nfs/root"
+fi
+
+autoboot_timeout=3
+
+bootargs="console=ttyS0,115200"
+
+nor_parts="512k(barebox)ro,256k(bareboxenv),4M(kernel),-(root)"
+rootfs_mtdblock_nor=3
+
+PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
diff --git a/arch/arm/boards/pcm027/lowlevel_init.S b/arch/arm/boards/pcm027/lowlevel_init.S
new file mode 100644
index 0000000..a436a33
--- /dev/null
+++ b/arch/arm/boards/pcm027/lowlevel_init.S
@@ -0,0 +1,456 @@
+/*
+ * This was originally from the Lubbock u-boot port.
+ *
+ * Most of this taken from Redboot hal_platform_setup.h with cleanup
+ *
+ * NOTE: I haven't clean this up considerably, just enough to get it
+ * running. See hal_platform_setup.h for the source. See
+ * board/cradle/lowlevel_init.S for another PXA250 setup that is
+ * much cleaner.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
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
+#include <config.h>
+#include <mach/pxa-regs.h>
+#include <mach/regs-ost.h>
+#include <mach/regs-intc.h>
+
+#define GPSR0		0x40E00018	/* GPIO Pin Output Set Register GPIO <31:00> */
+#define GPSR1		0x40E0001C	/* GPIO Pin Output Set Register GPIO <63:32> */
+#define GPSR2		0x40E00020	/* GPIO Pin Output Set Register GPIO <80:64> */
+
+#define GPCR0		0x40E00024	/* GPIO Pin Output Clear Register GPIO <31:00> */
+#define GPCR1		0x40E00028	/* GPIO Pin Output Clear Register GPIO <63:32> */
+#define GPCR2		0x40E0002C	/* GPIO Pin Output Clear Register GPIO <80:64> */
+
+#define GPDR0		0x40E0000C	/* GPIO Pin Direction Register GPIO <31:0o> */
+#define GPDR1		0x40E00010	/* GPIO Pin Direction Register GPIO <63:32> */
+#define GPDR2		0x40E00014	/* GPIO Pin Direction Register GPIO <80:64> */
+
+#define GAFR0_L		0x40E00054	/* GPIO Alternate Function Select Register GPIO <15:00> */
+#define GAFR0_U		0x40E00058	/* GPIO Alternate Function Select Register GPIO <31:16> */
+#define GAFR1_L		0x40E0005C	/* GPIO Alternate Function Select Register GPIO <47:32> */
+#define GAFR1_U		0x40E00060	/* GPIO Alternate Function Select Register GPIO <63:48> */
+#define GAFR2_L		0x40E00064	/* GPIO Alternate Function Select Register GPIO <79:64> */
+#define GAFR2_U		0x40E00068	/* GPIO Alternate Function Select Register GPIO <95:80> */
+
+/*
+ *	Memory setup
+ */
+.globl board_init_lowlevel
+board_init_lowlevel:
+		@ Preserve r8/r7 i.e. kernel entry values
+
+		@ Data cache might be active.
+		@ Be sure to flush kernel binary out of the cache,
+		@ whatever state it is, before it is turned off.
+		@ This is done by fetching through currently executed
+		@ memory to be sure we hit the same cache.
+		bic	r2, pc, #0x1f
+		add	r3, r2, #0x10000	@ 64 kb is quite enough...
+1:		ldr	r0, [r2], #32
+		teq	r2, r3
+		bne	1b
+		mcr	p15, 0, r0, c7, c10, 4	@ drain WB
+		mcr	p15, 0, r0, c7, c7, 0	@ flush I & D caches
+
+		@ disabling MMU and caches
+		mrc	p15, 0, r0, c1, c0, 0	@ read control reg
+		bic	r0, r0, #0x05		@ clear DC, MMU
+		bic	r0, r0, #0x1000		@ clear Icache
+		mcr	p15, 0, r0, c1, c0, 0
+	/* set output */
+	ldr	r0, =GPSR0
+	ldr	r1, =CONFIG_GPSR0_VAL
+	str	r1, [r0]
+
+	ldr	r0, =GPSR1
+	ldr	r1, =CONFIG_GPSR1_VAL
+	str	r1, [r0]
+
+	ldr	r0, =GPSR2
+	ldr	r1, =CONFIG_GPSR2_VAL
+	str	r1, [r0]
+
+	/* set direction */
+	ldr	r0, =GPDR0
+	ldr	r1, =CONFIG_GPDR0_VAL
+	str	r1, [r0]
+
+	ldr	r0, =GPDR1
+	ldr	r1, =CONFIG_GPDR1_VAL
+	str	r1, [r0]
+
+	ldr	r0, =GPDR2
+	ldr	r1, =CONFIG_GPDR2_VAL
+	str	r1, [r0]
+
+	/* alternate function */
+	ldr	r0, =GAFR0_L
+	ldr	r1, =CONFIG_GAFR0_L_VAL
+	str	r1, [r0]
+
+	ldr	r0, =GAFR0_U
+	ldr	r1, =CONFIG_GAFR0_U_VAL
+	str	r1, [r0]
+
+	ldr	r0, =GAFR1_L
+	ldr	r1, =CONFIG_GAFR1_L_VAL
+	str	r1, [r0]
+
+	ldr	r0, =GAFR1_U
+	ldr	r1, =CONFIG_GAFR1_U_VAL
+	str	r1, [r0]
+
+	ldr	r0, =GAFR2_L
+	ldr	r1, =CONFIG_GAFR2_L_VAL
+	str	r1, [r0]
+
+	ldr	r0, =GAFR2_U
+	ldr	r1, =CONFIG_GAFR2_U_VAL
+	str	r1, [r0]
+
+	/* enable GPIO pins */
+	ldr	r0, =PSSR
+	ldr	r1, =CONFIG_PSSR_VAL
+	str	r1, [r0]
+
+	/* -------------------------------------------------------------------- */
+	/* Enable memory interface						*/
+	/*									*/
+	/* The sequence below is based on the recommended init steps		*/
+	/* detailed in the Intel PXA250 Operating Systems Developers Guide,	*/
+	/* Chapter 10.								*/
+	/* -------------------------------------------------------------------- */
+
+	/* -------------------------------------------------------------------- */
+	/* Step 1: Wait for at least 200 microsedonds to allow internal		*/
+	/*	   clocks to settle. Only necessary after hard reset...		*/
+	/*	   FIXME: can be optimized later				*/
+	/* -------------------------------------------------------------------- */
+
+	ldr	r3, =OSCR			/* reset the OS Timer Count to zero */
+	mov	r2, #0
+	str	r2, [r3]
+	ldr	r4, =0x300			/* really 0x2E1 is about 200usec, */
+						/* so 0x300 should be plenty */
+1:
+	ldr	r2, [r3]
+	cmp	r4, r2
+	bgt	1b
+
+	cmp	pc, #0xa0000000
+	bls	mem_init
+	cmp	pc, #0xb0000000
+	bhi	mem_init
+	b	skip_mem_init
+
+mem_init:
+	ldr	r1, =MDCNFG			/* get memory controller base addr. */
+
+	/* -------------------------------------------------------------------- */
+	/* Step 2a: Initialize Asynchronous static memory controller		*/
+	/* -------------------------------------------------------------------- */
+
+	/* MSC registers: timing, bus width, mem type */
+
+	/* MSC0: nCS(0,1) */
+	ldr	r2, =CONFIG_MSC0_VAL
+	str	r2, [r1, #MSC0_OFFSET]
+	ldr	r2, [r1, #MSC0_OFFSET]		/* read back to ensure */
+						/* that data latches */
+	/* MSC1: nCS(2,3) */
+	ldr	r2, =CONFIG_MSC1_VAL
+	str	r2, [r1, #MSC1_OFFSET]
+	ldr	r2, [r1, #MSC1_OFFSET]
+
+	/* MSC2: nCS(4,5) */
+	ldr	r2, =CONFIG_MSC2_VAL
+	str	r2, [r1, #MSC2_OFFSET]
+	ldr	r2, [r1, #MSC2_OFFSET]
+
+	/* -------------------------------------------------------------------- */
+	/* Step 2b: Initialize Card Interface					*/
+	/* -------------------------------------------------------------------- */
+
+	/* MECR: Memory Expansion Card Register	*/
+	ldr	r2, =CONFIG_MECR_VAL
+	str	r2, [r1, #MECR_OFFSET]
+	ldr	r2, [r1, #MECR_OFFSET]
+
+	/* MCMEM0: Card Interface slot 0 timing	*/
+	ldr	r2, =CONFIG_MCMEM0_VAL
+	str	r2, [r1, #MCMEM0_OFFSET]
+	ldr	r2, [r1, #MCMEM0_OFFSET]
+
+	/* MCMEM1: Card Interface slot 1 timing	*/
+	ldr	r2, =CONFIG_MCMEM1_VAL
+	str	r2, [r1, #MCMEM1_OFFSET]
+	ldr	r2, [r1, #MCMEM1_OFFSET]
+
+	/* MCATT0: Card Interface Attribute Space Timing, slot 0 */
+	ldr	r2, =CONFIG_MCATT0_VAL
+	str	r2, [r1, #MCATT0_OFFSET]
+	ldr	r2, [r1, #MCATT0_OFFSET]
+
+	/* MCATT1: Card Interface Attribute Space Timing, slot 1 */
+	ldr	r2, =CONFIG_MCATT1_VAL
+	str	r2, [r1, #MCATT1_OFFSET]
+	ldr	r2, [r1, #MCATT1_OFFSET]
+
+	/* MCIO0: Card Interface I/O Space Timing, slot 0 */
+	ldr	r2, =CONFIG_MCIO0_VAL
+	str	r2, [r1, #MCIO0_OFFSET]
+	ldr	r2, [r1, #MCIO0_OFFSET]
+
+	/* MCIO1: Card Interface I/O Space Timing, slot 1 */
+	ldr	r2, =CONFIG_MCIO1_VAL
+	str	r2, [r1, #MCIO1_OFFSET]
+	ldr	r2, [r1, #MCIO1_OFFSET]
+
+	/* -------------------------------------------------------------------- */
+	/* Step 2c: Write FLYCNFG FIXME: what's that???				*/
+	/* -------------------------------------------------------------------- */
+	ldr	r2, =CONFIG_FLYCNFG_VAL
+	str	r2, [r1, #FLYCNFG_OFFSET]
+	str	r2, [r1, #FLYCNFG_OFFSET]
+
+	/* -------------------------------------------------------------------- */
+	/* Step 2d: Initialize Timing for Sync Memory (SDCLK0)			*/
+	/* -------------------------------------------------------------------- */
+
+	/* Before accessing MDREFR we need a valid DRI field, so we set	*/
+	/* this to power on defaults + DRI field. */
+
+	ldr	r4, [r1, #MDREFR_OFFSET]
+	ldr	r2, =0xFFF
+	bic	r4, r4, r2
+
+	ldr	r3, =CONFIG_MDREFR_VAL
+	and	r3, r3, r2
+
+	orr	r4, r4, r3
+	str	r4, [r1, #MDREFR_OFFSET]	/* write back MDREFR */
+
+	orr	r4, r4, #MDREFR_K0RUN
+	orr	r4, r4, #MDREFR_K0DB4
+	orr	r4, r4, #MDREFR_K0FREE
+	orr	r4, r4, #MDREFR_K2FREE
+	orr	r4, r4, #MDREFR_K0DB2
+	orr	r4, r4, #MDREFR_K1DB2
+	bic	r4, r4, #MDREFR_K1FREE
+
+	str	r4, [r1, #MDREFR_OFFSET]	/* write back MDREFR */
+	ldr	r4, [r1, #MDREFR_OFFSET]
+
+	/* Note: preserve the mdrefr value in r4 */
+
+
+	/* -------------------------------------------------------------------- */
+	/* Step 3: Initialize Synchronous Static Memory (Flash/Peripherals)	*/
+	/* -------------------------------------------------------------------- */
+
+	/* Initialize SXCNFG register. Assert the enable bits */
+
+	/*
+	 * Write SXMRS to cause an MRS command to all enabled banks of
+	 * synchronous static memory. Note that SXLCR need not be
+	 * written at this time.
+	 */
+	ldr	r2, =CONFIG_SXCNFG_VAL
+	str	r2, [r1, #SXCNFG_OFFSET]
+
+	/* -------------------------------------------------------------------- */
+	/* Step 4: Initialize SDRAM						*/
+	/* -------------------------------------------------------------------- */
+	bic	r4, r4, #(MDREFR_K1FREE | MDREFR_K0FREE)
+
+	orr	r4, r4, #MDREFR_K1RUN
+	orr	r4, r4, #MDREFR_K2FREE
+	bic	r4, r4, #MDREFR_K2DB2
+	str	r4, [r1, #MDREFR_OFFSET]
+	ldr	r4, [r1, #MDREFR_OFFSET]
+
+	bic	r4, r4, #MDREFR_SLFRSH
+	str	r4, [r1, #MDREFR_OFFSET]
+	ldr	r4, [r1, #MDREFR_OFFSET]
+
+	orr	r4, r4, #MDREFR_E1PIN
+	str	r4, [r1, #MDREFR_OFFSET]
+	ldr	r4, [r1, #MDREFR_OFFSET]
+
+	nop
+	nop
+
+
+	/*
+	 * Step 4d: write MDCNFG with MDCNFG:DEx deasserted
+	 * (set to 0), to configure but not enable each SDRAM
+	 * partition pair.
+	 */
+	ldr	r4, =CONFIG_MDCNFG_VAL
+	bic	r4, r4,	#(MDCNFG_DE0|MDCNFG_DE1)
+	bic	r4, r4,	#(MDCNFG_DE2|MDCNFG_DE3)
+
+	str	r4, [r1, #MDCNFG_OFFSET]	/* write back MDCNFG */
+	ldr	r4, [r1, #MDCNFG_OFFSET]
+
+
+	/*
+	 * Step 4e: Wait for the clock to the SDRAMs to stabilize,
+	 * 100..200 usec.
+	 */
+	ldr	r3, =OSCR			/* reset the OS Timer Count to zero */
+	mov	r2, #0
+	str	r2, [r3]
+	ldr	r4, =0x300			/* really 0x2E1 is about 200 usec,  */
+						/* so 0x300 should be plenty */
+1:
+	ldr	r2, [r3]
+	cmp	r4, r2
+	bgt	1b
+
+
+	/* Step 4f: Trigger a number (usually 8) refresh cycles by		*/
+	/*		attempting non-burst read or write accesses to disabled */
+	/*		SDRAM, as commonly specified in the power up sequence   */
+	/*		documented in SDRAM data sheets. The address(es) used   */
+	/*		for this purpose must not be cacheable.			*/
+	ldr	r3, =CONFIG_DRAM_BASE
+	str	r2, [r3]
+	str	r2, [r3]
+	str	r2, [r3]
+	str	r2, [r3]
+	str	r2, [r3]
+	str	r2, [r3]
+	str	r2, [r3]
+	str	r2, [r3]
+
+
+	/*
+	 * Step 4g: Write MDCNFG with enable bits asserted
+	 * (MDCNFG:DEx set to 1)
+	 */
+	ldr	r3, [r1, #MDCNFG_OFFSET]
+	mov	r4, r3
+	orr	r3, r3,	#MDCNFG_DE0
+	str	r3, [r1, #MDCNFG_OFFSET]
+	mov	r0, r3
+
+	/* Step 4h: Write MDMRS. */
+	ldr	r2, =CONFIG_MDMRS_VAL
+	str	r2, [r1, #MDMRS_OFFSET]
+
+	/* enable APD */
+	ldr	r3, [r1, #MDREFR_OFFSET]
+	orr	r3, r3, #MDREFR_APD
+	str	r3, [r1, #MDREFR_OFFSET]
+
+	/* We are finished with Intel's memory controller initialisation */
+skip_mem_init:
+
+wakeup:
+	/* Are we waking from sleep? */
+	ldr	r0, =RCSR
+	ldr	r1, [r0]
+	and	r1, r1, #(RCSR_GPR | RCSR_SMR | RCSR_WDR | RCSR_HWR)
+	str	r1, [r0]
+	teq	r1, #RCSR_SMR
+
+	bne	initirqs
+
+	ldr	r0, =PSSR
+	mov	r1, #PSSR_PH
+	str	r1, [r0]
+
+	/* if so, resume at PSPR */
+	ldr	r0, =PSPR
+	ldr	r1, [r0]
+	mov	pc, r1
+
+	/* -------------------------------------------------------------------- */
+	/* Disable (mask) all interrupts at interrupt controller		*/
+	/* -------------------------------------------------------------------- */
+
+initirqs:
+	mov	r1, #0		/* clear int. level register (IRQ, not FIQ) */
+	ldr	r2, =ICLR
+	str	r1, [r2]
+
+	ldr	r2, =ICMR	/* mask all interrupts at the controller */
+	str	r1, [r2]
+
+	/* -------------------------------------------------------------------- */
+	/* Clock initialisation							*/
+	/* -------------------------------------------------------------------- */
+
+initclks:
+	/* Disable the peripheral clocks, and set the core clock frequency */
+
+	/* Turn Off on-chip peripheral clocks (except for memory) */
+	/* for re-configuration. */
+	ldr	r1, =CKEN
+	ldr	r2, =CONFIG_CKEN
+	str	r2, [r1]
+
+	/* ... and write the core clock config register */
+	ldr	r2, =CONFIG_CCCR
+	ldr	r1, =CCCR
+	str	r2, [r1]
+
+	/* Turn on turbo mode */
+	mrc	p14, 0, r2, c6, c0, 0
+	orr	r2, r2, #0xB			/* Turbo, Fast-Bus, Freq change */
+	mcr	p14, 0, r2, c6, c0, 0
+
+	/* Re-write MDREFR */
+	ldr	r1, =MDCNFG
+	ldr	r2, [r1, #MDREFR_OFFSET]
+	str	r2, [r1, #MDREFR_OFFSET]
+
+	/* enable the 32Khz oscillator for RTC and PowerManager */
+	ldr	r1, =OSCC
+	mov	r2, #OSCC_OON
+	str	r2, [r1]
+
+	/* Interrupt init: Mask all interrupts */
+	ldr	r0, =ICMR			/* enable no sources */
+	mov	r1, #0
+	str	r1, [r0]
+	/* FIXME */
+
+#ifdef NODEBUG
+	/* Disable software and data breakpoints */
+	mov	r0, #0
+	mcr	p15, 0, r0, c14, c8, 0		/* ibcr0 */
+	mcr	p15, 0, r0, c14, c9, 0		/* ibcr1 */
+	mcr	p15, 0, r0, c14, c4, 0		/* dbcon */
+
+	/* Enable all debug functionality */
+	mov	r0, #0x80000000
+	mcr	p14, 0, r0, c10, c0, 0		/* dcsr */
+#endif
+
+	/* -------------------------------------------------------------------- */
+	/* End lowlevel_init							*/
+	/* -------------------------------------------------------------------- */
+
+endlowlevel_init:
+	mov	pc, lr
diff --git a/arch/arm/configs/pcm027_defconfig b/arch/arm/configs/pcm027_defconfig
new file mode 100644
index 0000000..9760e66
--- /dev/null
+++ b/arch/arm/configs/pcm027_defconfig
@@ -0,0 +1,61 @@
+CONFIG_ARCH_PXA=y
+CONFIG_MACH_PCM027=y
+CONFIG_AEABI=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_ARM_UNWIND=y
+CONFIG_MMU=y
+CONFIG_MALLOC_SIZE=0x1000000
+CONFIG_MALLOC_TLSF=y
+CONFIG_KALLSYMS=y
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/pcm027/env"
+CONFIG_DEBUG_INFO=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIME=y
+CONFIG_CMD_AUTOMOUNT=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_CMD_UIMAGE=y
+# CONFIG_CMD_BOOTZ is not set
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_BMP=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_PING=y
+CONFIG_NET_TFTP=y
+CONFIG_NET_TFTP_PUSH=y
+CONFIG_DRIVER_SERIAL_PXA=y
+CONFIG_DRIVER_NET_SMC91111=y
+# CONFIG_SPI is not set
+CONFIG_DRIVER_CFI=y
+CONFIG_VIDEO=y
+CONFIG_DRIVER_VIDEO_PXA=y
+CONFIG_FS_TFTP=y
+CONFIG_LZO_DECOMPRESS=y
diff --git a/arch/arm/mach-pxa/Kconfig b/arch/arm/mach-pxa/Kconfig
index 750f466..029fd8b 100644
--- a/arch/arm/mach-pxa/Kconfig
+++ b/arch/arm/mach-pxa/Kconfig
@@ -3,10 +3,12 @@ if ARCH_PXA
 config ARCH_TEXT_BASE
 	hex
 	default 0xa0000000 if MACH_MIOA701
+	default 0xa3f00000 if MACH_PCM027
 
 config BOARDINFO
 	string
 	default "Scoter Mitac Mio A701" if MACH_MIOA701
+	default "Phytec phyCORE-PXA270" if MACH_PCM027
 
 # ----------------------------------------------------------
 
@@ -37,6 +39,14 @@ config MACH_MIOA701
 	select PWM
 	help
 	  Say Y here if you are using a Mitac Mio A701 smartphone
+
+config MACH_PCM027
+	bool "Phytec phyCORE-PXA270"
+	select HAS_CFI
+	select MACH_HAS_LOWLEVEL_INIT
+	select HAVE_MMU
+	help
+	  Say Y here if you are using a Phytec phyCORE PXA270
 	  board
 endchoice
 
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
