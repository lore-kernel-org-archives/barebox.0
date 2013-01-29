Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U06sX-0006eH-3R
 for barebox@lists.infradead.org; Tue, 29 Jan 2013 08:49:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 29 Jan 2013 09:49:04 +0100
Message-Id: <1359449345-14612-6-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/6] ARM am33xx beaglebone: move lowlevel code to lowlevel.c
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/beaglebone/Makefile   |    2 +
 arch/arm/boards/beaglebone/board.c    |  240 -------------------------------
 arch/arm/boards/beaglebone/lowlevel.c |  248 +++++++++++++++++++++++++++++++++
 3 files changed, 250 insertions(+), 240 deletions(-)
 create mode 100644 arch/arm/boards/beaglebone/lowlevel.c

diff --git a/arch/arm/boards/beaglebone/Makefile b/arch/arm/boards/beaglebone/Makefile
index dcfc293..88c223a 100644
--- a/arch/arm/boards/beaglebone/Makefile
+++ b/arch/arm/boards/beaglebone/Makefile
@@ -1 +1,3 @@
 obj-y += board.o
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/boards/beaglebone/board.c b/arch/arm/boards/beaglebone/board.c
index f9ac7a4..6eb2c0a 100644
--- a/arch/arm/boards/beaglebone/board.c
+++ b/arch/arm/boards/beaglebone/board.c
@@ -48,246 +48,6 @@
 #include <mach/am33xx-mux.h>
 #include <mach/wdt.h>
 
-/* UART Defines */
-#define UART_SYSCFG_OFFSET  (0x54)
-#define UART_SYSSTS_OFFSET  (0x58)
-
-#define UART_RESET      (0x1 << 1)
-#define UART_CLK_RUNNING_MASK   0x1
-#define UART_SMART_IDLE_EN  (0x1 << 0x3)
-
-/* AM335X EMIF Register values */
-#define EMIF_SDMGT		0x80000000
-#define EMIF_SDRAM		0x00004650
-#define EMIF_PHYCFG		0x2
-#define DDR_PHY_RESET		(0x1 << 10)
-#define DDR_FUNCTIONAL_MODE_EN	0x1
-#define DDR_PHY_READY		(0x1 << 2)
-#define	VTP_CTRL_READY		(0x1 << 5)
-#define VTP_CTRL_ENABLE		(0x1 << 6)
-#define VTP_CTRL_LOCK_EN	(0x1 << 4)
-#define VTP_CTRL_START_EN	(0x1)
-#define DDR2_RATIO		0x80	/* for mDDR */
-#define CMD_FORCE		0x00	/* common #def */
-#define CMD_DELAY		0x00
-
-#define EMIF_READ_LATENCY	0x05
-#define EMIF_TIM1		0x0666B3D6
-#define EMIF_TIM2		0x143731DA
-#define	EMIF_TIM3		0x00000347
-#define EMIF_SDCFG		0x43805332
-#define EMIF_SDREF		0x0000081a
-#define DDR2_DLL_LOCK_DIFF	0x0
-#define DDR2_RD_DQS		0x12
-#define DDR2_PHY_FIFO_WE	0x80
-
-#define	DDR2_INVERT_CLKOUT	0x00
-#define	DDR2_WR_DQS		0x00
-#define	DDR2_PHY_WRLVL		0x00
-#define	DDR2_PHY_GATELVL	0x00
-#define	DDR2_PHY_WR_DATA	0x40
-#define	PHY_RANK0_DELAY		0x01
-#define PHY_DLL_LOCK_DIFF	0x0
-#define DDR_IOCTRL_VALUE	0x18B
-
-static void beaglebone_data_macro_config(int dataMacroNum)
-{
-	u32 BaseAddrOffset = 0x00;;
-
-	if (dataMacroNum == 1)
-		BaseAddrOffset = 0xA4;
-
-	__raw_writel(((DDR2_RD_DQS<<30)|(DDR2_RD_DQS<<20)
-		|(DDR2_RD_DQS<<10)|(DDR2_RD_DQS<<0)),
-		(AM33XX_DATA0_RD_DQS_SLAVE_RATIO_0 + BaseAddrOffset));
-	__raw_writel(DDR2_RD_DQS>>2,
-		(AM33XX_DATA0_RD_DQS_SLAVE_RATIO_1 + BaseAddrOffset));
-	__raw_writel(((DDR2_WR_DQS<<30)|(DDR2_WR_DQS<<20)
-		|(DDR2_WR_DQS<<10)|(DDR2_WR_DQS<<0)),
-		(AM33XX_DATA0_WR_DQS_SLAVE_RATIO_0 + BaseAddrOffset));
-	__raw_writel(DDR2_WR_DQS>>2,
-		(AM33XX_DATA0_WR_DQS_SLAVE_RATIO_1 + BaseAddrOffset));
-	__raw_writel(((DDR2_PHY_WRLVL<<30)|(DDR2_PHY_WRLVL<<20)
-		|(DDR2_PHY_WRLVL<<10)|(DDR2_PHY_WRLVL<<0)),
-		(AM33XX_DATA0_WRLVL_INIT_RATIO_0 + BaseAddrOffset));
-	__raw_writel(DDR2_PHY_WRLVL>>2,
-		(AM33XX_DATA0_WRLVL_INIT_RATIO_1 + BaseAddrOffset));
-	__raw_writel(((DDR2_PHY_GATELVL<<30)|(DDR2_PHY_GATELVL<<20)
-		|(DDR2_PHY_GATELVL<<10)|(DDR2_PHY_GATELVL<<0)),
-		(AM33XX_DATA0_GATELVL_INIT_RATIO_0 + BaseAddrOffset));
-	__raw_writel(DDR2_PHY_GATELVL>>2,
-		(AM33XX_DATA0_GATELVL_INIT_RATIO_1 + BaseAddrOffset));
-	__raw_writel(((DDR2_PHY_FIFO_WE<<30)|(DDR2_PHY_FIFO_WE<<20)
-		|(DDR2_PHY_FIFO_WE<<10)|(DDR2_PHY_FIFO_WE<<0)),
-		(AM33XX_DATA0_FIFO_WE_SLAVE_RATIO_0 + BaseAddrOffset));
-	__raw_writel(DDR2_PHY_FIFO_WE>>2,
-		(AM33XX_DATA0_FIFO_WE_SLAVE_RATIO_1 + BaseAddrOffset));
-	__raw_writel(((DDR2_PHY_WR_DATA<<30)|(DDR2_PHY_WR_DATA<<20)
-		|(DDR2_PHY_WR_DATA<<10)|(DDR2_PHY_WR_DATA<<0)),
-		(AM33XX_DATA0_WR_DATA_SLAVE_RATIO_0 + BaseAddrOffset));
-	__raw_writel(DDR2_PHY_WR_DATA>>2,
-		(AM33XX_DATA0_WR_DATA_SLAVE_RATIO_1 + BaseAddrOffset));
-	__raw_writel(PHY_DLL_LOCK_DIFF,
-		(AM33XX_DATA0_DLL_LOCK_DIFF_0 + BaseAddrOffset));
-}
-
-static void beaglebone_cmd_macro_config(void)
-{
-	__raw_writel(DDR2_RATIO, AM33XX_CMD0_CTRL_SLAVE_RATIO_0);
-	__raw_writel(CMD_FORCE, AM33XX_CMD0_CTRL_SLAVE_FORCE_0);
-	__raw_writel(CMD_DELAY, AM33XX_CMD0_CTRL_SLAVE_DELAY_0);
-	__raw_writel(DDR2_DLL_LOCK_DIFF, AM33XX_CMD0_DLL_LOCK_DIFF_0);
-	__raw_writel(DDR2_INVERT_CLKOUT, AM33XX_CMD0_INVERT_CLKOUT_0);
-
-	__raw_writel(DDR2_RATIO, AM33XX_CMD1_CTRL_SLAVE_RATIO_0);
-	__raw_writel(CMD_FORCE, AM33XX_CMD1_CTRL_SLAVE_FORCE_0);
-	__raw_writel(CMD_DELAY, AM33XX_CMD1_CTRL_SLAVE_DELAY_0);
-	__raw_writel(DDR2_DLL_LOCK_DIFF, AM33XX_CMD1_DLL_LOCK_DIFF_0);
-	__raw_writel(DDR2_INVERT_CLKOUT, AM33XX_CMD1_INVERT_CLKOUT_0);
-
-	__raw_writel(DDR2_RATIO, AM33XX_CMD2_CTRL_SLAVE_RATIO_0);
-	__raw_writel(CMD_FORCE, AM33XX_CMD2_CTRL_SLAVE_FORCE_0);
-	__raw_writel(CMD_DELAY, AM33XX_CMD2_CTRL_SLAVE_DELAY_0);
-	__raw_writel(DDR2_DLL_LOCK_DIFF, AM33XX_CMD2_DLL_LOCK_DIFF_0);
-	__raw_writel(DDR2_INVERT_CLKOUT, AM33XX_CMD2_INVERT_CLKOUT_0);
-}
-
-static void beaglebone_config_vtp(void)
-{
-	__raw_writel(__raw_readl(AM33XX_VTP0_CTRL_REG) | VTP_CTRL_ENABLE,
-		AM33XX_VTP0_CTRL_REG);
-	__raw_writel(__raw_readl(AM33XX_VTP0_CTRL_REG) & (~VTP_CTRL_START_EN),
-		AM33XX_VTP0_CTRL_REG);
-	__raw_writel(__raw_readl(AM33XX_VTP0_CTRL_REG) | VTP_CTRL_START_EN,
-		AM33XX_VTP0_CTRL_REG);
-
-	/* Poll for READY */
-	while ((__raw_readl(AM33XX_VTP0_CTRL_REG) & VTP_CTRL_READY) != VTP_CTRL_READY);
-}
-
-static void beaglebone_config_emif_ddr2(void)
-{
-	u32 i;
-
-	/*Program EMIF0 CFG Registers*/
-	__raw_writel(EMIF_READ_LATENCY, AM33XX_EMIF4_0_REG(DDR_PHY_CTRL_1));
-	__raw_writel(EMIF_READ_LATENCY, AM33XX_EMIF4_0_REG(DDR_PHY_CTRL_1_SHADOW));
-	__raw_writel(EMIF_READ_LATENCY, AM33XX_EMIF4_0_REG(DDR_PHY_CTRL_2));
-	__raw_writel(EMIF_TIM1, AM33XX_EMIF4_0_REG(SDRAM_TIM_1));
-	__raw_writel(EMIF_TIM1, AM33XX_EMIF4_0_REG(SDRAM_TIM_1_SHADOW));
-	__raw_writel(EMIF_TIM2, AM33XX_EMIF4_0_REG(SDRAM_TIM_2));
-	__raw_writel(EMIF_TIM2, AM33XX_EMIF4_0_REG(SDRAM_TIM_2_SHADOW));
-	__raw_writel(EMIF_TIM3, AM33XX_EMIF4_0_REG(SDRAM_TIM_3));
-	__raw_writel(EMIF_TIM3, AM33XX_EMIF4_0_REG(SDRAM_TIM_3_SHADOW));
-
-	__raw_writel(EMIF_SDCFG, AM33XX_EMIF4_0_REG(SDRAM_CONFIG));
-	__raw_writel(EMIF_SDCFG, AM33XX_EMIF4_0_REG(SDRAM_CONFIG2));
-
-	/* __raw_writel(EMIF_SDMGT, EMIF0_0_SDRAM_MGMT_CTRL);
-	__raw_writel(EMIF_SDMGT, EMIF0_0_SDRAM_MGMT_CTRL_SHD); */
-	__raw_writel(0x00004650, AM33XX_EMIF4_0_REG(SDRAM_REF_CTRL));
-	__raw_writel(0x00004650, AM33XX_EMIF4_0_REG(SDRAM_REF_CTRL_SHADOW));
-
-	for (i = 0; i < 5000; i++) {
-
-	}
-
-	/* __raw_writel(EMIF_SDMGT, EMIF0_0_SDRAM_MGMT_CTRL);
-	__raw_writel(EMIF_SDMGT, EMIF0_0_SDRAM_MGMT_CTRL_SHD); */
-	__raw_writel(EMIF_SDREF, AM33XX_EMIF4_0_REG(SDRAM_REF_CTRL));
-	__raw_writel(EMIF_SDREF, AM33XX_EMIF4_0_REG(SDRAM_REF_CTRL_SHADOW));
-
-	__raw_writel(EMIF_SDCFG, AM33XX_EMIF4_0_REG(SDRAM_CONFIG));
-	__raw_writel(EMIF_SDCFG, AM33XX_EMIF4_0_REG(SDRAM_CONFIG2));
-}
-
-static void beaglebone_config_ddr(void)
-{
-	enable_ddr_clocks();
-
-	beaglebone_config_vtp();
-
-	beaglebone_cmd_macro_config();
-	beaglebone_data_macro_config(0);
-	beaglebone_data_macro_config(1);
-
-	__raw_writel(PHY_RANK0_DELAY, AM33XX_DATA0_RANK0_DELAYS_0);
-	__raw_writel(PHY_RANK0_DELAY, AM33XX_DATA1_RANK0_DELAYS_0);
-
-	__raw_writel(DDR_IOCTRL_VALUE, AM33XX_DDR_CMD0_IOCTRL);
-	__raw_writel(DDR_IOCTRL_VALUE, AM33XX_DDR_CMD1_IOCTRL);
-	__raw_writel(DDR_IOCTRL_VALUE, AM33XX_DDR_CMD2_IOCTRL);
-	__raw_writel(DDR_IOCTRL_VALUE, AM33XX_DDR_DATA0_IOCTRL);
-	__raw_writel(DDR_IOCTRL_VALUE, AM33XX_DDR_DATA1_IOCTRL);
-
-	__raw_writel(__raw_readl(AM33XX_DDR_IO_CTRL) & 0xefffffff, AM33XX_DDR_IO_CTRL);
-	__raw_writel(__raw_readl(AM33XX_DDR_CKE_CTRL) | 0x00000001, AM33XX_DDR_CKE_CTRL);
-
-	beaglebone_config_emif_ddr2();
-}
-
-/*
- * early system init of muxing and clocks.
- */
-void beaglebone_sram_init(void)
-{
-	u32 regVal, uart_base;
-
-	/* Setup the PLLs and the clocks for the peripherals */
-	pll_init();
-
-	beaglebone_config_ddr();
-
-	/* UART softreset */
-	uart_base = AM33XX_UART0_BASE;
-
-	regVal = __raw_readl(uart_base + UART_SYSCFG_OFFSET);
-	regVal |= UART_RESET;
-	__raw_writel(regVal, (uart_base + UART_SYSCFG_OFFSET) );
-	while ((__raw_readl(uart_base + UART_SYSSTS_OFFSET) &
-		UART_CLK_RUNNING_MASK) != UART_CLK_RUNNING_MASK);
-
-	/* Disable smart idle */
-	regVal = __raw_readl((uart_base + UART_SYSCFG_OFFSET));
-	regVal |= UART_SMART_IDLE_EN;
-	__raw_writel(regVal, (uart_base + UART_SYSCFG_OFFSET));
-}
-
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
-static int beaglebone_board_init(void)
-{
-	int in_sdram = running_in_sdram();
-
-	/* WDT1 is already running when the bootloader gets control
-	 * Disable it to avoid "random" resets
-	 */
-	__raw_writel(WDT_DISABLE_CODE1, AM33XX_WDT_REG(WSPR));
-	while(__raw_readl(AM33XX_WDT_REG(WWPS)) != 0x0);
-	__raw_writel(WDT_DISABLE_CODE2, AM33XX_WDT_REG(WSPR));
-	while(__raw_readl(AM33XX_WDT_REG(WWPS)) != 0x0);
-
-	/* Dont reconfigure SDRAM while running in SDRAM! */
-	if (!in_sdram)
-		beaglebone_sram_init();
-
-	/* Enable pin mux */
-	enable_uart0_pin_mux();
-
-	return 0;
-}
-pure_initcall(beaglebone_board_init);
-
-/******************** Board Run Time *******************/
-
 #ifdef CONFIG_DRIVER_SERIAL_NS16550
 
 /**
diff --git a/arch/arm/boards/beaglebone/lowlevel.c b/arch/arm/boards/beaglebone/lowlevel.c
new file mode 100644
index 0000000..d446e8d
--- /dev/null
+++ b/arch/arm/boards/beaglebone/lowlevel.c
@@ -0,0 +1,248 @@
+#include <init.h>
+#include <sizes.h>
+#include <io.h>
+#include <mach/am33xx-silicon.h>
+#include <mach/am33xx-clock.h>
+#include <mach/sdrc.h>
+#include <mach/sys_info.h>
+#include <mach/syslib.h>
+#include <mach/am33xx-mux.h>
+#include <mach/wdt.h>
+
+/* UART Defines */
+#define UART_SYSCFG_OFFSET  (0x54)
+#define UART_SYSSTS_OFFSET  (0x58)
+
+#define UART_RESET      (0x1 << 1)
+#define UART_CLK_RUNNING_MASK   0x1
+#define UART_SMART_IDLE_EN  (0x1 << 0x3)
+
+/* AM335X EMIF Register values */
+#define EMIF_SDMGT		0x80000000
+#define EMIF_SDRAM		0x00004650
+#define EMIF_PHYCFG		0x2
+#define DDR_PHY_RESET		(0x1 << 10)
+#define DDR_FUNCTIONAL_MODE_EN	0x1
+#define DDR_PHY_READY		(0x1 << 2)
+#define	VTP_CTRL_READY		(0x1 << 5)
+#define VTP_CTRL_ENABLE		(0x1 << 6)
+#define VTP_CTRL_LOCK_EN	(0x1 << 4)
+#define VTP_CTRL_START_EN	(0x1)
+#define DDR2_RATIO		0x80	/* for mDDR */
+#define CMD_FORCE		0x00	/* common #def */
+#define CMD_DELAY		0x00
+
+#define EMIF_READ_LATENCY	0x05
+#define EMIF_TIM1		0x0666B3D6
+#define EMIF_TIM2		0x143731DA
+#define	EMIF_TIM3		0x00000347
+#define EMIF_SDCFG		0x43805332
+#define EMIF_SDREF		0x0000081a
+#define DDR2_DLL_LOCK_DIFF	0x0
+#define DDR2_RD_DQS		0x12
+#define DDR2_PHY_FIFO_WE	0x80
+
+#define	DDR2_INVERT_CLKOUT	0x00
+#define	DDR2_WR_DQS		0x00
+#define	DDR2_PHY_WRLVL		0x00
+#define	DDR2_PHY_GATELVL	0x00
+#define	DDR2_PHY_WR_DATA	0x40
+#define	PHY_RANK0_DELAY		0x01
+#define PHY_DLL_LOCK_DIFF	0x0
+#define DDR_IOCTRL_VALUE	0x18B
+
+static void beaglebone_data_macro_config(int dataMacroNum)
+{
+	u32 BaseAddrOffset = 0x00;;
+
+	if (dataMacroNum == 1)
+		BaseAddrOffset = 0xA4;
+
+	__raw_writel(((DDR2_RD_DQS<<30)|(DDR2_RD_DQS<<20)
+		|(DDR2_RD_DQS<<10)|(DDR2_RD_DQS<<0)),
+		(AM33XX_DATA0_RD_DQS_SLAVE_RATIO_0 + BaseAddrOffset));
+	__raw_writel(DDR2_RD_DQS>>2,
+		(AM33XX_DATA0_RD_DQS_SLAVE_RATIO_1 + BaseAddrOffset));
+	__raw_writel(((DDR2_WR_DQS<<30)|(DDR2_WR_DQS<<20)
+		|(DDR2_WR_DQS<<10)|(DDR2_WR_DQS<<0)),
+		(AM33XX_DATA0_WR_DQS_SLAVE_RATIO_0 + BaseAddrOffset));
+	__raw_writel(DDR2_WR_DQS>>2,
+		(AM33XX_DATA0_WR_DQS_SLAVE_RATIO_1 + BaseAddrOffset));
+	__raw_writel(((DDR2_PHY_WRLVL<<30)|(DDR2_PHY_WRLVL<<20)
+		|(DDR2_PHY_WRLVL<<10)|(DDR2_PHY_WRLVL<<0)),
+		(AM33XX_DATA0_WRLVL_INIT_RATIO_0 + BaseAddrOffset));
+	__raw_writel(DDR2_PHY_WRLVL>>2,
+		(AM33XX_DATA0_WRLVL_INIT_RATIO_1 + BaseAddrOffset));
+	__raw_writel(((DDR2_PHY_GATELVL<<30)|(DDR2_PHY_GATELVL<<20)
+		|(DDR2_PHY_GATELVL<<10)|(DDR2_PHY_GATELVL<<0)),
+		(AM33XX_DATA0_GATELVL_INIT_RATIO_0 + BaseAddrOffset));
+	__raw_writel(DDR2_PHY_GATELVL>>2,
+		(AM33XX_DATA0_GATELVL_INIT_RATIO_1 + BaseAddrOffset));
+	__raw_writel(((DDR2_PHY_FIFO_WE<<30)|(DDR2_PHY_FIFO_WE<<20)
+		|(DDR2_PHY_FIFO_WE<<10)|(DDR2_PHY_FIFO_WE<<0)),
+		(AM33XX_DATA0_FIFO_WE_SLAVE_RATIO_0 + BaseAddrOffset));
+	__raw_writel(DDR2_PHY_FIFO_WE>>2,
+		(AM33XX_DATA0_FIFO_WE_SLAVE_RATIO_1 + BaseAddrOffset));
+	__raw_writel(((DDR2_PHY_WR_DATA<<30)|(DDR2_PHY_WR_DATA<<20)
+		|(DDR2_PHY_WR_DATA<<10)|(DDR2_PHY_WR_DATA<<0)),
+		(AM33XX_DATA0_WR_DATA_SLAVE_RATIO_0 + BaseAddrOffset));
+	__raw_writel(DDR2_PHY_WR_DATA>>2,
+		(AM33XX_DATA0_WR_DATA_SLAVE_RATIO_1 + BaseAddrOffset));
+	__raw_writel(PHY_DLL_LOCK_DIFF,
+		(AM33XX_DATA0_DLL_LOCK_DIFF_0 + BaseAddrOffset));
+}
+
+static void beaglebone_cmd_macro_config(void)
+{
+	__raw_writel(DDR2_RATIO, AM33XX_CMD0_CTRL_SLAVE_RATIO_0);
+	__raw_writel(CMD_FORCE, AM33XX_CMD0_CTRL_SLAVE_FORCE_0);
+	__raw_writel(CMD_DELAY, AM33XX_CMD0_CTRL_SLAVE_DELAY_0);
+	__raw_writel(DDR2_DLL_LOCK_DIFF, AM33XX_CMD0_DLL_LOCK_DIFF_0);
+	__raw_writel(DDR2_INVERT_CLKOUT, AM33XX_CMD0_INVERT_CLKOUT_0);
+
+	__raw_writel(DDR2_RATIO, AM33XX_CMD1_CTRL_SLAVE_RATIO_0);
+	__raw_writel(CMD_FORCE, AM33XX_CMD1_CTRL_SLAVE_FORCE_0);
+	__raw_writel(CMD_DELAY, AM33XX_CMD1_CTRL_SLAVE_DELAY_0);
+	__raw_writel(DDR2_DLL_LOCK_DIFF, AM33XX_CMD1_DLL_LOCK_DIFF_0);
+	__raw_writel(DDR2_INVERT_CLKOUT, AM33XX_CMD1_INVERT_CLKOUT_0);
+
+	__raw_writel(DDR2_RATIO, AM33XX_CMD2_CTRL_SLAVE_RATIO_0);
+	__raw_writel(CMD_FORCE, AM33XX_CMD2_CTRL_SLAVE_FORCE_0);
+	__raw_writel(CMD_DELAY, AM33XX_CMD2_CTRL_SLAVE_DELAY_0);
+	__raw_writel(DDR2_DLL_LOCK_DIFF, AM33XX_CMD2_DLL_LOCK_DIFF_0);
+	__raw_writel(DDR2_INVERT_CLKOUT, AM33XX_CMD2_INVERT_CLKOUT_0);
+}
+
+static void beaglebone_config_vtp(void)
+{
+	__raw_writel(__raw_readl(AM33XX_VTP0_CTRL_REG) | VTP_CTRL_ENABLE,
+		AM33XX_VTP0_CTRL_REG);
+	__raw_writel(__raw_readl(AM33XX_VTP0_CTRL_REG) & (~VTP_CTRL_START_EN),
+		AM33XX_VTP0_CTRL_REG);
+	__raw_writel(__raw_readl(AM33XX_VTP0_CTRL_REG) | VTP_CTRL_START_EN,
+		AM33XX_VTP0_CTRL_REG);
+
+	/* Poll for READY */
+	while ((__raw_readl(AM33XX_VTP0_CTRL_REG) & VTP_CTRL_READY) != VTP_CTRL_READY);
+}
+
+static void beaglebone_config_emif_ddr2(void)
+{
+	u32 i;
+
+	/*Program EMIF0 CFG Registers*/
+	__raw_writel(EMIF_READ_LATENCY, AM33XX_EMIF4_0_REG(DDR_PHY_CTRL_1));
+	__raw_writel(EMIF_READ_LATENCY, AM33XX_EMIF4_0_REG(DDR_PHY_CTRL_1_SHADOW));
+	__raw_writel(EMIF_READ_LATENCY, AM33XX_EMIF4_0_REG(DDR_PHY_CTRL_2));
+	__raw_writel(EMIF_TIM1, AM33XX_EMIF4_0_REG(SDRAM_TIM_1));
+	__raw_writel(EMIF_TIM1, AM33XX_EMIF4_0_REG(SDRAM_TIM_1_SHADOW));
+	__raw_writel(EMIF_TIM2, AM33XX_EMIF4_0_REG(SDRAM_TIM_2));
+	__raw_writel(EMIF_TIM2, AM33XX_EMIF4_0_REG(SDRAM_TIM_2_SHADOW));
+	__raw_writel(EMIF_TIM3, AM33XX_EMIF4_0_REG(SDRAM_TIM_3));
+	__raw_writel(EMIF_TIM3, AM33XX_EMIF4_0_REG(SDRAM_TIM_3_SHADOW));
+
+	__raw_writel(EMIF_SDCFG, AM33XX_EMIF4_0_REG(SDRAM_CONFIG));
+	__raw_writel(EMIF_SDCFG, AM33XX_EMIF4_0_REG(SDRAM_CONFIG2));
+
+	/* __raw_writel(EMIF_SDMGT, EMIF0_0_SDRAM_MGMT_CTRL);
+	__raw_writel(EMIF_SDMGT, EMIF0_0_SDRAM_MGMT_CTRL_SHD); */
+	__raw_writel(0x00004650, AM33XX_EMIF4_0_REG(SDRAM_REF_CTRL));
+	__raw_writel(0x00004650, AM33XX_EMIF4_0_REG(SDRAM_REF_CTRL_SHADOW));
+
+	for (i = 0; i < 5000; i++) {
+
+	}
+
+	/* __raw_writel(EMIF_SDMGT, EMIF0_0_SDRAM_MGMT_CTRL);
+	__raw_writel(EMIF_SDMGT, EMIF0_0_SDRAM_MGMT_CTRL_SHD); */
+	__raw_writel(EMIF_SDREF, AM33XX_EMIF4_0_REG(SDRAM_REF_CTRL));
+	__raw_writel(EMIF_SDREF, AM33XX_EMIF4_0_REG(SDRAM_REF_CTRL_SHADOW));
+
+	__raw_writel(EMIF_SDCFG, AM33XX_EMIF4_0_REG(SDRAM_CONFIG));
+	__raw_writel(EMIF_SDCFG, AM33XX_EMIF4_0_REG(SDRAM_CONFIG2));
+}
+
+static void beaglebone_config_ddr(void)
+{
+	enable_ddr_clocks();
+
+	beaglebone_config_vtp();
+
+	beaglebone_cmd_macro_config();
+	beaglebone_data_macro_config(0);
+	beaglebone_data_macro_config(1);
+
+	__raw_writel(PHY_RANK0_DELAY, AM33XX_DATA0_RANK0_DELAYS_0);
+	__raw_writel(PHY_RANK0_DELAY, AM33XX_DATA1_RANK0_DELAYS_0);
+
+	__raw_writel(DDR_IOCTRL_VALUE, AM33XX_DDR_CMD0_IOCTRL);
+	__raw_writel(DDR_IOCTRL_VALUE, AM33XX_DDR_CMD1_IOCTRL);
+	__raw_writel(DDR_IOCTRL_VALUE, AM33XX_DDR_CMD2_IOCTRL);
+	__raw_writel(DDR_IOCTRL_VALUE, AM33XX_DDR_DATA0_IOCTRL);
+	__raw_writel(DDR_IOCTRL_VALUE, AM33XX_DDR_DATA1_IOCTRL);
+
+	__raw_writel(__raw_readl(AM33XX_DDR_IO_CTRL) & 0xefffffff, AM33XX_DDR_IO_CTRL);
+	__raw_writel(__raw_readl(AM33XX_DDR_CKE_CTRL) | 0x00000001, AM33XX_DDR_CKE_CTRL);
+
+	beaglebone_config_emif_ddr2();
+}
+
+/*
+ * early system init of muxing and clocks.
+ */
+void beaglebone_sram_init(void)
+{
+	u32 regVal, uart_base;
+
+	/* Setup the PLLs and the clocks for the peripherals */
+	pll_init();
+
+	beaglebone_config_ddr();
+
+	/* UART softreset */
+	uart_base = AM33XX_UART0_BASE;
+
+	regVal = __raw_readl(uart_base + UART_SYSCFG_OFFSET);
+	regVal |= UART_RESET;
+	__raw_writel(regVal, (uart_base + UART_SYSCFG_OFFSET) );
+	while ((__raw_readl(uart_base + UART_SYSSTS_OFFSET) &
+		UART_CLK_RUNNING_MASK) != UART_CLK_RUNNING_MASK);
+
+	/* Disable smart idle */
+	regVal = __raw_readl((uart_base + UART_SYSCFG_OFFSET));
+	regVal |= UART_SMART_IDLE_EN;
+	__raw_writel(regVal, (uart_base + UART_SYSCFG_OFFSET));
+}
+
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
+static int beaglebone_board_init(void)
+{
+	int in_sdram = running_in_sdram();
+
+	/* WDT1 is already running when the bootloader gets control
+	 * Disable it to avoid "random" resets
+	 */
+	__raw_writel(WDT_DISABLE_CODE1, AM33XX_WDT_REG(WSPR));
+	while(__raw_readl(AM33XX_WDT_REG(WWPS)) != 0x0);
+	__raw_writel(WDT_DISABLE_CODE2, AM33XX_WDT_REG(WSPR));
+	while(__raw_readl(AM33XX_WDT_REG(WWPS)) != 0x0);
+
+	/* Dont reconfigure SDRAM while running in SDRAM! */
+	if (!in_sdram)
+		beaglebone_sram_init();
+
+	/* Enable pin mux */
+	enable_uart0_pin_mux();
+
+	return 0;
+}
+pure_initcall(beaglebone_board_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
