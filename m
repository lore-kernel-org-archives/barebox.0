Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1DUI-0006DP-3H
 for barebox@lists.infradead.org; Mon, 10 Feb 2020 18:08:51 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 10 Feb 2020 19:08:32 +0100
Message-Id: <20200210180833.22153-3-a.fatoum@pengutronix.de>
In-Reply-To: <20200210180833.22153-1-a.fatoum@pengutronix.de>
References: <20200210180833.22153-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 3/5] watchdog: dw_wdt: inform user on missing reset control
 line
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The driver has an error message on probe and one on each watchdog stop
attempt that warns the user if the reset line is missing.

Missing reset line (because the "reset"-property is missing) is
indicated by a NULL pointer though, so these warnings were only
triggered when the reset controller specification is malformed.

Fix this by propagating malformed reset pointer specification and
continuing only if it's either valid or completely missing.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/watchdog/dw_wdt.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/watchdog/dw_wdt.c b/drivers/watchdog/dw_wdt.c
index bedb2ddfe81f..2d1aa5e587ec 100644
--- a/drivers/watchdog/dw_wdt.c
+++ b/drivers/watchdog/dw_wdt.c
@@ -72,9 +72,9 @@ static int dw_wdt_stop(struct watchdog *wdd)
 {
 	struct dw_wdt *dw_wdt = to_dw_wdt(wdd);
 
-	if (IS_ERR(dw_wdt->rst)) {
+	if (!dw_wdt->rst) {
 		dev_warn(dw_wdt->wdd.hwdev, "No reset line. Will not stop.\n");
-		return PTR_ERR(dw_wdt->rst);
+		return -ENOSYS;
 	}
 
 	reset_control_assert(dw_wdt->rst);
@@ -153,7 +153,7 @@ static int dw_wdt_drv_probe(struct device_d *dev)
 
 	dw_wdt->rst = reset_control_get(dev, NULL);
 	if (IS_ERR(dw_wdt->rst))
-		dev_warn(dev, "No reset lines. Will not be able to stop once started.\n");
+		return PTR_ERR(dw_wdt->rst);
 
 	wdd = &dw_wdt->wdd;
 	wdd->name = "dw_wdt";
@@ -171,8 +171,10 @@ static int dw_wdt_drv_probe(struct device_d *dev)
 	if (ret)
 		dev_warn(dev, "cannot register restart handler\n");
 
-	if (!IS_ERR(dw_wdt->rst))
+	if (dw_wdt->rst)
 		reset_control_deassert(dw_wdt->rst);
+	else
+		dev_warn(dev, "No reset lines. Will not be able to stop once started.\n");
 
 	return 0;
 
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
