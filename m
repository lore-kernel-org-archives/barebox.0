Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vjs2v-0008Fw-4v
 for barebox@lists.infradead.org; Fri, 22 Nov 2013 14:49:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Nov 2013 15:48:48 +0100
Message-Id: <1385131741-28280-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/17] spi: omap: Add devicetree probe support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/spi/omap3_spi.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/spi/omap3_spi.c b/drivers/spi/omap3_spi.c
index 136fc18..073a98f 100644
--- a/drivers/spi/omap3_spi.c
+++ b/drivers/spi/omap3_spi.c
@@ -404,6 +404,18 @@ static struct omap_spi_drvdata omap4_data = {
 	.register_offset = 0x100,
 };
 
+static __maybe_unused struct of_device_id omap_spi_dt_ids[] = {
+	{
+		.compatible = "ti,omap2-mcspi",
+		.data = (unsigned long)&omap3_data,
+	}, {
+		.compatible = "ti,omap4-mcspi",
+		.data = (unsigned long)&omap4_data,
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct platform_device_id omap_spi_ids[] = {
 	{
 		.name = "omap3-spi",
@@ -419,6 +431,7 @@ static struct platform_device_id omap_spi_ids[] = {
 static struct driver_d omap3_spi_driver = {
 	.name = "omap-spi",
 	.probe = omap3_spi_probe,
+	.of_compatible = DRV_OF_COMPAT(omap_spi_dt_ids),
 	.id_table = omap_spi_ids,
 };
 device_platform_driver(omap3_spi_driver);
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
