Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNeyX-0006oP-3V
 for barebox@lists.infradead.org; Thu, 24 Oct 2019 15:24:36 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 24 Oct 2019 17:24:27 +0200
Message-Id: <20191024152428.4536-2-a.fatoum@pengutronix.de>
In-Reply-To: <20191024152428.4536-1-a.fatoum@pengutronix.de>
References: <20191024152428.4536-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/3] watchdog: rename timeout_curr to poller_timeout_curr
 internally
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

timeout_curr is the timeout programmed into the watchdog hardware every
500 milliseconds. If watchdog poller support is disabled, it serves
no purpose, prefix it with poller_ to better communicate this fact.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/watchdog/wd_core.c | 10 +++++-----
 include/watchdog.h         |  2 +-
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
index e6e5ddecd2f8..5b984db8586a 100644
--- a/drivers/watchdog/wd_core.c
+++ b/drivers/watchdog/wd_core.c
@@ -45,7 +45,7 @@ static int watchdog_set_cur(struct param_d *param, void *priv)
 {
 	struct watchdog *wd = priv;
 
-	if (wd->timeout_cur > wd->timeout_max)
+	if (wd->poller_timeout_cur > wd->timeout_max)
 		return -EINVAL;
 
 	return 0;
@@ -55,7 +55,7 @@ static void watchdog_poller_cb(void *priv);
 
 static void watchdog_poller_start(struct watchdog *wd)
 {
-	_watchdog_set_timeout(wd, wd->timeout_cur);
+	_watchdog_set_timeout(wd, wd->poller_timeout_cur);
 	poller_call_async(&wd->poller, 500 * MSECOND,
 			watchdog_poller_cb, wd);
 
@@ -134,8 +134,8 @@ int watchdog_register(struct watchdog *wd)
 	if (!wd->timeout_max)
 		wd->timeout_max = 60 * 60 * 24;
 
-	if (!wd->timeout_cur || wd->timeout_cur > wd->timeout_max)
-		wd->timeout_cur = wd->timeout_max;
+	if (!wd->poller_timeout_cur || wd->poller_timeout_cur > wd->timeout_max)
+		wd->poller_timeout_cur = wd->timeout_max;
 
 	p = dev_add_param_uint32_ro(&wd->dev, "timeout_max",
 			&wd->timeout_max, "%u");
@@ -143,7 +143,7 @@ int watchdog_register(struct watchdog *wd)
 		return PTR_ERR(p);
 
 	p = dev_add_param_uint32(&wd->dev, "timeout_cur", watchdog_set_cur, NULL,
-			&wd->timeout_cur, "%u", wd);
+			&wd->poller_timeout_cur, "%u", wd);
 	if (IS_ERR(p))
 		return PTR_ERR(p);
 
diff --git a/include/watchdog.h b/include/watchdog.h
index 0db4263a31ce..68c6b00233d9 100644
--- a/include/watchdog.h
+++ b/include/watchdog.h
@@ -22,7 +22,7 @@ struct watchdog {
 	struct device_d dev;
 	unsigned int priority;
 	unsigned int timeout_max;
-	unsigned int timeout_cur;
+	unsigned int poller_timeout_cur;
 	unsigned int poller_enable;
 	struct poller_async poller;
 	struct list_head list;
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
