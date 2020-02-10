Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j18p3-0005nb-Lj
 for barebox@lists.infradead.org; Mon, 10 Feb 2020 13:09:59 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 10 Feb 2020 14:09:51 +0100
Message-Id: <20200210130952.19779-3-a.fatoum@pengutronix.de>
In-Reply-To: <20200210130952.19779-1-a.fatoum@pengutronix.de>
References: <20200210130952.19779-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 3/4] reset_source: migrate from reset_source_name to
 reset_source_xlate
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Whether reset_source_name() returns the just set reset_source is
dependent on probe order and the priorities of prior reset sources
in relation to the current one. Make this more robust by using the new
reset_source_xlate.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/imx.c        | 2 +-
 drivers/watchdog/stm32_iwdg.c  | 2 +-
 drivers/watchdog/stpmic1_wdt.c | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/imx.c b/arch/arm/mach-imx/imx.c
index 0942d5069562..9f91cab781fb 100644
--- a/arch/arm/mach-imx/imx.c
+++ b/arch/arm/mach-imx/imx.c
@@ -202,5 +202,5 @@ void imx_set_reset_reason(void __iomem *srsr,
 	reset_source_set_prinst(type, RESET_SOURCE_DEFAULT_PRIORITY, instance);
 
 	pr_info("i.MX reset reason %s (SRSR: 0x%08x)\n",
-		reset_source_name(), reg);
+		reset_source_xlate(type), reg);
 }
diff --git a/drivers/watchdog/stm32_iwdg.c b/drivers/watchdog/stm32_iwdg.c
index c7a5cb9caaf4..8a28bfd8a06a 100644
--- a/drivers/watchdog/stm32_iwdg.c
+++ b/drivers/watchdog/stm32_iwdg.c
@@ -185,7 +185,7 @@ static int stm32_set_reset_reason(struct regmap *rcc)
 	reset_source_set_prinst(type, RESET_SOURCE_DEFAULT_PRIORITY, instance);
 
 	pr_info("STM32 RCC reset reason %s (MP_RSTSR: 0x%08x)\n",
-		reset_source_name(), reg);
+		reset_source_xlate(type), reg);
 
 	return 0;
 }
diff --git a/drivers/watchdog/stpmic1_wdt.c b/drivers/watchdog/stpmic1_wdt.c
index 40273ffc4c85..9d7f9361a159 100644
--- a/drivers/watchdog/stpmic1_wdt.c
+++ b/drivers/watchdog/stpmic1_wdt.c
@@ -152,7 +152,7 @@ static int stpmic1_set_reset_reason(struct regmap *map)
 	reset_source_set_prinst(type, 400, instance);
 
 	pr_info("STPMIC1 reset reason %s (RREQ_STATE_SR: 0x%08x)\n",
-		reset_source_name(), reg);
+		reset_source_xlate(type), reg);
 
 	return 0;
 }
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
