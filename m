Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.eu ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UhIRk-0003fn-Hf
 for barebox@lists.infradead.org; Tue, 28 May 2013 11:52:11 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id AFAC4BF0EB
 for <barebox@lists.infradead.org>; Tue, 28 May 2013 13:48:12 +0200 (CEST)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Tue, 28 May 2013 13:51:39 +0200
Message-Id: <1369741903-24988-1-git-send-email-j.weitzel@phytec.de>
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
Subject: [PATCH] omap4: set voltage according to mpu freq
To: barebox@lists.infradead.org

For OMAP4460 omap4_scale_vcores must set the voltage according to mpu freq.

OPP100  700MHz 1210mV
OPPTB   920MHz 1320mV
OPPNT  1200MHz 1380mV

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 arch/arm/boards/archosg9/lowlevel.c             |    2 +-
 arch/arm/boards/panda/lowlevel.c                |    2 +-
 arch/arm/boards/pcm049/lowlevel.c               |    2 +-
 arch/arm/boards/phycard-a-xl2/lowlevel.c        |    2 +-
 arch/arm/mach-omap/include/mach/omap4-silicon.h |    2 +-
 arch/arm/mach-omap/omap4_generic.c              |    6 +++---
 6 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boards/archosg9/lowlevel.c b/arch/arm/boards/archosg9/lowlevel.c
index 0334693..0fae6da 100644
--- a/arch/arm/boards/archosg9/lowlevel.c
+++ b/arch/arm/boards/archosg9/lowlevel.c
@@ -49,7 +49,7 @@ static noinline void archosg9_init_lowlevel(void)
 	set_muxconf_regs();
 
 	/* Set VCORE1 = 1.3 V, VCORE2 = VCORE3 = 1.21V */
-	omap4_scale_vcores(TPS62361_VSEL0_GPIO);
+	omap4_scale_vcores(TPS62361_VSEL0_GPIO, 1380);
 
 	/* Enable all clocks */
 	omap4_enable_all_clocks();
diff --git a/arch/arm/boards/panda/lowlevel.c b/arch/arm/boards/panda/lowlevel.c
index ed1dc6f..591ff2f 100644
--- a/arch/arm/boards/panda/lowlevel.c
+++ b/arch/arm/boards/panda/lowlevel.c
@@ -70,7 +70,7 @@ static void noinline panda_init_lowlevel(void)
 	omap4_ddr_init(&ddr_regs_400_mhz_2cs, &core);
 
 	/* Set VCORE1 = 1.3 V, VCORE2 = VCORE3 = 1.21V */
-	omap4_scale_vcores(TPS62361_VSEL0_GPIO);
+	omap4_scale_vcores(TPS62361_VSEL0_GPIO, 1210);
 }
 
 void barebox_arm_reset_vector(void)
diff --git a/arch/arm/boards/pcm049/lowlevel.c b/arch/arm/boards/pcm049/lowlevel.c
index 33519f7..8548868 100644
--- a/arch/arm/boards/pcm049/lowlevel.c
+++ b/arch/arm/boards/pcm049/lowlevel.c
@@ -109,7 +109,7 @@ static void noinline pcm049_init_lowlevel(void)
 #endif
 
 	/* Set VCORE1 = 1.3 V, VCORE2 = VCORE3 = 1.21V */
-	omap4_scale_vcores(TPS62361_VSEL0_GPIO);
+	omap4_scale_vcores(TPS62361_VSEL0_GPIO, 1320);
 
 	writel(CM_SYS_CLKSEL_19M2, CM_SYS_CLKSEL);
 
diff --git a/arch/arm/boards/phycard-a-xl2/lowlevel.c b/arch/arm/boards/phycard-a-xl2/lowlevel.c
index 07505ff..3750bae 100644
--- a/arch/arm/boards/phycard-a-xl2/lowlevel.c
+++ b/arch/arm/boards/phycard-a-xl2/lowlevel.c
@@ -58,7 +58,7 @@ static noinline void pcaaxl2_init_lowlevel(void)
 	omap4_ddr_init(&ddr_regs_mt42L64M64_25_400_mhz, &core);
 
 	/* Set VCORE1 = 1.3 V, VCORE2 = VCORE3 = 1.21V */
-	omap4_scale_vcores(TPS62361_VSEL0_GPIO);
+	omap4_scale_vcores(TPS62361_VSEL0_GPIO, 1320);
 
 	writel(CM_SYS_CLKSEL_19M2, CM_SYS_CLKSEL);
 
diff --git a/arch/arm/mach-omap/include/mach/omap4-silicon.h b/arch/arm/mach-omap/include/mach/omap4-silicon.h
index 9e82435..5684a38 100644
--- a/arch/arm/mach-omap/include/mach/omap4-silicon.h
+++ b/arch/arm/mach-omap/include/mach/omap4-silicon.h
@@ -211,7 +211,7 @@ struct dpll_param;
 void omap4_ddr_init(const struct ddr_regs *, const struct dpll_param *);
 void omap4_power_i2c_send(u32);
 unsigned int omap4_revision(void);
-noinline int omap4_scale_vcores(unsigned vsel0_pin);
+noinline int omap4_scale_vcores(unsigned vsel0_pin, unsigned volt_mv);
 
 #endif
 
diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
index 38993be..1eeaf30 100644
--- a/arch/arm/mach-omap/omap4_generic.c
+++ b/arch/arm/mach-omap/omap4_generic.c
@@ -511,7 +511,7 @@ static void __iomem *omap4_get_gpio_base(unsigned gpio)
 
 #define I2C_SLAVE 0x12
 
-noinline int omap4_scale_vcores(unsigned vsel0_pin)
+noinline int omap4_scale_vcores(unsigned vsel0_pin, unsigned volt_mv)
 {
 	void __iomem *base;
 	unsigned int rev = omap4_revision();
@@ -529,8 +529,8 @@ noinline int omap4_scale_vcores(unsigned vsel0_pin)
 		 * Setup SET1 and SET0 with right values so that kernel
 		 * can use either of them based on its needs.
 		 */
-		omap4_do_scale_tps62361(TPS62361_REG_ADDR_SET0, 1430);
-		omap4_do_scale_tps62361(TPS62361_REG_ADDR_SET1, 1430);
+		omap4_do_scale_tps62361(TPS62361_REG_ADDR_SET0, volt_mv);
+		omap4_do_scale_tps62361(TPS62361_REG_ADDR_SET1, volt_mv);
 
 		/*
 		 * Select SET1 in TPS62361:
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
