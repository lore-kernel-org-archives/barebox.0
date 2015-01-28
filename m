Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YGN7D-0000FH-3V
 for barebox@lists.infradead.org; Wed, 28 Jan 2015 07:32:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 Jan 2015 08:32:18 +0100
Message-Id: <1422430339-11969-15-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/15] ARM: MXS: power-init: Add parameters to
 mx28_power_init()
To: Barebox List <barebox@lists.infradead.org>

Instead of introducing new functions each time a new power supply
situation is to be added, this patch adds parameters to mx28_power_init.

Right now there are three parameters:

- has_battery - true when this board has a battery.
- use_battery_input - true when this board is supplied from the
  battery input, but has a DC source instead of a real battery
- use_5v_input - true when this board can use the 5V input

The third one is introduced with this patch and allow to boot a board from 5v
(USB) source only. The main necessary change this needs is that the DC-DC
converter must always be sourced from DCDC_4P2 (DROPOUT_CTRL field of
HW_POWER_DCDC4P2)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx28-evk/lowlevel.c |  2 +-
 arch/arm/boards/karo-tx28/lowlevel.c          |  2 +-
 arch/arm/mach-mxs/include/mach/init.h         |  8 ++--
 arch/arm/mach-mxs/power-init.c                | 67 ++++++++++++++++-----------
 4 files changed, 47 insertions(+), 32 deletions(-)

diff --git a/arch/arm/boards/freescale-mx28-evk/lowlevel.c b/arch/arm/boards/freescale-mx28-evk/lowlevel.c
index a46a080..1f56756 100644
--- a/arch/arm/boards/freescale-mx28-evk/lowlevel.c
+++ b/arch/arm/boards/freescale-mx28-evk/lowlevel.c
@@ -43,7 +43,7 @@ static noinline void freescale_mx28evk_init(void)
 
 	pr_debug("initializing power...\n");
 
-	mx28_power_init_battery_input();
+	mx28_power_init(0, 1, 0);
 
 	pr_debug("initializing SDRAM...\n");
 
diff --git a/arch/arm/boards/karo-tx28/lowlevel.c b/arch/arm/boards/karo-tx28/lowlevel.c
index c5fdda1..96a8b9b 100644
--- a/arch/arm/boards/karo-tx28/lowlevel.c
+++ b/arch/arm/boards/karo-tx28/lowlevel.c
@@ -43,7 +43,7 @@ static noinline void karo_tx28_init(void)
 
 	pr_debug("initializing power...\n");
 
-	mx28_power_init_battery_input();
+	mx28_power_init(0, 1, 0);
 
 	pr_debug("initializing SDRAM...\n");
 
diff --git a/arch/arm/mach-mxs/include/mach/init.h b/arch/arm/mach-mxs/include/mach/init.h
index 1f9d8d4..90b413e 100644
--- a/arch/arm/mach-mxs/include/mach/init.h
+++ b/arch/arm/mach-mxs/include/mach/init.h
@@ -12,10 +12,10 @@
 
 void mxs_early_delay(int delay);
 
-void mx23_power_init(void);
-void mx23_power_init_battery_input(void);
-void mx28_power_init(void);
-void mx28_power_init_battery_input(void);
+void mx23_power_init(int __has_battery, int __use_battery_input,
+		int __use_5v_input);
+void mx28_power_init(int __has_battery, int __use_battery_input,
+		int __use_5v_input);
 void mxs_power_wait_pswitch(void);
 
 extern uint32_t mx28_dram_vals[];
diff --git a/arch/arm/mach-mxs/power-init.c b/arch/arm/mach-mxs/power-init.c
index 5d4d089..595b51c 100644
--- a/arch/arm/mach-mxs/power-init.c
+++ b/arch/arm/mach-mxs/power-init.c
@@ -24,6 +24,22 @@
 #include <mach/regs-rtc.h>
 #include <mach/regs-lradc.h>
 
+/*
+ * has_battery - true when this board has a battery.
+ */
+static int has_battery;
+
+/*
+ * use_battery_input - true when this board is supplied from the
+ * battery input, but has a DC source instead of a real battery
+ */
+static int use_battery_input;
+
+/*
+ * use_5v_input - true when this board can use the 5V input
+ */
+static int use_5v_input;
+
 static void mxs_power_status(void)
 {
 	struct mxs_power_regs *power_regs =
@@ -472,7 +488,7 @@ static void mxs_power_enable_4p2(void)
 	struct mxs_power_regs *power_regs =
 		(struct mxs_power_regs *)IMX_POWER_BASE;
 	uint32_t vdddctrl, vddactrl, vddioctrl;
-	uint32_t tmp, tmp2;
+	uint32_t tmp, tmp2, dropout_ctrl;
 
 	vdddctrl = readl(&power_regs->hw_power_vdddctrl);
 	vddactrl = readl(&power_regs->hw_power_vddactrl);
@@ -498,10 +514,15 @@ static void mxs_power_enable_4p2(void)
 		POWER_5VCTRL_HEADROOM_ADJ_MASK,
 		0x4 << POWER_5VCTRL_HEADROOM_ADJ_OFFSET);
 
+	if (has_battery || use_battery_input)
+		dropout_ctrl = POWER_DCDC4P2_DROPOUT_CTRL_SRC_SEL;
+	else
+		dropout_ctrl = POWER_DCDC4P2_DROPOUT_CTRL_SRC_4P2;
+
 	clrsetbits_le32(&power_regs->hw_power_dcdc4p2,
 		POWER_DCDC4P2_DROPOUT_CTRL_MASK,
 		POWER_DCDC4P2_DROPOUT_CTRL_100MV |
-		POWER_DCDC4P2_DROPOUT_CTRL_SRC_SEL);
+		dropout_ctrl);
 
 	clrsetbits_le32(&power_regs->hw_power_5vctrl,
 		POWER_5VCTRL_CHARGE_4P2_ILIMIT_MASK,
@@ -1162,11 +1183,16 @@ static void mx23_ungate_power(void)
  * This function calls all the power block initialization functions in
  * proper sequence to start the power block.
  */
-static void __mx23_power_init(int has_battery)
+void mx23_power_init(int __has_battery, int __use_battery_input,
+		int __use_5v_input)
 {
 	struct mxs_power_regs *power_regs =
 		(struct mxs_power_regs *)IMX_POWER_BASE;
 
+	has_battery = __has_battery;
+	use_battery_input = __use_battery_input;
+	use_5v_input = __use_5v_input;
+
 	mx23_ungate_power();
 
 	mxs_power_clock2xtal();
@@ -1180,8 +1206,10 @@ static void __mx23_power_init(int has_battery)
 
 	if (has_battery)
 		mxs_power_configure_power_source();
-	else
+	else if (use_battery_input)
 		mxs_enable_battery_input();
+	else if (use_5v_input)
+		mxs_boot_valid_5v();
 
 	mxs_power_clock2pll();
 
@@ -1210,27 +1238,22 @@ static void __mx23_power_init(int has_battery)
 	mxs_early_delay(1000);
 }
 
-void mx23_power_init(void)
-{
-	__mx23_power_init(1);
-}
-
-void mx23_power_init_battery_input(void)
-{
-	__mx23_power_init(0);
-}
-
 /**
  * mx28_power_init() - The power block init main function
  *
  * This function calls all the power block initialization functions in
  * proper sequence to start the power block.
  */
-static void __mx28_power_init(int has_battery)
+void mx28_power_init(int __has_battery, int __use_battery_input,
+		int __use_5v_input)
 {
 	struct mxs_power_regs *power_regs =
 		(struct mxs_power_regs *)IMX_POWER_BASE;
 
+	has_battery = __has_battery;
+	use_battery_input = __use_battery_input;
+	use_5v_input = __use_5v_input;
+
 	mxs_power_status();
 	mxs_power_clock2xtal();
 	mxs_power_set_auto_restart();
@@ -1243,8 +1266,10 @@ static void __mx28_power_init(int has_battery)
 
 	if (has_battery)
 		mxs_power_configure_power_source();
-	else
+	else if (use_battery_input)
 		mxs_enable_battery_input();
+	else if (use_5v_input)
+		mxs_boot_valid_5v();
 
 	mxs_power_clock2pll();
 
@@ -1270,16 +1295,6 @@ static void __mx28_power_init(int has_battery)
 	mxs_power_status();
 }
 
-void mx28_power_init(void)
-{
-	__mx28_power_init(1);
-}
-
-void mx28_power_init_battery_input(void)
-{
-	__mx28_power_init(0);
-}
-
 /**
  * mxs_power_wait_pswitch() - Wait for power switch to be pressed
  *
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
