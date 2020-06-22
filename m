Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jnNHO-0002Ar-5S
 for barebox@lists.infradead.org; Mon, 22 Jun 2020 14:18:35 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Jun 2020 16:18:30 +0200
Message-Id: <20200622141830.2282-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] watchdog: permit `wd 0` for non-stoppable, but inactive,
 watchdogs
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

A watchdog that can't be stopped returns -ENOSYS on set_timeout(0).
If the watchdog supports communicating whether it's running, we could
still allow `wd 0`, if it hasn't been started yet.

Setting device parameter .priority=0 disables a watchdog. One would
expect this to always succeed for a not-running watchdog, but currently
it doesn't, if the driver's set_timeout(0) returns -ENOSYS. With this
fix, this is supported making the user API less surprising.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/watchdog/wd_core.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
index 34040408f716..44d69312d2b3 100644
--- a/drivers/watchdog/wd_core.c
+++ b/drivers/watchdog/wd_core.c
@@ -45,6 +45,9 @@ int watchdog_set_timeout(struct watchdog *wd, unsigned timeout)
 	if (timeout > wd->timeout_max)
 		return -EINVAL;
 
+	if (wd->running == WDOG_HW_NOT_RUNNING)
+		return 0;
+
 	pr_debug("setting timeout on %s to %ds\n", watchdog_name(wd), timeout);
 
 	ret = wd->set_timeout(wd, timeout);
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
