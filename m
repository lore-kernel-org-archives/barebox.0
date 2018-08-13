Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fpCWo-0000K4-Br
 for barebox@lists.infradead.org; Mon, 13 Aug 2018 13:05:07 +0000
From: Roland Hieber <r.hieber@pengutronix.de>
Date: Mon, 13 Aug 2018 15:02:55 +0200
Message-Id: <20180813130300.32497-10-r.hieber@pengutronix.de>
In-Reply-To: <20180813130300.32497-1-r.hieber@pengutronix.de>
References: <20180813130300.32497-1-r.hieber@pengutronix.de>
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
Subject: [PATCH v3 09/14] ARM: MXS: make power levels configurable in
 mx2*_power_init
To: barebox@lists.infradead.org
Cc: Roland Hieber <r.hieber@pengutronix.de>

Depending on the application, board code might want to configure
different power levels and brownout thresholds. They can do so now with
an additional struct mxs_power_ctrls* parameter to mx2*_power_init.

Note that VDDMEM was not set up explicitely in mx28_power_init, but can
now be configured. However, mx28_power_default->vddmem is NULL, so the
old behaviour is still the case when using those default values.

Signed-off-by: Roland Hieber <r.hieber@pengutronix.de>
---
 arch/arm/boards/duckbill/lowlevel.c           |  2 +-
 arch/arm/boards/freescale-mx28-evk/lowlevel.c |  3 +-
 arch/arm/boards/imx233-olinuxino/lowlevel.c   |  2 +-
 arch/arm/boards/karo-tx28/lowlevel.c          |  3 +-
 arch/arm/mach-mxs/include/mach/init.h         | 22 +++++++-
 arch/arm/mach-mxs/power-init.c                | 55 ++++++++++++++++---
 6 files changed, 72 insertions(+), 15 deletions(-)

diff --git a/arch/arm/boards/duckbill/lowlevel.c b/arch/arm/boards/duckbill/lowlevel.c
index 3f8e4ad271..22987a6cdb 100644
--- a/arch/arm/boards/duckbill/lowlevel.c
+++ b/arch/arm/boards/duckbill/lowlevel.c
@@ -51,7 +51,7 @@ static noinline void duckbill_init(void)
 
 	pr_debug("initializing power...\n");
 
-	mx28_power_init(POWER_USE_5V);
+	mx28_power_init(POWER_USE_5V, &mx28_power_default);
 
 	pr_debug("initializing SDRAM...\n");
 
diff --git a/arch/arm/boards/freescale-mx28-evk/lowlevel.c b/arch/arm/boards/freescale-mx28-evk/lowlevel.c
index fdaef959a3..22cae1374c 100644
--- a/arch/arm/boards/freescale-mx28-evk/lowlevel.c
+++ b/arch/arm/boards/freescale-mx28-evk/lowlevel.c
@@ -43,7 +43,8 @@ static noinline void freescale_mx28evk_init(void)
 
 	pr_debug("initializing power...\n");
 
-	mx28_power_init(POWER_USE_BATTERY_INPUT | POWER_ENABLE_4P2);
+	mx28_power_init(POWER_USE_BATTERY_INPUT | POWER_ENABLE_4P2,
+			&mx28_power_default);
 
 	pr_debug("initializing SDRAM...\n");
 
diff --git a/arch/arm/boards/imx233-olinuxino/lowlevel.c b/arch/arm/boards/imx233-olinuxino/lowlevel.c
index c6cf26b61d..5f36c17e52 100644
--- a/arch/arm/boards/imx233-olinuxino/lowlevel.c
+++ b/arch/arm/boards/imx233-olinuxino/lowlevel.c
@@ -154,7 +154,7 @@ static noinline void imx23_olinuxino_init(void)
 
 	pr_debug("initializing power...\n");
 
-	mx23_power_init(POWER_USE_5V);
+	mx23_power_init(POWER_USE_5V, &mx23_power_default);
 
 	pr_debug("initializing SDRAM...\n");
 
diff --git a/arch/arm/boards/karo-tx28/lowlevel.c b/arch/arm/boards/karo-tx28/lowlevel.c
index a9b65167cd..1a93be747d 100644
--- a/arch/arm/boards/karo-tx28/lowlevel.c
+++ b/arch/arm/boards/karo-tx28/lowlevel.c
@@ -43,7 +43,8 @@ static noinline void karo_tx28_init(void)
 
 	pr_debug("initializing power...\n");
 
-	mx28_power_init(POWER_USE_BATTERY_INPUT | POWER_ENABLE_4P2);
+	mx28_power_init(POWER_USE_BATTERY_INPUT | POWER_ENABLE_4P2,
+			&mx28_power_default);
 
 	pr_debug("initializing SDRAM...\n");
 
diff --git a/arch/arm/mach-mxs/include/mach/init.h b/arch/arm/mach-mxs/include/mach/init.h
index aa3c68facb..53c1e05634 100644
--- a/arch/arm/mach-mxs/include/mach/init.h
+++ b/arch/arm/mach-mxs/include/mach/init.h
@@ -32,8 +32,26 @@ static inline enum mxs_power_config mxs_power_config_get_use(void) {
 }
 
 
-void mx23_power_init(const int config);
-void mx28_power_init(const int config);
+struct mxs_power_ctrl {
+	uint32_t target;	/*< target voltage */
+	uint32_t brownout;	/*< brownout threshhold */
+};
+struct mxs_power_ctrls {
+	struct mxs_power_ctrl * vdda;	/*< if non-null, set values for VDDA */
+	struct mxs_power_ctrl * vddd;	/*< if non-null, set values for VDDD */
+	struct mxs_power_ctrl * vddio;	/*< if non-null, set values for VDDIO */
+	struct mxs_power_ctrl * vddmem;	/*< if non-null, set values for VDDMEM */
+};
+
+extern struct mxs_power_ctrl mxs_vddio_default;
+extern struct mxs_power_ctrl mxs_vddd_default;
+extern struct mxs_power_ctrl mxs_vdda_default;
+extern struct mxs_power_ctrl mx23_vddmem_default;
+extern struct mxs_power_ctrls mx23_power_default;
+extern struct mxs_power_ctrls mx28_power_default;
+
+void mx23_power_init(const int config, struct mxs_power_ctrls *ctrls);
+void mx28_power_init(const int config, struct mxs_power_ctrls *ctrls);
 void mxs_power_wait_pswitch(void);
 
 extern const uint32_t mx28_dram_vals_default[190];
diff --git a/arch/arm/mach-mxs/power-init.c b/arch/arm/mach-mxs/power-init.c
index 60fa0cb022..490ea4ba2d 100644
--- a/arch/arm/mach-mxs/power-init.c
+++ b/arch/arm/mach-mxs/power-init.c
@@ -1165,6 +1165,17 @@ static void mx23_ungate_power(void)
 	writel(MX23_POWER_CTRL_CLKGATE, &power_regs->hw_power_ctrl_clr);
 }
 
+struct mxs_power_ctrl mxs_vddd_default    = { .target = 1500, .brownout = 1325 };
+struct mxs_power_ctrl mxs_vdda_default    = { .target = 1800, .brownout = 1650 };
+struct mxs_power_ctrl mxs_vddio_default   = { .target = 3300, .brownout = 3150 };
+struct mxs_power_ctrl mx23_vddmem_default = { .target = 2500, .brownout = 1700 };
+struct mxs_power_ctrls mx23_power_default = {
+	.vdda	= &mxs_vdda_default,
+	.vddd	= &mxs_vddd_default,
+	.vddio	= &mxs_vddio_default,
+	.vddmem	= &mx23_vddmem_default,
+};
+
 /**
  * mx23_power_init() - The power block init main function
  *
@@ -1172,8 +1183,9 @@ static void mx23_ungate_power(void)
  * proper sequence to start the power block.
  *
  * @config: see enum mxs_power_config for possible options
+ * @ctrls: a mxs_power_ctrls struct, or use &mx23_power_default for default values
  */
-void mx23_power_init(const int config)
+void mx23_power_init(const int config, struct mxs_power_ctrls *ctrls)
 {
 	struct mxs_power_regs *power_regs =
 		(struct mxs_power_regs *)IMX_POWER_BASE;
@@ -1210,10 +1222,18 @@ void mx23_power_init(const int config)
 
 	mxs_enable_output_rail_protection();
 
-	mxs_power_set_vddx(&mx23_vddio_cfg, 3300, 3150);
-	mxs_power_set_vddx(&mxs_vddd_cfg, 1500, 1325);
-	mxs_power_set_vddx(&mxs_vddmem_cfg, 2500, 1700);
-	mxs_power_set_vddx(&mxs_vdda_cfg, 1800, 1650);
+	if (ctrls->vddio)
+		mxs_power_set_vddx(&mx23_vddio_cfg, ctrls->vddio->target,
+				ctrls->vddio->brownout);
+	if (ctrls->vddd)
+		mxs_power_set_vddx(&mxs_vddd_cfg, ctrls->vddd->target,
+				ctrls->vddd->brownout);
+	if (ctrls->vddmem)
+		mxs_power_set_vddx(&mxs_vddmem_cfg, ctrls->vddmem->target,
+				ctrls->vddmem->brownout);
+	if (ctrls->vdda)
+		mxs_power_set_vddx(&mxs_vdda_cfg, ctrls->vdda->target,
+				ctrls->vdda->brownout);
 
 	writel(POWER_CTRL_VDDD_BO_IRQ | POWER_CTRL_VDDA_BO_IRQ |
 		POWER_CTRL_VDDIO_BO_IRQ | POWER_CTRL_VDD5V_DROOP_IRQ |
@@ -1225,6 +1245,13 @@ void mx23_power_init(const int config)
 	mxs_early_delay(1000);
 }
 
+struct mxs_power_ctrls mx28_power_default = {
+	.vdda	= &mxs_vdda_default,
+	.vddd	= &mxs_vddd_default,
+	.vddio	= &mxs_vddio_default,
+	.vddmem	= NULL,
+};
+
 /**
  * mx28_power_init() - The power block init main function
  *
@@ -1232,8 +1259,9 @@ void mx23_power_init(const int config)
  * proper sequence to start the power block.
  *
  * @config: see enum mxs_power_config for possible options
+ * @ctrls: a mxs_power_ctrls struct, or use &mx28_power_default for default values
  */
-void mx28_power_init(const int config)
+void mx28_power_init(const int config, struct mxs_power_ctrls *ctrls)
 {
 	struct mxs_power_regs *power_regs =
 		(struct mxs_power_regs *)IMX_POWER_BASE;
@@ -1265,9 +1293,18 @@ void mx28_power_init(const int config)
 
 	mxs_enable_output_rail_protection();
 
-	mxs_power_set_vddx(&mx28_vddio_cfg, 3300, 3150);
-	mxs_power_set_vddx(&mxs_vddd_cfg, 1500, 1325);
-	mxs_power_set_vddx(&mxs_vdda_cfg, 1800, 1650);
+	if (ctrls->vddio)
+		mxs_power_set_vddx(&mx28_vddio_cfg, ctrls->vddio->target,
+				ctrls->vddio->brownout);
+	if (ctrls->vddd)
+		mxs_power_set_vddx(&mxs_vddd_cfg, ctrls->vddd->target,
+				ctrls->vddd->brownout);
+	if (ctrls->vddmem)
+		mxs_power_set_vddx(&mxs_vddmem_cfg, ctrls->vddmem->target,
+				ctrls->vddmem->brownout);
+	if (ctrls->vdda)
+		mxs_power_set_vddx(&mxs_vdda_cfg, ctrls->vdda->target,
+				ctrls->vdda->brownout);
 
 	writel(POWER_CTRL_VDDD_BO_IRQ | POWER_CTRL_VDDA_BO_IRQ |
 		POWER_CTRL_VDDIO_BO_IRQ | POWER_CTRL_VDD5V_DROOP_IRQ |
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
