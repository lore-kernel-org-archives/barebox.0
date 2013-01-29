Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U06sO-0006cc-TV
 for barebox@lists.infradead.org; Tue, 29 Jan 2013 08:49:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 29 Jan 2013 09:49:00 +0100
Message-Id: <1359449345-14612-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1359449345-14612-1-git-send-email-s.hauer@pengutronix.de>
References: <1359449345-14612-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/6] ARM omap3 beagle: move lowlevel code to lowlevel.c
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/beagle/Makefile   |    2 +
 arch/arm/boards/beagle/board.c    |  169 -------------------------------------
 arch/arm/boards/beagle/lowlevel.c |  167 ++++++++++++++++++++++++++++++++++++
 3 files changed, 169 insertions(+), 169 deletions(-)
 create mode 100644 arch/arm/boards/beagle/lowlevel.c

diff --git a/arch/arm/boards/beagle/Makefile b/arch/arm/boards/beagle/Makefile
index dcfc293..88c223a 100644
--- a/arch/arm/boards/beagle/Makefile
+++ b/arch/arm/boards/beagle/Makefile
@@ -1 +1,3 @@
 obj-y += board.o
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/boards/beagle/board.c b/arch/arm/boards/beagle/board.c
index 88096bb..bed4651 100644
--- a/arch/arm/boards/beagle/board.c
+++ b/arch/arm/boards/beagle/board.c
@@ -55,12 +55,6 @@
 #include <ns16550.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
-#include <mach/omap3-silicon.h>
-#include <mach/sdrc.h>
-#include <mach/sys_info.h>
-#include <mach/syslib.h>
-#include <mach/control.h>
-#include <mach/omap3-mux.h>
 #include <mach/gpmc.h>
 #include <mach/gpmc_nand.h>
 #include <mach/ehci.h>
@@ -70,169 +64,6 @@
 #include <usb/ehci.h>
 #include <mach/xload.h>
 
-/******************** Board Boot Time *******************/
-
-/**
- * @brief Do the SDRC initialization for 128Meg Micron DDR for CS0
- *
- * @return void
- */
-static void sdrc_init(void)
-{
-	/* SDRAM software reset */
-	/* No idle ack and RESET enable */
-	writel(0x1A, OMAP3_SDRC_REG(SYSCONFIG));
-	sdelay(100);
-	/* No idle ack and RESET disable */
-	writel(0x18, OMAP3_SDRC_REG(SYSCONFIG));
-
-	/* SDRC Sharing register */
-	/* 32-bit SDRAM on data lane [31:0] - CS0 */
-	/* pin tri-stated = 1 */
-	writel(0x00000100, OMAP3_SDRC_REG(SHARING));
-
-	/* ----- SDRC Registers Configuration --------- */
-	/* SDRC_MCFG0 register */
-	writel(0x02584099, OMAP3_SDRC_REG(MCFG_0));
-
-	/* SDRC_RFR_CTRL0 register */
-	writel(0x54601, OMAP3_SDRC_REG(RFR_CTRL_0));
-
-	/* SDRC_ACTIM_CTRLA0 register */
-	writel(0xA29DB4C6, OMAP3_SDRC_REG(ACTIM_CTRLA_0));
-
-	/* SDRC_ACTIM_CTRLB0 register */
-	writel(0x12214, OMAP3_SDRC_REG(ACTIM_CTRLB_0));
-
-	/* Disble Power Down of CKE due to 1 CKE on combo part */
-	writel(0x00000081, OMAP3_SDRC_REG(POWER));
-
-	/* SDRC_MANUAL command register */
-	/* NOP command */
-	writel(0x00000000, OMAP3_SDRC_REG(MANUAL_0));
-	/* Precharge command */
-	writel(0x00000001, OMAP3_SDRC_REG(MANUAL_0));
-	/* Auto-refresh command */
-	writel(0x00000002, OMAP3_SDRC_REG(MANUAL_0));
-	/* Auto-refresh command */
-	writel(0x00000002, OMAP3_SDRC_REG(MANUAL_0));
-
-	/* SDRC MR0 register Burst length=4 */
-	writel(0x00000032, OMAP3_SDRC_REG(MR_0));
-
-	/* SDRC DLLA control register */
-	writel(0x0000000A, OMAP3_SDRC_REG(DLLA_CTRL));
-
-	return;
-}
-
-/**
- * @brief Do the pin muxing required for Board operation.
- * We enable ONLY the pins we require to set. OMAP provides pins which do not
- * have alternate modes. Such pins done need to be set.
- *
- * See @ref MUX_VAL for description of the muxing mode.
- *
- * @return void
- */
-static void mux_config(void)
-{
-	/* SDRC_D0 - SDRC_D31 default mux mode is mode0 */
-
-	/* GPMC */
-	MUX_VAL(CP(GPMC_A1), (IDIS | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_A2), (IDIS | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_A3), (IDIS | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_A4), (IDIS | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_A5), (IDIS | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_A6), (IDIS | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_A7), (IDIS | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_A8), (IDIS | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_A9), (IDIS | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_A10), (IDIS | PTD | DIS | M0));
-
-	/* D0-D7 default mux mode is mode0 */
-	MUX_VAL(CP(GPMC_D8), (IEN | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_D9), (IEN | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_D10), (IEN | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_D11), (IEN | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_D12), (IEN | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_D13), (IEN | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_D14), (IEN | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_D15), (IEN | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_CLK), (IDIS | PTD | DIS | M0));
-	/* GPMC_NADV_ALE default mux mode is mode0 */
-	/* GPMC_NOE default mux mode is mode0 */
-	/* GPMC_NWE default mux mode is mode0 */
-	/* GPMC_NBE0_CLE default mux mode is mode0 */
-	MUX_VAL(CP(GPMC_NBE0_CLE), (IDIS | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_NBE1), (IEN | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_NWP), (IEN | PTD | DIS | M0));
-	/* GPMC_WAIT0 default mux mode is mode0 */
-	MUX_VAL(CP(GPMC_WAIT1), (IEN | PTU | EN | M0));
-
-	/* SERIAL INTERFACE */
-	MUX_VAL(CP(UART3_CTS_RCTX), (IEN | PTD | EN | M0));
-	MUX_VAL(CP(UART3_RTS_SD), (IDIS | PTD | DIS | M0));
-	MUX_VAL(CP(UART3_RX_IRRX), (IEN | PTD | DIS | M0));
-	MUX_VAL(CP(UART3_TX_IRTX), (IDIS | PTD | DIS | M0));
-	MUX_VAL(CP(HSUSB0_CLK), (IEN | PTD | DIS | M0));
-	MUX_VAL(CP(HSUSB0_STP), (IDIS | PTU | EN | M0));
-	MUX_VAL(CP(HSUSB0_DIR), (IEN | PTD | DIS | M0));
-	MUX_VAL(CP(HSUSB0_NXT), (IEN | PTD | DIS | M0));
-	MUX_VAL(CP(HSUSB0_DATA0), (IEN | PTD | DIS | M0));
-	MUX_VAL(CP(HSUSB0_DATA1), (IEN | PTD | DIS | M0));
-	MUX_VAL(CP(HSUSB0_DATA2), (IEN | PTD | DIS | M0));
-	MUX_VAL(CP(HSUSB0_DATA3), (IEN | PTD | DIS | M0));
-	MUX_VAL(CP(HSUSB0_DATA4), (IEN | PTD | DIS | M0));
-	MUX_VAL(CP(HSUSB0_DATA5), (IEN | PTD | DIS | M0));
-	MUX_VAL(CP(HSUSB0_DATA6), (IEN | PTD | DIS | M0));
-	MUX_VAL(CP(HSUSB0_DATA7), (IEN | PTD | DIS | M0));
-	/* I2C1_SCL default mux mode is mode0 */
-	/* I2C1_SDA default mux mode is mode0 */
-	/* USB EHCI (port 2) */
-	MUX_VAL(CP(MCSPI1_CS3),		(IEN  | PTU | DIS | M3));
-	MUX_VAL(CP(MCSPI2_CLK),		(IEN  | PTU | DIS | M3));
-	MUX_VAL(CP(MCSPI2_SIMO),	(IEN  | PTU | DIS | M3));
-	MUX_VAL(CP(MCSPI2_SOMI),	(IEN  | PTU | DIS | M3));
-	MUX_VAL(CP(MCSPI2_CS0),		(IEN  | PTU | DIS | M3));
-	MUX_VAL(CP(MCSPI2_CS1),		(IEN  | PTU | DIS | M3));
-	MUX_VAL(CP(ETK_D10_ES2),	(IDIS | PTU | DIS | M3));
-	MUX_VAL(CP(ETK_D11_ES2),	(IDIS | PTU | DIS | M3));
-	MUX_VAL(CP(ETK_D12_ES2),	(IEN  | PTU | DIS | M3));
-	MUX_VAL(CP(ETK_D13_ES2),	(IEN  | PTU | DIS | M3));
-	MUX_VAL(CP(ETK_D14_ES2),	(IEN  | PTU | DIS | M3));
-	MUX_VAL(CP(ETK_D15_ES2),	(IEN  | PTU | DIS | M3));
-	MUX_VAL(CP(UART2_RX),		(IEN  | PTD | DIS | M4)) /*GPIO_147*/;
-}
-
-/**
- * @brief The basic entry point for board initialization.
- *
- * This is called as part of machine init (after arch init).
- * This is again called with stack in SRAM, so not too many
- * constructs possible here.
- *
- * @return void
- */
-static int beagle_board_init(void)
-{
-	int in_sdram = running_in_sdram();
-
-	if (!in_sdram)
-		omap3_core_init();
-
-	mux_config();
-	/* Dont reconfigure SDRAM while running in SDRAM! */
-	if (!in_sdram)
-		sdrc_init();
-
-	return 0;
-}
-pure_initcall(beagle_board_init);
-
-/******************** Board Run Time *******************/
-
 #ifdef CONFIG_DRIVER_SERIAL_NS16550
 
 /**
diff --git a/arch/arm/boards/beagle/lowlevel.c b/arch/arm/boards/beagle/lowlevel.c
new file mode 100644
index 0000000..677f055
--- /dev/null
+++ b/arch/arm/boards/beagle/lowlevel.c
@@ -0,0 +1,167 @@
+#include <io.h>
+#include <init.h>
+#include <mach/control.h>
+#include <mach/omap3-silicon.h>
+#include <mach/omap3-mux.h>
+#include <mach/sdrc.h>
+#include <mach/syslib.h>
+#include <mach/sys_info.h>
+
+/**
+ * @brief Do the pin muxing required for Board operation.
+ * We enable ONLY the pins we require to set. OMAP provides pins which do not
+ * have alternate modes. Such pins done need to be set.
+ *
+ * See @ref MUX_VAL for description of the muxing mode.
+ *
+ * @return void
+ */
+static void mux_config(void)
+{
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
+
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
+	/* USB EHCI (port 2) */
+	MUX_VAL(CP(MCSPI1_CS3),		(IEN  | PTU | DIS | M3));
+	MUX_VAL(CP(MCSPI2_CLK),		(IEN  | PTU | DIS | M3));
+	MUX_VAL(CP(MCSPI2_SIMO),	(IEN  | PTU | DIS | M3));
+	MUX_VAL(CP(MCSPI2_SOMI),	(IEN  | PTU | DIS | M3));
+	MUX_VAL(CP(MCSPI2_CS0),		(IEN  | PTU | DIS | M3));
+	MUX_VAL(CP(MCSPI2_CS1),		(IEN  | PTU | DIS | M3));
+	MUX_VAL(CP(ETK_D10_ES2),	(IDIS | PTU | DIS | M3));
+	MUX_VAL(CP(ETK_D11_ES2),	(IDIS | PTU | DIS | M3));
+	MUX_VAL(CP(ETK_D12_ES2),	(IEN  | PTU | DIS | M3));
+	MUX_VAL(CP(ETK_D13_ES2),	(IEN  | PTU | DIS | M3));
+	MUX_VAL(CP(ETK_D14_ES2),	(IEN  | PTU | DIS | M3));
+	MUX_VAL(CP(ETK_D15_ES2),	(IEN  | PTU | DIS | M3));
+	MUX_VAL(CP(UART2_RX),		(IEN  | PTD | DIS | M4)) /*GPIO_147*/;
+}
+
+/**
+ * @brief Do the SDRC initialization for 128Meg Micron DDR for CS0
+ *
+ * @return void
+ */
+static void sdrc_init(void)
+{
+	/* SDRAM software reset */
+	/* No idle ack and RESET enable */
+	writel(0x1A, OMAP3_SDRC_REG(SYSCONFIG));
+	sdelay(100);
+	/* No idle ack and RESET disable */
+	writel(0x18, OMAP3_SDRC_REG(SYSCONFIG));
+
+	/* SDRC Sharing register */
+	/* 32-bit SDRAM on data lane [31:0] - CS0 */
+	/* pin tri-stated = 1 */
+	writel(0x00000100, OMAP3_SDRC_REG(SHARING));
+
+	/* ----- SDRC Registers Configuration --------- */
+	/* SDRC_MCFG0 register */
+	writel(0x02584099, OMAP3_SDRC_REG(MCFG_0));
+
+	/* SDRC_RFR_CTRL0 register */
+	writel(0x54601, OMAP3_SDRC_REG(RFR_CTRL_0));
+
+	/* SDRC_ACTIM_CTRLA0 register */
+	writel(0xA29DB4C6, OMAP3_SDRC_REG(ACTIM_CTRLA_0));
+
+	/* SDRC_ACTIM_CTRLB0 register */
+	writel(0x12214, OMAP3_SDRC_REG(ACTIM_CTRLB_0));
+
+	/* Disble Power Down of CKE due to 1 CKE on combo part */
+	writel(0x00000081, OMAP3_SDRC_REG(POWER));
+
+	/* SDRC_MANUAL command register */
+	/* NOP command */
+	writel(0x00000000, OMAP3_SDRC_REG(MANUAL_0));
+	/* Precharge command */
+	writel(0x00000001, OMAP3_SDRC_REG(MANUAL_0));
+	/* Auto-refresh command */
+	writel(0x00000002, OMAP3_SDRC_REG(MANUAL_0));
+	/* Auto-refresh command */
+	writel(0x00000002, OMAP3_SDRC_REG(MANUAL_0));
+
+	/* SDRC MR0 register Burst length=4 */
+	writel(0x00000032, OMAP3_SDRC_REG(MR_0));
+
+	/* SDRC DLLA control register */
+	writel(0x0000000A, OMAP3_SDRC_REG(DLLA_CTRL));
+
+	return;
+}
+
+/**
+ * @brief The basic entry point for board initialization.
+ *
+ * This is called as part of machine init (after arch init).
+ * This is again called with stack in SRAM, so not too many
+ * constructs possible here.
+ *
+ * @return void
+ */
+static int beagle_board_init(void)
+{
+	int in_sdram = running_in_sdram();
+
+	if (!in_sdram)
+		omap3_core_init();
+
+	mux_config();
+	/* Dont reconfigure SDRAM while running in SDRAM! */
+	if (!in_sdram)
+		sdrc_init();
+
+	return 0;
+}
+pure_initcall(beagle_board_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
