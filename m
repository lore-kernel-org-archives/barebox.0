Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY99x-0003de-LQ
 for barebox@lists.infradead.org; Fri, 22 Nov 2019 13:39:45 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 22 Nov 2019 14:39:29 +0100
Message-Id: <20191122133929.31050-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] watchdog: stm32_iwdg: explicitly set .running to UNSUPPORTED
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

I've spent some time trying to get the ONF (Watchdog enable status)
bit in the IWDG_SR register to read as something other than zero.

It has since been confirmed to be non-functional[1]. To avoid someone
else spending time on this, document that running status is unsupported
on this hardware explicitly.
No functional change as UNSUPPORTED is already the default.

[1]: https://www.spinics.net/lists/arm-kernel/msg770527.html

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/watchdog/stm32_iwdg.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/watchdog/stm32_iwdg.c b/drivers/watchdog/stm32_iwdg.c
index 808d7c83720e..c7a5cb9caaf4 100644
--- a/drivers/watchdog/stm32_iwdg.c
+++ b/drivers/watchdog/stm32_iwdg.c
@@ -256,6 +256,7 @@ static int stm32_iwdg_probe(struct device_d *dev)
 	wdd->set_timeout = stm32_iwdg_set_timeout;
 	wdd->timeout_max = (RLR_MAX + 1) * data->max_prescaler * 1000;
 	wdd->timeout_max /= wd->rate * 1000;
+	wdd->running = WDOG_HW_RUNNING_UNSUPPORTED; /* ONF bit not present in IP */
 
 	ret = watchdog_register(wdd);
 	if (ret) {
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
