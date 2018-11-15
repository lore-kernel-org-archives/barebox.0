Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gNIRD-0003y0-7W
 for barebox@lists.infradead.org; Thu, 15 Nov 2018 14:16:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 Nov 2018 15:15:52 +0100
Message-Id: <20181115141552.26386-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX: When SRSR shows wdog then lookup reset source in
 wdog
To: Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

On i.MX6 when the watchdog has resetted the system then the SRSR
register correctly shows that the watchdog has resetted the system.
This is not the desired result though, a "reset" in barebox or "reboot"
in Linux should result in "RST" as reset source. So instead of making
the SRSR register value overwrite the reset source read from the
watchdog registers, interpret the SRSR value corresponding to watchdog
reset as "lookup details in the watchdog registers".

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx.c  |  6 +++---
 drivers/watchdog/imxwd.c | 10 +++++++---
 2 files changed, 10 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-imx/imx.c b/arch/arm/mach-imx/imx.c
index ad227663dd..f87dd76c75 100644
--- a/arch/arm/mach-imx/imx.c
+++ b/arch/arm/mach-imx/imx.c
@@ -204,9 +204,9 @@ void imx_set_reset_reason(void __iomem *srsr,
 	 * sure we'll always override info from watchdog driver.
 	 */
 	reset_source_set_priority(type,
-				  RESET_SOURCE_DEFAULT_PRIORITY + 1);
+				  RESET_SOURCE_DEFAULT_PRIORITY);
 	reset_source_set_instance(type, instance);
 
-	pr_info("i.MX reset reason %s (SRSR: 0x%08x)\n",
-		reset_source_name(), reg);
+	pr_debug("i.MX reset reason %s (SRSR: 0x%08x)\n",
+		 reset_source_name(), reg);
 }
diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index a66fae400c..8dba662392 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -162,19 +162,23 @@ static void __noreturn imxwd_force_soc_reset(struct restart_handler *rst)
 static void imx_watchdog_detect_reset_source(struct imx_wd *priv)
 {
 	u16 val = readw(priv->base + IMX21_WDOG_WSTR);
+	int priority = RESET_SOURCE_DEFAULT_PRIORITY;
+
+	if (reset_source_get() == RESET_WDG)
+		priority++;
 
 	if (val & WSTR_COLDSTART) {
-		reset_source_set(RESET_POR);
+		reset_source_set_priority(RESET_POR, priority);
 		return;
 	}
 
 	if (val & (WSTR_HARDRESET | WSTR_WARMSTART)) {
-		reset_source_set(RESET_RST);
+		reset_source_set_priority(RESET_RST, priority);
 		return;
 	}
 
 	if (val & WSTR_WDOG) {
-		reset_source_set(RESET_WDG);
+		reset_source_set_priority(RESET_WDG, priority);
 		return;
 	}
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
