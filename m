Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f171.google.com ([209.85.212.171])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TNsRI-0007xn-CH
 for barebox@lists.infradead.org; Mon, 15 Oct 2012 21:43:09 +0000
Received: by mail-wi0-f171.google.com with SMTP id hj13so2033432wib.0
 for <barebox@lists.infradead.org>; Mon, 15 Oct 2012 14:43:05 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
Date: Mon, 15 Oct 2012 23:42:49 +0200
Message-Id: <1350337369-1027-1-git-send-email-vicencb@gmail.com>
In-Reply-To: <[PATCH 6/6] OMAP4: clean voltage switch>
References: <[PATCH 6/6] OMAP4: clean voltage switch>
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
Subject: [PATCH 6/6] OMAP4: clean voltage switch
To: barebox@lists.infradead.org
Cc: Vicente Bergas <vicencb@gmail.com>

OMAP4 requires that parent domains scale ahead of dependent domains.
This is due to the restrictions in timing closure. To ensure
a consistent behavior across all OMAP4 SoC, ensure that
vdd_core scale first, then vdd_mpu and finally vdd_iva.

TPS SET0/SET1 register is selected by a GPIO pin on OMAP4460 platforms.
Currently we control this pin with a mux configuration as part of
boot sequence.
Current configuration results in the following voltage waveform:
                           |---------------| (SET1 default 1.4V)
                           |               --------(programmed voltage)
                           | <- (This switch happens on mux7,pullup)
vdd_mpu(TPS)         -----/ (OPP boot voltage)
                                             --------- (programmed voltage)
vdd_core(TWL6030)    -----------------------/ (OPP boot voltage)
Problem 1)                |<----- Tx ------>|
   timing violation for a duration Tx close to few milliseconds.
Problem 2) voltage of MPU goes beyond spec for even the highest of MPU OPP.

By using GPIO as recommended as standard procedure by TI, the sequence
changes to:
                                  -------- (programmed voltage)
vdd_mpu(TPS)         ------------/ (Opp boot voltage)
                                   --------- (programmed voltage)
vdd_core(TWL6030)    -------------/ (OPP boot voltage)

original patch from:
http://lists.denx.de/pipermail/u-boot/2012-March/119149.html
http://lists.denx.de/pipermail/u-boot/2012-March/119150.html

Signed-off-by: Vicente Bergas <vicencb@gmail.com>
---
 arch/arm/boards/archosg9/mux.c                  |  9 +----
 arch/arm/mach-omap/include/mach/omap4-clock.h   |  2 +-
 arch/arm/mach-omap/include/mach/omap4-silicon.h |  2 +-
 arch/arm/mach-omap/omap4_clock.c                | 37 +++++++++++++++++-
 arch/arm/mach-omap/omap4_generic.c              | 52 ++++---------------------
 5 files changed, 46 insertions(+), 56 deletions(-)

diff --git a/arch/arm/boards/archosg9/mux.c b/arch/arm/boards/archosg9/mux.c
index 7ca5057..c8695c0 100644
--- a/arch/arm/boards/archosg9/mux.c
+++ b/arch/arm/boards/archosg9/mux.c
@@ -441,7 +441,7 @@ static const struct pad_conf_entry wkup_padconf_array[] = {
 	/* gpio_wk30           */
 	{ FREF_CLK3_REQ        ,             M3 },
 	/* gpio_wk7            */ /* tps62361_vsel0 */
-	{ FREF_CLK4_REQ        , IEN | PTU | M3 },
+	{ FREF_CLK4_REQ        ,             M3 },
 };
 
 void set_muxconf_regs(void){
@@ -449,11 +449,4 @@ void set_muxconf_regs(void){
 		core_padconf_array, ARRAY_SIZE(core_padconf_array));
 	omap4_do_set_mux(OMAP44XX_CONTROL_PADCONF_WKUP,
 		wkup_padconf_array, ARRAY_SIZE(wkup_padconf_array));
-
-	/* gpio_wk7 is used for controlling TPS on 4460 */
-	if (omap4_revision() >= OMAP4460_ES1_0) {
-		writew(M3, OMAP44XX_CONTROL_PADCONF_WKUP + FREF_CLK4_REQ);
-		/* Enable GPIO-1 clocks before TPS initialization */
-		omap4_enable_gpio1_wup_clocks();
-	}
 }
diff --git a/arch/arm/mach-omap/include/mach/omap4-clock.h b/arch/arm/mach-omap/include/mach/omap4-clock.h
index e5302d6..8cbc061 100644
--- a/arch/arm/mach-omap/include/mach/omap4-clock.h
+++ b/arch/arm/mach-omap/include/mach/omap4-clock.h
@@ -335,5 +335,5 @@ void omap4_lock_core_dpll_shadow(const struct dpll_param *param);
 void omap4_enable_gpio1_wup_clocks(void);
 void omap4_enable_gpio_clocks(void);
 void omap4_enable_all_clocks(void);
-void omap4_do_scale_tps62361(u32 reg, u32 volt_mv);
+void omap4_do_scale_tps62361(int vsel0_pin, u32 reg, u32 volt_mv);
 
diff --git a/arch/arm/mach-omap/include/mach/omap4-silicon.h b/arch/arm/mach-omap/include/mach/omap4-silicon.h
index 71ffe39..137cc88 100644
--- a/arch/arm/mach-omap/include/mach/omap4-silicon.h
+++ b/arch/arm/mach-omap/include/mach/omap4-silicon.h
@@ -196,6 +196,6 @@ struct dpll_param;
 void omap4_ddr_init(const struct ddr_regs *, const struct dpll_param *);
 void omap4_power_i2c_send(u32);
 unsigned int omap4_revision(void);
-noinline int omap4_scale_vcores(unsigned vsel0_pin);
+noinline int omap4_scale_vcores(int vsel0_pin);
 
 #endif
diff --git a/arch/arm/mach-omap/omap4_clock.c b/arch/arm/mach-omap/omap4_clock.c
index 1481f16..f7927d2 100644
--- a/arch/arm/mach-omap/omap4_clock.c
+++ b/arch/arm/mach-omap/omap4_clock.c
@@ -394,9 +394,38 @@ void omap4_enable_all_clocks(void)
 	sr32(CM_L3INIT_USBPHY_CLKCTRL, 0, 32, 0x301);
 }
 
-void omap4_do_scale_tps62361(u32 reg, u32 volt_mv)
+#define GPIO_MASK		0x1f
+#define GPIO_OE			0x34
+#define GPIO_CLEARDATAOUT	0x90
+#define GPIO_SETDATAOUT		0x94
+
+static void __iomem *omap4_get_gpio_base(unsigned gpio)
+{
+	void __iomem *base;
+
+	if (gpio < 32)
+		base = (void *)0x4a310100;
+	else
+		base = (void *)(0x48053100 + ((gpio & ~GPIO_MASK) << 8));
+
+	return base;
+}
+
+void omap4_do_scale_tps62361(int vsel0_pin, u32 reg, u32 volt_mv)
 {
 	u32 temp, step;
+	void __iomem *base;
+	u32 val;
+
+	/* Pull the GPIO low to select SET0 register, while we program SET1 */
+	if (vsel0_pin >= 0) {
+		base = omap4_get_gpio_base(vsel0_pin);
+		val = 1 << (vsel0_pin & GPIO_MASK);
+		writel(val, base + GPIO_CLEARDATAOUT);
+		val =  readl(base + GPIO_OE);
+		val &= (1 << (vsel0_pin & GPIO_MASK));
+		writel(val, base + GPIO_OE);
+	}
 
 	step = volt_mv - TPS62361_BASE_VOLT_MV;
 	step /= 10;
@@ -411,4 +440,10 @@ void omap4_do_scale_tps62361(u32 reg, u32 volt_mv)
 	if (!wait_on_value(OMAP44XX_PRM_VC_VAL_BYPASS_VALID_BIT, 0,
 				OMAP44XX_PRM_VC_VAL_BYPASS, LDELAY))
 		puts("Scaling voltage failed for vdd_mpu from TPS\n");
+
+	/* Pull the GPIO high to select SET1 register */
+	if (vsel0_pin >= 0) {
+		val = 1 << (vsel0_pin & GPIO_MASK);
+		writel(val, base + GPIO_SETDATAOUT);
+	}
 }
diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
index 765fcb5..8e692ba 100644
--- a/arch/arm/mach-omap/omap4_generic.c
+++ b/arch/arm/mach-omap/omap4_generic.c
@@ -495,27 +495,11 @@ enum omap_boot_src omap4_bootsrc(void)
 	return OMAP_BOOTSRC_UNKNOWN;
 }
 
-#define GPIO_MASK 0x1f
-
-static void __iomem *omap4_get_gpio_base(unsigned gpio)
-{
-	void __iomem *base;
-
-	if (gpio < 32)
-		base = (void *)0x4a310000;
-	else
-		base = (void *)(0x48053000 + ((gpio & ~GPIO_MASK) << 8));
-
-	return base;
-}
-
 #define I2C_SLAVE 0x12
 
-noinline int omap4_scale_vcores(unsigned vsel0_pin)
+noinline int omap4_scale_vcores(int vsel0_pin)
 {
-	void __iomem *base;
 	unsigned int rev = omap4_revision();
-	u32 val = 0;
 
 	/* For VC bypass only VCOREx_CGF_FORCE  is necessary and
 	 * VCOREx_CFG_VOLTAGE  changes can be discarded
@@ -523,33 +507,6 @@ noinline int omap4_scale_vcores(unsigned vsel0_pin)
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
-		val &= (1 << (vsel0_pin & GPIO_MASK));
-		writel(val, base + 0x134);
-
-		val = 1 << (vsel0_pin & GPIO_MASK);
-		writel(val, base + 0x194);
-	}
-
 	/* set VCORE1 force VSEL */
 	/*
 	 * 4430 : supplies vdd_mpu
@@ -568,8 +525,13 @@ noinline int omap4_scale_vcores(unsigned vsel0_pin)
 		/* 0x55: i2c addr, 28: ~ 1200 mvolts*/
 		omap4_power_i2c_send((0x2855 << 8) | I2C_SLAVE);
 
+	/* TPS - supplies vdd_mpu on 4460 */
+	if (rev >= OMAP4460_ES1_0)
+		omap4_do_scale_tps62361(vsel0_pin,
+			TPS62361_REG_ADDR_SET1, 1203);
+
 	/* FIXME: set VCORE2 force VSEL, Check the reset value */
-	omap4_power_i2c_send((0x295B << 8) | I2C_SLAVE);
+	omap4_power_i2c_send((0x285B << 8) | I2C_SLAVE);
 
 	/* set VCORE3 force VSEL */
 	switch (rev) {
-- 
1.7.12.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
