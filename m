Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1evfNS-00040T-8q
 for barebox@lists.infradead.org; Tue, 13 Mar 2018 08:33:49 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 13 Mar 2018 09:33:26 +0100
Message-Id: <20180313083328.25705-4-o.rempel@pengutronix.de>
In-Reply-To: <20180313083328.25705-1-o.rempel@pengutronix.de>
References: <20180313083328.25705-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v2 4/6] watchdog: set some reasonable timeout_max value if no
 other is available
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Some drivers do not provide timeout_max value.
Using some value is probably better then setting timeout_max to 0.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/watchdog/wd_core.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
index 0dc7aecf3..31a88a377 100644
--- a/drivers/watchdog/wd_core.c
+++ b/drivers/watchdog/wd_core.c
@@ -59,8 +59,14 @@ int watchdog_register(struct watchdog *wd)
 	if (!wd->priority)
 		wd->priority = WATCHDOG_DEFAULT_PRIORITY;
 
-	dev_add_param_uint32_ro(&wd->dev, "timeout_max",
+	/* set some default sane value */
+	if (!wd->timeout_max)
+		wd->timeout_max = 60 * 60 * 24;
+
+	p = dev_add_param_uint32_ro(&wd->dev, "timeout_max",
 			&wd->timeout_max, "%u");
+	if (IS_ERR(p))
+		return PTR_ERR(p);
 
 	list_add_tail(&wd->list, &watchdog_list);
 
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
