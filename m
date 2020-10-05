Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kPNBs-0005hN-AG
 for barebox@lists.infradead.org; Mon, 05 Oct 2020 09:53:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Oct 2020 11:53:41 +0200
Message-Id: <20201005095346.27957-3-s.hauer@pengutronix.de>
In-Reply-To: <20201005095346.27957-1-s.hauer@pengutronix.de>
References: <20201005095346.27957-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/7] remoteproc: imx: Change SoC order in code
To: Barebox List <barebox@lists.infradead.org>

Sort the SoC specific functions alphabetically to have a more natural
order before adding more SoCs to the driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/remoteproc/imx_rproc.c | 58 +++++++++++++++++-----------------
 1 file changed, 29 insertions(+), 29 deletions(-)

diff --git a/drivers/remoteproc/imx_rproc.c b/drivers/remoteproc/imx_rproc.c
index 74a8d8ff2e..fb27d25d8e 100644
--- a/drivers/remoteproc/imx_rproc.c
+++ b/drivers/remoteproc/imx_rproc.c
@@ -94,6 +94,27 @@ struct imx_rproc {
 	struct clk			*clk;
 };
 
+static const struct imx_rproc_att imx_rproc_att_imx6sx[] = {
+	/* dev addr , sys addr  , size	    , flags */
+	/* TCML (M4 Boot Code) - alias */
+	{ 0x00000000, 0x007F8000, 0x00008000, 0 },
+	/* OCRAM_S (Code) */
+	{ 0x00180000, 0x008F8000, 0x00004000, 0 },
+	/* OCRAM_S (Code) - alias */
+	{ 0x00180000, 0x008FC000, 0x00004000, 0 },
+	/* TCML (Code) */
+	{ 0x1FFF8000, 0x007F8000, 0x00008000, ATT_OWN },
+	/* DDR (Code) - alias, first part of DDR (Data) */
+	{ 0x10000000, 0x80000000, 0x0FFF8000, 0 },
+
+	/* TCMU (Data) */
+	{ 0x20000000, 0x00800000, 0x00008000, ATT_OWN },
+	/* OCRAM_S (Data) - alias? */
+	{ 0x208F8000, 0x008F8000, 0x00004000, 0 },
+	/* DDR (Data) */
+	{ 0x80000000, 0x80000000, 0x60000000, 0 },
+};
+
 static const struct imx_rproc_att imx_rproc_att_imx7d[] = {
 	/* dev addr , sys addr  , size	    , flags */
 	/* OCRAM_S (M4 Boot code) - alias */
@@ -123,25 +144,13 @@ static const struct imx_rproc_att imx_rproc_att_imx7d[] = {
 	{ 0x80000000, 0x80000000, 0x60000000, 0 },
 };
 
-static const struct imx_rproc_att imx_rproc_att_imx6sx[] = {
-	/* dev addr , sys addr  , size	    , flags */
-	/* TCML (M4 Boot Code) - alias */
-	{ 0x00000000, 0x007F8000, 0x00008000, 0 },
-	/* OCRAM_S (Code) */
-	{ 0x00180000, 0x008F8000, 0x00004000, 0 },
-	/* OCRAM_S (Code) - alias */
-	{ 0x00180000, 0x008FC000, 0x00004000, 0 },
-	/* TCML (Code) */
-	{ 0x1FFF8000, 0x007F8000, 0x00008000, ATT_OWN },
-	/* DDR (Code) - alias, first part of DDR (Data) */
-	{ 0x10000000, 0x80000000, 0x0FFF8000, 0 },
-
-	/* TCMU (Data) */
-	{ 0x20000000, 0x00800000, 0x00008000, ATT_OWN },
-	/* OCRAM_S (Data) - alias? */
-	{ 0x208F8000, 0x008F8000, 0x00004000, 0 },
-	/* DDR (Data) */
-	{ 0x80000000, 0x80000000, 0x60000000, 0 },
+static const struct imx_rproc_dcfg imx_rproc_cfg_imx6sx = {
+	.src_reg	= IMX6SX_SRC_SCR,
+	.src_mask	= IMX6SX_M4_RST_MASK,
+	.src_start	= IMX6SX_M4_START,
+	.src_stop	= IMX6SX_M4_STOP,
+	.att		= imx_rproc_att_imx6sx,
+	.att_size	= ARRAY_SIZE(imx_rproc_att_imx6sx),
 };
 
 static const struct imx_rproc_dcfg imx_rproc_cfg_imx7d = {
@@ -153,15 +162,6 @@ static const struct imx_rproc_dcfg imx_rproc_cfg_imx7d = {
 	.att_size	= ARRAY_SIZE(imx_rproc_att_imx7d),
 };
 
-static const struct imx_rproc_dcfg imx_rproc_cfg_imx6sx = {
-	.src_reg	= IMX6SX_SRC_SCR,
-	.src_mask	= IMX6SX_M4_RST_MASK,
-	.src_start	= IMX6SX_M4_START,
-	.src_stop	= IMX6SX_M4_STOP,
-	.att		= imx_rproc_att_imx6sx,
-	.att_size	= ARRAY_SIZE(imx_rproc_att_imx6sx),
-};
-
 static int imx_rproc_start(struct rproc *rproc)
 {
 	struct imx_rproc *priv = rproc->priv;
@@ -389,8 +389,8 @@ err_put_rproc:
 }
 
 static const struct of_device_id imx_rproc_of_match[] = {
-	{ .compatible = "fsl,imx7d-cm4", .data = &imx_rproc_cfg_imx7d },
 	{ .compatible = "fsl,imx6sx-cm4", .data = &imx_rproc_cfg_imx6sx },
+	{ .compatible = "fsl,imx7d-cm4", .data = &imx_rproc_cfg_imx7d },
 	{},
 };
 
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
