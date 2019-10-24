Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNeye-0006s2-FV
 for barebox@lists.infradead.org; Thu, 24 Oct 2019 15:24:42 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 24 Oct 2019 17:24:26 +0200
Message-Id: <20191024152428.4536-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/3] watchdog: remove wrong uses of timeout_cur
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The barebox watchdog poller uses the struct watchdog.timeout_cur as
the timeout value to configure the watchdog with.

There's no need for the device driver to set this. I didn't know that
when I wrote the drivers, but I do now, hence this commit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/watchdog/stm32_iwdg.c  | 1 -
 drivers/watchdog/stpmic1_wdt.c | 1 -
 2 files changed, 2 deletions(-)

diff --git a/drivers/watchdog/stm32_iwdg.c b/drivers/watchdog/stm32_iwdg.c
index 20536cb4ab2d..4d252e558c32 100644
--- a/drivers/watchdog/stm32_iwdg.c
+++ b/drivers/watchdog/stm32_iwdg.c
@@ -256,7 +256,6 @@ static int stm32_iwdg_probe(struct device_d *dev)
 	wdd->set_timeout = stm32_iwdg_set_timeout;
 	wdd->timeout_max = (RLR_MAX + 1) * data->max_prescaler * 1000;
 	wdd->timeout_max /= wd->rate * 1000;
-	wdd->timeout_cur = wdd->timeout_max;
 
 	ret = watchdog_register(wdd);
 	if (ret) {
diff --git a/drivers/watchdog/stpmic1_wdt.c b/drivers/watchdog/stpmic1_wdt.c
index eb8c43f716a8..f79b7e8c2768 100644
--- a/drivers/watchdog/stpmic1_wdt.c
+++ b/drivers/watchdog/stpmic1_wdt.c
@@ -175,7 +175,6 @@ static int stpmic1_wdt_probe(struct device_d *dev)
 	wdd->hwdev = dev;
 	wdd->set_timeout = stpmic1_wdt_set_timeout;
 	wdd->timeout_max = PMIC_WDT_MAX_TIMEOUT;
-	wdd->timeout_cur = PMIC_WDT_DEFAULT_TIMEOUT;
 
 	/* have the watchdog reset, not power-off the system */
 	regmap_write_bits(wdt->regmap, MAIN_CR, RREQ_EN, RREQ_EN);
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
