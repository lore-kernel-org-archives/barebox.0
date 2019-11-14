Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVEjZ-0006jK-4i
 for barebox@lists.infradead.org; Thu, 14 Nov 2019 13:00:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 14 Nov 2019 14:00:16 +0100
Message-Id: <20191114130021.1029-2-s.hauer@pengutronix.de>
In-Reply-To: <20191114130021.1029-1-s.hauer@pengutronix.de>
References: <20191114130021.1029-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/6] net: fsl-fman: reset device before leaving
To: Barebox List <barebox@lists.infradead.org>

edev->halt is implemented, but not called by the core during shutdown.
We have to call it manually during device remove. With this and also
resetting the whole FMan during shutdown the driver now works properly
when started second stage from another barebox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/fsl-fman.c     | 19 +++++++++++++++++++
 include/soc/fsl/fsl_fman.h |  3 +++
 2 files changed, 22 insertions(+)

diff --git a/drivers/net/fsl-fman.c b/drivers/net/fsl-fman.c
index 4e6bb2ecfd..287a891a63 100644
--- a/drivers/net/fsl-fman.c
+++ b/drivers/net/fsl-fman.c
@@ -1175,6 +1175,8 @@ static int fsl_fman_memac_probe(struct device_d *dev)
 	/* alloc the FMan ethernet private struct */
 	fm_eth = xzalloc(sizeof(*fm_eth));
 
+	dev->priv = fm_eth;
+
 	fm_eth->dev = dev;
 
 	ret = fsl_fman_memac_port_bind(fm_eth, FMAN_PORT_TYPE_TX);
@@ -1216,6 +1218,13 @@ static int fsl_fman_memac_probe(struct device_d *dev)
 	return 0;
 }
 
+static void fsl_fman_memac_remove(struct device_d *dev)
+{
+	struct fm_eth *fm_eth = dev->priv;
+
+	fm_eth_halt(&fm_eth->edev);
+}
+
 static int fsl_fman_muram_probe(struct device_d *dev)
 {
 	struct resource *iores;
@@ -1274,6 +1283,7 @@ static struct of_device_id fsl_fman_memac_dt_ids[] = {
 static struct driver_d fman_memac_driver = {
 	.name   = "fsl-fman-memac",
 	.probe  = fsl_fman_memac_probe,
+	.remove = fsl_fman_memac_remove,
 	.of_compatible = DRV_OF_COMPAT(fsl_fman_memac_dt_ids),
 };
 
@@ -1303,6 +1313,7 @@ static int fsl_fman_probe(struct device_d *dev)
 		return PTR_ERR(iores);
 
 	reg = IOMEM(iores->start);
+	dev->priv = reg;
 
 	ret = of_platform_populate(dev->device_node, NULL, dev);
 	if (ret)
@@ -1320,6 +1331,13 @@ static int fsl_fman_probe(struct device_d *dev)
 	return 0;
 }
 
+static void fsl_fman_remove(struct device_d *dev)
+{
+	struct ccsr_fman *reg = dev->priv;
+
+	setbits_be32(&reg->fm_fpm.fmrstc, FMFP_RSTC_RFM);
+}
+
 static struct of_device_id fsl_fman_dt_ids[] = {
 	{
 		.compatible = "fsl,fman",
@@ -1330,6 +1348,7 @@ static struct of_device_id fsl_fman_dt_ids[] = {
 static struct driver_d fman_driver = {
 	.name   = "fsl-fman",
 	.probe  = fsl_fman_probe,
+	.remove = fsl_fman_remove,
 	.of_compatible = DRV_OF_COMPAT(fsl_fman_dt_ids),
 };
 device_platform_driver(fman_driver);
diff --git a/include/soc/fsl/fsl_fman.h b/include/soc/fsl/fsl_fman.h
index 96d61298ef..fd69fded38 100644
--- a/include/soc/fsl/fsl_fman.h
+++ b/include/soc/fsl/fsl_fman.h
@@ -348,6 +348,9 @@ struct fm_fpm {
 /* FPM Flush Control Register */
 #define FMFP_FLC_DISP_LIM_NONE	0x00000000 /* no dispatch limitation */
 
+/* FMan Reset Command Register */
+#define FMFP_RSTC_RFM		0x80000000 /* FMan Soft Reset Command */
+
 /* FMFP_EE - FPM event and enable register */
 #define FMFPEE_DECC		0x80000000 /* double ECC err on FPM ram */
 #define FMFPEE_STL		0x40000000 /* stall of task ... */
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
