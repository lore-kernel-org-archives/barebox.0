Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OVjCO-0003oI-DG
	for barebox@lists.infradead.org; Mon, 05 Jul 2010 10:46:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Jul 2010 12:46:47 +0200
Message-Id: <1278326807-31431-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1278326807-31431-1-git-send-email-s.hauer@pengutronix.de>
References: <1278326807-31431-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] beagle: Whitespace cleanup
To: barebox@lists.infradead.org
Cc: Nishanth Menon <x0nishan@ti.com>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 board/omap/board-beagle.c |  242 +++++++++++++++++++++++----------------------
 1 files changed, 122 insertions(+), 120 deletions(-)

diff --git a/board/omap/board-beagle.c b/board/omap/board-beagle.c
index 93092cc..78c0ef9 100644
--- a/board/omap/board-beagle.c
+++ b/board/omap/board-beagle.c
@@ -77,51 +77,51 @@
  */
 static void sdrc_init(void)
 {
-       /* SDRAM software reset */
-       /* No idle ack and RESET enable */
-       writel(0x1A, SDRC_REG(SYSCONFIG));
-       sdelay(100);
-       /* No idle ack and RESET disable */
-       writel(0x18, SDRC_REG(SYSCONFIG));
-
-       /* SDRC Sharing register */
-       /* 32-bit SDRAM on data lane [31:0] - CS0 */
-       /* pin tri-stated = 1 */
-       writel(0x00000100, SDRC_REG(SHARING));
-
-       /* ----- SDRC Registers Configuration --------- */
-       /* SDRC_MCFG0 register */
-       writel(0x02584099, SDRC_REG(MCFG_0));
-
-       /* SDRC_RFR_CTRL0 register */
-       writel(0x54601, SDRC_REG(RFR_CTRL_0));
-
-       /* SDRC_ACTIM_CTRLA0 register */
-       writel(0xA29DB4C6, SDRC_REG(ACTIM_CTRLA_0));
-
-       /* SDRC_ACTIM_CTRLB0 register */
-       writel(0x12214, SDRC_REG(ACTIM_CTRLB_0));
-
-       /* Disble Power Down of CKE due to 1 CKE on combo part */
-       writel(0x00000081, SDRC_REG(POWER));
-
-       /* SDRC_MANUAL command register */
-       /* NOP command */
-       writel(0x00000000, SDRC_REG(MANUAL_0));
-       /* Precharge command */
-       writel(0x00000001, SDRC_REG(MANUAL_0));
-       /* Auto-refresh command */
-       writel(0x00000002, SDRC_REG(MANUAL_0));
-       /* Auto-refresh command */
-       writel(0x00000002, SDRC_REG(MANUAL_0));
-
-       /* SDRC MR0 register Burst length=4 */
-       writel(0x00000032, SDRC_REG(MR_0));
-
-       /* SDRC DLLA control register */
-       writel(0x0000000A, SDRC_REG(DLLA_CTRL));
-
-       return;
+	/* SDRAM software reset */
+	/* No idle ack and RESET enable */
+	writel(0x1A, SDRC_REG(SYSCONFIG));
+	sdelay(100);
+	/* No idle ack and RESET disable */
+	writel(0x18, SDRC_REG(SYSCONFIG));
+
+	/* SDRC Sharing register */
+	/* 32-bit SDRAM on data lane [31:0] - CS0 */
+	/* pin tri-stated = 1 */
+	writel(0x00000100, SDRC_REG(SHARING));
+
+	/* ----- SDRC Registers Configuration --------- */
+	/* SDRC_MCFG0 register */
+	writel(0x02584099, SDRC_REG(MCFG_0));
+
+	/* SDRC_RFR_CTRL0 register */
+	writel(0x54601, SDRC_REG(RFR_CTRL_0));
+
+	/* SDRC_ACTIM_CTRLA0 register */
+	writel(0xA29DB4C6, SDRC_REG(ACTIM_CTRLA_0));
+
+	/* SDRC_ACTIM_CTRLB0 register */
+	writel(0x12214, SDRC_REG(ACTIM_CTRLB_0));
+
+	/* Disble Power Down of CKE due to 1 CKE on combo part */
+	writel(0x00000081, SDRC_REG(POWER));
+
+	/* SDRC_MANUAL command register */
+	/* NOP command */
+	writel(0x00000000, SDRC_REG(MANUAL_0));
+	/* Precharge command */
+	writel(0x00000001, SDRC_REG(MANUAL_0));
+	/* Auto-refresh command */
+	writel(0x00000002, SDRC_REG(MANUAL_0));
+	/* Auto-refresh command */
+	writel(0x00000002, SDRC_REG(MANUAL_0));
+
+	/* SDRC MR0 register Burst length=4 */
+	writel(0x00000032, SDRC_REG(MR_0));
+
+	/* SDRC DLLA control register */
+	writel(0x0000000A, SDRC_REG(DLLA_CTRL));
+
+	return;
 }
 
 /**
@@ -135,60 +135,59 @@ static void sdrc_init(void)
  */
 static void mux_config(void)
 {
+	/* SDRC_D0 - SDRC_D31 default mux mode is mode0 */
+
+	/* GPMC */
+	MUX_VAL(CP(GPMC_A1), (IDIS | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_A2), (IDIS | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_A3), (IDIS | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_A4), (IDIS | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_A5), (IDIS | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_A6), (IDIS | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_A7), (IDIS | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_A8), (IDIS | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_A9), (IDIS | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_A10), (IDIS | PTD | DIS | M0));
+
+	/* D0-D7 default mux mode is mode0 */
+	MUX_VAL(CP(GPMC_D8), (IEN | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_D9), (IEN | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_D10), (IEN | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_D11), (IEN | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_D12), (IEN | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_D13), (IEN | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_D14), (IEN | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_D15), (IEN | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_CLK), (IDIS | PTD | DIS | M0));
+	/* GPMC_NADV_ALE default mux mode is mode0 */
+	/* GPMC_NOE default mux mode is mode0 */
+	/* GPMC_NWE default mux mode is mode0 */
+	/* GPMC_NBE0_CLE default mux mode is mode0 */
+	MUX_VAL(CP(GPMC_NBE0_CLE), (IDIS | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_NBE1), (IEN | PTD | DIS | M0));
+	MUX_VAL(CP(GPMC_NWP), (IEN | PTD | DIS | M0));
+	/* GPMC_WAIT0 default mux mode is mode0 */
+	MUX_VAL(CP(GPMC_WAIT1), (IEN | PTU | EN | M0));
 
-       /* SDRC_D0 - SDRC_D31 default mux mode is mode0 */
-
-       /* GPMC */
-       MUX_VAL(CP(GPMC_A1), (IDIS | PTD | DIS | M0));
-       MUX_VAL(CP(GPMC_A2), (IDIS | PTD | DIS | M0));
-       MUX_VAL(CP(GPMC_A3), (IDIS | PTD | DIS | M0));
-       MUX_VAL(CP(GPMC_A4), (IDIS | PTD | DIS | M0));
-       MUX_VAL(CP(GPMC_A5), (IDIS | PTD | DIS | M0));
-       MUX_VAL(CP(GPMC_A6), (IDIS | PTD | DIS | M0));
-       MUX_VAL(CP(GPMC_A7), (IDIS | PTD | DIS | M0));
-       MUX_VAL(CP(GPMC_A8), (IDIS | PTD | DIS | M0));
-       MUX_VAL(CP(GPMC_A9), (IDIS | PTD | DIS | M0));
-       MUX_VAL(CP(GPMC_A10), (IDIS | PTD | DIS | M0));
-
-       /* D0-D7 default mux mode is mode0 */
-       MUX_VAL(CP(GPMC_D8), (IEN | PTD | DIS | M0));
-       MUX_VAL(CP(GPMC_D9), (IEN | PTD | DIS | M0));
-       MUX_VAL(CP(GPMC_D10), (IEN | PTD | DIS | M0));
-       MUX_VAL(CP(GPMC_D11), (IEN | PTD | DIS | M0));
-       MUX_VAL(CP(GPMC_D12), (IEN | PTD | DIS | M0));
-       MUX_VAL(CP(GPMC_D13), (IEN | PTD | DIS | M0));
-       MUX_VAL(CP(GPMC_D14), (IEN | PTD | DIS | M0));
-       MUX_VAL(CP(GPMC_D15), (IEN | PTD | DIS | M0));
-       MUX_VAL(CP(GPMC_CLK), (IDIS | PTD | DIS | M0));
-       /* GPMC_NADV_ALE default mux mode is mode0 */
-       /* GPMC_NOE default mux mode is mode0 */
-       /* GPMC_NWE default mux mode is mode0 */
-       /* GPMC_NBE0_CLE default mux mode is mode0 */
-       MUX_VAL(CP(GPMC_NBE0_CLE), (IDIS | PTD | DIS | M0));
-       MUX_VAL(CP(GPMC_NBE1), (IEN | PTD | DIS | M0));
-       MUX_VAL(CP(GPMC_NWP), (IEN | PTD | DIS | M0));
-       /* GPMC_WAIT0 default mux mode is mode0 */
-       MUX_VAL(CP(GPMC_WAIT1), (IEN | PTU | EN | M0));
-
-       /* SERIAL INTERFACE */
-       MUX_VAL(CP(UART3_CTS_RCTX), (IEN | PTD | EN | M0));
-       MUX_VAL(CP(UART3_RTS_SD), (IDIS | PTD | DIS | M0));
-       MUX_VAL(CP(UART3_RX_IRRX), (IEN | PTD | DIS | M0));
-       MUX_VAL(CP(UART3_TX_IRTX), (IDIS | PTD | DIS | M0));
-       MUX_VAL(CP(HSUSB0_CLK), (IEN | PTD | DIS | M0));
-       MUX_VAL(CP(HSUSB0_STP), (IDIS | PTU | EN | M0));
-       MUX_VAL(CP(HSUSB0_DIR), (IEN | PTD | DIS | M0));
-       MUX_VAL(CP(HSUSB0_NXT), (IEN | PTD | DIS | M0));
-       MUX_VAL(CP(HSUSB0_DATA0), (IEN | PTD | DIS | M0));
-       MUX_VAL(CP(HSUSB0_DATA1), (IEN | PTD | DIS | M0));
-       MUX_VAL(CP(HSUSB0_DATA2), (IEN | PTD | DIS | M0));
-       MUX_VAL(CP(HSUSB0_DATA3), (IEN | PTD | DIS | M0));
-       MUX_VAL(CP(HSUSB0_DATA4), (IEN | PTD | DIS | M0));
-       MUX_VAL(CP(HSUSB0_DATA5), (IEN | PTD | DIS | M0));
-       MUX_VAL(CP(HSUSB0_DATA6), (IEN | PTD | DIS | M0));
-       MUX_VAL(CP(HSUSB0_DATA7), (IEN | PTD | DIS | M0));
-       /* I2C1_SCL default mux mode is mode0 */
-       /* I2C1_SDA default mux mode is mode0 */
+	/* SERIAL INTERFACE */
+	MUX_VAL(CP(UART3_CTS_RCTX), (IEN | PTD | EN | M0));
+	MUX_VAL(CP(UART3_RTS_SD), (IDIS | PTD | DIS | M0));
+	MUX_VAL(CP(UART3_RX_IRRX), (IEN | PTD | DIS | M0));
+	MUX_VAL(CP(UART3_TX_IRTX), (IDIS | PTD | DIS | M0));
+	MUX_VAL(CP(HSUSB0_CLK), (IEN | PTD | DIS | M0));
+	MUX_VAL(CP(HSUSB0_STP), (IDIS | PTU | EN | M0));
+	MUX_VAL(CP(HSUSB0_DIR), (IEN | PTD | DIS | M0));
+	MUX_VAL(CP(HSUSB0_NXT), (IEN | PTD | DIS | M0));
+	MUX_VAL(CP(HSUSB0_DATA0), (IEN | PTD | DIS | M0));
+	MUX_VAL(CP(HSUSB0_DATA1), (IEN | PTD | DIS | M0));
+	MUX_VAL(CP(HSUSB0_DATA2), (IEN | PTD | DIS | M0));
+	MUX_VAL(CP(HSUSB0_DATA3), (IEN | PTD | DIS | M0));
+	MUX_VAL(CP(HSUSB0_DATA4), (IEN | PTD | DIS | M0));
+	MUX_VAL(CP(HSUSB0_DATA5), (IEN | PTD | DIS | M0));
+	MUX_VAL(CP(HSUSB0_DATA6), (IEN | PTD | DIS | M0));
+	MUX_VAL(CP(HSUSB0_DATA7), (IEN | PTD | DIS | M0));
+	/* I2C1_SCL default mux mode is mode0 */
+	/* I2C1_SDA default mux mode is mode0 */
 }
 
 /**
@@ -202,11 +201,12 @@ static void mux_config(void)
  */
 void board_init(void)
 {
-       int in_sdram = running_in_sdram();
-       mux_config();
-       /* Dont reconfigure SDRAM while running in SDRAM! */
-       if (!in_sdram)
-               sdrc_init();
+	int in_sdram = running_in_sdram();
+
+	mux_config();
+	/* Dont reconfigure SDRAM while running in SDRAM! */
+	if (!in_sdram)
+		sdrc_init();
 }
 
 /******************** Board Run Time *******************/
@@ -214,17 +214,17 @@ void board_init(void)
 #ifdef CONFIG_DRIVER_SERIAL_NS16550
 
 static struct NS16550_plat serial_plat = {
-       .clock = 48000000,      /* 48MHz (APLL96/2) */
-       .f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR,
-       .reg_read = omap_uart_read,
-       .reg_write = omap_uart_write,
+	.clock = 48000000,      /* 48MHz (APLL96/2) */
+	.f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR,
+	.reg_read = omap_uart_read,
+	.reg_write = omap_uart_write,
 };
 
 static struct device_d beagle_serial_device = {
-       .name = "serial_ns16550",
-       .map_base = OMAP_UART3_BASE,
-       .size = 1024,
-       .platform_data = (void *)&serial_plat,
+	.name = "serial_ns16550",
+	.map_base = OMAP_UART3_BASE,
+	.size = 1024,
+	.platform_data = (void *)&serial_plat,
 };
 
 /**
@@ -235,8 +235,8 @@ static struct device_d beagle_serial_device = {
  */
 static int beagle_console_init(void)
 {
-       /* Register the serial port */
-       return register_device(&beagle_serial_device);
+	/* Register the serial port */
+	return register_device(&beagle_serial_device);
 }
 console_initcall(beagle_console_init);
 #endif /* CONFIG_DRIVER_SERIAL_NS16550 */
@@ -255,18 +255,20 @@ static struct device_d sdram_dev = {
 
 static int beagle_devices_init(void)
 {
-       int ret;
-       ret = register_device(&sdram_dev);
-       if (ret)
-               goto failed;
+	int ret;
+
+	ret = register_device(&sdram_dev);
+	if (ret)
+		goto failed;
 
 #ifdef CONFIG_GPMC
 	/* WP is made high and WAIT1 active Low */
 	gpmc_generic_init(0x10);
 #endif
-       gpmc_generic_nand_devices_init(0, 16, 1);
-       armlinux_add_dram(&sdram_dev);
+	gpmc_generic_nand_devices_init(0, 16, 1);
+
+	armlinux_add_dram(&sdram_dev);
 failed:
-       return ret;
+	return ret;
 }
 device_initcall(beagle_devices_init);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
