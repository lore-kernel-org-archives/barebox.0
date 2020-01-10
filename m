Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipsrk-0006Mh-Uu
 for barebox@lists.infradead.org; Fri, 10 Jan 2020 11:54:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 Jan 2020 12:54:09 +0100
Message-Id: <20200110115410.18265-5-s.hauer@pengutronix.de>
In-Reply-To: <20200110115410.18265-1-s.hauer@pengutronix.de>
References: <20200110115410.18265-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/5] net: fsl-fman: Do not put hardware in reset before Linux
 start
To: Barebox List <barebox@lists.infradead.org>

Linux depends on the icid values configured in the DPAA. Do not put
the hardware into reset in order to preserve the register values.
Without this, the IOMMU doesn't work properly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/fsl-fman.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/net/fsl-fman.c b/drivers/net/fsl-fman.c
index 1aae58e494..6d54fcc7c9 100644
--- a/drivers/net/fsl-fman.c
+++ b/drivers/net/fsl-fman.c
@@ -1322,13 +1322,6 @@ static int fsl_fman_probe(struct device_d *dev)
 	return 0;
 }
 
-static void fsl_fman_remove(struct device_d *dev)
-{
-	struct ccsr_fman *reg = dev->priv;
-
-	setbits_be32(&reg->fm_fpm.fmrstc, FMFP_RSTC_RFM);
-}
-
 static struct of_device_id fsl_fman_dt_ids[] = {
 	{
 		.compatible = "fsl,fman",
@@ -1339,7 +1332,6 @@ static struct of_device_id fsl_fman_dt_ids[] = {
 static struct driver_d fman_driver = {
 	.name   = "fsl-fman",
 	.probe  = fsl_fman_probe,
-	.remove = fsl_fman_remove,
 	.of_compatible = DRV_OF_COMPAT(fsl_fman_dt_ids),
 };
 device_platform_driver(fman_driver);
-- 
2.25.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
