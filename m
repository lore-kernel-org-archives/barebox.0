Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBtDt-0001td-Iq
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 20:07:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Sep 2012 22:06:45 +0200
Message-Id: <1347480407-16865-14-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1347480407-16865-1-git-send-email-s.hauer@pengutronix.de>
References: <1347480407-16865-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 13/15] mci i.MX esdhc: Add oftree support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc.c |   25 ++++++++++++++++++++-----
 1 file changed, 20 insertions(+), 5 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 585cab9..d9ef71b 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -567,16 +567,31 @@ static int fsl_esdhc_probe(struct device_d *dev)
 	return 0;
 }
 
+static struct of_device_id fsl_esdhc_compatible[] = {
+	{
+		.compatible = "fsl,imx51-esdhc",
+		.data = (void *)0,
+	}, {
+		.compatible = "fsl,imx53-esdhc",
+		.data = (void *)0,
+	}, {
+		.compatible = "fsl,imx6q-usdhc",
+		.data = (void *)0,
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct driver_d fsl_esdhc_driver = {
-        .name  = "imx-esdhc",
-        .probe = fsl_esdhc_probe,
+	.name  = "imx-esdhc",
+	.probe = fsl_esdhc_probe,
+	.of_compatible = fsl_esdhc_compatible,
 };
 
 static int fsl_esdhc_init_driver(void)
 {
-        register_driver(&fsl_esdhc_driver);
-        return 0;
+	register_driver(&fsl_esdhc_driver);
+	return 0;
 }
 
 device_initcall(fsl_esdhc_init_driver);
-
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
