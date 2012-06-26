Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SjSRM-0007nM-4z
 for barebox@lists.infradead.org; Tue, 26 Jun 2012 09:52:15 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Tue, 26 Jun 2012 11:51:46 +0200
Message-Id: <1340704314-12593-5-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1340704314-12593-1-git-send-email-jlu@pengutronix.de>
References: <1340704314-12593-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 04/12] mach-davinci: setup pin mux for da850
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/arm/mach-davinci/Makefile |    1 +
 arch/arm/mach-davinci/da850.c  |  279 ++++++++++++++++++++++++++++++++++++++++
 2 files changed, 280 insertions(+)
 create mode 100644 arch/arm/mach-davinci/da850.c

diff --git a/arch/arm/mach-davinci/Makefile b/arch/arm/mach-davinci/Makefile
index 936566e..d617d9e 100644
--- a/arch/arm/mach-davinci/Makefile
+++ b/arch/arm/mach-davinci/Makefile
@@ -1,4 +1,5 @@
 obj-y += clock.o
 obj-y += clocksource.o
+obj-y += da850.o
 obj-y += gpio.o
 obj-y += mux.o
diff --git a/arch/arm/mach-davinci/da850.c b/arch/arm/mach-davinci/da850.c
new file mode 100644
index 0000000..5d89a87
--- /dev/null
+++ b/arch/arm/mach-davinci/da850.c
@@ -0,0 +1,279 @@
+/*
+ * TI DA850/OMAP-L138 chip specific setup
+ *
+ * Copyright (C) 2009 Texas Instruments Incorporated - http://www.ti.com/
+ *
+ * Derived from: arch/arm/mach-davinci/da830.c
+ * Original Copyrights follow:
+ *
+ * 2009 (c) MontaVista Software, Inc. This file is licensed under
+ * the terms of the GNU General Public License version 2. This program
+ * is licensed "as is" without any warranty of any kind, whether express
+ * or implied.
+ */
+
+#include <config.h>
+#include <common.h>
+#include <console.h>
+#include <errno.h>
+#include <init.h>
+#include <mach/mux.h>
+#include <mach/gpio.h>
+
+/*
+ * Device specific mux setup
+ *
+ *		soc	description	mux	mode	mode	mux	dbg
+ *					reg	offset	mask	mode
+ */
+const struct mux_config da850_uart0_pins[] = {
+	/* UART0 function */
+	MUX_CFG(DA850, NUART0_CTS,	3,	24,	15,	2,	false)
+	MUX_CFG(DA850, NUART0_RTS,	3,	28,	15,	2,	false)
+	MUX_CFG(DA850, UART0_RXD,	3,	16,	15,	2,	false)
+	MUX_CFG(DA850, UART0_TXD,	3,	20,	15,	2,	false)
+	END_CFG()
+};
+
+const struct mux_config da850_uart1_pins[] = {
+	/* UART1 function */
+	MUX_CFG(DA850, NUART1_CTS,	0,	20,	15,	4,	false)
+	MUX_CFG(DA850, NUART1_RTS,	0,	16,	15,	4,	false)
+	MUX_CFG(DA850, UART1_RXD,	4,	24,	15,	2,	false)
+	MUX_CFG(DA850, UART1_TXD,	4,	28,	15,	2,	false)
+	END_CFG()
+};
+
+const struct mux_config da850_mcasp_pins[] = {
+	/* McASP function */
+	MUX_CFG(DA850,	ACLKR,		0,	0,	15,	1,	false)
+	MUX_CFG(DA850,	ACLKX,		0,	4,	15,	1,	false)
+	MUX_CFG(DA850,	AFSR,		0,	8,	15,	1,	false)
+	MUX_CFG(DA850,	AFSX,		0,	12,	15,	1,	false)
+	MUX_CFG(DA850,	AHCLKR,		0,	16,	15,	1,	false)
+	MUX_CFG(DA850,	AHCLKX,		0,	20,	15,	1,	false)
+	MUX_CFG(DA850,	AMUTE,		0,	24,	15,	1,	false)
+	MUX_CFG(DA850,	AXR_15,		1,	0,	15,	1,	false)
+	MUX_CFG(DA850,	AXR_14,		1,	4,	15,	1,	false)
+	MUX_CFG(DA850,	AXR_13,		1,	8,	15,	1,	false)
+	MUX_CFG(DA850,	AXR_12,		1,	12,	15,	1,	false)
+	MUX_CFG(DA850,	AXR_11,		1,	16,	15,	1,	false)
+	MUX_CFG(DA850,	AXR_10,		1,	20,	15,	1,	false)
+	MUX_CFG(DA850,	AXR_9,		1,	24,	15,	1,	false)
+	MUX_CFG(DA850,	AXR_8,		1,	28,	15,	1,	false)
+	MUX_CFG(DA850,	AXR_7,		2,	0,	15,	1,	false)
+	MUX_CFG(DA850,	AXR_6,		2,	4,	15,	1,	false)
+	MUX_CFG(DA850,	AXR_5,		2,	8,	15,	1,	false)
+	MUX_CFG(DA850,	AXR_4,		2,	12,	15,	1,	false)
+	MUX_CFG(DA850,	AXR_3,		2,	16,	15,	1,	false)
+	MUX_CFG(DA850,	AXR_2,		2,	20,	15,	1,	false)
+	MUX_CFG(DA850,	AXR_1,		2,	24,	15,	1,	false)
+	MUX_CFG(DA850,	AXR_0,		2,	28,	15,	1,	false)
+	END_CFG()
+};
+
+const struct mux_config da850_mmcsd0_pins[] = {
+	/* MMC/SD0 function */
+	MUX_CFG(DA850, MMCSD0_DAT_0,	10,	8,	15,	2,	false)
+	MUX_CFG(DA850, MMCSD0_DAT_1,	10,	12,	15,	2,	false)
+	MUX_CFG(DA850, MMCSD0_DAT_2,	10,	16,	15,	2,	false)
+	MUX_CFG(DA850, MMCSD0_DAT_3,	10,	20,	15,	2,	false)
+	MUX_CFG(DA850, MMCSD0_CLK,	10,	0,	15,	2,	false)
+	MUX_CFG(DA850, MMCSD0_CMD,	10,	4,	15,	2,	false)
+	END_CFG()
+};
+
+const struct mux_config da850_gpio_pins[] = {
+	/* GPIO function */
+	MUX_CFG(DA850, GPIO0_0,		1,      28,     15,     8,	false)
+	MUX_CFG(DA850, GPIO1_12,        2,      12,     15,     4,	false)
+	MUX_CFG(DA850, GPIO2_4,		6,	12,	15,	8,	false)
+	MUX_CFG(DA850, GPIO2_6,		6,	4,	15,	8,	false)
+	MUX_CFG(DA850, GPIO2_8,		5,	28,	15,	8,	false)
+	MUX_CFG(DA850, GPIO2_15,	5,	0,	15,	8,	false)
+	MUX_CFG(DA850, GPIO3_12,	7,	12,	15,	8,	false)
+	MUX_CFG(DA850, GPIO3_13,	7,	8,	15,	8,	false)
+	MUX_CFG(DA850, GPIO4_0,		10,	28,	15,	8,	false)
+	MUX_CFG(DA850, GPIO4_1,		10,	24,	15,	8,	false)
+	MUX_CFG(DA850, GPIO6_13,	13,	8,	15,	8,	false)
+	MUX_CFG(DA850, RTC_ALARM,	0,	28,	15,	2,	false)
+	END_CFG()
+};
+
+const struct mux_config da850_i2c1_pins[] = {
+	/* I2C1 function */
+	MUX_CFG(DA850, I2C1_SCL,	4,	16,	15,	4,	false)
+	MUX_CFG(DA850, I2C1_SDA,	4,	20,	15,	4,	false)
+	END_CFG()
+};
+
+const struct mux_config da850_i2c0_pins[] = {
+	/* I2C0 function */
+	MUX_CFG(DA850, I2C0_SDA,	4,	12,	15,	2,	false)
+	MUX_CFG(DA850, I2C0_SCL,	4,	8,	15,	2,	false)
+	END_CFG()
+};
+
+const struct mux_config da850_lcdcntl_pins[]  = {
+	/* LCD function */
+	MUX_CFG(DA850, LCD_D_7,		16,	8,	15,	2,	false)
+	MUX_CFG(DA850, LCD_D_6,		16,	12,	15,	2,	false)
+	MUX_CFG(DA850, LCD_D_5,		16,	16,	15,	2,	false)
+	MUX_CFG(DA850, LCD_D_4,		16,	20,	15,	2,	false)
+	MUX_CFG(DA850, LCD_D_3,		16,	24,	15,	2,	false)
+	MUX_CFG(DA850, LCD_D_2,		16,	28,	15,	2,	false)
+	MUX_CFG(DA850, LCD_D_1,		17,	0,	15,	2,	false)
+	MUX_CFG(DA850, LCD_D_0,		17,	4,	15,	2,	false)
+	MUX_CFG(DA850, LCD_D_15,	17,	8,	15,	2,	false)
+	MUX_CFG(DA850, LCD_D_14,	17,	12,	15,	2,	false)
+	MUX_CFG(DA850, LCD_D_13,	17,	16,	15,	2,	false)
+	MUX_CFG(DA850, LCD_D_12,	17,	20,	15,	2,	false)
+	MUX_CFG(DA850, LCD_D_11,	17,	24,	15,	2,	false)
+	MUX_CFG(DA850, LCD_D_10,	17,	28,	15,	2,	false)
+	MUX_CFG(DA850, LCD_D_9,		18,	0,	15,	2,	false)
+	MUX_CFG(DA850, LCD_D_8,		18,	4,	15,	2,	false)
+	MUX_CFG(DA850, LCD_PCLK,	18,	24,	15,	2,	false)
+	MUX_CFG(DA850, LCD_HSYNC,	19,	0,	15,	2,	false)
+	MUX_CFG(DA850, LCD_VSYNC,	19,	4,	15,	2,	false)
+	MUX_CFG(DA850, NLCD_AC_ENB_CS,	19,	24,	15,	2,	false)
+	END_CFG()
+};
+
+static const struct mux_config da850_spi0_pins[] = {
+	// SPI0
+	MUX_CFG(DA850, SPI0_CS_2,       3,      28,	15,	1,	false)
+	MUX_CFG(DA850, SPI0_CS_3,	3,      24,	15,	1,	false)
+	MUX_CFG(DA850, SPI0_CLK,	3,       0,	15,	1,	false)
+	MUX_CFG(DA850, SPI0_SOMI,	3,	8,	15,	1,	false)
+	MUX_CFG(DA850, SPI0_SIMO,	3,	12,	15,	1,	false)
+	END_CFG()
+
+};
+
+static const struct mux_config da850_spi1_pins[] = {
+	// SPI1
+	MUX_CFG(DA850, SPI1_CS_0,	5,	4,	15,	1,	false)
+	MUX_CFG(DA850, SPI1_CS_1,	5,	0,	15,	1,	false)
+	MUX_CFG(DA850, SPI1_CLK,	5,	8,	15,	1,	false)
+	MUX_CFG(DA850, SPI1_SOMI,	5,	16,	15,	1,	false)
+	MUX_CFG(DA850, SPI1_SIMO,	5,	20,	15,	1,	false)
+	END_CFG()
+};
+
+
+static const struct mux_config da850_emifa_pins[] = {
+	/* EMIF2.5/EMIFA function */
+	MUX_CFG(DA850, EMA_D_7,		9,	0,	15,	1,	false)
+	MUX_CFG(DA850, EMA_D_6,		9,	4,	15,	1,	false)
+	MUX_CFG(DA850, EMA_D_5,		9,	8,	15,	1,	false)
+	MUX_CFG(DA850, EMA_D_4,		9,	12,	15,	1,	false)
+	MUX_CFG(DA850, EMA_D_3,		9,	16,	15,	1,	false)
+	MUX_CFG(DA850, EMA_D_2,		9,	20,	15,	1,	false)
+	MUX_CFG(DA850, EMA_D_1,		9,	24,	15,	1,	false)
+	MUX_CFG(DA850, EMA_D_0,		9,	28,	15,	1,	false)
+	MUX_CFG(DA850, NEMA_CS_2,	7,	0,	15,	1,	false)
+	MUX_CFG(DA850, NEMA_CS_3,	7,	4,	15,	1,	false)
+	MUX_CFG(DA850, NEMA_CS_4,	7,	8,	15,	1,	false)
+	MUX_CFG(DA850, NEMA_CS_5,	7,     12,	15,	1,	false)
+	MUX_CFG(DA850, NEMA_WE,		7,	16,	15,	1,	false)
+	MUX_CFG(DA850, NEMA_OE,		7,	20,	15,	1,	false)
+	MUX_CFG(DA850, EMA_A_0,		12,	28,	15,	1,	false)
+	MUX_CFG(DA850, EMA_A_1,		12,	24,	15,	1,	false)
+	MUX_CFG(DA850, EMA_A_2,		12,	20,	15,	1,	false)
+	MUX_CFG(DA850, EMA_A_3,		12,	16,	15,	1,	false)
+	MUX_CFG(DA850, EMA_A_4,		12,	12,	15,	1,	false)
+	MUX_CFG(DA850, EMA_A_5,		12,	8,	15,	1,	false)
+	MUX_CFG(DA850, EMA_A_6,		12,	4,	15,	1,	false)
+	MUX_CFG(DA850, EMA_A_7,		12,	0,	15,	1,	false)
+	MUX_CFG(DA850, EMA_A_8,		11,	28,	15,	1,	false)
+	MUX_CFG(DA850, EMA_A_9,		11,	24,	15,	1,	false)
+	MUX_CFG(DA850, EMA_A_10,	11,	20,	15,	1,	false)
+	MUX_CFG(DA850, EMA_A_11,	11,	16,	15,	1,	false)
+	MUX_CFG(DA850, EMA_A_12,	11,	12,	15,	1,	false)
+	MUX_CFG(DA850, EMA_A_13,	11,	8,	15,	1,	false)
+	MUX_CFG(DA850, EMA_A_14,	11,	4,	15,	1,	false)
+	MUX_CFG(DA850, EMA_A_15,	11,	0,	15,	1,	false)
+	/*
+	MUX_CFG(DA850, EMA_A_16,	10,	28,	15,	1,	false)
+	MUX_CFG(DA850, EMA_A_17,	10,	24,	15,	1,	false)
+	MUX_CFG(DA850, EMA_A_18,	10,	20,	15,	1,	false)
+	MUX_CFG(DA850, EMA_A_19,	10,	16,	15,	1,	false)
+	MUX_CFG(DA850, EMA_A_20,	10,	12,	15,	1,	false)
+	MUX_CFG(DA850, EMA_A_21,	10,	8,	15,	1,	false)
+	MUX_CFG(DA850, EMA_A_22,	10,	4,	15,	1,	false)
+	MUX_CFG(DA850, EMA_A_23,	10,	0,	15,	1,	false)
+	*/
+	MUX_CFG(DA850, EMA_D_8,		8,	28,	15,	1,	false)
+	MUX_CFG(DA850, EMA_D_9,		8,	24,	15,	1,	false)
+	MUX_CFG(DA850, EMA_D_10,	8,	20,	15,	1,	false)
+	MUX_CFG(DA850, EMA_D_11,	8,	16,	15,	1,	false)
+	MUX_CFG(DA850, EMA_D_12,	8,	12,	15,	1,	false)
+	MUX_CFG(DA850, EMA_D_13,	8,	8,	15,	1,	false)
+	MUX_CFG(DA850, EMA_D_14,	8,	4,	15,	1,	false)
+	MUX_CFG(DA850, EMA_D_15,	8,	0,	15,	1,	false)
+	MUX_CFG(DA850, EMA_BA_1,	5,	24,	15,	1,	false)
+	MUX_CFG(DA850, EMA_CLK,		6,	0,	15,	1,	false)
+	MUX_CFG(DA850, EMA_WAIT_1,	6,	24,	15,	1,	false)
+	END_CFG()
+};
+
+static const struct mux_config da850_uart2_pins[] = {
+	/* UART2 function */
+	MUX_CFG(DA850, UART2_RXD,	4,	16,	15,	2,	false)
+	MUX_CFG(DA850, UART2_TXD,	4,	20,	15,	2,	false)
+	END_CFG()
+};
+
+static const struct mux_config da850_emac_pins[] = {
+	/* EMAC function */
+	MUX_CFG(DA850, MII_TXEN,	2,	4,	15,	8,	false)
+	MUX_CFG(DA850, MII_TXCLK,	2,	8,	15,	8,	false)
+	MUX_CFG(DA850, MII_COL,		2,	12,	15,	8,	false)
+	MUX_CFG(DA850, MII_TXD_3,	2,	16,	15,	8,	false)
+	MUX_CFG(DA850, MII_TXD_2,	2,	20,	15,	8,	false)
+	MUX_CFG(DA850, MII_TXD_1,	2,	24,	15,	8,	false)
+	MUX_CFG(DA850, MII_TXD_0,	2,	28,	15,	8,	false)
+	MUX_CFG(DA850, MII_RXCLK,	3,	0,	15,	8,	false)
+	MUX_CFG(DA850, MII_RXDV,	3,	4,	15,	8,	false)
+	MUX_CFG(DA850, MII_RXER,	3,	8,	15,	8,	false)
+	MUX_CFG(DA850, MII_CRS,		3,	12,	15,	8,	false)
+	MUX_CFG(DA850, MII_RXD_3,	3,	16,	15,	8,	false)
+	MUX_CFG(DA850, MII_RXD_2,	3,	20,	15,	8,	false)
+	MUX_CFG(DA850, MII_RXD_1,	3,	24,	15,	8,	false)
+	MUX_CFG(DA850, MII_RXD_0,	3,	28,	15,	8,	false)
+	MUX_CFG(DA850, MDIO_CLK,	4,	0,	15,	8,	false)
+	MUX_CFG(DA850, MDIO_D,		4,	4,	15,	8,	false)
+	MUX_CFG(DA850, RMII_TXD_0,	14,	12,	15,	8,	false)
+	MUX_CFG(DA850, RMII_TXD_1,	14,	8,	15,	8,	false)
+	MUX_CFG(DA850, RMII_TXEN,	14,	16,	15,	8,	false)
+	MUX_CFG(DA850, RMII_CRS_DV,	15,	4,	15,	8,	false)
+	MUX_CFG(DA850, RMII_RXD_0,	14,	24,	15,	8,	false)
+	MUX_CFG(DA850, RMII_RXD_1,	14,	20,	15,	8,	false)
+	MUX_CFG(DA850, RMII_RXER,	14,	28,	15,	8,	false)
+	MUX_CFG(DA850, RMII_MHZ_50_CLK,	15,	0,	15,	0,	false)
+	END_CFG()
+};
+
+static int da8xx_mux_init(void)
+{
+	if (davinci_cfg_reg_list(da850_uart2_pins))
+		printf("mux failed for da850_uart2_pins\n");
+
+	if (davinci_cfg_reg_list(da850_gpio_pins))
+		printf("mux failed for da850_gpio_pins\n");
+
+	if (davinci_cfg_reg_list(da850_emifa_pins))
+		printf("mux failed for da850_emifa_pins\n");
+
+	if (davinci_cfg_reg_list(da850_spi0_pins))
+		printf("mux failed for da850_spi0_pins\n");
+
+	if (davinci_cfg_reg_list(da850_spi1_pins))
+		printf("mux failed for da850_spi1_pins\n");
+
+	if (davinci_cfg_reg_list(da850_emac_pins))
+		printf("mux failed for da850_emac_pins\n");
+
+	return 0;
+}
+postconsole_initcall(da8xx_mux_init);
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
