Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBtDt-0001te-Mx
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 20:07:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Sep 2012 22:06:41 +0200
Message-Id: <1347480407-16865-10-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/15] net fec_imx: oftree support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/fec_imx.c |   34 +++++++++++++++++++++++++++-------
 1 file changed, 27 insertions(+), 7 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 599a9b4..d9a97b8 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -617,6 +617,7 @@ static int fec_probe(struct device_d *dev)
         struct eth_device *edev;
 	struct fec_priv *fec;
 	void *base;
+
 #ifdef CONFIG_ARCH_IMX27
 	PCCR0 |= PCCR0_FEC_EN;
 #endif
@@ -656,13 +657,19 @@ static int fec_probe(struct device_d *dev)
 
 	fec_alloc_receive_packets(fec, FEC_RBD_NUM, FEC_MAX_PKT_SIZE);
 
-	fec->xcv_type = pdata->xcv_type;
+	if (pdata)
+		fec->xcv_type = pdata->xcv_type;
+	else
+		fec->xcv_type = MII100;
 
 	if (fec->xcv_type != SEVENWIRE) {
 		fec->miidev.read = fec_miidev_read;
 		fec->miidev.write = fec_miidev_write;
-		fec->miidev.address = pdata->phy_addr;
-		fec->miidev.flags = pdata->xcv_type == MII10 ? MIIDEV_FORCE_10 : 0;
+		if (pdata) {
+			fec->miidev.address = pdata->phy_addr;
+			fec->miidev.flags = pdata->xcv_type == MII10 ? MIIDEV_FORCE_10 : 0;
+		} else
+			fec->miidev.address = 0;
 		fec->miidev.edev = edev;
 		fec->miidev.parent = dev;
 
@@ -680,19 +687,32 @@ static void fec_remove(struct device_d *dev)
 	fec_halt(&fec->edev);
 }
 
+static __maybe_unused struct of_device_id imx_fec_dt_ids[] = {
+	{
+		.compatible = "fsl,imx25-fec",
+	}, {
+		.compatible = "fsl,imx27-fec",
+	}, {
+		.compatible = "fsl,imx6q-fec",
+	}, {
+		/* sentinel */
+	}
+};
+
 /**
  * Driver description for registering
  */
 static struct driver_d fec_driver = {
-        .name   = "fec_imx",
-        .probe  = fec_probe,
+	.name   = "fec_imx",
+	.probe  = fec_probe,
 	.remove = fec_remove,
+	.of_compatible = DRV_OF_COMPAT(imx_fec_dt_ids),
 };
 
 static int fec_register(void)
 {
-        register_driver(&fec_driver);
-        return 0;
+	register_driver(&fec_driver);
+	return 0;
 }
 
 device_initcall(fec_register);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
