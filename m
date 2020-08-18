Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k81VO-0006de-TT
 for barebox@lists.infradead.org; Tue, 18 Aug 2020 13:18:23 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 18 Aug 2020 15:18:16 +0200
Message-Id: <20200818131816.7700-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] watchdog: fix watchdog_set_timeout breakage for drivers like
 imxwd
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Bastian Krause <bst@pengutronix.de>

Commit 0b944fce55f4 ("watchdog: permit `wd 0` for non-stoppable, but
inactive, watchdogs") silently broke use of non-stoppable, but inactive,
watchdogs altogether. Because those always had watchdog_hw_running
evaluating to false, it early exited without a chance to ever actually
set the timeout (and for watchdog_hw_running to evaluate to != false).

This results in following watchdog drivers being broken in v2020.08.0:

 - imxwd
 - f71808e_wdt
 - at91sam9_wdt

Fixes: 0b944fce55f4 ("watchdog: permit `wd 0` for non-stoppable, but inactive, watchdogs")
Reported-by: Bastian Krause <bst@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Please apply to master (and to v2020.08.1?).
---
 drivers/watchdog/wd_core.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
index ab1dcaa40a3a..4247288dbd0a 100644
--- a/drivers/watchdog/wd_core.c
+++ b/drivers/watchdog/wd_core.c
@@ -45,12 +45,11 @@ int watchdog_set_timeout(struct watchdog *wd, unsigned timeout)
 	if (timeout > wd->timeout_max)
 		return -EINVAL;
 
-	if (watchdog_hw_running(wd) == false)
-		return 0;
-
 	pr_debug("setting timeout on %s to %ds\n", watchdog_name(wd), timeout);
 
 	ret = wd->set_timeout(wd, timeout);
+	if (ret == -ENOSYS && watchdog_hw_running(wd) == false)
+		return 0;
 	if (ret)
 		return ret;
 
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
