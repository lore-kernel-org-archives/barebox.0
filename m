Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1grHxU-0001d5-Q5
 for barebox@lists.infradead.org; Wed, 06 Feb 2019 07:49:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  6 Feb 2019 08:49:17 +0100
Message-Id: <20190206074921.11115-5-s.hauer@pengutronix.de>
In-Reply-To: <20190206074921.11115-1-s.hauer@pengutronix.de>
References: <20190206074921.11115-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/8] mci: imx-esdhc: make clkidx configurable
To: Barebox List <barebox@lists.infradead.org>

Other architectures using this driver may need a different clk_id to
find its clock. Make this configurable as a preparation for layerscape
support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 8027f46262..06fc69f405 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -87,6 +87,7 @@
 
 struct esdhc_soc_data {
 	u32 flags;
+	const char *clkidx;
 };
 
 struct fsl_esdhc_host {
@@ -617,7 +618,7 @@ static int fsl_esdhc_probe(struct device_d *dev)
 
 	dma_set_mask(dev, DMA_BIT_MASK(32));
 
-	host->clk = clk_get(dev, "per");
+	host->clk = clk_get(dev, socdata->clkidx);
 	if (IS_ERR(host->clk))
 		return PTR_ERR(host->clk);
 
@@ -679,25 +680,30 @@ static int fsl_esdhc_probe(struct device_d *dev)
 
 static struct esdhc_soc_data esdhc_imx25_data = {
 	.flags = ESDHC_FLAG_ENGCM07207,
+	.clkidx = "per",
 };
 
 static struct esdhc_soc_data esdhc_imx53_data = {
 	.flags = ESDHC_FLAG_MULTIBLK_NO_INT,
+	.clkidx = "per",
 };
 
 static struct esdhc_soc_data usdhc_imx6q_data = {
 	.flags = ESDHC_FLAG_USDHC | ESDHC_FLAG_MAN_TUNING,
+	.clkidx = "per",
 };
 
 static struct esdhc_soc_data usdhc_imx6sl_data = {
 	.flags = ESDHC_FLAG_USDHC | ESDHC_FLAG_STD_TUNING
 	       | ESDHC_FLAG_HAVE_CAP1 | ESDHC_FLAG_ERR004536
 	       | ESDHC_FLAG_HS200,
+	.clkidx = "per",
 };
 
 static struct esdhc_soc_data usdhc_imx6sx_data = {
 	.flags = ESDHC_FLAG_USDHC | ESDHC_FLAG_STD_TUNING
 	       | ESDHC_FLAG_HAVE_CAP1 | ESDHC_FLAG_HS200,
+	.clkidx = "per",
 };
 
 static __maybe_unused struct of_device_id fsl_esdhc_compatible[] = {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
