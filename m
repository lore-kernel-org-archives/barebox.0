Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j18p9-0005qz-Pp
 for barebox@lists.infradead.org; Mon, 10 Feb 2020 13:10:05 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 10 Feb 2020 14:09:50 +0100
Message-Id: <20200210130952.19779-2-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/4] watchdog: f71808e: only print reset reason if one's
 indicated
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

On most resets, a "reset reason: unknown" would clutter the console,
because the watchdog doesn't support differentiating between POR and
RST. Reduce the clutter by only printing the message when we have
something interesting to say (i.e. watchdog reset).

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/watchdog/f71808e_wdt.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/watchdog/f71808e_wdt.c b/drivers/watchdog/f71808e_wdt.c
index 5307ab0b3ead..6f2d30ec77aa 100644
--- a/drivers/watchdog/f71808e_wdt.c
+++ b/drivers/watchdog/f71808e_wdt.c
@@ -256,11 +256,11 @@ static int f71808e_wdt_init(struct f71808e_wdt *wd, struct device_d *dev)
 	wdd->set_timeout	= &f71808e_wdt_set_timeout;
 	wdd->timeout_max	= WATCHDOG_MAX_TIMEOUT;
 
-	if (wdt_conf & BIT(F71808FG_FLAG_WDTMOUT_STS))
-		reset_source_set_priority(RESET_WDG,
-					  RESET_SOURCE_DEFAULT_PRIORITY);
+	if (wdt_conf & BIT(F71808FG_FLAG_WDTMOUT_STS)) {
+		reset_source_set_priority(RESET_WDG, RESET_SOURCE_DEFAULT_PRIORITY);
+		dev_info(dev, "reset reason: WDT\n");
+	}
 
-	dev_info(dev, "reset reason: %s\n", reset_source_name());
 
 	if (test_bit(F71808FG_FLAG_WD_EN, &wdt_conf))
 		wdd->running = WDOG_HW_RUNNING;
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
