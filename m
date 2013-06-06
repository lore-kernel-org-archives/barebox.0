Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UkZbV-0008Lb-9d
 for barebox@lists.infradead.org; Thu, 06 Jun 2013 12:47:47 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 6D7D2BF0E6
 for <barebox@lists.infradead.org>; Thu,  6 Jun 2013 14:43:15 +0200 (CEST)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Thu, 6 Jun 2013 14:47:16 +0200
Message-Id: <1370522836-11258-1-git-send-email-j.weitzel@phytec.de>
In-Reply-To: <1370425962.3824.1.camel@lws-weitzel>
References: <1370425962.3824.1.camel@lws-weitzel>
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
Subject: [PATCH v2] omap4: set voltage according to mpu freq
To: barebox@lists.infradead.org

For OMAP4460 omap4_scale_vcores must set the voltage according to mpu freq.

OPP100  700MHz 1210mV
OPPTB   920MHz 1320mV
OPPNT  1200MHz 1380mV

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
v2: split omap4_scale_vcores

 arch/arm/boards/archosg9/lowlevel.c             |    3 +-
 arch/arm/boards/panda/lowlevel.c                |    7 +-
 arch/arm/boards/pcm049/lowlevel.c               |    9 ++-
 arch/arm/boards/phycard-a-xl2/lowlevel.c        |    9 ++-
 arch/arm/mach-omap/include/mach/omap4-silicon.h |    3 +-
 arch/arm/mach-omap/omap4_generic.c              |   96 +++++++++++++----------
 6 files changed, 74 insertions(+), 53 deletions(-)

diff --git a/arch/arm/boards/archosg9/lowlevel.c b/arch/arm/boards/archosg9/lowlevel.c
index 0334693..49c1541 100644
--- a/arch/arm/boards/archosg9/lowlevel.c
+++ b/arch/arm/boards/archosg9/lowlevel.c
@@ -48,8 +48,7 @@ static noinline void archosg9_init_lowlevel(void)
 
 	set_muxconf_regs();
 
-	/* Set VCORE1 = 1.3 V, VCORE2 = VCORE3 = 1.21V */
-	omap4_scale_vcores(TPS62361_VSEL0_GPIO);
+	omap4460_scale_vcores(TPS62361_VSEL0_GPIO, 1380);
 
 	/* Enable all clocks */
 	omap4_enable_all_clocks();
diff --git a/arch/arm/boards/panda/lowlevel.c b/arch/arm/boards/panda/lowlevel.c
index ed1dc6f..5d3490f 100644
--- a/arch/arm/boards/panda/lowlevel.c
+++ b/arch/arm/boards/panda/lowlevel.c
@@ -52,6 +52,7 @@ static void noinline panda_init_lowlevel(void)
 	struct dpll_param per = OMAP4_PER_DPLL_PARAM_38M4;
 	struct dpll_param abe = OMAP4_ABE_DPLL_PARAM_38M4;
 	struct dpll_param usb = OMAP4_USB_DPLL_PARAM_38M4;
+	unsigned int rev = omap4_revision();
 
 	writel(CM_SYS_CLKSEL_38M4, CM_SYS_CLKSEL);
 
@@ -69,8 +70,10 @@ static void noinline panda_init_lowlevel(void)
 
 	omap4_ddr_init(&ddr_regs_400_mhz_2cs, &core);
 
-	/* Set VCORE1 = 1.3 V, VCORE2 = VCORE3 = 1.21V */
-	omap4_scale_vcores(TPS62361_VSEL0_GPIO);
+	if (rev < OMAP4460_ES1_0)
+		omap4430_scale_vcores();
+	else
+		omap4460_scale_vcores(TPS62361_VSEL0_GPIO, 1210);
 }
 
 void barebox_arm_reset_vector(void)
diff --git a/arch/arm/boards/pcm049/lowlevel.c b/arch/arm/boards/pcm049/lowlevel.c
index c855bff..aa6502d 100644
--- a/arch/arm/boards/pcm049/lowlevel.c
+++ b/arch/arm/boards/pcm049/lowlevel.c
@@ -99,6 +99,7 @@ static void noinline pcm049_init_lowlevel(void)
 	struct dpll_param per = OMAP4_PER_DPLL_PARAM_19M2;
 	struct dpll_param abe = OMAP4_ABE_DPLL_PARAM_19M2;
 	struct dpll_param usb = OMAP4_USB_DPLL_PARAM_19M2;
+	unsigned int rev = omap4_revision();
 
 	set_muxconf_regs();
 
@@ -108,13 +109,15 @@ static void noinline pcm049_init_lowlevel(void)
 	omap4_ddr_init(&ddr_regs_mt42L64M64_25_400_mhz, &core);
 #endif
 
-	/* Set VCORE1 = 1.3 V, VCORE2 = VCORE3 = 1.21V */
-	omap4_scale_vcores(TPS62361_VSEL0_GPIO);
+	if (rev < OMAP4460_ES1_0)
+		omap4430_scale_vcores();
+	else
+		omap4460_scale_vcores(TPS62361_VSEL0_GPIO, 1320);
 
 	writel(CM_SYS_CLKSEL_19M2, CM_SYS_CLKSEL);
 
 	/* Configure all DPLL's */
-	if (omap4_revision() < OMAP4460_ES1_0)
+	if (rev < OMAP4460_ES1_0)
 		omap4_configure_mpu_dpll(&mpu44xx);
 	else
 		omap4_configure_mpu_dpll(&mpu4460);
diff --git a/arch/arm/boards/phycard-a-xl2/lowlevel.c b/arch/arm/boards/phycard-a-xl2/lowlevel.c
index 07505ff..86d7c51 100644
--- a/arch/arm/boards/phycard-a-xl2/lowlevel.c
+++ b/arch/arm/boards/phycard-a-xl2/lowlevel.c
@@ -52,18 +52,21 @@ static noinline void pcaaxl2_init_lowlevel(void)
 	struct dpll_param per = OMAP4_PER_DPLL_PARAM_19M2;
 	struct dpll_param abe = OMAP4_ABE_DPLL_PARAM_19M2;
 	struct dpll_param usb = OMAP4_USB_DPLL_PARAM_19M2;
+	unsigned int rev = omap4_revision();
 
 	set_muxconf_regs();
 
 	omap4_ddr_init(&ddr_regs_mt42L64M64_25_400_mhz, &core);
 
-	/* Set VCORE1 = 1.3 V, VCORE2 = VCORE3 = 1.21V */
-	omap4_scale_vcores(TPS62361_VSEL0_GPIO);
+	if (ref < OMAP4460_ES1_0)
+		omap4430_scale_vcores();
+	else
+		omap4460_scale_vcores(TPS62361_VSEL0_GPIO, 1320);
 
 	writel(CM_SYS_CLKSEL_19M2, CM_SYS_CLKSEL);
 
 	/* Configure all DPLL's at 100% OPP */
-	if (omap4_revision() < OMAP4460_ES1_0)
+	if (rev < OMAP4460_ES1_0)
 		omap4_configure_mpu_dpll(&mpu44xx);
 	else
 		omap4_configure_mpu_dpll(&mpu4460);
diff --git a/arch/arm/mach-omap/include/mach/omap4-silicon.h b/arch/arm/mach-omap/include/mach/omap4-silicon.h
index 9e82435..ba48c30 100644
--- a/arch/arm/mach-omap/include/mach/omap4-silicon.h
+++ b/arch/arm/mach-omap/include/mach/omap4-silicon.h
@@ -211,7 +211,8 @@ struct dpll_param;
 void omap4_ddr_init(const struct ddr_regs *, const struct dpll_param *);
 void omap4_power_i2c_send(u32);
 unsigned int omap4_revision(void);
-noinline int omap4_scale_vcores(unsigned vsel0_pin);
+noinline int omap4430_scale_vcores(void);
+noinline int omap4460_scale_vcores(unsigned vsel0_pin, unsigned volt_mv);
 
 #endif
 
diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
index 3fd3a54..b5e166d 100644
--- a/arch/arm/mach-omap/omap4_generic.c
+++ b/arch/arm/mach-omap/omap4_generic.c
@@ -514,11 +514,9 @@ static void __iomem *omap4_get_gpio_base(unsigned gpio)
 
 #define I2C_SLAVE 0x12
 
-noinline int omap4_scale_vcores(unsigned vsel0_pin)
+noinline int omap4430_scale_vcores(void)
 {
-	void __iomem *base;
 	unsigned int rev = omap4_revision();
-	u32 val = 0;
 
 	/* For VC bypass only VCOREx_CGF_FORCE  is necessary and
 	 * VCOREx_CFG_VOLTAGE  changes can be discarded
@@ -526,50 +524,16 @@ noinline int omap4_scale_vcores(unsigned vsel0_pin)
 	writel(0, OMAP44XX_PRM_VC_CFG_I2C_MODE);
 	writel(0x6026, OMAP44XX_PRM_VC_CFG_I2C_CLK);
 
-	/* TPS - supplies vdd_mpu on 4460 */
-	if (rev >= OMAP4460_ES1_0) {
-		/*
-		 * Setup SET1 and SET0 with right values so that kernel
-		 * can use either of them based on its needs.
-		 */
-		omap4_do_scale_tps62361(TPS62361_REG_ADDR_SET0, 1430);
-		omap4_do_scale_tps62361(TPS62361_REG_ADDR_SET1, 1430);
-
-		/*
-		 * Select SET1 in TPS62361:
-		 * VSEL1 is grounded on board. So the following selects
-		 * VSEL1 = 0 and VSEL0 = 1
-		 */
-		base = omap4_get_gpio_base(vsel0_pin);
-
-		val = 1 << (vsel0_pin & GPIO_MASK);
-		writel(val, base + 0x190);
-
-		val =  readl(base + 0x134);
-		val &= ~(1 << (vsel0_pin & GPIO_MASK));
-		writel(val, base + 0x134);
-
-		val = 1 << (vsel0_pin & GPIO_MASK);
-		writel(val, base + 0x194);
-	}
-
-	/* set VCORE1 force VSEL */
-	/*
+	/* set VCORE1 force VSEL
 	 * 4430 : supplies vdd_mpu
 	 * Setting a high voltage for Nitro mode as smart reflex is not enabled.
 	 * We use the maximum possible value in the AVS range because the next
 	 * higher voltage in the discrete range (code >= 0b111010) is way too
 	 * high
-	 *
-	 * 4460 : supplies vdd_core
-	 *
 	 */
-	if (rev < OMAP4460_ES1_0)
-		/* 0x55: i2c addr, 3A: ~ 1430 mvolts*/
-		omap4_power_i2c_send((0x3A55 << 8) | I2C_SLAVE);
-	else
-		/* 0x55: i2c addr, 28: ~ 1200 mvolts*/
-		omap4_power_i2c_send((0x2855 << 8) | I2C_SLAVE);
+
+	/* 0x55: i2c addr, 3A: ~ 1430 mvolts*/
+	omap4_power_i2c_send((0x3A55 << 8) | I2C_SLAVE);
 
 	/* FIXME: set VCORE2 force VSEL, Check the reset value */
 	omap4_power_i2c_send((0x295B << 8) | I2C_SLAVE);
@@ -582,12 +546,60 @@ noinline int omap4_scale_vcores(unsigned vsel0_pin)
 	case OMAP4430_ES2_1:
 		omap4_power_i2c_send((0x2A61 << 8) | I2C_SLAVE);
 		break;
-	/* > OMAP4460_ES1_0 : VCORE3 not connected */
 	}
 
 	return 0;
 }
 
+noinline int omap4460_scale_vcores(unsigned vsel0_pin, unsigned volt_mv)
+{
+	void __iomem *base;
+	u32 val = 0;
+
+	/* For VC bypass only VCOREx_CGF_FORCE  is necessary and
+	 * VCOREx_CFG_VOLTAGE  changes can be discarded
+	 */
+	writel(0, OMAP44XX_PRM_VC_CFG_I2C_MODE);
+	writel(0x6026, OMAP44XX_PRM_VC_CFG_I2C_CLK);
+
+	/* TPS - supplies vdd_mpu on 4460
+	 * Setup SET1 and SET0 with right values so that kernel
+	 * can use either of them based on its needs.
+	 */
+
+	omap4_do_scale_tps62361(TPS62361_REG_ADDR_SET0, volt_mv);
+	omap4_do_scale_tps62361(TPS62361_REG_ADDR_SET1, volt_mv);
+
+	/*
+	 * Select SET1 in TPS62361:
+	 * VSEL1 is grounded on board. So the following selects
+	 * VSEL1 = 0 and VSEL0 = 1
+	 */
+	base = omap4_get_gpio_base(vsel0_pin);
+
+	val = 1 << (vsel0_pin & GPIO_MASK);
+	writel(val, base + 0x190);
+
+	val =  readl(base + 0x134);
+	val &= ~(1 << (vsel0_pin & GPIO_MASK));
+	writel(val, base + 0x134);
+
+	val = 1 << (vsel0_pin & GPIO_MASK);
+	writel(val, base + 0x194);
+
+	/* set VCORE1 force VSEL
+	 * 4460 : supplies vdd_core
+	 */
+
+	/* 0x55: i2c addr, 28: ~ 1200 mvolts*/
+	omap4_power_i2c_send((0x2855 << 8) | I2C_SLAVE);
+
+	/* FIXME: set VCORE2 force VSEL, Check the reset value */
+	omap4_power_i2c_send((0x295B << 8) | I2C_SLAVE);
+
+	return 0;
+}
+
 void omap4_do_set_mux(u32 base, struct pad_conf_entry const *array, int size)
 {
 	int i;
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
