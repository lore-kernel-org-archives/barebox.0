Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZeHrf-0004Rx-FV
 for barebox@lists.infradead.org; Tue, 22 Sep 2015 07:19:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 22 Sep 2015 09:19:19 +0200
Message-Id: <1442906359-17286-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1442906359-17286-1-git-send-email-s.hauer@pengutronix.de>
References: <1442906359-17286-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] video: ipuv3: imx-ldb: Support video modes in ldb node
To: Barebox List <barebox@lists.infradead.org>

We used to support video modes directly in the ldb device node, that
was lost in: 5bda17e video: ipuv3: Replace ipu_output with VPL.
Add this support back.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/imx-ipu-v3/imx-ldb.c | 24 ++++++++++++++++++++----
 1 file changed, 20 insertions(+), 4 deletions(-)

diff --git a/drivers/video/imx-ipu-v3/imx-ldb.c b/drivers/video/imx-ipu-v3/imx-ldb.c
index 2f49ed2..f502f19 100644
--- a/drivers/video/imx-ipu-v3/imx-ldb.c
+++ b/drivers/video/imx-ipu-v3/imx-ldb.c
@@ -282,9 +282,18 @@ static int imx_ldb_ioctl(struct vpl *vpl, unsigned int port,
 			V4L2_PIX_FMT_RGB24 : V4L2_PIX_FMT_BGR666;
 
 		return 0;
-	default:
-		return vpl_ioctl(vpl, imx_ldb_ch->output_port, cmd, data);
+	case VPL_GET_VIDEOMODES:
+		if (imx_ldb_ch->modes) {
+			struct display_timings *timings = data;
+			timings->num_modes = imx_ldb_ch->modes->num_modes;
+			timings->modes = imx_ldb_ch->modes->modes;
+			return 0;
+		}
+
+		break;
 	}
+
+	return vpl_ioctl(vpl, imx_ldb_ch->output_port, cmd, data);
 }
 
 static int imx_ldb_probe(struct device_d *dev)
@@ -329,8 +338,15 @@ static int imx_ldb_probe(struct device_d *dev)
 		/* The output port is port@4 with mux or port@1 without mux */
 		port = of_graph_get_port_by_id(child, channel->output_port);
 		if (!port) {
-			dev_warn(dev, "No port found for %s\n", child->full_name);
-			continue;
+			/*
+			 * No output port found, see if we can get modes from the
+			 * ldb node.
+			 */
+			channel->modes = of_get_display_timings(child);
+			if (!channel->modes) {
+				dev_warn(dev, "No port found for %s\n", child->full_name);
+				continue;
+			}
 		}
 
 		channel->vpl.node = child;
-- 
2.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
