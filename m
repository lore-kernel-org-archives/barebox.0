Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XDCtz-0007YS-2H
 for barebox@lists.infradead.org; Fri, 01 Aug 2014 13:29:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Aug 2014 15:29:11 +0200
Message-Id: <1406899755-8288-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1406899755-8288-1-git-send-email-s.hauer@pengutronix.de>
References: <1406899755-8288-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/7] ARM: phyCORE-am335x: Add support for more SDRAM
 configurations
To: barebox@lists.infradead.org

This adds support for 256MB and 128MB RAM configurations of the
phyCORE-AM335x. This is done as new images.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/phytec-phycore-am335x/lowlevel.c | 109 ++++++++++++++++++-----
 images/Makefile.am33xx                           |  14 ++-
 2 files changed, 100 insertions(+), 23 deletions(-)

diff --git a/arch/arm/boards/phytec-phycore-am335x/lowlevel.c b/arch/arm/boards/phytec-phycore-am335x/lowlevel.c
index 200cf57..ff1f04e 100644
--- a/arch/arm/boards/phytec-phycore-am335x/lowlevel.c
+++ b/arch/arm/boards/phytec-phycore-am335x/lowlevel.c
@@ -15,7 +15,7 @@
 #include <mach/wdt.h>
 #include <debug_ll.h>
 
-static const struct am33xx_cmd_control MT41J256M16HA15EIT_1x512MB_cmd = {
+static const struct am33xx_cmd_control pcm051_cmd = {
 	.slave_ratio0 = 0x40,
 	.dll_lock_diff0 = 0x0,
 	.invert_clkout0 = 0x1,
@@ -27,21 +27,74 @@ static const struct am33xx_cmd_control MT41J256M16HA15EIT_1x512MB_cmd = {
 	.invert_clkout2 = 0x1,
 };
 
-static const struct am33xx_emif_regs MT41J256M16HA15EIT_1x512MB_regs = {
-	.emif_read_latency	= 0x6,
-	.emif_tim1		= 0x0888A39B,
-	.emif_tim2		= 0x26517FDA,
-	.emif_tim3		= 0x501F84EF,
-	.sdram_config		= 0x61C04B32,
-	.zq_config		= 0x50074BE4,
-	.sdram_ref_ctrl		= 0x0000093B,
+struct pcm051_sdram_timings {
+	struct am33xx_emif_regs regs;
+	struct am33xx_ddr_data data;
 };
 
-static const struct am33xx_ddr_data MT41J256M16HA15EIT_1x512MB_data = {
-	.rd_slave_ratio0	= 0x3B,
-	.wr_dqs_slave_ratio0	= 0x3B,
-	.fifo_we_slave_ratio0	= 0x96,
-	.wr_slave_ratio0	= 0x76,
+enum {
+	MT41J128M16125IT_1x256M16,
+	MT41J64M1615IT_1x128M16,
+	MT41J256M16HA15EIT_1x512M16,
+};
+
+struct pcm051_sdram_timings timings[] = {
+	/* 1x256M16 */
+	[MT41J128M16125IT_1x256M16] = {
+		.regs = {
+			.emif_read_latency	= 0x6,
+			.emif_tim1		= 0x0888A39B,
+			.emif_tim2		= 0x26337FDA,
+			.emif_tim3		= 0x501F830F,
+			.sdram_config		= 0x61C04AB2,
+			.zq_config		= 0x50074BE4,
+			.sdram_ref_ctrl		= 0x0000093B,
+		},
+		.data = {
+			.rd_slave_ratio0	= 0x3B,
+			.wr_dqs_slave_ratio0	= 0x3B,
+			.fifo_we_slave_ratio0	= 0x97,
+			.wr_slave_ratio0	= 0x76,
+		},
+	},
+
+	/* 1x128M16 */
+	[MT41J64M1615IT_1x128M16] = {
+		.regs =  {
+			.emif_read_latency	= 0x6,
+			.emif_tim1		= 0x0888A39B,
+			.emif_tim2		= 0x26247FDA,
+			.emif_tim3		= 0x501F821F,
+			.sdram_config		= 0x61C04A32,
+			.zq_config		= 0x50074BE4,
+			.sdram_ref_ctrl		= 0x0000093B,
+		},
+		.data = {
+			.rd_slave_ratio0	= 0x3A,
+			.wr_dqs_slave_ratio0	= 0x36,
+			.fifo_we_slave_ratio0	= 0xA2,
+			.wr_slave_ratio0	= 0x74,
+		},
+	},
+
+	/* 1x512MB */
+	[MT41J256M16HA15EIT_1x512M16] = {
+		.regs = {
+			.emif_read_latency	= 0x6,
+			.emif_tim1		= 0x0888A39B,
+			.emif_tim2		= 0x26517FDA,
+			.emif_tim3		= 0x501F84EF,
+			.sdram_config		= 0x61C04B32,
+			.zq_config		= 0x50074BE4,
+			.sdram_ref_ctrl		= 0x0000093B,
+		},
+		.data = {
+			.rd_slave_ratio0	= 0x3B,
+			.wr_dqs_slave_ratio0	= 0x3B,
+			.fifo_we_slave_ratio0	= 0x96,
+			.wr_slave_ratio0	= 0x76,
+		},
+	},
 };
 
 extern char __dtb_am335x_phytec_phycore_start[];
@@ -55,9 +108,10 @@ extern char __dtb_am335x_phytec_phycore_start[];
  *
  * @return void
  */
-static noinline void pcm051_board_init(void)
+static noinline void pcm051_board_init(int sdram)
 {
 	void *fdt;
+	struct pcm051_sdram_timings *timing = &timings[sdram];
 
 	/* WDT1 is already running when the bootloader gets control
 	 * Disable it to avoid "random" resets
@@ -70,9 +124,9 @@ static noinline void pcm051_board_init(void)
 
 	am33xx_pll_init(MPUPLL_M_600, 25, DDRPLL_M_303);
 
-	am335x_sdram_init(0x18B, &MT41J256M16HA15EIT_1x512MB_cmd,
-			&MT41J256M16HA15EIT_1x512MB_regs,
-			&MT41J256M16HA15EIT_1x512MB_data);
+	am335x_sdram_init(0x18B, &pcm051_cmd,
+			&timing->regs,
+			&timing->data);
 
 	am33xx_uart_soft_reset((void *)AM33XX_UART0_BASE);
 	am33xx_enable_uart0_pin_mux();
@@ -84,7 +138,7 @@ static noinline void pcm051_board_init(void)
 	am335x_barebox_entry(fdt);
 }
 
-ENTRY_FUNCTION(start_am33xx_phytec_phycore_sram, bootinfo, r1, r2)
+static noinline void pcm051_board_entry(unsigned long bootinfo, int sdram)
 {
 	am33xx_save_bootinfo((void *)bootinfo);
 
@@ -97,7 +151,22 @@ ENTRY_FUNCTION(start_am33xx_phytec_phycore_sram, bootinfo, r1, r2)
 	relocate_to_current_adr();
 	setup_c();
 
-	pcm051_board_init();
+	pcm051_board_init(sdram);
+}
+
+ENTRY_FUNCTION(start_am33xx_phytec_phycore_sram_1x256m16, bootinfo, r1, r2)
+{
+	pcm051_board_entry(bootinfo, MT41J128M16125IT_1x256M16);
+}
+
+ENTRY_FUNCTION(start_am33xx_phytec_phycore_sram_1x128m16, bootinfo, r1, r2)
+{
+	pcm051_board_entry(bootinfo, MT41J64M1615IT_1x128M16);
+}
+
+ENTRY_FUNCTION(start_am33xx_phytec_phycore_sram_1x512m16, bootinfo, r1, r2)
+{
+	pcm051_board_entry(bootinfo, MT41J256M16HA15EIT_1x512M16);
 }
 
 ENTRY_FUNCTION(start_am33xx_phytec_phycore_sdram, r0, r1, r2)
diff --git a/images/Makefile.am33xx b/images/Makefile.am33xx
index dacc2d1..fa1f848 100644
--- a/images/Makefile.am33xx
+++ b/images/Makefile.am33xx
@@ -11,9 +11,17 @@ pblx-$(CONFIG_MACH_PCM051) += start_am33xx_phytec_phycore_sdram
 FILE_barebox-am33xx-phytec-phycore.img = start_am33xx_phytec_phycore_sdram.pblx
 am33xx-barebox-$(CONFIG_MACH_PCM051) += barebox-am33xx-phytec-phycore.img
 
-pblx-$(CONFIG_MACH_PCM051) += start_am33xx_phytec_phycore_sram
-FILE_barebox-am33xx-phytec-phycore-mlo.img = start_am33xx_phytec_phycore_sram.pblx.mlo
-am33xx-mlo-$(CONFIG_MACH_PCM051) += barebox-am33xx-phytec-phycore-mlo.img
+pblx-$(CONFIG_MACH_PCM051) += start_am33xx_phytec_phycore_sram_1x256m16
+FILE_barebox-am33xx-phytec-phycore-mlo-1x256m16.img = start_am33xx_phytec_phycore_sram_1x256m16.pblx.mlo
+am33xx-mlo-$(CONFIG_MACH_PCM051) += barebox-am33xx-phytec-phycore-mlo-1x256m16.img
+
+pblx-$(CONFIG_MACH_PCM051) += start_am33xx_phytec_phycore_sram_1x128m16
+FILE_barebox-am33xx-phytec-phycore-mlo-1x128m16.img = start_am33xx_phytec_phycore_sram_1x128m16.pblx.mlo
+am33xx-mlo-$(CONFIG_MACH_PCM051) += barebox-am33xx-phytec-phycore-mlo-1x128m16.img
+
+pblx-$(CONFIG_MACH_PCM051) += start_am33xx_phytec_phycore_sram_1x512m16
+FILE_barebox-am33xx-phytec-phycore-mlo-1x512m16.img = start_am33xx_phytec_phycore_sram_1x512m16.pblx.mlo
+am33xx-mlo-$(CONFIG_MACH_PCM051) += barebox-am33xx-phytec-phycore-mlo-1x512m16.img
 
 pblx-$(CONFIG_MACH_BEAGLEBONE) += start_am33xx_beaglebone_sdram
 FILE_barebox-am33xx-beaglebone.img = start_am33xx_beaglebone_sdram.pblx
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
