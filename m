Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZeiX0-0008GY-Sf
 for barebox@lists.infradead.org; Wed, 23 Sep 2015 11:48:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 23 Sep 2015 13:47:24 +0200
Message-Id: <1443008851-26596-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1443008851-26596-1-git-send-email-s.hauer@pengutronix.de>
References: <1443008851-26596-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/10] video: ipuv3: imx-ldb: Support video modes in ldb node
To: Barebox List <barebox@lists.infradead.org>

We used to support video modes directly in the ldb device node, that
was lost in: 5bda17e video: ipuv3: Replace ipu_output with VPL.
Add this support back. Also drop duplicate vpl ioctl forwarding for
several calls.

With this patch modes can either be retrieved from the ldb node as
originally done or from the panel remote port.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/imx-ipu-v3/imx-ldb.c | 55 +++++++++++++++++++-------------------
 1 file changed, 27 insertions(+), 28 deletions(-)

diff --git a/drivers/video/imx-ipu-v3/imx-ldb.c b/drivers/video/imx-ipu-v3/imx-ldb.c
index 2f49ed2..1e9231f 100644
--- a/drivers/video/imx-ipu-v3/imx-ldb.c
+++ b/drivers/video/imx-ipu-v3/imx-ldb.c
@@ -143,20 +143,7 @@ static int imx_ldb_prepare(struct imx_ldb_channel *imx_ldb_ch, struct fb_videomo
 
 	writel(ldb->ldb_ctrl, ldb->base);
 
-	return vpl_ioctl(&imx_ldb_ch->vpl, imx_ldb_ch->output_port,
-			VPL_PREPARE, NULL);
-}
-
-static int imx_ldb_enable(struct imx_ldb_channel *imx_ldb_ch, int di)
-{
-	return vpl_ioctl(&imx_ldb_ch->vpl, imx_ldb_ch->output_port,
-				VPL_ENABLE, NULL);
-}
-
-static int imx_ldb_disable(struct imx_ldb_channel *imx_ldb_ch, int di)
-{
-	return vpl_ioctl(&imx_ldb_ch->vpl, imx_ldb_ch->output_port,
-			VPL_DISABLE, NULL);
+	return 0;
 }
 
 static int imx6q_ldb_prepare(struct imx_ldb_channel *imx_ldb_ch, int di)
@@ -260,20 +247,14 @@ static int imx_ldb_ioctl(struct vpl *vpl, unsigned int port,
 
 	switch (cmd) {
 	case VPL_ENABLE:
-		ret = vpl_ioctl(vpl, imx_ldb_ch->output_port, cmd, data);
-		if (ret)
-			return ret;
-		return imx_ldb_enable(imx_ldb_ch, port);
+		break;
 	case VPL_DISABLE:
-		ret = vpl_ioctl(vpl, imx_ldb_ch->output_port, cmd, data);
-		if (ret)
-			return ret;
-		return imx_ldb_disable(imx_ldb_ch, port);
+		break;
 	case VPL_PREPARE:
-		ret = vpl_ioctl(vpl, imx_ldb_ch->output_port, cmd, data);
+		ret = imx_ldb_prepare(imx_ldb_ch, data, port);
 		if (ret)
 			return ret;
-		return imx_ldb_prepare(imx_ldb_ch, data, port);
+		break;
 	case IMX_IPU_VPL_DI_MODE:
 		mode = data;
 
@@ -282,9 +263,22 @@ static int imx_ldb_ioctl(struct vpl *vpl, unsigned int port,
 			V4L2_PIX_FMT_RGB24 : V4L2_PIX_FMT_BGR666;
 
 		return 0;
-	default:
-		return vpl_ioctl(vpl, imx_ldb_ch->output_port, cmd, data);
+	case VPL_GET_VIDEOMODES:
+		if (imx_ldb_ch->modes) {
+			struct display_timings *timings = data;
+			timings->num_modes = imx_ldb_ch->modes->num_modes;
+			timings->modes = imx_ldb_ch->modes->modes;
+			dev_dbg(imx_ldb_ch->ldb->dev, "Using ldb provided timings\n");
+			return 0;
+		}
+
+		break;
 	}
+
+	if (imx_ldb_ch->output_port > 0)
+		return vpl_ioctl(vpl, imx_ldb_ch->output_port, cmd, data);
+
+	return 0;
 }
 
 static int imx_ldb_probe(struct device_d *dev)
@@ -326,10 +320,15 @@ static int imx_ldb_probe(struct device_d *dev)
 		channel->chno = i;
 		channel->output_port = imx_ldb->soc_data->have_mux ? 4 : 1;
 
+		channel->modes = of_get_display_timings(child);
+
 		/* The output port is port@4 with mux or port@1 without mux */
 		port = of_graph_get_port_by_id(child, channel->output_port);
-		if (!port) {
-			dev_warn(dev, "No port found for %s\n", child->full_name);
+		if (!port)
+			channel->output_port = -1;
+
+		if (!channel->modes && !port) {
+			dev_err(dev, "Neither display timings in ldb node nor remote panel found\n");
 			continue;
 		}
 
-- 
2.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
