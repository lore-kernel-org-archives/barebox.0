Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBtE7-000499-4T
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 20:07:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Sep 2012 22:06:43 +0200
Message-Id: <1347480407-16865-12-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/15] mfd mc13xxx: Add devicetree support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mfd/mc13xxx.c |   12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/mfd/mc13xxx.c b/drivers/mfd/mc13xxx.c
index a62eca8..4577816 100644
--- a/drivers/mfd/mc13xxx.c
+++ b/drivers/mfd/mc13xxx.c
@@ -336,6 +336,16 @@ static int mc_probe(struct device_d *dev, enum mc13xxx_mode mode)
 	return 0;
 }
 
+static __maybe_unused struct of_device_id mc13892_dt_ids[] = {
+	{
+		.compatible = "fsl,mc13892",
+	}, {
+		.compatible = "fsl,mc13783",
+	}, {
+		/* sentinel */
+	}
+};
+
 #ifdef CONFIG_I2C
 static int mc_i2c_probe(struct device_d *dev)
 {
@@ -345,6 +355,7 @@ static int mc_i2c_probe(struct device_d *dev)
 static struct driver_d mc_i2c_driver = {
 	.name  = "mc13xxx-i2c",
 	.probe = mc_i2c_probe,
+	.of_compatible = DRV_OF_COMPAT(mc13892_dt_ids),
 };
 
 static int mc_i2c_init(void)
@@ -363,6 +374,7 @@ static int mc_spi_probe(struct device_d *dev)
 static struct driver_d mc_spi_driver = {
 	.name  = "mc13xxx-spi",
 	.probe = mc_spi_probe,
+	.of_compatible = DRV_OF_COMPAT(mc13892_dt_ids),
 };
 
 static int mc_spi_init(void)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
