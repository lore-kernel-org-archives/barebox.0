Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T1BB8-0007Gy-Uq
 for barebox@lists.infradead.org; Tue, 14 Aug 2012 07:04:42 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 5C3E4BF0EB
 for <barebox@lists.infradead.org>; Tue, 14 Aug 2012 09:04:34 +0200 (CEST)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Tue, 14 Aug 2012 09:04:33 +0200
Message-Id: <1344927873-19506-4-git-send-email-j.weitzel@phytec.de>
In-Reply-To: <1344927873-19506-1-git-send-email-j.weitzel@phytec.de>
References: <1344927873-19506-1-git-send-email-j.weitzel@phytec.de>
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
Subject: [PATCH 3/3] OMAP4460: clock init
To: barebox@lists.infradead.org

Change clock init to allow early gpio access. Add support for 4460 clocks.

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 arch/arm/boards/panda/mux.c                   |    8 +++++
 arch/arm/boards/pcm049/lowlevel.c             |   11 +++++--
 arch/arm/boards/pcm049/mux.c                  |    8 +++++
 arch/arm/boards/phycard-a-xl2/lowlevel.c      |    9 ++++-
 arch/arm/boards/phycard-a-xl2/mux.c           |    8 +++++
 arch/arm/mach-omap/include/mach/omap4-clock.h |    4 ++
 arch/arm/mach-omap/omap4_clock.c              |   39 +++++++++++++++++-------
 7 files changed, 70 insertions(+), 17 deletions(-)

diff --git a/arch/arm/boards/panda/mux.c b/arch/arm/boards/panda/mux.c
index 310e433..3783006 100644
--- a/arch/arm/boards/panda/mux.c
+++ b/arch/arm/boards/panda/mux.c
@@ -3,6 +3,7 @@
 #include <io.h>
 #include <mach/omap4-silicon.h>
 #include <mach/omap4-mux.h>
+#include <mach/omap4-clock.h>
 
 static const struct pad_conf_entry core_padconf_array[] = {
 	{ GPMC_AD0, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M1  /* sdmmc2_dat0 */ },
@@ -245,4 +246,11 @@ void set_muxconf_regs(void)
 
 	omap4_do_set_mux(OMAP44XX_CONTROL_PADCONF_WKUP, wkup_padconf_array,
 			ARRAY_SIZE(wkup_padconf_array));
+
+	/* gpio_wk7 is used for controlling TPS on 4460 */
+	if (omap4_revision() >= OMAP4460_ES1_0) {
+		writew(M3, OMAP44XX_CONTROL_PADCONF_WKUP + PAD1_FREF_CLK4_REQ);
+		/* Enable GPIO-1 clocks before TPS initialization */
+		omap4_enable_gpio1_wup_clocks();
+	}
 }
diff --git a/arch/arm/boards/pcm049/lowlevel.c b/arch/arm/boards/pcm049/lowlevel.c
index 5e591fa..65a29ec 100644
--- a/arch/arm/boards/pcm049/lowlevel.c
+++ b/arch/arm/boards/pcm049/lowlevel.c
@@ -48,7 +48,8 @@ static const struct ddr_regs ddr_regs_mt42L64M64_25_400_mhz = {
 static void noinline pcm049_init_lowlevel(void)
 {
 	struct dpll_param core = OMAP4_CORE_DPLL_PARAM_19M2_DDR400;
-	struct dpll_param mpu = OMAP4_MPU_DPLL_PARAM_19M2_MPU1000;
+	struct dpll_param mpu44xx = OMAP4_MPU_DPLL_PARAM_19M2_MPU1000;
+	struct dpll_param mpu4460 = OMAP4_MPU_DPLL_PARAM_19M2_MPU920;
 	struct dpll_param iva = OMAP4_IVA_DPLL_PARAM_19M2;
 	struct dpll_param per = OMAP4_PER_DPLL_PARAM_19M2;
 	struct dpll_param abe = OMAP4_ABE_DPLL_PARAM_19M2;
@@ -64,7 +65,11 @@ static void noinline pcm049_init_lowlevel(void)
 	writel(CM_SYS_CLKSEL_19M2, CM_SYS_CLKSEL);
 
 	/* Configure all DPLL's at 100% OPP */
-	omap4_configure_mpu_dpll(&mpu);
+	if (omap4_revision() < OMAP4460_ES1_0)
+		omap4_configure_mpu_dpll(&mpu44xx);
+	else
+		omap4_configure_mpu_dpll(&mpu4460);
+
 	omap4_configure_iva_dpll(&iva);
 	omap4_configure_per_dpll(&per);
 	omap4_configure_abe_dpll(&abe);
@@ -90,7 +95,7 @@ void board_init_lowlevel(void)
 		return;
 
 	r = 0x4030d000;
-        __asm__ __volatile__("mov sp, %0" : : "r"(r));
+	__asm__ __volatile__("mov sp, %0" : : "r"(r));
 
 	pcm049_init_lowlevel();
 }
diff --git a/arch/arm/boards/pcm049/mux.c b/arch/arm/boards/pcm049/mux.c
index a7a77b5..04e1d67 100644
--- a/arch/arm/boards/pcm049/mux.c
+++ b/arch/arm/boards/pcm049/mux.c
@@ -3,6 +3,7 @@
 #include <io.h>
 #include <mach/omap4-silicon.h>
 #include <mach/omap4-mux.h>
+#include <mach/omap4-clock.h>
 
 static const struct pad_conf_entry core_padconf_array[] = {
 	{GPMC_AD0, (IEN | PTD | DIS | M0)},				/* gpmc_ad0 */
@@ -242,4 +243,11 @@ void set_muxconf_regs(void)
 
 	omap4_do_set_mux(OMAP44XX_CONTROL_PADCONF_WKUP, wkup_padconf_array,
 			ARRAY_SIZE(wkup_padconf_array));
+
+	/* gpio_182 is used for controlling TPS on 4460 */
+	if (omap4_revision() >= OMAP4460_ES1_0) {
+		writew(M3, OMAP44XX_CONTROL_PADCONF_CORE + FREF_CLK2_OUT);
+		/* Enable GPIO-1 clocks before TPS initialization */
+		omap4_enable_gpio_clocks();
+	}
 }
diff --git a/arch/arm/boards/phycard-a-xl2/lowlevel.c b/arch/arm/boards/phycard-a-xl2/lowlevel.c
index 2aa79a8..38f80c9 100644
--- a/arch/arm/boards/phycard-a-xl2/lowlevel.c
+++ b/arch/arm/boards/phycard-a-xl2/lowlevel.c
@@ -48,7 +48,8 @@ static const struct ddr_regs ddr_regs_mt42L64M64_25_400_mhz = {
 static noinline void pcaaxl2_init_lowlevel(void)
 {
 	struct dpll_param core = OMAP4_CORE_DPLL_PARAM_19M2_DDR400;
-	struct dpll_param mpu = OMAP4_MPU_DPLL_PARAM_19M2_MPU1000;
+	struct dpll_param mpu44xx = OMAP4_MPU_DPLL_PARAM_19M2_MPU1000;
+	struct dpll_param mpu4460 = OMAP4_MPU_DPLL_PARAM_19M2_MPU920;
 	struct dpll_param iva = OMAP4_IVA_DPLL_PARAM_19M2;
 	struct dpll_param per = OMAP4_PER_DPLL_PARAM_19M2;
 	struct dpll_param abe = OMAP4_ABE_DPLL_PARAM_19M2;
@@ -64,7 +65,11 @@ static noinline void pcaaxl2_init_lowlevel(void)
 	writel(CM_SYS_CLKSEL_19M2, CM_SYS_CLKSEL);
 
 	/* Configure all DPLL's at 100% OPP */
-	omap4_configure_mpu_dpll(&mpu);
+	if (omap4_revision() < OMAP4460_ES1_0)
+		omap4_configure_mpu_dpll(&mpu44xx);
+	else
+		omap4_configure_mpu_dpll(&mpu4460);
+
 	omap4_configure_iva_dpll(&iva);
 	omap4_configure_per_dpll(&per);
 	omap4_configure_abe_dpll(&abe);
diff --git a/arch/arm/boards/phycard-a-xl2/mux.c b/arch/arm/boards/phycard-a-xl2/mux.c
index 179e6b6..dc605e3 100644
--- a/arch/arm/boards/phycard-a-xl2/mux.c
+++ b/arch/arm/boards/phycard-a-xl2/mux.c
@@ -3,6 +3,7 @@
 #include <io.h>
 #include <mach/omap4-silicon.h>
 #include <mach/omap4-mux.h>
+#include <mach/omap4-clock.h>
 
 static const struct pad_conf_entry core_padconf_array[] = {
 	{GPMC_AD0, (IEN | PTD | DIS | M0)},				/* gpmc_ad0 */
@@ -242,4 +243,11 @@ void set_muxconf_regs(void)
 
 	omap4_do_set_mux(OMAP44XX_CONTROL_PADCONF_WKUP, wkup_padconf_array,
 			ARRAY_SIZE(wkup_padconf_array));
+
+	/* gpio_wk7 is used for controlling TPS on 4460 */
+	if (omap4_revision() >= OMAP4460_ES1_0) {
+		writew(M3, OMAP44XX_CONTROL_PADCONF_WKUP + PAD1_FREF_CLK4_REQ);
+		/* Enable GPIO-1 clocks before TPS initialization */
+		omap4_enable_gpio1_wup_clocks();
+	}
 }
diff --git a/arch/arm/mach-omap/include/mach/omap4-clock.h b/arch/arm/mach-omap/include/mach/omap4-clock.h
index 391ee63..e5302d6 100644
--- a/arch/arm/mach-omap/include/mach/omap4-clock.h
+++ b/arch/arm/mach-omap/include/mach/omap4-clock.h
@@ -303,6 +303,8 @@ struct dpll_param {
 #define OMAP4_MPU_DPLL_PARAM_38M4		{0x1a, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00}
 #define OMAP4_MPU_DPLL_PARAM_38M4_MPU600	{0x7d, 0x07, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00}
 #define OMAP4_MPU_DPLL_PARAM_38M4_MPU1000	{0x69, 0x03, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00}
+/* dpll locked at 1840 MHz MPU clk at 920 MHz(OPP Turbo 4460) - DCC OFF */
+#define OMAP4_MPU_DPLL_PARAM_19M2_MPU920	{0x23F, 0x11, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00}
 
 #define OMAP4_IVA_DPLL_PARAM_19M2		{0x61, 0x01, 0x00, 0x00, 0x04, 0x07, 0x00, 0x00}
 #define OMAP4_IVA_DPLL_PARAM_38M4		{0x61, 0x03, 0x00, 0x00, 0x04, 0x07, 0x00, 0x00}
@@ -330,6 +332,8 @@ void omap4_configure_usb_dpll(const struct dpll_param *dpll_param);
 void omap4_configure_core_dpll_no_lock(const struct dpll_param *param);
 void omap4_lock_core_dpll(void);
 void omap4_lock_core_dpll_shadow(const struct dpll_param *param);
+void omap4_enable_gpio1_wup_clocks(void);
+void omap4_enable_gpio_clocks(void);
 void omap4_enable_all_clocks(void);
 void omap4_do_scale_tps62361(u32 reg, u32 volt_mv);
 
diff --git a/arch/arm/mach-omap/omap4_clock.c b/arch/arm/mach-omap/omap4_clock.c
index 564a748..1481f16 100644
--- a/arch/arm/mach-omap/omap4_clock.c
+++ b/arch/arm/mach-omap/omap4_clock.c
@@ -14,6 +14,10 @@ void omap4_configure_mpu_dpll(const struct dpll_param *dpll_param)
 
 	sr32(CM_AUTOIDLE_DPLL_MPU, 0, 3, 0x0); /* Disable DPLL autoidle */
 
+	/* Errata ID: i700, clear CM_CLKSEL_DPLL_MPU[22] : DCC_EN */
+	if (omap4_revision() >= OMAP4460_ES1_0)
+		sr32(CM_CLKSEL_DPLL_MPU, 0, 22, 0);
+
 	/* Set M,N,M2 values */
 	sr32(CM_CLKSEL_DPLL_MPU, 8, 11, dpll_param->m);
 	sr32(CM_CLKSEL_DPLL_MPU, 0, 6, dpll_param->n);
@@ -198,6 +202,27 @@ void omap4_lock_core_dpll_shadow(const struct dpll_param *param)
 	wait_on_value((1 << 0), 1, CM_IDLEST_DPLL_CORE, LDELAY);
 }
 
+void omap4_enable_gpio_clocks(void)
+{
+	sr32(CM_L4PER_GPIO2_CLKCTRL, 0, 32, 0x1);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_GPIO2_CLKCTRL, LDELAY);
+	sr32(CM_L4PER_GPIO3_CLKCTRL, 0, 32, 0x1);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_GPIO3_CLKCTRL, LDELAY);
+	sr32(CM_L4PER_GPIO4_CLKCTRL, 0, 32, 0x1);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_GPIO4_CLKCTRL, LDELAY);
+	sr32(CM_L4PER_GPIO5_CLKCTRL, 0, 32, 0x1);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_GPIO5_CLKCTRL, LDELAY);
+	sr32(CM_L4PER_GPIO6_CLKCTRL, 0, 32, 0x1);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_GPIO6_CLKCTRL, LDELAY);
+}
+
+void omap4_enable_gpio1_wup_clocks(void)
+{
+	/* WKUP clocks */
+	sr32(CM_WKUP_GPIO1_CLKCTRL, 0, 32, 0x1);
+	wait_on_value((1 << 17)|(1 << 16), 0, CM_WKUP_GPIO1_CLKCTRL, LDELAY);
+}
+
 void omap4_enable_all_clocks(void)
 {
 	/* Enable Ducati clocks */
@@ -255,16 +280,7 @@ void omap4_enable_all_clocks(void)
 	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_DMTIMER9_CLKCTRL, LDELAY);
 
 	/* GPIO clocks */
-	sr32(CM_L4PER_GPIO2_CLKCTRL, 0, 32, 0x1);
-	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_GPIO2_CLKCTRL, LDELAY);
-	sr32(CM_L4PER_GPIO3_CLKCTRL, 0, 32, 0x1);
-	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_GPIO3_CLKCTRL, LDELAY);
-	sr32(CM_L4PER_GPIO4_CLKCTRL, 0, 32, 0x1);
-	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_GPIO4_CLKCTRL, LDELAY);
-	sr32(CM_L4PER_GPIO5_CLKCTRL, 0, 32, 0x1);
-	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_GPIO5_CLKCTRL, LDELAY);
-	sr32(CM_L4PER_GPIO6_CLKCTRL, 0, 32, 0x1);
-	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_GPIO6_CLKCTRL, LDELAY);
+	omap4_enable_gpio_clocks();
 
 	sr32(CM_L4PER_HDQ1W_CLKCTRL, 0, 32, 0x2);
 
@@ -314,8 +330,7 @@ void omap4_enable_all_clocks(void)
 	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_UART4_CLKCTRL, LDELAY);
 
 	/* WKUP clocks */
-	sr32(CM_WKUP_GPIO1_CLKCTRL, 0, 32, 0x1);
-	wait_on_value((1 << 17)|(1 << 16), 0, CM_WKUP_GPIO1_CLKCTRL, LDELAY);
+	omap4_enable_gpio1_wup_clocks();
 	sr32(CM_WKUP_TIMER1_CLKCTRL, 0, 32, 0x01000002);
 	wait_on_value((1 << 17)|(1 << 16), 0, CM_WKUP_TIMER1_CLKCTRL, LDELAY);
 
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
