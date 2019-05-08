Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOITu-0005qu-Nr
 for barebox@lists.infradead.org; Wed, 08 May 2019 09:03:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  8 May 2019 11:03:01 +0200
Message-Id: <20190508090307.17729-5-s.hauer@pengutronix.de>
In-Reply-To: <20190508090307.17729-1-s.hauer@pengutronix.de>
References: <20190508090307.17729-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/10] ARM: Layerscape: TQMLS1046a: Use static DDR settings
To: Barebox List <barebox@lists.infradead.org>

TQ prefers static values in their U-Boot, so use these values in
barebox aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/tqmls1046a/lowlevel.c | 82 ++++++++++++++++++++++-----
 1 file changed, 68 insertions(+), 14 deletions(-)

diff --git a/arch/arm/boards/tqmls1046a/lowlevel.c b/arch/arm/boards/tqmls1046a/lowlevel.c
index fb3a3f3591..88744a8f9b 100644
--- a/arch/arm/boards/tqmls1046a/lowlevel.c
+++ b/arch/arm/boards/tqmls1046a/lowlevel.c
@@ -169,37 +169,91 @@ static struct fsl_ddr_controller ddrc[] = {
 		.erratum_A009942 = 1,
 		.chip_selects_per_ctrl = 4,
 		.board_options = ddr_board_options,
+		.fsl_ddr_config_reg = {
+	.cs[0].bnds         = 0x0000007F,
+	.cs[0].config       = 0x80010312,
+	.cs[0].config_2     = 0x00000000,
+	.cs[1].bnds         = 0x00000000,
+	.cs[1].config       = 0x00000000,
+	.cs[1].config_2     = 0x00000000,
+	.cs[2].bnds         = 0x00000000,
+	.cs[2].config       = 0x00000000,
+	.cs[2].config_2     = 0x00000000,
+	.cs[3].bnds         = 0x00000000,
+	.cs[3].config       = 0x00000000,
+	.cs[3].config_2     = 0x00000000,
+	.timing_cfg_3       = 0x020F1100,
+	.timing_cfg_0       = 0x77660008,
+	.timing_cfg_1       = 0xF1FCC265,
+	.timing_cfg_2       = 0x0059415E,
+	.ddr_sdram_cfg      = 0x65000000,
+	.ddr_sdram_cfg_2    = 0x00401150,
+	.ddr_sdram_cfg_3    = 0x00000000,
+	.ddr_sdram_mode     = 0x03010625,
+	.ddr_sdram_mode_2   = 0x00100200,
+	.ddr_sdram_mode_3   = 0x00010625,
+	.ddr_sdram_mode_4   = 0x00100200,
+	.ddr_sdram_mode_5   = 0x00010625,
+	.ddr_sdram_mode_6   = 0x00100200,
+	.ddr_sdram_mode_7   = 0x00010625,
+	.ddr_sdram_mode_8   = 0x00100200,
+	.ddr_sdram_mode_9   = 0x00000500,
+	.ddr_sdram_mode_10  = 0x04400000,
+	.ddr_sdram_mode_11  = 0x00000400,
+	.ddr_sdram_mode_12  = 0x04400000,
+	.ddr_sdram_mode_13  = 0x00000400,
+	.ddr_sdram_mode_14  = 0x04400000,
+	.ddr_sdram_mode_15  = 0x00000400,
+	.ddr_sdram_mode_16  = 0x04400000,
+	.ddr_sdram_interval = 0x0F3C0000,
+	.ddr_data_init      = 0xDEADBEEF,
+	.ddr_sdram_clk_cntl = 0x02000000,
+	.ddr_init_addr      = 0x00000000,
+	.ddr_init_ext_addr  = 0x00000000,
+	.timing_cfg_4       = 0x00224002,
+	.timing_cfg_5       = 0x04401400,
+	.timing_cfg_6       = 0x00000000,
+	.timing_cfg_7       = 0x25500000,
+	.timing_cfg_8       = 0x03335A00,
+	.timing_cfg_9       = 0x00000000,
+	.ddr_zq_cntl        = 0x8A090705,
+	.ddr_wrlvl_cntl     = 0x86550609,
+	.ddr_wrlvl_cntl_2   = 0x09080806,
+	.ddr_wrlvl_cntl_3   = 0x06040409,
+	.ddr_sr_cntr        = 0x00000000,
+	.ddr_sdram_rcw_1    = 0x00000000,
+	.ddr_sdram_rcw_2    = 0x00000000,
+	.ddr_sdram_rcw_3    = 0x00000000,
+	.ddr_cdr1           = 0x80080000,
+	.ddr_cdr2           = 0x000000C0,
+	.dq_map_0           = 0x00000000,
+	.dq_map_1           = 0x00000000,
+	.dq_map_2           = 0x00000000,
+	.dq_map_3           = 0x00000000,
+	.debug[28]          = 0x00700046,
+		},
 	},
 };
 
-static struct fsl_ddr_info ls1046a_info = {
-	.num_ctrls = ARRAY_SIZE(ddrc),
-	.c = ddrc,
-};
-
 extern char __dtb_fsl_tqmls1046a_mbls10xxa_start[];
 
-static noinline __noreturn void tqmls1046a_r_entry(unsigned long memsize)
+static noinline __noreturn void tqmls1046a_r_entry(void)
 {
 	unsigned long membase = LS1046A_DDR_SDRAM_BASE;
 
-	if (get_pc() >= membase) {
-		if (memsize + membase >= 0x100000000)
-			memsize = 0x100000000 - membase;
-
+	if (get_pc() >= membase)
 		barebox_arm_entry(membase, 0x80000000,
 				  __dtb_fsl_tqmls1046a_mbls10xxa_start);
-	}
 
 	arm_cpu_lowlevel_init();
 	debug_ll_init();
 	ls1046a_init_lowlevel();
 
-	memsize = fsl_ddr_sdram(&ls1046a_info);
+	fsl_ddr_set_memctl_regs(&ddrc[0], 0);
 
 	ls1046a_errata_post_ddr();
 
-	ls1046a_esdhc_start_image(memsize, 0, 0);
+	ls1046a_esdhc_start_image(0, 0, 0);
 
 	pr_err("Booting failed\n");
 
@@ -213,5 +267,5 @@ __noreturn void tqmls1046a_entry(unsigned long r0, unsigned long r1, unsigned lo
 	relocate_to_current_adr();
 	setup_c();
 
-	tqmls1046a_r_entry(r0);
+	tqmls1046a_r_entry();
 }
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
