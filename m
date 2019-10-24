Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNeyX-0006oQ-3W
 for barebox@lists.infradead.org; Thu, 24 Oct 2019 15:24:34 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 24 Oct 2019 17:24:28 +0200
Message-Id: <20191024152428.4536-3-a.fatoum@pengutronix.de>
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
Subject: [PATCH 3/3] watchdog: add timeout_cur parameter only when poller is
 enabled
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

timeout_curr is the timeout programmed into the watchdog hardware every
500 milliseconds. If watchdog poller support is disabled, it still
shows up as a configurable device parameter, but has no effect.

Improve user experience by having it show up only if watchdog poller
support was compiled in. This is already the case for the autoping
parameter. The timeout_max parameter is a generic parameter and will
remain unchanged.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/watchdog/wd_core.c | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
index 5b984db8586a..1ce5a360eb61 100644
--- a/drivers/watchdog/wd_core.c
+++ b/drivers/watchdog/wd_core.c
@@ -134,20 +134,21 @@ int watchdog_register(struct watchdog *wd)
 	if (!wd->timeout_max)
 		wd->timeout_max = 60 * 60 * 24;
 
-	if (!wd->poller_timeout_cur || wd->poller_timeout_cur > wd->timeout_max)
-		wd->poller_timeout_cur = wd->timeout_max;
-
 	p = dev_add_param_uint32_ro(&wd->dev, "timeout_max",
 			&wd->timeout_max, "%u");
 	if (IS_ERR(p))
 		return PTR_ERR(p);
 
-	p = dev_add_param_uint32(&wd->dev, "timeout_cur", watchdog_set_cur, NULL,
-			&wd->poller_timeout_cur, "%u", wd);
-	if (IS_ERR(p))
-		return PTR_ERR(p);
-
 	if (IS_ENABLED(CONFIG_WATCHDOG_POLLER)) {
+		if (!wd->poller_timeout_cur ||
+		    wd->poller_timeout_cur > wd->timeout_max)
+			wd->poller_timeout_cur = wd->timeout_max;
+
+		p = dev_add_param_uint32(&wd->dev, "timeout_cur", watchdog_set_cur,
+				NULL, &wd->poller_timeout_cur, "%u", wd);
+		if (IS_ERR(p))
+			return PTR_ERR(p);
+
 		ret = watchdog_register_poller(wd);
 		if (ret)
 			return ret;
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
