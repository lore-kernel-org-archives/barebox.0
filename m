Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo3.mail-out.ovh.net ([87.98.172.162]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TMwXj-0007oa-Vx
 for barebox@lists.infradead.org; Sat, 13 Oct 2012 07:53:58 +0000
Received: from mail186.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 2052BFF88CC
 for <barebox@lists.infradead.org>; Sat, 13 Oct 2012 10:03:10 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 13 Oct 2012 09:51:26 +0200
Message-Id: <1350114689-19272-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/4] reset_source: make enum and string human readable
To: barebox@lists.infradead.org

Today we need to read the code to understand it

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-imx/reset_source.c     |    6 +++---
 arch/arm/mach-samsung/reset_source.c |    6 +++---
 common/reset_source.c                |   14 +++++++-------
 drivers/watchdog/im28wd.c            |    6 +++---
 include/reset_source.h               |   10 +++++-----
 5 files changed, 21 insertions(+), 21 deletions(-)

diff --git a/arch/arm/mach-imx/reset_source.c b/arch/arm/mach-imx/reset_source.c
index e7b2a90..e97bf15 100644
--- a/arch/arm/mach-imx/reset_source.c
+++ b/arch/arm/mach-imx/reset_source.c
@@ -51,17 +51,17 @@ static int imx_detect_reset_source(void)
 	unsigned reg = read_detection_register();
 
 	if (reg & IMX_RESET_SRC_COLDSTART) {
-		set_reset_source(RESET_POR);
+		set_reset_source(RESET_POWER);
 		return 0;
 	}
 
 	if (reg & (IMX_RESET_SRC_HRDRESET | IMX_RESET_SRC_WARMSTART)) {
-		set_reset_source(RESET_RST);
+		set_reset_source(RESET_RESET);
 		return 0;
 	}
 
 	if (reg & IMX_RESET_SRC_WDOG) {
-		set_reset_source(RESET_WDG);
+		set_reset_source(RESET_WATCHDOG);
 		return 0;
 	}
 
diff --git a/arch/arm/mach-samsung/reset_source.c b/arch/arm/mach-samsung/reset_source.c
index 2456e3f..e2b8808 100644
--- a/arch/arm/mach-samsung/reset_source.c
+++ b/arch/arm/mach-samsung/reset_source.c
@@ -29,21 +29,21 @@ static int s3c_detect_reset_source(void)
 	u32 reg = readl(S3C_GPIO_BASE + S3C2440_GSTATUS2);
 
 	if (reg & S3C2440_GSTATUS2_PWRST) {
-		set_reset_source(RESET_POR);
+		set_reset_source(RESET_POWER);
 		writel(S3C2440_GSTATUS2_PWRST,
 					S3C_GPIO_BASE + S3C2440_GSTATUS2);
 		return 0;
 	}
 
 	if (reg & S3C2440_GSTATUS2_SLEEPRST) {
-		set_reset_source(RESET_WKE);
+		set_reset_source(RESET_WAKEUP);
 		writel(S3C2440_GSTATUS2_SLEEPRST,
 					S3C_GPIO_BASE + S3C2440_GSTATUS2);
 		return 0;
 	}
 
 	if (reg & S3C2440_GSTATUS2_WDRST) {
-		set_reset_source(RESET_WDG);
+		set_reset_source(RESET_WATCHDOG);
 		writel(S3C2440_GSTATUS2_WDRST,
 					S3C_GPIO_BASE + S3C2440_GSTATUS2);
 		return 0;
diff --git a/common/reset_source.c b/common/reset_source.c
index 2a7f9ff..ff76857 100644
--- a/common/reset_source.c
+++ b/common/reset_source.c
@@ -19,12 +19,12 @@
 #include <reset_source.h>
 
 static const char * const reset_src_names[] = {
-	[RESET_UKWN] = "unknown",
-	[RESET_POR] = "POR",
-	[RESET_RST] = "RST",
-	[RESET_WDG] = "WDG",
-	[RESET_WKE] = "WKE",
-	[RESET_JTAG] = "JTAG",
+	[RESET_UKWNOWN] = "unknown",
+	[RESET_POWER] = "power",
+	[RESET_RESET] = "reset",
+	[RESET_WATCHDOG] = "watchdog",
+	[RESET_WAKEUP] = "wakeup",
+	[RESET_JTAG] = "jtag",
 };
 
 void set_reset_source(enum reset_src_type st)
@@ -37,7 +37,7 @@ EXPORT_SYMBOL(set_reset_source);
 static int init_reset_source(void)
 {
 	globalvar_add_simple("system.reset");
-	set_reset_source(RESET_UKWN);
+	set_reset_source(RESET_UKWNOWN);
 	return 0;
 }
 
diff --git a/drivers/watchdog/im28wd.c b/drivers/watchdog/im28wd.c
index ca32a72..999f5b4 100644
--- a/drivers/watchdog/im28wd.c
+++ b/drivers/watchdog/im28wd.c
@@ -82,17 +82,17 @@ static void __maybe_unused imx28_detect_reset_source(const struct imx28_wd *p)
 	if (reg & MXS_RTC_PERSISTENT0_EXT_RST) {
 		writel(MXS_RTC_PERSISTENT0_EXT_RST,
 			p->regs + MXS_RTC_PERSISTENT0 + MXS_RTC_CLR_ADDR);
-		set_reset_source(RESET_POR);
+		set_reset_source(RESET_POWER);
 		return;
 	}
 	if (reg & MXS_RTC_PERSISTENT0_THM_RST) {
 		writel(MXS_RTC_PERSISTENT0_THM_RST,
 			p->regs + MXS_RTC_PERSISTENT0 + MXS_RTC_CLR_ADDR);
-		set_reset_source(RESET_RST);
+		set_reset_source(RESET_RESET);
 		return;
 	}
 
-	set_reset_source(RESET_RST);
+	set_reset_source(RESET_RESET);
 }
 
 static int imx28_wd_probe(struct device_d *dev)
diff --git a/include/reset_source.h b/include/reset_source.h
index 6734fbde..198abd0 100644
--- a/include/reset_source.h
+++ b/include/reset_source.h
@@ -14,11 +14,11 @@
 # define __INCLUDE_RESET_SOURCE_H
 
 enum reset_src_type {
-	RESET_UKWN,	/* maybe the SoC cannot detect the reset source */
-	RESET_POR,	/* Power On Reset (cold start) */
-	RESET_RST,	/* generic ReSeT (warm start) */
-	RESET_WDG,	/* watchdog */
-	RESET_WKE,	/* wake-up (some SoCs can handle this) */
+	RESET_UKWNOWN,	/* maybe the SoC cannot detect the reset source */
+	RESET_POWER,	/* Power On Reset (cold start) */
+	RESET_RESET,	/* generic ReSeT (warm start) */
+	RESET_WATCHDOG,	/* watchdog */
+	RESET_WAKEUP,	/* wake-up (some SoCs can handle this) */
 	RESET_JTAG,	/* JTAG reset */
 };
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
