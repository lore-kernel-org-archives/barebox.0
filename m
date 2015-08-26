Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZUU3S-0002ox-QW
 for barebox@lists.infradead.org; Wed, 26 Aug 2015 06:19:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Aug 2015 08:19:01 +0200
Message-Id: <1440569941-3255-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1440569941-3255-1-git-send-email-s.hauer@pengutronix.de>
References: <1440569941-3255-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] watchdog: imxwd: remove remove callback
To: Barebox List <barebox@lists.infradead.org>

The imxwd is for resetting the system, so we should not unregister it
during shutdown_barebox() as it may leave us without a restart handler.
Only a bug (not setting reset_wd to NULL in remove()) made the whole
thing work.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/watchdog/imxwd.c | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index ef64e4e..31c6a2c 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -215,17 +215,6 @@ on_error:
 	return ret;
 }
 
-static void imx_wd_remove(struct device_d *dev)
-{
-	struct imx_wd *priv = dev->priv;
-
-	if (IS_ENABLED(CONFIG_WATCHDOG_IMX))
-		watchdog_deregister(&priv->wd);
-
-	if (reset_wd && reset_wd != priv)
-		free(priv);
-}
-
 static const struct imx_wd_ops imx21_wd_ops = {
 	.set_timeout = imx21_watchdog_set_timeout,
 	.init = imx21_wd_init,
@@ -262,7 +251,6 @@ static struct platform_device_id imx_wdt_ids[] = {
 static struct driver_d imx_wd_driver = {
 	.name   = "imx-watchdog",
 	.probe  = imx_wd_probe,
-	.remove = imx_wd_remove,
 	.of_compatible = DRV_OF_COMPAT(imx_wdt_dt_ids),
 	.id_table = imx_wdt_ids,
 };
-- 
2.4.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
