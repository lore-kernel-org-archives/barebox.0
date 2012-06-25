Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SjDFB-0002O5-TR
 for barebox@lists.infradead.org; Mon, 25 Jun 2012 17:38:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 Jun 2012 19:38:27 +0200
Message-Id: <1340645910-15668-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1340645910-15668-1-git-send-email-s.hauer@pengutronix.de>
References: <1340645910-15668-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/12] ARM i.MX clocksource: put registers in iomem space
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clocksource.c |   12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-imx/clocksource.c b/arch/arm/mach-imx/clocksource.c
index 4f5895c..4e77ece 100644
--- a/arch/arm/mach-imx/clocksource.c
+++ b/arch/arm/mach-imx/clocksource.c
@@ -38,7 +38,7 @@
 #include <io.h>
 
 #define GPT(x) __REG(IMX_TIM1_BASE + (x))
-#define timer_base (IMX_TIM1_BASE)
+#define timer_base IOMEM(IMX_TIM1_BASE)
 
 static uint64_t imx_clocksource_read(void)
 {
@@ -120,15 +120,17 @@ core_initcall(clocksource_init);
  */
 void __noreturn reset_cpu (unsigned long addr)
 {
+	void __iomem *wdt = IOMEM(IMX_WDT_BASE);
+
 	/* Disable watchdog and set Time-Out field to 0 */
-	writew(0x0, IMX_WDT_BASE + WDOG_WCR);
+	writew(0x0, wdt + WDOG_WCR);
 
 	/* Write Service Sequence */
-	writew(0x5555, IMX_WDT_BASE + WDOG_WSR);
-	writew(0xaaaa, IMX_WDT_BASE + WDOG_WSR);
+	writew(0x5555, wdt + WDOG_WSR);
+	writew(0xaaaa, wdt + WDOG_WSR);
 
 	/* Enable watchdog */
-	writew(WDOG_WCR_WDE, IMX_WDT_BASE + WDOG_WCR);
+	writew(WDOG_WCR_WDE, wdt + WDOG_WCR);
 
 	while (1);
 	/*NOTREACHED*/
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
