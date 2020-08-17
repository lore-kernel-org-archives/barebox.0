Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7X9S-00025R-Lu
 for barebox@lists.infradead.org; Mon, 17 Aug 2020 04:53:43 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Aug 2020 06:53:31 +0200
Message-Id: <20200817045332.28099-2-a.fatoum@pengutronix.de>
In-Reply-To: <20200817045332.28099-1-a.fatoum@pengutronix.de>
References: <20200817045332.28099-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/3] video: ipuv3: parallel-display: support of_graph binding
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

"fsl,imx-parallel-display"-compatible devices are supposed to support
two bindings to query the connected LCD's parameters:

  - A display timings sub node
  - A of_graph pointing to a panel or a bridge

So far only the first was supported. Mimic what LDB is already doing, so
we support both.

Unlike LDB, if both are specified, the display timings node takes
precedence. This is to maintain backwards compatibility.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/video/imx-ipu-v3/imx-pd.c | 31 +++++++++++++++++++++----------
 1 file changed, 21 insertions(+), 10 deletions(-)

diff --git a/drivers/video/imx-ipu-v3/imx-pd.c b/drivers/video/imx-ipu-v3/imx-pd.c
index 601be35880ac..fa6314c04430 100644
--- a/drivers/video/imx-ipu-v3/imx-pd.c
+++ b/drivers/video/imx-ipu-v3/imx-pd.c
@@ -27,6 +27,8 @@
 
 #include "imx-ipu-v3.h"
 
+#define IMX_PD_OUTPUT_PORT	1
+
 struct imx_pd {
 	struct device_d *dev;
 	struct display_timings *timings;
@@ -39,7 +41,6 @@ static int imx_pd_ioctl(struct vpl *vpl, unsigned int port,
 {
 	struct imx_pd *imx_pd = container_of(vpl, struct imx_pd, vpl);
 	struct ipu_di_mode *mode;
-	struct display_timings *timings;
 
 	switch (cmd) {
 	case IMX_IPU_VPL_DI_MODE:
@@ -50,15 +51,21 @@ static int imx_pd_ioctl(struct vpl *vpl, unsigned int port,
 		return 0;
 
 	case VPL_GET_VIDEOMODES:
-		timings = data;
-
-		timings->num_modes   = imx_pd->timings->num_modes;
-		timings->native_mode = imx_pd->timings->native_mode;
-		timings->modes       = imx_pd->timings->modes;
-		timings->edid        = NULL;
-		return 0;
+		if (imx_pd->timings) {
+			struct display_timings *timings = data;
+
+			timings->num_modes   = imx_pd->timings->num_modes;
+			timings->native_mode = imx_pd->timings->native_mode;
+			timings->modes       = imx_pd->timings->modes;
+			timings->edid        = NULL;
+			return 0;
+		}
+		break;
 	}
 
+	if (!imx_pd->timings)
+		return vpl_ioctl(vpl, IMX_PD_OUTPUT_PORT, cmd, data);
+
 	return 0;
 }
 
@@ -66,6 +73,7 @@ static int imx_pd_probe(struct device_d *dev)
 {
 	struct device_node *node = dev->device_node;
 	struct imx_pd *imx_pd;
+	struct device_node *port;
 	const char *fmt;
 	int ret;
 
@@ -88,8 +96,11 @@ static int imx_pd_probe(struct device_d *dev)
 
 	imx_pd->timings = of_get_display_timings(node);
 	if (!imx_pd->timings) {
-		dev_err(dev, "No display timings panel found\n");
-		return -EINVAL;
+		port = of_graph_get_port_by_id(node, IMX_PD_OUTPUT_PORT);
+		if (!port) {
+			dev_err(dev, "Neither display timings in nor remote panel found in node\n");
+			return -EINVAL;
+		}
 	}
 
 	imx_pd->vpl.node = node;
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
