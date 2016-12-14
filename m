Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cH93O-0004J7-M6
 for barebox@lists.infradead.org; Wed, 14 Dec 2016 12:53:03 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <mgr@pengutronix.de>) id 1cH931-0008FT-7K
 for barebox@lists.infradead.org; Wed, 14 Dec 2016 13:52:39 +0100
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.88)
 (envelope-from <mgr@pengutronix.de>) id 1cH930-00083o-Vy
 for barebox@lists.infradead.org; Wed, 14 Dec 2016 13:52:38 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Wed, 14 Dec 2016 13:52:27 +0100
Message-Id: <20161214125227.30923-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH] da9053: add dt_ids to be probed by devicetree
To: barebox@lists.infradead.org

We add the da9052 compatible to get this driver probed by devicetree
users.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/mfd/da9053.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/mfd/da9053.c b/drivers/mfd/da9053.c
index 250c055..0de8c66 100644
--- a/drivers/mfd/da9053.c
+++ b/drivers/mfd/da9053.c
@@ -293,9 +293,18 @@ static int da9053_probe(struct device_d *dev)
 	return 0;
 }
 
+static __maybe_unused struct of_device_id da9053_dt_ids[] = {
+	{
+		.compatible = "dlg,da9052",
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct driver_d da9053_driver = {
 	.name  = DRIVERNAME,
 	.probe = da9053_probe,
+	.of_compatible = DRV_OF_COMPAT(da9053_dt_ids),
 };
 
 static int da9053_init(void)
-- 
2.10.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
