Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YGN7D-0000FA-3Q
 for barebox@lists.infradead.org; Wed, 28 Jan 2015 07:32:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 Jan 2015 08:32:06 +0100
Message-Id: <1422430339-11969-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/15] MXS: power-init: inline only once used functions
To: Barebox List <barebox@lists.infradead.org>

mxs_power_init_4p2_params and mxs_power_init_4p2_regulator are used
only once, so inline the code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-mxs/power-init.c | 158 +++++++++++++++++------------------------
 1 file changed, 65 insertions(+), 93 deletions(-)

diff --git a/arch/arm/mach-mxs/power-init.c b/arch/arm/mach-mxs/power-init.c
index bc3d659..366b3f2 100644
--- a/arch/arm/mach-mxs/power-init.c
+++ b/arch/arm/mach-mxs/power-init.c
@@ -299,36 +299,6 @@ static void mxs_src_power_init(void)
 }
 
 /**
- * mxs_power_init_4p2_params() - Configure the parameters of the 4P2 regulator
- *
- * This function configures the necessary parameters for the 4P2 linear
- * regulator to supply the DC-DC converter from 5V input.
- */
-static void mxs_power_init_4p2_params(void)
-{
-	struct mxs_power_regs *power_regs =
-		(struct mxs_power_regs *)IMX_POWER_BASE;
-
-	/* Setup 4P2 parameters */
-	clrsetbits_le32(&power_regs->hw_power_dcdc4p2,
-		POWER_DCDC4P2_CMPTRIP_MASK | POWER_DCDC4P2_TRG_MASK,
-		POWER_DCDC4P2_TRG_4V2 | (31 << POWER_DCDC4P2_CMPTRIP_OFFSET));
-
-	clrsetbits_le32(&power_regs->hw_power_5vctrl,
-		POWER_5VCTRL_HEADROOM_ADJ_MASK,
-		0x4 << POWER_5VCTRL_HEADROOM_ADJ_OFFSET);
-
-	clrsetbits_le32(&power_regs->hw_power_dcdc4p2,
-		POWER_DCDC4P2_DROPOUT_CTRL_MASK,
-		POWER_DCDC4P2_DROPOUT_CTRL_100MV |
-		POWER_DCDC4P2_DROPOUT_CTRL_SRC_SEL);
-
-	clrsetbits_le32(&power_regs->hw_power_5vctrl,
-		POWER_5VCTRL_CHARGE_4P2_ILIMIT_MASK,
-		0x3f << POWER_5VCTRL_CHARGE_4P2_ILIMIT_OFFSET);
-}
-
-/**
  * mxs_enable_4p2_dcdc_input() - Enable or disable the DCDC input from 4P2
  * @xfer:	Select if the input shall be enabled or disabled
  *
@@ -431,17 +401,78 @@ static void mxs_enable_4p2_dcdc_input(int xfer)
 }
 
 /**
- * mxs_power_init_4p2_regulator() - Start the 4P2 regulator
+ * mxs_power_init_dcdc_4p2_source() - Switch DC-DC converter to 4P2 source
+ *
+ * This function configures the DC-DC converter to be supplied from the 4P2
+ * linear regulator.
+ */
+static void mxs_power_init_dcdc_4p2_source(void)
+{
+	struct mxs_power_regs *power_regs =
+		(struct mxs_power_regs *)IMX_POWER_BASE;
+
+	if (!(readl(&power_regs->hw_power_dcdc4p2) &
+		POWER_DCDC4P2_ENABLE_DCDC)) {
+		hang();
+	}
+
+	mxs_enable_4p2_dcdc_input(1);
+
+	if (readl(&power_regs->hw_power_ctrl) & POWER_CTRL_VBUS_VALID_IRQ) {
+		clrbits_le32(&power_regs->hw_power_dcdc4p2,
+			POWER_DCDC4P2_ENABLE_DCDC);
+		writel(POWER_5VCTRL_ENABLE_DCDC,
+			&power_regs->hw_power_5vctrl_clr);
+		charger_4p2_disable();
+	}
+}
+
+/**
+ * mxs_power_enable_4p2() - Power up the 4P2 regulator
  *
- * This function enables the 4P2 regulator and switches the DC-DC converter
- * to use the 4P2 input.
+ * This function drives the process of powering up the 4P2 linear regulator
+ * and switching the DC-DC converter input over to the 4P2 linear regulator.
  */
-static void mxs_power_init_4p2_regulator(void)
+static void mxs_power_enable_4p2(void)
 {
 	struct mxs_power_regs *power_regs =
 		(struct mxs_power_regs *)IMX_POWER_BASE;
+	uint32_t vdddctrl, vddactrl, vddioctrl;
 	uint32_t tmp, tmp2;
 
+	vdddctrl = readl(&power_regs->hw_power_vdddctrl);
+	vddactrl = readl(&power_regs->hw_power_vddactrl);
+	vddioctrl = readl(&power_regs->hw_power_vddioctrl);
+
+	setbits_le32(&power_regs->hw_power_vdddctrl,
+		POWER_VDDDCTRL_DISABLE_FET | POWER_VDDDCTRL_ENABLE_LINREG |
+		POWER_VDDDCTRL_PWDN_BRNOUT);
+
+	setbits_le32(&power_regs->hw_power_vddactrl,
+		POWER_VDDACTRL_DISABLE_FET | POWER_VDDACTRL_ENABLE_LINREG |
+		POWER_VDDACTRL_PWDN_BRNOUT);
+
+	setbits_le32(&power_regs->hw_power_vddioctrl,
+		POWER_VDDIOCTRL_DISABLE_FET | POWER_VDDIOCTRL_PWDN_BRNOUT);
+
+	/* Setup 4P2 parameters */
+	clrsetbits_le32(&power_regs->hw_power_dcdc4p2,
+		POWER_DCDC4P2_CMPTRIP_MASK | POWER_DCDC4P2_TRG_MASK,
+		POWER_DCDC4P2_TRG_4V2 | (31 << POWER_DCDC4P2_CMPTRIP_OFFSET));
+
+	clrsetbits_le32(&power_regs->hw_power_5vctrl,
+		POWER_5VCTRL_HEADROOM_ADJ_MASK,
+		0x4 << POWER_5VCTRL_HEADROOM_ADJ_OFFSET);
+
+	clrsetbits_le32(&power_regs->hw_power_dcdc4p2,
+		POWER_DCDC4P2_DROPOUT_CTRL_MASK,
+		POWER_DCDC4P2_DROPOUT_CTRL_100MV |
+		POWER_DCDC4P2_DROPOUT_CTRL_SRC_SEL);
+
+	clrsetbits_le32(&power_regs->hw_power_5vctrl,
+		POWER_5VCTRL_CHARGE_4P2_ILIMIT_MASK,
+		0x3f << POWER_5VCTRL_CHARGE_4P2_ILIMIT_OFFSET);
+
 	setbits_le32(&power_regs->hw_power_dcdc4p2, POWER_DCDC4P2_ENABLE_4P2);
 
 	writel(POWER_CHARGE_ENABLE_LOAD, &power_regs->hw_power_charge_set);
@@ -516,65 +547,6 @@ static void mxs_power_init_4p2_regulator(void)
 
 	clrbits_le32(&power_regs->hw_power_dcdc4p2, POWER_DCDC4P2_BO_MASK);
 	writel(POWER_CTRL_DCDC4P2_BO_IRQ, &power_regs->hw_power_ctrl_clr);
-}
-
-/**
- * mxs_power_init_dcdc_4p2_source() - Switch DC-DC converter to 4P2 source
- *
- * This function configures the DC-DC converter to be supplied from the 4P2
- * linear regulator.
- */
-static void mxs_power_init_dcdc_4p2_source(void)
-{
-	struct mxs_power_regs *power_regs =
-		(struct mxs_power_regs *)IMX_POWER_BASE;
-
-	if (!(readl(&power_regs->hw_power_dcdc4p2) &
-		POWER_DCDC4P2_ENABLE_DCDC)) {
-		hang();
-	}
-
-	mxs_enable_4p2_dcdc_input(1);
-
-	if (readl(&power_regs->hw_power_ctrl) & POWER_CTRL_VBUS_VALID_IRQ) {
-		clrbits_le32(&power_regs->hw_power_dcdc4p2,
-			POWER_DCDC4P2_ENABLE_DCDC);
-		writel(POWER_5VCTRL_ENABLE_DCDC,
-			&power_regs->hw_power_5vctrl_clr);
-		charger_4p2_disable();
-	}
-}
-
-/**
- * mxs_power_enable_4p2() - Power up the 4P2 regulator
- *
- * This function drives the process of powering up the 4P2 linear regulator
- * and switching the DC-DC converter input over to the 4P2 linear regulator.
- */
-static void mxs_power_enable_4p2(void)
-{
-	struct mxs_power_regs *power_regs =
-		(struct mxs_power_regs *)IMX_POWER_BASE;
-	uint32_t vdddctrl, vddactrl, vddioctrl;
-	uint32_t tmp;
-
-	vdddctrl = readl(&power_regs->hw_power_vdddctrl);
-	vddactrl = readl(&power_regs->hw_power_vddactrl);
-	vddioctrl = readl(&power_regs->hw_power_vddioctrl);
-
-	setbits_le32(&power_regs->hw_power_vdddctrl,
-		POWER_VDDDCTRL_DISABLE_FET | POWER_VDDDCTRL_ENABLE_LINREG |
-		POWER_VDDDCTRL_PWDN_BRNOUT);
-
-	setbits_le32(&power_regs->hw_power_vddactrl,
-		POWER_VDDACTRL_DISABLE_FET | POWER_VDDACTRL_ENABLE_LINREG |
-		POWER_VDDACTRL_PWDN_BRNOUT);
-
-	setbits_le32(&power_regs->hw_power_vddioctrl,
-		POWER_VDDIOCTRL_DISABLE_FET | POWER_VDDIOCTRL_PWDN_BRNOUT);
-
-	mxs_power_init_4p2_params();
-	mxs_power_init_4p2_regulator();
 
 	/* Shutdown battery (none present) */
 	if (!mxs_is_batt_ready()) {
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
