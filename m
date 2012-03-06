Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S4vLd-0000mw-VG
 for barebox@lists.infradead.org; Tue, 06 Mar 2012 14:26:44 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id F1E5BBF0E0
 for <barebox@lists.infradead.org>; Mon,  5 Mar 2012 16:18:36 +0100 (CET)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Tue, 6 Mar 2012 15:26:28 +0100
Message-Id: <1331043989-19554-1-git-send-email-j.weitzel@phytec.de>
In-Reply-To: <20120305171214.GX3852@pengutronix.de>
References: <20120305171214.GX3852@pengutronix.de>
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
Subject: [PATCH 1/2 v2] omap: move scale_vcores to omap4_generic
To: barebox@lists.infradead.org

scale_vcores is used by two boards.

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
v2: add omap4_ prefix

 arch/arm/boards/panda/lowlevel.c                |   33 +----------------------
 arch/arm/boards/pcm049/lowlevel.c               |   33 +----------------------
 arch/arm/mach-omap/include/mach/omap4-silicon.h |    1 +
 arch/arm/mach-omap/omap4_generic.c              |   31 +++++++++++++++++++++
 4 files changed, 34 insertions(+), 64 deletions(-)

diff --git a/arch/arm/boards/panda/lowlevel.c b/arch/arm/boards/panda/lowlevel.c
index 45ea221..8591fff 100644
--- a/arch/arm/boards/panda/lowlevel.c
+++ b/arch/arm/boards/panda/lowlevel.c
@@ -44,37 +44,6 @@ static const struct ddr_regs ddr_regs_400_mhz_2cs = {
 	.mr2		= 0x4
 };
 
-#define I2C_SLAVE 0x12
-
-static int noinline scale_vcores(void)
-{
-	unsigned int rev = omap4_revision();
-
-	/* For VC bypass only VCOREx_CGF_FORCE  is necessary and
-	 * VCOREx_CFG_VOLTAGE  changes can be discarded
-	 */
-	writel(0, OMAP44XX_PRM_VC_CFG_I2C_MODE);
-	writel(0x6026, OMAP44XX_PRM_VC_CFG_I2C_CLK);
-
-	/* set VCORE1 force VSEL */
-	omap4_power_i2c_send((0x3A55 << 8) | I2C_SLAVE);
-
-	/* FIXME: set VCORE2 force VSEL, Check the reset value */
-	omap4_power_i2c_send((0x295B << 8) | I2C_SLAVE);
-
-	/* set VCORE3 force VSEL */
-	switch (rev) {
-	case OMAP4430_ES2_0:
-		omap4_power_i2c_send((0x2961 << 8) | I2C_SLAVE);
-		break;
-	case OMAP4430_ES2_1:
-		omap4_power_i2c_send((0x2A61 << 8) | I2C_SLAVE);
-		break;
-	}
-
-	return 0;
-}
-
 static void noinline panda_init_lowlevel(void)
 {
 	struct dpll_param core = OMAP4_CORE_DPLL_PARAM_38M4_DDR400;
@@ -101,7 +70,7 @@ static void noinline panda_init_lowlevel(void)
 	omap4_ddr_init(&ddr_regs_400_mhz_2cs, &core);
 
 	/* Set VCORE1 = 1.3 V, VCORE2 = VCORE3 = 1.21V */
-	scale_vcores();
+	omap4_scale_vcores();
 
 	board_init_lowlevel_return();
 }
diff --git a/arch/arm/boards/pcm049/lowlevel.c b/arch/arm/boards/pcm049/lowlevel.c
index bea895e..444a394 100644
--- a/arch/arm/boards/pcm049/lowlevel.c
+++ b/arch/arm/boards/pcm049/lowlevel.c
@@ -44,37 +44,6 @@ static const struct ddr_regs ddr_regs_mt42L64M64_3_200_mhz = {
 	.mr2		= 0x1	      /* from elpida 200MHz! */
 };
 
-#define I2C_SLAVE 0x12
-
-static int noinline scale_vcores(void)
-{
-	unsigned int rev = omap4_revision();
-
-	/* For VC bypass only VCOREx_CGF_FORCE  is necessary and
-	 * VCOREx_CFG_VOLTAGE  changes can be discarded
-	 */
-	writel(0, OMAP44XX_PRM_VC_CFG_I2C_MODE);
-	writel(0x6026, OMAP44XX_PRM_VC_CFG_I2C_CLK);
-
-	/* set VCORE1 force VSEL */
-	omap4_power_i2c_send((0x3A55 << 8) | I2C_SLAVE);
-
-	/* FIXME: set VCORE2 force VSEL, Check the reset value */
-	omap4_power_i2c_send((0x295B << 8) | I2C_SLAVE);
-
-	/* set VCORE3 force VSEL */
-	switch (rev) {
-	case OMAP4430_ES2_0:
-		omap4_power_i2c_send((0x2961 << 8) | I2C_SLAVE);
-		break;
-	case OMAP4430_ES2_1:
-		omap4_power_i2c_send((0x2A61 << 8) | I2C_SLAVE);
-		break;
-	}
-
-	return 0;
-}
-
 static void noinline pcm049_init_lowlevel(void)
 {
 	struct dpll_param core = OMAP4_CORE_DPLL_PARAM_19M2_DDR200;
@@ -89,7 +58,7 @@ static void noinline pcm049_init_lowlevel(void)
 	omap4_ddr_init(&ddr_regs_mt42L64M64_3_200_mhz, &core);
 
 	/* Set VCORE1 = 1.3 V, VCORE2 = VCORE3 = 1.21V */
-	scale_vcores();
+	omap4_scale_vcores();
 
 	writel(CM_SYS_CLKSEL_19M2, CM_SYS_CLKSEL);
 
diff --git a/arch/arm/mach-omap/include/mach/omap4-silicon.h b/arch/arm/mach-omap/include/mach/omap4-silicon.h
index db0dfdf..f8d3396 100644
--- a/arch/arm/mach-omap/include/mach/omap4-silicon.h
+++ b/arch/arm/mach-omap/include/mach/omap4-silicon.h
@@ -175,5 +175,6 @@ struct dpll_param;
 void omap4_ddr_init(const struct ddr_regs *, const struct dpll_param *);
 void omap4_power_i2c_send(u32);
 unsigned int omap4_revision(void);
+noinline int omap4_scale_vcores(void);
 
 #endif
diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
index c6e46e6..8352470 100644
--- a/arch/arm/mach-omap/omap4_generic.c
+++ b/arch/arm/mach-omap/omap4_generic.c
@@ -419,3 +419,34 @@ enum omap_boot_src omap4_bootsrc(void)
 		return OMAP_BOOTSRC_NAND;
 	return OMAP_BOOTSRC_UNKNOWN;
 }
+
+#define I2C_SLAVE 0x12
+
+noinline int omap4_scale_vcores(void)
+{
+	unsigned int rev = omap4_revision();
+
+	/* For VC bypass only VCOREx_CGF_FORCE  is necessary and
+	 * VCOREx_CFG_VOLTAGE  changes can be discarded
+	 */
+	writel(0, OMAP44XX_PRM_VC_CFG_I2C_MODE);
+	writel(0x6026, OMAP44XX_PRM_VC_CFG_I2C_CLK);
+
+	/* set VCORE1 force VSEL */
+	omap4_power_i2c_send((0x3A55 << 8) | I2C_SLAVE);
+
+	/* FIXME: set VCORE2 force VSEL, Check the reset value */
+	omap4_power_i2c_send((0x295B << 8) | I2C_SLAVE);
+
+	/* set VCORE3 force VSEL */
+	switch (rev) {
+	case OMAP4430_ES2_0:
+		omap4_power_i2c_send((0x2961 << 8) | I2C_SLAVE);
+		break;
+	case OMAP4430_ES2_1:
+		omap4_power_i2c_send((0x2A61 << 8) | I2C_SLAVE);
+		break;
+	}
+
+	return 0;
+}
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
