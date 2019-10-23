Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNJvg-0002PU-M9
 for barebox@lists.infradead.org; Wed, 23 Oct 2019 16:56:14 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 23 Oct 2019 18:55:59 +0200
Message-Id: <20191023165601.16441-4-a.fatoum@pengutronix.de>
In-Reply-To: <20191023165601.16441-1-a.fatoum@pengutronix.de>
References: <20191023165601.16441-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 4/6] watchdog: export priority as device parameter
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

8f4cf30903 ("watchdog: Allow multiple watchdogs") introduced the ability
to set a per-watchdog priority from within drivers, which is usually
populated with of_get_watchdog_priority.

For debugging, it can be useful to query and override this priority on
the fly.  Provide a device parameter to do so.
As watchdog_get_default only considers priorities > 0, it makes sense
to have a newly set priority of 0 disable the watchdog.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/watchdog/wd_core.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
index e6e5ddecd2f8..ae29a76064aa 100644
--- a/drivers/watchdog/wd_core.c
+++ b/drivers/watchdog/wd_core.c
@@ -41,6 +41,16 @@ static int _watchdog_set_timeout(struct watchdog *wd, unsigned timeout)
 	return wd->set_timeout(wd, timeout);
 }
 
+static int watchdog_set_priority(struct param_d *param, void *priv)
+{
+	struct watchdog *wd = priv;
+
+	if (wd->priority == 0)
+		return _watchdog_set_timeout(wd, 0);
+
+	return 0;
+}
+
 static int watchdog_set_cur(struct param_d *param, void *priv)
 {
 	struct watchdog *wd = priv;
@@ -130,6 +140,12 @@ int watchdog_register(struct watchdog *wd)
 	if (!wd->priority)
 		wd->priority = WATCHDOG_DEFAULT_PRIORITY;
 
+	p = dev_add_param_uint32(&wd->dev, "priority",
+				 watchdog_set_priority, NULL,
+				 &wd->priority, "%u", wd);
+	if (IS_ERR(p))
+		return PTR_ERR(p);
+
 	/* set some default sane value */
 	if (!wd->timeout_max)
 		wd->timeout_max = 60 * 60 * 24;
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
