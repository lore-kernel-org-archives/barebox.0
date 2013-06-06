Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ukb5j-00028f-Iy
 for barebox@lists.infradead.org; Thu, 06 Jun 2013 14:23:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Jun 2013 16:22:38 +0200
Message-Id: <1370528559-15694-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1370528559-15694-1-git-send-email-s.hauer@pengutronix.de>
References: <1370528559-15694-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/6] ata: i.MX sata: Add devicetree probe support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ata/sata-imx.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/ata/sata-imx.c b/drivers/ata/sata-imx.c
index 13bf116..ef7989e 100644
--- a/drivers/ata/sata-imx.c
+++ b/drivers/ata/sata-imx.c
@@ -141,9 +141,22 @@ static struct platform_device_id imx_sata_ids[] = {
 	},
 };
 
+static __maybe_unused struct of_device_id imx_sata_dt_ids[] = {
+	{
+		.compatible = "fsl,imx6q-ahci",
+		.data = (unsigned long)&data_imx6,
+	}, {
+		.compatible = "fsl,imx53-ahci",
+		.data = (unsigned long)&data_imx53,
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct driver_d imx_sata_driver = {
 	.name   = "imx-sata",
 	.probe  = imx_sata_probe,
 	.id_table = imx_sata_ids,
+	.of_compatible = DRV_OF_COMPAT(imx_sata_dt_ids),
 };
 device_platform_driver(imx_sata_driver);
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
