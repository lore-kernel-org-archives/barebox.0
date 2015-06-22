Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z6z31-0002Rx-1K
 for barebox@lists.infradead.org; Mon, 22 Jun 2015 10:33:56 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <jbe@pengutronix.de>) id 1Z6z2d-0002E0-IY
 for barebox@lists.infradead.org; Mon, 22 Jun 2015 12:33:27 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.85)
 (envelope-from <jbe@pengutronix.de>) id 1Z6z2d-0002iw-8i
 for barebox@lists.infradead.org; Mon, 22 Jun 2015 12:33:27 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Mon, 22 Jun 2015 12:33:20 +0200
Message-Id: <1434969204-11433-3-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1434969204-11433-1-git-send-email-jbe@pengutronix.de>
References: <1434969204-11433-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 2/6] Reset reason: add a scope value to the reset reason
 feature
To: barebox@lists.infradead.org

Some systems do have more than one source to detect the reason of a reset.
In this case it depends on the initialization order which reason will be
reported to barebox. To avoid this race, this change adds a scope to the
function call to always accept settings with a wider scope and ignore
all settings with a limited scope.

This change is required to support systems where one reset reason source
is more reliable than other sources. Examples are all i.MX SoCs with
an internal reset reason detector and an external PMIC which has the same
capabilities. For these systems the external PMIC provides the correct
reset cause while the internal unit flags a POR only all the time. In order
to support one binary for more than one machine we cannot just disable the
internal reset reason detector, so we need this scope mechanism.

Assumption in this change is, the reset cause sources with a wider scope are
always reporting the correct reason and not vice versa.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 Documentation/user/reset-reason.rst  | 30 +++++++++++++++++++++++++++
 Documentation/user/system-reset.rst  |  3 ++-
 arch/arm/mach-imx/imx1.c             |  6 +++---
 arch/arm/mach-omap/am33xx_generic.c  | 12 +++++------
 arch/arm/mach-pxa/pxa2xx.c           | 10 ++++-----
 arch/arm/mach-pxa/pxa3xx.c           | 10 ++++-----
 arch/arm/mach-samsung/reset_source.c |  6 +++---
 arch/arm/mach-tegra/tegra20-pmc.c    | 12 +++++------
 common/reset_source.c                | 40 +++++++++++++++++++++++++++++++-----
 drivers/watchdog/im28wd.c            | 10 ++++-----
 drivers/watchdog/imxwd.c             |  6 +++---
 include/reset_source.h               |  6 ++++--
 12 files changed, 107 insertions(+), 44 deletions(-)

diff --git a/Documentation/user/reset-reason.rst b/Documentation/user/reset-reason.rst
index a4872fa..525ade2 100644
--- a/Documentation/user/reset-reason.rst
+++ b/Documentation/user/reset-reason.rst
@@ -3,6 +3,9 @@
 Reset Reason
 ------------
 
+Using the Reset Reason
+~~~~~~~~~~~~~~~~~~~~~~
+
 To handle a device in a secure and safty manner many applications are using
 a watchdog or other ways to reset a system to bring it back into life if it
 hangs or crashes somehow.
@@ -45,3 +48,30 @@ The following values can help to detect the reason why the bootloader runs:
 It depends on your board/SoC and its features if the hardware is able to detect
 these reset reasons. Most of the time only ``POR`` and ``RST`` are supported
 but often ``WDG`` as well.
+
+.. _reset_reason_scope:
+
+Scope of Reset Reason
+~~~~~~~~~~~~~~~~~~~~~
+
+Some machines can detect the reset reason via different devices, for example
+via a SoC internal devices and an externally attached device. Both can provide
+the correct reason - or not. If their reset reason point of view differ, you
+need a ``scope`` to decide what reason is the correct one. Barebox provides
+the reset reason scope via the global variable ``system.reset.scope`` and
+the following values:
+
+* ``unknown``: the software can't define the scope of the reset reason.
+* ``cpu``: the inner core CPU only point of view.
+* ``soc``: the full SoC point of view.
+* ``machine``: the full machine point of view
+
+The scopes are rated: lowest rate is ``unknown`` and ``cpu``. The highest
+rate has the ``machine`` point of view. The ``soc`` point of view in inbetween.
+
+Why can the reset reason differ due to different scopes? Think about a SoC which
+is powered by a PMIC: the reset reason detection inside the SoC has the ``soc``
+scope, the PMIC's reset reason detection has the ``machine`` scope. In this case
+the ``soc`` scope reset reason is always ``POR``, while the ``machine`` scope
+reset reason is ``POR`` only on a real POR, ``RST`` due to an user
+intervention and ``WDG`` because the system has failed somehow.
diff --git a/Documentation/user/system-reset.rst b/Documentation/user/system-reset.rst
index e76e3a2..e902026 100644
--- a/Documentation/user/system-reset.rst
+++ b/Documentation/user/system-reset.rst
@@ -61,4 +61,5 @@ wide reset, like the POR is.
 Drawback of the PMIC solution is, you can't use the SoC's internal mechanisms to
 detect the :ref:`reset_reason` anymore. From the SoC point of view it is always
 a POR when the PMIC handles the system reset. If you are in luck the PMIC
-instead can provide this information if you depend on it.
+instead can provide this information if you depend on it. Refer
+:ref:`reset_reason_scope` for further information.
diff --git a/arch/arm/mach-imx/imx1.c b/arch/arm/mach-imx/imx1.c
index 51bdcbf..453d632 100644
--- a/arch/arm/mach-imx/imx1.c
+++ b/arch/arm/mach-imx/imx1.c
@@ -30,13 +30,13 @@ static void imx1_detect_reset_source(void)
 
 	switch (val) {
 	case RSR_EXR:
-		reset_source_set(RESET_RST);
+		reset_source_set(RESET_RST, FEATURE_SCOPE_SOC);
 		return;
 	case RSR_WDR:
-		reset_source_set(RESET_WDG);
+		reset_source_set(RESET_WDG, FEATURE_SCOPE_SOC);
 		return;
 	case 0:
-		reset_source_set(RESET_POR);
+		reset_source_set(RESET_POR, FEATURE_SCOPE_SOC);
 		return;
 	default:
 		/* else keep the default 'unknown' state */
diff --git a/arch/arm/mach-omap/am33xx_generic.c b/arch/arm/mach-omap/am33xx_generic.c
index 7ce32f0..655bea6 100644
--- a/arch/arm/mach-omap/am33xx_generic.c
+++ b/arch/arm/mach-omap/am33xx_generic.c
@@ -167,23 +167,23 @@ static void am33xx_detect_reset_reason(void)
 
 	switch (val) {
 	case (1 << 9):
-		reset_source_set(RESET_JTAG);
+		reset_source_set(RESET_JTAG, FEATURE_SCOPE_SOC);
 		break;
 	case (1 << 5):
-		reset_source_set(RESET_EXT);
+		reset_source_set(RESET_EXT, FEATURE_SCOPE_SOC);
 		break;
 	case (1 << 4):
 	case (1 << 3):
-		reset_source_set(RESET_WDG);
+		reset_source_set(RESET_WDG, FEATURE_SCOPE_SOC);
 		break;
 	case (1 << 1):
-		reset_source_set(RESET_RST);
+		reset_source_set(RESET_RST, FEATURE_SCOPE_SOC);
 		break;
 	case (1 << 0):
-		reset_source_set(RESET_POR);
+		reset_source_set(RESET_POR, FEATURE_SCOPE_SOC);
 		break;
 	default:
-		reset_source_set(RESET_UKWN);
+		reset_source_set(RESET_UKWN, FEATURE_SCOPE_SOC);
 		break;
 	}
 }
diff --git a/arch/arm/mach-pxa/pxa2xx.c b/arch/arm/mach-pxa/pxa2xx.c
index b712b38..c774718 100644
--- a/arch/arm/mach-pxa/pxa2xx.c
+++ b/arch/arm/mach-pxa/pxa2xx.c
@@ -28,15 +28,15 @@ static int pxa_detect_reset_source(void)
 	 * Order is important, as many bits can be set together
 	 */
 	if (reg & RCSR_GPR)
-		reset_source_set(RESET_RST);
+		reset_source_set(RESET_RST, FEATURE_SCOPE_SOC);
 	else if (reg & RCSR_WDR)
-		reset_source_set(RESET_WDG);
+		reset_source_set(RESET_WDG, FEATURE_SCOPE_SOC);
 	else if (reg & RCSR_HWR)
-		reset_source_set(RESET_POR);
+		reset_source_set(RESET_POR, FEATURE_SCOPE_SOC);
 	else if (reg & RCSR_SMR)
-		reset_source_set(RESET_WKE);
+		reset_source_set(RESET_WKE, FEATURE_SCOPE_SOC);
 	else
-		reset_source_set(RESET_UKWN);
+		reset_source_set(RESET_UKWN, FEATURE_SCOPE_SOC);
 
 	return 0;
 }
diff --git a/arch/arm/mach-pxa/pxa3xx.c b/arch/arm/mach-pxa/pxa3xx.c
index 86ca63b..8882457 100644
--- a/arch/arm/mach-pxa/pxa3xx.c
+++ b/arch/arm/mach-pxa/pxa3xx.c
@@ -28,15 +28,15 @@ static int pxa_detect_reset_source(void)
 	 * Order is important, as many bits can be set together
 	 */
 	if (reg & ARSR_GPR)
-		reset_source_set(RESET_RST);
+		reset_source_set(RESET_RST, FEATURE_SCOPE_SOC);
 	else if (reg & ARSR_WDT)
-		reset_source_set(RESET_WDG);
+		reset_source_set(RESET_WDG, FEATURE_SCOPE_SOC);
 	else if (reg & ARSR_HWR)
-		reset_source_set(RESET_POR);
+		reset_source_set(RESET_POR, FEATURE_SCOPE_SOC);
 	else if (reg & ARSR_LPMR)
-		reset_source_set(RESET_WKE);
+		reset_source_set(RESET_WKE, FEATURE_SCOPE_SOC);
 	else
-		reset_source_set(RESET_UKWN);
+		reset_source_set(RESET_UKWN, FEATURE_SCOPE_SOC);
 
 	return 0;
 }
diff --git a/arch/arm/mach-samsung/reset_source.c b/arch/arm/mach-samsung/reset_source.c
index c1365b2..1234a9b 100644
--- a/arch/arm/mach-samsung/reset_source.c
+++ b/arch/arm/mach-samsung/reset_source.c
@@ -29,21 +29,21 @@ static int s3c_detect_reset_source(void)
 	u32 reg = readl(S3C_GPIO_BASE + S3C2440_GSTATUS2);
 
 	if (reg & S3C2440_GSTATUS2_PWRST) {
-		reset_source_set(RESET_POR);
+		reset_source_set(RESET_POR, FEATURE_SCOPE_SOC);
 		writel(S3C2440_GSTATUS2_PWRST,
 					S3C_GPIO_BASE + S3C2440_GSTATUS2);
 		return 0;
 	}
 
 	if (reg & S3C2440_GSTATUS2_SLEEPRST) {
-		reset_source_set(RESET_WKE);
+		reset_source_set(RESET_WKE, FEATURE_SCOPE_SOC);
 		writel(S3C2440_GSTATUS2_SLEEPRST,
 					S3C_GPIO_BASE + S3C2440_GSTATUS2);
 		return 0;
 	}
 
 	if (reg & S3C2440_GSTATUS2_WDRST) {
-		reset_source_set(RESET_WDG);
+		reset_source_set(RESET_WDG, FEATURE_SCOPE_SOC);
 		writel(S3C2440_GSTATUS2_WDRST,
 					S3C_GPIO_BASE + S3C2440_GSTATUS2);
 		return 0;
diff --git a/arch/arm/mach-tegra/tegra20-pmc.c b/arch/arm/mach-tegra/tegra20-pmc.c
index eaa5ac7..7970d87 100644
--- a/arch/arm/mach-tegra/tegra20-pmc.c
+++ b/arch/arm/mach-tegra/tegra20-pmc.c
@@ -180,22 +180,22 @@ static void tegra20_pmc_detect_reset_cause(void)
 	switch ((reg & PMC_RST_STATUS_RST_SRC_MASK) >>
 	         PMC_RST_STATUS_RST_SRC_SHIFT) {
 	case PMC_RST_STATUS_RST_SRC_POR:
-		reset_source_set(RESET_POR);
+		reset_source_set(RESET_POR, FEATURE_SCOPE_SOC);
 		break;
 	case PMC_RST_STATUS_RST_SRC_WATCHDOG:
-		reset_source_set(RESET_WDG);
+		reset_source_set(RESET_WDG, FEATURE_SCOPE_SOC);
 		break;
 	case PMC_RST_STATUS_RST_SRC_LP0:
-		reset_source_set(RESET_WKE);
+		reset_source_set(RESET_WKE, FEATURE_SCOPE_SOC);
 		break;
 	case PMC_RST_STATUS_RST_SRC_SW_MAIN:
-		reset_source_set(RESET_RST);
+		reset_source_set(RESET_RST, FEATURE_SCOPE_SOC);
 		break;
 	case PMC_RST_STATUS_RST_SRC_SENSOR:
-		reset_source_set(RESET_THERM);
+		reset_source_set(RESET_THERM, FEATURE_SCOPE_SOC);
 		break;
 	default:
-		reset_source_set(RESET_UKWN);
+		reset_source_set(RESET_UKWN, FEATURE_SCOPE_SOC);
 		break;
 	}
 }
diff --git a/common/reset_source.c b/common/reset_source.c
index 80002a9..652d3e8 100644
--- a/common/reset_source.c
+++ b/common/reset_source.c
@@ -30,6 +30,7 @@ static const char * const reset_src_names[] = {
 };
 
 static enum reset_src_type reset_source;
+static enum f_scope reset_source_scope;
 
 enum reset_src_type reset_source_get(void)
 {
@@ -37,20 +38,49 @@ enum reset_src_type reset_source_get(void)
 }
 EXPORT_SYMBOL(reset_source_get);
 
-void reset_source_set(enum reset_src_type st)
+static void reset_source_update_global_info(void)
 {
-	reset_source = st;
+	const char *scope;
 
-	globalvar_add_simple("system.reset", reset_src_names[reset_source]);
+	globalvar_set_match("system.reset", reset_src_names[reset_source]);
+
+	switch (reset_source_scope) {
+	case FEATURE_SCOPE_CPU:
+		scope = NAME_FEATURE_SCOPE_CPU;
+		break;
+	case FEATURE_SCOPE_SOC:
+		scope = NAME_FEATURE_SCOPE_SOC;
+		break;
+	case FEATURE_SCOPE_MACHINE:
+		scope = NAME_FEATURE_SCOPE_MACHINE;
+		break;
+	default:
+		scope = NAME_FEATURE_SCOPE_UNKNOWN;
+		break;
+	}
+	globalvar_set_match("system.reset.scope", scope);
+}
+
+void reset_source_set(enum reset_src_type st, enum f_scope scope)
+{
+	if (scope <= reset_source_scope)
+		return; /* just ignore this setting */
+
+	reset_source = st;
+	reset_source_scope = scope;
+	reset_source_update_global_info();
 }
 EXPORT_SYMBOL(reset_source_set);
 
 /* ensure this runs after the 'global' device is already registerd */
 static int reset_source_init(void)
 {
-	reset_source_set(reset_source);
+	reset_source = RESET_UKWN;
+	reset_source_scope = FEATURE_SCOPE_UNKNOWN;
+
+	globalvar_add_simple("system.reset", reset_src_names[reset_source]);
+	globalvar_add_simple("system.reset.scope", NAME_FEATURE_SCOPE_UNKNOWN);
 
 	return 0;
 }
-
 coredevice_initcall(reset_source_init);
diff --git a/drivers/watchdog/im28wd.c b/drivers/watchdog/im28wd.c
index a9093a7..5781387 100644
--- a/drivers/watchdog/im28wd.c
+++ b/drivers/watchdog/im28wd.c
@@ -164,27 +164,27 @@ static void __maybe_unused imx28_detect_reset_source(const struct imx28_wd *p)
 		if (reg & MXS_RTC_PERSISTENT0_ALARM_WAKE) {
 			writel(MXS_RTC_PERSISTENT0_ALARM_WAKE,
 				p->regs + MXS_RTC_PERSISTENT0 + MXS_RTC_CLR_ADDR);
-			reset_source_set(RESET_WKE);
+			reset_source_set(RESET_WKE, FEATURE_SCOPE_SOC);
 			return;
 		}
-		reset_source_set(RESET_POR);
+		reset_source_set(RESET_POR, FEATURE_SCOPE_SOC);
 		return;
 	}
 	if (reg & MXS_RTC_PERSISTENT0_THM_RST) {
 		writel(MXS_RTC_PERSISTENT0_THM_RST,
 			p->regs + MXS_RTC_PERSISTENT0 + MXS_RTC_CLR_ADDR);
-		reset_source_set(RESET_RST);
+		reset_source_set(RESET_RST, FEATURE_SCOPE_SOC);
 		return;
 	}
 	reg = readl(p->regs + MXS_RTC_PERSISTENT1);
 	if (reg & MXS_RTC_PERSISTENT1_FORCE_UPDATER) {
 		writel(MXS_RTC_PERSISTENT1_FORCE_UPDATER,
 			p->regs + MXS_RTC_PERSISTENT1 + MXS_RTC_CLR_ADDR);
-		reset_source_set(RESET_WDG);
+		reset_source_set(RESET_WDG, FEATURE_SCOPE_SOC);
 		return;
 	}
 
-	reset_source_set(RESET_RST);
+	reset_source_set(RESET_RST, FEATURE_SCOPE_SOC);
 }
 
 static int imx28_wd_probe(struct device_d *dev)
diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index 5ffbac7..66b6599 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -138,17 +138,17 @@ static void imx_watchdog_detect_reset_source(struct imx_wd *priv)
 	u16 val = readw(priv->base + IMX21_WDOG_WSTR);
 
 	if (val & WSTR_COLDSTART) {
-		reset_source_set(RESET_POR);
+		reset_source_set(RESET_POR, FEATURE_SCOPE_SOC);
 		return;
 	}
 
 	if (val & (WSTR_HARDRESET | WSTR_WARMSTART)) {
-		reset_source_set(RESET_RST);
+		reset_source_set(RESET_RST, FEATURE_SCOPE_SOC);
 		return;
 	}
 
 	if (val & WSTR_WDOG) {
-		reset_source_set(RESET_WDG);
+		reset_source_set(RESET_WDG, FEATURE_SCOPE_SOC);
 		return;
 	}
 
diff --git a/include/reset_source.h b/include/reset_source.h
index 367f93b..233de9e 100644
--- a/include/reset_source.h
+++ b/include/reset_source.h
@@ -13,6 +13,8 @@
 #ifndef __INCLUDE_RESET_SOURCE_H
 # define __INCLUDE_RESET_SOURCE_H
 
+#include <fscope.h>
+
 enum reset_src_type {
 	RESET_UKWN,	/* maybe the SoC cannot detect the reset source */
 	RESET_POR,	/* Power On Reset (cold start) */
@@ -25,10 +27,10 @@ enum reset_src_type {
 };
 
 #ifdef CONFIG_RESET_SOURCE
-void reset_source_set(enum reset_src_type);
+void reset_source_set(enum reset_src_type, enum f_scope);
 enum reset_src_type reset_source_get(void);
 #else
-static inline void reset_source_set(enum reset_src_type unused)
+static inline void reset_source_set(enum reset_src_type unused1, enum f_scope unused2)
 {
 }
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
