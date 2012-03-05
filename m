Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycore.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S4V1W-0001i5-I4
 for barebox@lists.infradead.org; Mon, 05 Mar 2012 10:20:11 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 97A5FBF0CE
 for <barebox@lists.infradead.org>; Sun,  4 Mar 2012 12:35:51 +0100 (CET)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Mon, 5 Mar 2012 11:19:43 +0100
Message-Id: <1330942784-22394-1-git-send-email-j.weitzel@phytec.de>
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
Subject: [PATCH 1/2] omap: move scale_vcores to omap4_generic
To: barebox@lists.infradead.org

scale_vcores is used by two boards.

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 arch/arm/boards/panda/lowlevel.c                |   31 -----------------------
 arch/arm/boards/pcm049/lowlevel.c               |   31 -----------------------
 arch/arm/mach-omap/include/mach/omap4-silicon.h |    1 +
 arch/arm/mach-omap/omap4_generic.c              |   31 +++++++++++++++++++++++
 4 files changed, 32 insertions(+), 62 deletions(-)

diff --git a/arch/arm/boards/panda/lowlevel.c b/arch/arm/boards/panda/lowlevel.c
index 45ea221..e73e2cf 100644
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
diff --git a/arch/arm/boards/pcm049/lowlevel.c b/arch/arm/boards/pcm049/lowlevel.c
index bea895e..2b6e91f 100644
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
diff --git a/arch/arm/mach-omap/include/mach/omap4-silicon.h b/arch/arm/mach-omap/include/mach/omap4-silicon.h
index db0dfdf..12ab9a5 100644
--- a/arch/arm/mach-omap/include/mach/omap4-silicon.h
+++ b/arch/arm/mach-omap/include/mach/omap4-silicon.h
@@ -175,5 +175,6 @@ struct dpll_param;
 void omap4_ddr_init(const struct ddr_regs *, const struct dpll_param *);
 void omap4_power_i2c_send(u32);
 unsigned int omap4_revision(void);
+noinline int scale_vcores(void);
 
 #endif
diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
index c6e46e6..76cf2f5 100644
--- a/arch/arm/mach-omap/omap4_generic.c
+++ b/arch/arm/mach-omap/omap4_generic.c
@@ -419,3 +419,34 @@ enum omap_boot_src omap4_bootsrc(void)
 		return OMAP_BOOTSRC_NAND;
 	return OMAP_BOOTSRC_UNKNOWN;
 }
+
+#define I2C_SLAVE 0x12
+
+noinline int scale_vcores(void)
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
