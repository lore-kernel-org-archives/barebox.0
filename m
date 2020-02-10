Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1DUJ-0006E7-BQ
 for barebox@lists.infradead.org; Mon, 10 Feb 2020 18:08:52 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 10 Feb 2020 19:08:33 +0100
Message-Id: <20200210180833.22153-4-a.fatoum@pengutronix.de>
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
Subject: [PATCH 4/5] watchdog: dw_wdt: remove duplicated error message
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The wd command already warns that "Watchdog cannot be disabled",
when the stop operation returns -ENOSYS. We do that now, so telling the
user that it will not stop is superfluous. Remove it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/watchdog/dw_wdt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/watchdog/dw_wdt.c b/drivers/watchdog/dw_wdt.c
index 2d1aa5e587ec..cb0d17e3610b 100644
--- a/drivers/watchdog/dw_wdt.c
+++ b/drivers/watchdog/dw_wdt.c
@@ -73,7 +73,7 @@ static int dw_wdt_stop(struct watchdog *wdd)
 	struct dw_wdt *dw_wdt = to_dw_wdt(wdd);
 
 	if (!dw_wdt->rst) {
-		dev_warn(dw_wdt->wdd.hwdev, "No reset line. Will not stop.\n");
+		dev_warn(dw_wdt->wdd.hwdev, "No reset line\n");
 		return -ENOSYS;
 	}
 
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
