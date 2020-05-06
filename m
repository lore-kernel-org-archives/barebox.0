Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWFF4-0005wT-1x
 for barebox@lists.infradead.org; Wed, 06 May 2020 08:17:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  6 May 2020 10:17:13 +0200
Message-Id: <20200506081716.20143-10-s.hauer@pengutronix.de>
In-Reply-To: <20200506081716.20143-1-s.hauer@pengutronix.de>
References: <20200506081716.20143-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/13] watchdog: i.MX28: Add device tree support
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/watchdog/im28wd.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/watchdog/im28wd.c b/drivers/watchdog/im28wd.c
index 2b233ede20..6ebd97e5f5 100644
--- a/drivers/watchdog/im28wd.c
+++ b/drivers/watchdog/im28wd.c
@@ -229,9 +229,18 @@ static void imx28_wd_remove(struct device_d *dev)
 	free(priv);
 }
 
+static __maybe_unused struct of_device_id imx28_wdt_dt_ids[] = {
+	{
+		.compatible = "fsl,stmp3xxx-rtc",
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct driver_d imx28_wd_driver = {
 	.name   = "im28wd",
 	.probe  = imx28_wd_probe,
 	.remove = imx28_wd_remove,
+	.of_compatible = DRV_OF_COMPAT(imx28_wdt_dt_ids),
 };
 device_platform_driver(imx28_wd_driver);
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
