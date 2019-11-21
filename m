Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXi0n-0006SF-2a
 for barebox@lists.infradead.org; Thu, 21 Nov 2019 08:40:27 +0000
Received: from geraet.fritz.box (142-252-142-46.pool.kielnet.net
 [46.142.252.142]) (Authenticated sender: ahmad@a3f.at)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 1DFAF1BF209
 for <barebox@lists.infradead.org>; Thu, 21 Nov 2019 08:40:21 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Thu, 21 Nov 2019 09:40:04 +0100
Message-Id: <20191121084005.683-2-ahmad@a3f.at>
In-Reply-To: <20191121084005.683-1-ahmad@a3f.at>
References: <20191121084005.683-1-ahmad@a3f.at>
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
Subject: [PATCH 2/3] watchdog: core: use new dev_add_param_tristate helper for
 .running param
To: barebox@lists.infradead.org

Previous commit added a dev_add_param_tristate_ro that can be readily
used instead of the enum parameter here. Use it.
This also fixes the issue that running_names had external linkage.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/watchdog/wd_core.c | 9 +--------
 include/watchdog.h         | 5 ++++-
 2 files changed, 5 insertions(+), 9 deletions(-)

diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
index fcead1175558..b6e2a37b1f0c 100644
--- a/drivers/watchdog/wd_core.c
+++ b/drivers/watchdog/wd_core.c
@@ -152,12 +152,6 @@ static unsigned int dev_get_watchdog_priority(struct device_d *dev)
 	return priority;
 }
 
-const char *running_names[] = {
-	[WDOG_HW_RUNNING_UNSUPPORTED] = "unknown",
-	[WDOG_HW_RUNNING] = "1",
-	[WDOG_HW_NOT_RUNNING] = "0",
-};
-
 int watchdog_register(struct watchdog *wd)
 {
 	struct param_d *p;
@@ -176,8 +170,7 @@ int watchdog_register(struct watchdog *wd)
 	if (ret)
 		return ret;
 
-	p = dev_add_param_enum_ro(&wd->dev, "running", &wd->running,
-				  running_names, ARRAY_SIZE(running_names));
+	p = dev_add_param_tristate_ro(&wd->dev, "running", &wd->running);
 	if (IS_ERR(p))
 		return PTR_ERR(p);
 
diff --git a/include/watchdog.h b/include/watchdog.h
index 5790205a487b..9741570ce229 100644
--- a/include/watchdog.h
+++ b/include/watchdog.h
@@ -15,9 +15,12 @@
 
 #include <poller.h>
 #include <driver.h>
+#include <param.h>
 
 enum wdog_hw_runnning {
-	 WDOG_HW_RUNNING_UNSUPPORTED, WDOG_HW_RUNNING, WDOG_HW_NOT_RUNNING
+	 WDOG_HW_RUNNING_UNSUPPORTED = PARAM_TRISTATE_UNKNOWN,
+	 WDOG_HW_RUNNING = PARAM_TRISTATE_TRUE,
+	 WDOG_HW_NOT_RUNNING = PARAM_TRISTATE_FALSE
 };
 
 struct watchdog {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
