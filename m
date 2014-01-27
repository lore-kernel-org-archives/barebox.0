Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W7ikG-0007Nb-2l
 for barebox@lists.infradead.org; Mon, 27 Jan 2014 09:44:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 27 Jan 2014 10:44:20 +0100
Message-Id: <1390815861-30321-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] reset_source: rename set_reset_source to reset_source_set
To: barebox@lists.infradead.org

To get all reset source related functions into the same function
namespace.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx1.c             |  6 +++---
 arch/arm/mach-pxa/reset_source.c     | 10 +++++-----
 arch/arm/mach-samsung/reset_source.c |  6 +++---
 common/reset_source.c                |  8 ++++----
 drivers/watchdog/im28wd.c            |  8 ++++----
 drivers/watchdog/imxwd.c             |  6 +++---
 include/reset_source.h               |  4 ++--
 7 files changed, 24 insertions(+), 24 deletions(-)

diff --git a/arch/arm/mach-imx/imx1.c b/arch/arm/mach-imx/imx1.c
index 78a0242..51bdcbf 100644
--- a/arch/arm/mach-imx/imx1.c
+++ b/arch/arm/mach-imx/imx1.c
@@ -30,13 +30,13 @@ static void imx1_detect_reset_source(void)
 
 	switch (val) {
 	case RSR_EXR:
-		set_reset_source(RESET_RST);
+		reset_source_set(RESET_RST);
 		return;
 	case RSR_WDR:
-		set_reset_source(RESET_WDG);
+		reset_source_set(RESET_WDG);
 		return;
 	case 0:
-		set_reset_source(RESET_POR);
+		reset_source_set(RESET_POR);
 		return;
 	default:
 		/* else keep the default 'unknown' state */
diff --git a/arch/arm/mach-pxa/reset_source.c b/arch/arm/mach-pxa/reset_source.c
index 2b650c6..a90584b 100644
--- a/arch/arm/mach-pxa/reset_source.c
+++ b/arch/arm/mach-pxa/reset_source.c
@@ -25,15 +25,15 @@ static int pxa_detect_reset_source(void)
 	 * Order is important, as many bits can be set together
 	 */
 	if (reg & RCSR_GPR)
-		set_reset_source(RESET_RST);
+		reset_source_set(RESET_RST);
 	else if (reg & RCSR_WDR)
-		set_reset_source(RESET_WDG);
+		reset_source_set(RESET_WDG);
 	else if (reg & RCSR_HWR)
-		set_reset_source(RESET_POR);
+		reset_source_set(RESET_POR);
 	else if (reg & RCSR_SMR)
-		set_reset_source(RESET_WKE);
+		reset_source_set(RESET_WKE);
 	else
-		set_reset_source(RESET_UKWN);
+		reset_source_set(RESET_UKWN);
 
 	return 0;
 }
diff --git a/arch/arm/mach-samsung/reset_source.c b/arch/arm/mach-samsung/reset_source.c
index 2456e3f..c1365b2 100644
--- a/arch/arm/mach-samsung/reset_source.c
+++ b/arch/arm/mach-samsung/reset_source.c
@@ -29,21 +29,21 @@ static int s3c_detect_reset_source(void)
 	u32 reg = readl(S3C_GPIO_BASE + S3C2440_GSTATUS2);
 
 	if (reg & S3C2440_GSTATUS2_PWRST) {
-		set_reset_source(RESET_POR);
+		reset_source_set(RESET_POR);
 		writel(S3C2440_GSTATUS2_PWRST,
 					S3C_GPIO_BASE + S3C2440_GSTATUS2);
 		return 0;
 	}
 
 	if (reg & S3C2440_GSTATUS2_SLEEPRST) {
-		set_reset_source(RESET_WKE);
+		reset_source_set(RESET_WKE);
 		writel(S3C2440_GSTATUS2_SLEEPRST,
 					S3C_GPIO_BASE + S3C2440_GSTATUS2);
 		return 0;
 	}
 
 	if (reg & S3C2440_GSTATUS2_WDRST) {
-		set_reset_source(RESET_WDG);
+		reset_source_set(RESET_WDG);
 		writel(S3C2440_GSTATUS2_WDRST,
 					S3C_GPIO_BASE + S3C2440_GSTATUS2);
 		return 0;
diff --git a/common/reset_source.c b/common/reset_source.c
index fdc30f4..3a11d26 100644
--- a/common/reset_source.c
+++ b/common/reset_source.c
@@ -27,18 +27,18 @@ static const char * const reset_src_names[] = {
 	[RESET_JTAG] = "JTAG",
 };
 
-void set_reset_source(enum reset_src_type st)
+void reset_source_set(enum reset_src_type st)
 {
 	setenv("global.system.reset", reset_src_names[st]);
 }
-EXPORT_SYMBOL(set_reset_source);
+EXPORT_SYMBOL(reset_source_set);
 
 /* ensure this runs after the 'global' device is already registerd */
-static int init_reset_source(void)
+static int reset_source_init(void)
 {
 	globalvar_add_simple("system.reset", reset_src_names[RESET_UKWN]);
 
 	return 0;
 }
 
-coredevice_initcall(init_reset_source);
+coredevice_initcall(reset_source_init);
diff --git a/drivers/watchdog/im28wd.c b/drivers/watchdog/im28wd.c
index 6ae4cf8..dd66e12 100644
--- a/drivers/watchdog/im28wd.c
+++ b/drivers/watchdog/im28wd.c
@@ -163,20 +163,20 @@ static void __maybe_unused imx28_detect_reset_source(const struct imx28_wd *p)
 		if (reg & MXS_RTC_PERSISTENT0_ALARM_WAKE) {
 			writel(MXS_RTC_PERSISTENT0_ALARM_WAKE,
 				p->regs + MXS_RTC_PERSISTENT0 + MXS_RTC_CLR_ADDR);
-			set_reset_source(RESET_WKE);
+			reset_source_set(RESET_WKE);
 			return;
 		}
-		set_reset_source(RESET_POR);
+		reset_source_set(RESET_POR);
 		return;
 	}
 	if (reg & MXS_RTC_PERSISTENT0_THM_RST) {
 		writel(MXS_RTC_PERSISTENT0_THM_RST,
 			p->regs + MXS_RTC_PERSISTENT0 + MXS_RTC_CLR_ADDR);
-		set_reset_source(RESET_RST);
+		reset_source_set(RESET_RST);
 		return;
 	}
 
-	set_reset_source(RESET_RST);
+	reset_source_set(RESET_RST);
 }
 
 static int imx28_wd_probe(struct device_d *dev)
diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index f5910ac..63c5605 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -130,17 +130,17 @@ static void imx_watchdog_detect_reset_source(struct imx_wd *priv)
 	u16 val = readw(priv->base + IMX21_WDOG_WSTR);
 
 	if (val & WSTR_COLDSTART) {
-		set_reset_source(RESET_POR);
+		reset_source_set(RESET_POR);
 		return;
 	}
 
 	if (val & (WSTR_HARDRESET | WSTR_WARMSTART)) {
-		set_reset_source(RESET_RST);
+		reset_source_set(RESET_RST);
 		return;
 	}
 
 	if (val & WSTR_WDOG) {
-		set_reset_source(RESET_WDG);
+		reset_source_set(RESET_WDG);
 		return;
 	}
 
diff --git a/include/reset_source.h b/include/reset_source.h
index 75e7ba8..f3a203a 100644
--- a/include/reset_source.h
+++ b/include/reset_source.h
@@ -23,9 +23,9 @@ enum reset_src_type {
 };
 
 #ifdef CONFIG_RESET_SOURCE
-void set_reset_source(enum reset_src_type);
+void reset_source_set(enum reset_src_type);
 #else
-static inline void set_reset_source(enum reset_src_type unused)
+static inline void reset_source_set(enum reset_src_type unused)
 {
 }
 #endif
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
