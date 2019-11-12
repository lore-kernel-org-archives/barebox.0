Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUSLD-0006gX-2A
 for barebox@lists.infradead.org; Tue, 12 Nov 2019 09:20:04 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 12 Nov 2019 10:19:49 +0100
Message-Id: <20191112091956.26628-3-a.fatoum@pengutronix.de>
In-Reply-To: <20191112091956.26628-1-a.fatoum@pengutronix.de>
References: <20191112091956.26628-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 03/10] mfd: stpmic1: use register define from header
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

A previous commit has copied over the upstream <linux/mfd/stpmic1.h>
header. Use it instead of replicating register definitions in the
MFD and watchdog cell driver. No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mfd/stpmic1.c          |  3 +--
 drivers/watchdog/stpmic1_wdt.c | 28 ++++++++++++----------------
 2 files changed, 13 insertions(+), 18 deletions(-)

diff --git a/drivers/mfd/stpmic1.c b/drivers/mfd/stpmic1.c
index eae6fe3a4e05..ab13ded0ecfe 100644
--- a/drivers/mfd/stpmic1.c
+++ b/drivers/mfd/stpmic1.c
@@ -12,8 +12,7 @@
 #include <of.h>
 #include <regmap.h>
 #include <xfuncs.h>
-
-#define VERSION_SR		0x6
+#include <linux/mfd/stpmic1.h>
 
 struct stpmic1 {
 	struct device_d		*dev;
diff --git a/drivers/watchdog/stpmic1_wdt.c b/drivers/watchdog/stpmic1_wdt.c
index 9b7a586387db..40273ffc4c85 100644
--- a/drivers/watchdog/stpmic1_wdt.c
+++ b/drivers/watchdog/stpmic1_wdt.c
@@ -14,22 +14,15 @@
 #include <restart.h>
 #include <reset_source.h>
 
-#define RESTART_SR		0x05
-#define MAIN_CR			0x10
-#define WCHDG_CR		0x1B
-#define WCHDG_TIMER_CR		0x1C
+#include <linux/mfd/stpmic1.h>
 
-/* Restart Status Register (RESTART_SR) */
+/* Restart Status Register (RREQ_STATE_SR) */
 #define R_RST			BIT(0)
 #define R_SWOFF			BIT(1)
 #define R_WDG			BIT(2)
 #define R_PKEYLKP		BIT(3)
 #define R_VINOK_FA		BIT(4)
 
-/* Main PMIC Control Register (MAIN_CR) */
-#define SWOFF                   BIT(0)
-#define RREQ_EN                 BIT(1)
-
 /* Watchdog Control Register (WCHDG_CR) */
 #define WDT_START		BIT(0)
 #define WDT_PING		BIT(1)
@@ -106,8 +99,9 @@ static void __noreturn stpmic1_restart_handler(struct restart_handler *rst)
 {
 	struct stpmic1_wdt *wdt = container_of(rst, struct stpmic1_wdt, restart);
 
-	regmap_write_bits(wdt->regmap, MAIN_CR,
-			  SWOFF | RREQ_EN, SWOFF | RREQ_EN);
+	regmap_write_bits(wdt->regmap, SWOFF_PWRCTRL_CR,
+			  SOFTWARE_SWITCH_OFF_ENABLED | RESTART_REQUEST_ENABLED,
+			  SOFTWARE_SWITCH_OFF_ENABLED | RESTART_REQUEST_ENABLED);
 
 	mdelay(1000);
 	hang();
@@ -119,8 +113,9 @@ static void __noreturn stpmic1_poweroff(struct poweroff_handler *handler)
 
 	shutdown_barebox();
 
-	regmap_write_bits(wdt->regmap, MAIN_CR,
-			  SWOFF | RREQ_EN, SWOFF);
+	regmap_write_bits(wdt->regmap, SWOFF_PWRCTRL_CR,
+			  SOFTWARE_SWITCH_OFF_ENABLED | RESTART_REQUEST_ENABLED,
+			  SOFTWARE_SWITCH_OFF_ENABLED);
 
 	mdelay(1000);
 	hang();
@@ -142,7 +137,7 @@ static int stpmic1_set_reset_reason(struct regmap *map)
 	int ret;
 	int i, instance = 0;
 
-	ret = regmap_read(map, RESTART_SR, &reg);
+	ret = regmap_read(map, RREQ_STATE_SR, &reg);
 	if (ret)
 		return ret;
 
@@ -156,7 +151,7 @@ static int stpmic1_set_reset_reason(struct regmap *map)
 
 	reset_source_set_prinst(type, 400, instance);
 
-	pr_info("STPMIC1 reset reason %s (RESTART_SR: 0x%08x)\n",
+	pr_info("STPMIC1 reset reason %s (RREQ_STATE_SR: 0x%08x)\n",
 		reset_source_name(), reg);
 
 	return 0;
@@ -180,7 +175,8 @@ static int stpmic1_wdt_probe(struct device_d *dev)
 	wdd->timeout_max = PMIC_WDT_MAX_TIMEOUT;
 
 	/* have the watchdog reset, not power-off the system */
-	regmap_write_bits(wdt->regmap, MAIN_CR, RREQ_EN, RREQ_EN);
+	regmap_write_bits(wdt->regmap, SWOFF_PWRCTRL_CR,
+			  RESTART_REQUEST_ENABLED, RESTART_REQUEST_ENABLED);
 
 	ret = watchdog_register(wdd);
 	if (ret) {
-- 
2.24.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
