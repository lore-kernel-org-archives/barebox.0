Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fiJy5-00053H-Ju
 for barebox@lists.infradead.org; Wed, 25 Jul 2018 13:36:45 +0000
From: Roland Hieber <r.hieber@pengutronix.de>
Date: Wed, 25 Jul 2018 15:36:09 +0200
Message-Id: <20180725133618.1510-5-r.hieber@pengutronix.de>
In-Reply-To: <20180725133618.1510-1-r.hieber@pengutronix.de>
References: <20180725133618.1510-1-r.hieber@pengutronix.de>
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
Subject: [PATCH 04/13] ARM: MXS: allow configuration of EMI clock dividers
To: barebox@lists.infradead.org
Cc: Roland Hieber <r.hieber@pengutronix.de>

For now, the clock dividers are only accessible from mx28_mem_init, and
the old prescaler of 2 is hardcoded in mx23_mem_init. I'm not sure
if it makes sense to change it at all.

Signed-off-by: Roland Hieber <r.hieber@pengutronix.de>
---
 arch/arm/boards/duckbill/lowlevel.c           |  2 ++
 arch/arm/boards/freescale-mx28-evk/lowlevel.c |  2 ++
 arch/arm/boards/karo-tx28/lowlevel.c          |  2 ++
 arch/arm/mach-mxs/include/mach/init.h         |  6 +++---
 arch/arm/mach-mxs/mem-init.c                  | 16 ++++++++--------
 5 files changed, 17 insertions(+), 11 deletions(-)

diff --git a/arch/arm/boards/duckbill/lowlevel.c b/arch/arm/boards/duckbill/lowlevel.c
index 3adda68d77..393d4e1e12 100644
--- a/arch/arm/boards/duckbill/lowlevel.c
+++ b/arch/arm/boards/duckbill/lowlevel.c
@@ -56,6 +56,8 @@ static noinline void duckbill_init(void)
 	pr_debug("initializing SDRAM...\n");
 
 	mx28_mem_init(PINCTRL_EMI_DS_CTRL_DDR_MODE_DDR2,
+			/* EMI_CLK of 480 / 2 * (18/21) = 205.7 MHz */
+			2, 21,
 			mx28_dram_vals_default);
 
 	pr_debug("DONE\n");
diff --git a/arch/arm/boards/freescale-mx28-evk/lowlevel.c b/arch/arm/boards/freescale-mx28-evk/lowlevel.c
index 9df60210e6..196efe0346 100644
--- a/arch/arm/boards/freescale-mx28-evk/lowlevel.c
+++ b/arch/arm/boards/freescale-mx28-evk/lowlevel.c
@@ -48,6 +48,8 @@ static noinline void freescale_mx28evk_init(void)
 	pr_debug("initializing SDRAM...\n");
 
 	mx28_mem_init(PINCTRL_EMI_DS_CTRL_DDR_MODE_DDR2,
+			/* EMI_CLK of 480 / 2 * (18/21) = 205.7 MHz */
+			2, 21,
 			mx28_dram_vals_default);
 
 	pr_debug("DONE\n");
diff --git a/arch/arm/boards/karo-tx28/lowlevel.c b/arch/arm/boards/karo-tx28/lowlevel.c
index 99f8a562cc..c01c760109 100644
--- a/arch/arm/boards/karo-tx28/lowlevel.c
+++ b/arch/arm/boards/karo-tx28/lowlevel.c
@@ -48,6 +48,8 @@ static noinline void karo_tx28_init(void)
 	pr_debug("initializing SDRAM...\n");
 
 	mx28_mem_init(PINCTRL_EMI_DS_CTRL_DDR_MODE_DDR2,
+			/* EMI_CLK of 480 / 2 * (18/21) = 205.7 MHz */
+			2, 21,
 			mx28_dram_vals_default);
 
 	pr_debug("DONE\n");
diff --git a/arch/arm/mach-mxs/include/mach/init.h b/arch/arm/mach-mxs/include/mach/init.h
index 7021981d41..4b826363f1 100644
--- a/arch/arm/mach-mxs/include/mach/init.h
+++ b/arch/arm/mach-mxs/include/mach/init.h
@@ -26,11 +26,11 @@ extern uint32_t mx23_dram_vals[];
 #define PINCTRL_EMI_DS_CTRL_DDR_MODE_DDR2	(0b11 << 16)
 
 void mx23_mem_init(void);
-void mx28_mem_init(const int emi_ds_ctrl_ddr_mode,
-		const uint32_t dram_vals[190]);
+void mx28_mem_init(const int emi_ds_ctrl_ddr_mode, const uint8_t clk_emi_div,
+		const uint8_t clk_emi_frac_div, const uint32_t dram_vals[190]);
 void mxs_mem_setup_cpu_and_hbus(void);
 void mxs_mem_setup_vdda(void);
-void mxs_mem_init_clock(unsigned char divider);
+void mxs_mem_init_clock(const uint8_t clk_emi_div, const uint8_t clk_emi_frac);
 
 void mxs_lradc_init(void);
 void mxs_lradc_enable_batt_measurement(void);
diff --git a/arch/arm/mach-mxs/mem-init.c b/arch/arm/mach-mxs/mem-init.c
index 7bc6be00b4..585c3173f5 100644
--- a/arch/arm/mach-mxs/mem-init.c
+++ b/arch/arm/mach-mxs/mem-init.c
@@ -192,7 +192,7 @@ static void mx23_initialize_dram_values(void)
 	writel((1 << 24), IMX_SDRAMC_BASE + (4 * 8));
 }
 
-void mxs_mem_init_clock(unsigned char divider)
+void mxs_mem_init_clock(const uint8_t clk_emi_div, const uint8_t clk_emi_frac)
 {
 	struct mxs_clkctrl_regs *clkctrl_regs =
 		(struct mxs_clkctrl_regs *)IMX_CCM_BASE;
@@ -202,7 +202,7 @@ void mxs_mem_init_clock(unsigned char divider)
 		&clkctrl_regs->hw_clkctrl_frac0_set[CLKCTRL_FRAC0_EMI]);
 
 	/* Set fractional divider for ref_emi */
-	writeb(CLKCTRL_FRAC_CLKGATE | (divider & CLKCTRL_FRAC_FRAC_MASK),
+	writeb(CLKCTRL_FRAC_CLKGATE | (clk_emi_frac & CLKCTRL_FRAC_FRAC_MASK),
 		&clkctrl_regs->hw_clkctrl_frac0[CLKCTRL_FRAC0_EMI]);
 
 	/* Ungate EMI clock */
@@ -211,8 +211,8 @@ void mxs_mem_init_clock(unsigned char divider)
 
 	mxs_early_delay(11000);
 
-	/* Set EMI clock divider for EMI clock to 411 / 2 = 205MHz */
-	writel((2 << CLKCTRL_EMI_DIV_EMI_OFFSET) |
+	/* Set EMI clock divider for EMI clock */
+	writel(((clk_emi_div & CLKCTRL_EMI_DIV_EMI_MASK) << CLKCTRL_EMI_DIV_EMI_OFFSET) |
 		(1 << CLKCTRL_EMI_DIV_XTAL_OFFSET),
 		&clkctrl_regs->hw_clkctrl_emi);
 
@@ -274,7 +274,7 @@ void mx23_mem_init(void)
 	mxs_early_delay(11000);
 
 	/* Fractional divider for ref_emi is 33 ; 480 * 18 / 33 = 266MHz */
-	mxs_mem_init_clock(33);
+	mxs_mem_init_clock(2, 33);
 
 	/*
 	 * Reset/ungate the EMI block. This is essential, otherwise the system
@@ -318,12 +318,12 @@ void mx23_mem_init(void)
 	mxs_mem_setup_cpu_and_hbus();
 }
 
-void mx28_mem_init(const int emi_ds_ctrl_ddr_mode, const uint32_t dram_vals[190])
+void mx28_mem_init(const int emi_ds_ctrl_ddr_mode, const uint8_t clk_emi_div,
+		const uint8_t clk_emi_frac_div, const uint32_t dram_vals[190])
 {
 	mxs_early_delay(11000);
 
-	/* Fractional divider for ref_emi is 21 ; 480 * 18 / 21 = 411MHz */
-	mxs_mem_init_clock(21);
+	mxs_mem_init_clock(clk_emi_div, clk_emi_frac_div);
 
 	/* Set DDR mode */
 	writel(emi_ds_ctrl_ddr_mode, IMX_IOMUXC_BASE + 0x1b80);
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
