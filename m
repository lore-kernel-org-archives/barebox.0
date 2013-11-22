Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vjs2v-0008G8-KN
 for barebox@lists.infradead.org; Fri, 22 Nov 2013 14:49:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Nov 2013 15:49:01 +0100
Message-Id: <1385131741-28280-18-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1385131741-28280-1-git-send-email-s.hauer@pengutronix.de>
References: <1385131741-28280-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 17/17] mmc: omap: Add devicetree support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/omap_hsmmc.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/mci/omap_hsmmc.c b/drivers/mci/omap_hsmmc.c
index 19db461..2e736e1 100644
--- a/drivers/mci/omap_hsmmc.c
+++ b/drivers/mci/omap_hsmmc.c
@@ -640,9 +640,22 @@ static struct platform_device_id omap_mmc_ids[] = {
 	},
 };
 
+static __maybe_unused struct of_device_id omap_mmc_dt_ids[] = {
+	{
+		.compatible = "ti,omap3-hsmmc",
+		.data = (unsigned long)&omap3_data,
+	}, {
+		.compatible = "ti,omap4-hsmmc",
+		.data = (unsigned long)&omap4_data,
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct driver_d omap_mmc_driver = {
 	.name  = "omap-hsmmc",
 	.probe = omap_mmc_probe,
 	.id_table = omap_mmc_ids,
+	.of_compatible = DRV_OF_COMPAT(omap_mmc_dt_ids),
 };
 device_platform_driver(omap_mmc_driver);
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
