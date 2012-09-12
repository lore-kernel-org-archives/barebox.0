Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBtDk-0001sW-Ql
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 20:07:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Sep 2012 22:06:40 +0200
Message-Id: <1347480407-16865-9-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/15] serial i.MX: oftree support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/serial_imx.c |   17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index 1e1e8e3..9d15038 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -357,10 +357,23 @@ static void imx_serial_remove(struct device_d *dev)
 	free(priv);
 }
 
+static __maybe_unused struct of_device_id imx_serial_dt_ids[] = {
+	{
+		.compatible = "fsl,imx1-uart",
+		.data = 0,
+	}, {
+		.compatible = "fsl,imx21-uart",
+		.data = 1,
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct driver_d imx_serial_driver = {
-        .name   = "imx_serial",
-        .probe  = imx_serial_probe,
+	.name   = "imx_serial",
+	.probe  = imx_serial_probe,
 	.remove = imx_serial_remove,
+	.of_compatible = DRV_OF_COMPAT(imx_serial_dt_ids),
 };
 
 static int imx_serial_init(void)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
