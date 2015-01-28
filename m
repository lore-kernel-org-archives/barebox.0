Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YGN7D-0000FF-3O
 for barebox@lists.infradead.org; Wed, 28 Jan 2015 07:32:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 Jan 2015 08:32:16 +0100
Message-Id: <1422430339-11969-13-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1422430339-11969-1-git-send-email-s.hauer@pengutronix.de>
References: <1422430339-11969-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/15] ARM: MXS: Setup vdda in power prep
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-mxs/mem-init.c   | 15 ---------------
 arch/arm/mach-mxs/power-init.c | 15 +++++++++++++++
 2 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/arch/arm/mach-mxs/mem-init.c b/arch/arm/mach-mxs/mem-init.c
index 9773f94..43165ac 100644
--- a/arch/arm/mach-mxs/mem-init.c
+++ b/arch/arm/mach-mxs/mem-init.c
@@ -255,17 +255,6 @@ void mxs_mem_setup_cpu_and_hbus(void)
 	mxs_early_delay(15000);
 }
 
-void mxs_mem_setup_vdda(void)
-{
-	struct mxs_power_regs *power_regs =
-		(struct mxs_power_regs *)IMX_POWER_BASE;
-
-	writel((0xc << POWER_VDDACTRL_TRG_OFFSET) |
-		(0x7 << POWER_VDDACTRL_BO_OFFSET_OFFSET) |
-		POWER_VDDACTRL_LINREG_OFFSET_1STEPS_BELOW,
-		&power_regs->hw_power_vddactrl);
-}
-
 static void mx23_mem_setup_vddmem(void)
 {
 	struct mxs_power_regs *power_regs =
@@ -287,8 +276,6 @@ void mx23_mem_init(void)
 	/* Fractional divider for ref_emi is 33 ; 480 * 18 / 33 = 266MHz */
 	mxs_mem_init_clock(33);
 
-	mxs_mem_setup_vdda();
-
 	/*
 	 * Reset/ungate the EMI block. This is essential, otherwise the system
 	 * suffers from memory instability. This thing is mx23 specific and is
@@ -340,8 +327,6 @@ void mx28_mem_init(void)
 	/* Fractional divider for ref_emi is 21 ; 480 * 18 / 21 = 411MHz */
 	mxs_mem_init_clock(21);
 
-	mxs_mem_setup_vdda();
-
 	/* Set DDR2 mode */
 	writel(PINCTRL_EMI_DS_CTRL_DDR_MODE_DDR2,
 			IMX_IOMUXC_BASE + 0x1b80);
diff --git a/arch/arm/mach-mxs/power-init.c b/arch/arm/mach-mxs/power-init.c
index 366b3f2..407b776 100644
--- a/arch/arm/mach-mxs/power-init.c
+++ b/arch/arm/mach-mxs/power-init.c
@@ -993,6 +993,19 @@ static const struct mxs_vddx_cfg mxs_vddmem_cfg = {
 	.bo_offset_offset	= 0,
 };
 
+static const struct mxs_vddx_cfg mxs_vdda_cfg = {
+	.reg			= &(((struct mxs_power_regs *)IMX_POWER_BASE)->
+					hw_power_vddactrl),
+	.step_mV		= 25,
+	.lowest_mV		= 1500,
+	.powered_by_linreg	= NULL,
+	.trg_mask		= POWER_VDDACTRL_TRG_MASK,
+	.bo_irq			= POWER_CTRL_VDDA_BO_IRQ,
+	.bo_enirq		= POWER_CTRL_ENIRQ_VDDA_BO,
+	.bo_offset_mask		= POWER_VDDACTRL_BO_OFFSET_MASK,
+	.bo_offset_offset	= POWER_VDDACTRL_BO_OFFSET_OFFSET,
+};
+
 /**
  * mxs_power_set_vddx() - Configure voltage on DC-DC converter rail
  * @cfg:		Configuration data of the DC-DC converter rail
@@ -1151,6 +1164,7 @@ static void __mx23_power_init(int has_battery)
 	mxs_power_set_vddx(&mx23_vddio_cfg, 3300, 3150);
 	mxs_power_set_vddx(&mxs_vddd_cfg, 1500, 1325);
 	mxs_power_set_vddx(&mxs_vddmem_cfg, 2500, 1700);
+	mxs_power_set_vddx(&mxs_vdda_cfg, 1800, 1650);
 
 	writel(POWER_CTRL_VDDD_BO_IRQ | POWER_CTRL_VDDA_BO_IRQ |
 		POWER_CTRL_VDDIO_BO_IRQ | POWER_CTRL_VDD5V_DROOP_IRQ |
@@ -1207,6 +1221,7 @@ static void __mx28_power_init(int has_battery)
 
 	mxs_power_set_vddx(&mx28_vddio_cfg, 3300, 3150);
 	mxs_power_set_vddx(&mxs_vddd_cfg, 1500, 1325);
+	mxs_power_set_vddx(&mxs_vdda_cfg, 1800, 1650);
 
 	writel(POWER_CTRL_VDDD_BO_IRQ | POWER_CTRL_VDDA_BO_IRQ |
 		POWER_CTRL_VDDIO_BO_IRQ | POWER_CTRL_VDD5V_DROOP_IRQ |
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
