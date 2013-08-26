Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VDqj2-0004fz-0u
 for barebox@lists.infradead.org; Mon, 26 Aug 2013 06:56:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 26 Aug 2013 08:56:00 +0200
Message-Id: <1377500163-28962-20-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1377500163-28962-1-git-send-email-s.hauer@pengutronix.de>
References: <1377500163-28962-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 19/22] ARM: beaglebone: add support for beaglebone black with
 DDR3 RAM
To: barebox@lists.infradead.org

From: Jan Luebbe <jlu@pengutronix.de>

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/beaglebone/beaglebone.h |  9 ++++++
 arch/arm/boards/beaglebone/board.c      | 43 +++++++++++++++++++++++--
 arch/arm/boards/beaglebone/lowlevel.c   | 56 ++++++++++++++++++++++++++++++---
 3 files changed, 102 insertions(+), 6 deletions(-)
 create mode 100644 arch/arm/boards/beaglebone/beaglebone.h

diff --git a/arch/arm/boards/beaglebone/beaglebone.h b/arch/arm/boards/beaglebone/beaglebone.h
new file mode 100644
index 0000000..25c5b0e
--- /dev/null
+++ b/arch/arm/boards/beaglebone/beaglebone.h
@@ -0,0 +1,9 @@
+#ifndef __BOARD_BEAGLEBONE_H
+#define __BOARD_BEAGLEBONE_H
+
+static inline int is_beaglebone_black(void)
+{
+	return am33xx_get_cpu_rev() != AM335X_ES1_0;
+}
+
+#endif /* __BOARD_BEAGLEBONE_H */
diff --git a/arch/arm/boards/beaglebone/board.c b/arch/arm/boards/beaglebone/board.c
index e12c70b..9e87afc 100644
--- a/arch/arm/boards/beaglebone/board.c
+++ b/arch/arm/boards/beaglebone/board.c
@@ -26,6 +26,8 @@
 #include <init.h>
 #include <driver.h>
 #include <envfs.h>
+#include <environment.h>
+#include <globalvar.h>
 #include <sizes.h>
 #include <io.h>
 #include <ns16550.h>
@@ -49,6 +51,8 @@
 #include <mach/am33xx-generic.h>
 #include <mach/cpsw.h>
 
+#include "beaglebone.h"
+
 #ifdef CONFIG_DRIVER_SERIAL_NS16550
 
 /**
@@ -71,7 +75,10 @@ console_initcall(beaglebone_console_init);
 
 static int beaglebone_mem_init(void)
 {
-	omap_add_ram0(SZ_256M);
+	if (is_beaglebone_black())
+		omap_add_ram0(SZ_512M);
+	else
+		omap_add_ram0(SZ_256M);
 
 	return 0;
 }
@@ -106,19 +113,51 @@ static struct i2c_board_info i2c0_devices[] = {
 	},
 };
 
+static const __maybe_unused struct module_pin_mux mmc1_pin_mux[] = {
+	{OFFSET(gpmc_ad0), (MODE(1) | RXACTIVE)},	/* MMC1_DAT0 */
+	{OFFSET(gpmc_ad1), (MODE(1) | RXACTIVE)},	/* MMC1_DAT1 */
+	{OFFSET(gpmc_ad2), (MODE(1) | RXACTIVE)},	/* MMC1_DAT2 */
+	{OFFSET(gpmc_ad3), (MODE(1) | RXACTIVE)},	/* MMC1_DAT3 */
+	{OFFSET(gpmc_ad4), (MODE(1) | RXACTIVE)},	/* MMC1_DAT4 */
+	{OFFSET(gpmc_ad5), (MODE(1) | RXACTIVE)},	/* MMC1_DAT5 */
+	{OFFSET(gpmc_ad6), (MODE(1) | RXACTIVE)},	/* MMC1_DAT6 */
+	{OFFSET(gpmc_ad7), (MODE(1) | RXACTIVE)},	/* MMC1_DAT7 */
+	{OFFSET(gpmc_csn1), (MODE(2) | RXACTIVE | PULLUP_EN)},	/* MMC1_CLK */
+	{OFFSET(gpmc_csn2), (MODE(2) | RXACTIVE | PULLUP_EN)},	/* MMC1_CMD */
+	{-1},
+};
+
 static int beaglebone_devices_init(void)
 {
+	am33xx_enable_mmc0_pin_mux();
 	am33xx_add_mmc0(NULL);
 
+	if (is_beaglebone_black()) {
+		configure_module_pin_mux(mmc1_pin_mux);
+		am33xx_add_mmc1(NULL);
+	}
+
 	am33xx_enable_i2c0_pin_mux();
 	i2c_register_board_info(0, i2c0_devices, ARRAY_SIZE(i2c0_devices));
 	am33xx_add_i2c0(NULL);
 
 	beaglebone_eth_init();
 
+	return 0;
+}
+device_initcall(beaglebone_devices_init);
+
+static int beaglebone_env_init(void)
+{
+	int black = is_beaglebone_black();
+
+	globalvar_add_simple("board.variant", black ? "boneblack" : "bone");
+
+	printf("detected 'BeagleBone %s'\n", black ? "Black" : "White");
+
 	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_BEAGLEBONE);
 
 	return 0;
 }
-device_initcall(beaglebone_devices_init);
+late_initcall(beaglebone_env_init);
diff --git a/arch/arm/boards/beaglebone/lowlevel.c b/arch/arm/boards/beaglebone/lowlevel.c
index c0152f3..2ff7c71 100644
--- a/arch/arm/boards/beaglebone/lowlevel.c
+++ b/arch/arm/boards/beaglebone/lowlevel.c
@@ -14,6 +14,8 @@
 #include <mach/am33xx-generic.h>
 #include <mach/wdt.h>
 
+#include "beaglebone.h"
+
 #define DDR2_RD_DQS		0x12
 #define DDR2_PHY_FIFO_WE	0x80
 #define	DDR2_WR_DQS		0x00
@@ -68,6 +70,38 @@ static const struct am33xx_ddr_data ddr2_data = {
 	.dll_lock_diff0		= 0x0,
 };
 
+static const struct am33xx_ddr_data ddr3_data = {
+	.rd_slave_ratio0        = 0x38,
+	.wr_dqs_slave_ratio0    = 0x44,
+	.fifo_we_slave_ratio0	= 0x94,
+	.wr_slave_ratio0        = 0x7D,
+	.use_rank0_delay	= 0x01,
+	.dll_lock_diff0		= 0x0,
+};
+
+static const struct am33xx_cmd_control ddr3_cmd_ctrl = {
+	.slave_ratio0	= 0x80,
+	.dll_lock_diff0	= 0x1,
+	.invert_clkout0	= 0x0,
+	.slave_ratio1	= 0x80,
+	.dll_lock_diff1	= 0x1,
+	.invert_clkout1	= 0x0,
+	.slave_ratio2	= 0x80,
+	.dll_lock_diff2	= 0x1,
+	.invert_clkout2	= 0x0,
+};
+
+static const struct am33xx_emif_regs ddr3_regs = {
+	.emif_read_latency	= 0x100007,
+	.emif_tim1		= 0x0AAAD4DB,
+	.emif_tim2		= 0x266B7FDA,
+	.emif_tim3		= 0x501F867F,
+	.zq_config		= 0x50074BE4,
+	.sdram_config		= 0x61C05332,
+	.sdram_config2		= 0x0,
+	.sdram_ref_ctrl		= 0xC30,
+};
+
 /**
  * @brief The basic entry point for board initialization.
  *
@@ -90,9 +124,16 @@ static int beaglebone_board_init(void)
 	if (running_in_sdram())
 		return 0;
 
-	pll_init(MPUPLL_M_500, 24, DDRPLL_M_266);
-
-	am335x_sdram_init(0x18B, &ddr2_cmd_ctrl, &ddr2_regs, &ddr2_data);
+	/* Setup the PLLs and the clocks for the peripherals */
+	if (is_beaglebone_black()) {
+		pll_init(MPUPLL_M_500, 24, DDRPLL_M_400);
+		am335x_sdram_init(0x18B, &ddr3_cmd_ctrl, &ddr3_regs,
+				&ddr3_data);
+	} else {
+		pll_init(MPUPLL_M_500, 24, DDRPLL_M_266);
+		am335x_sdram_init(0x18B, &ddr2_cmd_ctrl, &ddr2_regs,
+				&ddr2_data);
+	}
 
 	am33xx_uart0_soft_reset();
 	am33xx_enable_uart0_pin_mux();
@@ -104,11 +145,18 @@ static int beaglebone_board_init(void)
 
 void __bare_init __naked barebox_arm_reset_vector(uint32_t *data)
 {
+	unsigned sdram;
+
 	am33xx_save_bootinfo(data);
 
 	arm_cpu_lowlevel_init();
 
 	beaglebone_board_init();
 
-	barebox_arm_entry(0x80000000, SZ_256M, 0);
+	if (is_beaglebone_black())
+		sdram = SZ_512M;
+	else
+		sdram = SZ_256M;
+
+	barebox_arm_entry(0x80000000, sdram, 0);
 }
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
