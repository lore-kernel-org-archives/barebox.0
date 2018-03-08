Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ettMd-0000ih-1b
 for barebox@lists.infradead.org; Thu, 08 Mar 2018 11:05:36 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu,  8 Mar 2018 12:05:12 +0100
Message-Id: <20180308110515.29574-3-o.rempel@pengutronix.de>
In-Reply-To: <20180308110515.29574-1-o.rempel@pengutronix.de>
References: <20180308110515.29574-1-o.rempel@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v1 3/6] watchdog: register watchdog virtual device with short
 name wdog
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

the watchdog hwdev is usually named with devicetree schema
which is not practical for CLI.

On device registration "wdog" will be extended with some index number
extracted from devicetree (if awailable) or automatically assigned
first available number. End result will be "wdog0" .. etc.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/watchdog/wd_core.c | 6 ++++++
 include/watchdog.h         | 1 +
 2 files changed, 7 insertions(+)

diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
index 1d0f0de7d..97e2ab568 100644
--- a/drivers/watchdog/wd_core.c
+++ b/drivers/watchdog/wd_core.c
@@ -33,6 +33,11 @@ static const char *watchdog_name(struct watchdog *wd)
 
 int watchdog_register(struct watchdog *wd)
 {
+
+	strcpy(wd->dev.name, "wdog");
+	wd->dev.parent = wd->hwdev;
+	register_device(&wd->dev);
+
 	if (!wd->priority)
 		wd->priority = WATCHDOG_DEFAULT_PRIORITY;
 
@@ -50,6 +55,7 @@ EXPORT_SYMBOL(watchdog_register);
 
 int watchdog_deregister(struct watchdog *wd)
 {
+	unregister_device(&wd->dev);
 	list_del(&wd->list);
 
 	return 0;
diff --git a/include/watchdog.h b/include/watchdog.h
index 1e06fbc3f..a2459d255 100644
--- a/include/watchdog.h
+++ b/include/watchdog.h
@@ -17,6 +17,7 @@ struct watchdog {
 	int (*set_timeout)(struct watchdog *, unsigned);
 	const char *name;
 	struct device_d *hwdev;
+	struct device_d dev;
 	unsigned int priority;
 	unsigned int timeout_max;
 	struct list_head list;
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
