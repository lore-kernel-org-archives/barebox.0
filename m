Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZwbVj-0000XU-6J
 for barebox@lists.infradead.org; Wed, 11 Nov 2015 19:56:52 +0000
Received: from tellur.intern.lynxeye.de (p57B5FBB9.dip0.t-ipconnect.de
 [87.181.251.185]) by lynxeye.de (Postfix) with ESMTPA id 02CC326C2001
 for <barebox@lists.infradead.org>; Wed, 11 Nov 2015 20:55:57 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Wed, 11 Nov 2015 20:55:54 +0100
Message-Id: <1447271754-13692-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH] video: imx: quieten down VPL output
To: barebox@lists.infradead.org

Printing 3 lines of output per CRTC if no modes are found (which
may be just fine if no display is attached) is just a bit too much,
especially on SoCs like i.MX6Q that carry 4 CRTCs.
Failing to find modes is not a fatal error, so the error does not
need to be propagated into a probe failure.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/video/imx-ipu-v3/ipufb.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/video/imx-ipu-v3/ipufb.c b/drivers/video/imx-ipu-v3/ipufb.c
index a96883c..ea81270 100644
--- a/drivers/video/imx-ipu-v3/ipufb.c
+++ b/drivers/video/imx-ipu-v3/ipufb.c
@@ -308,7 +308,7 @@ static int ipufb_probe(struct device_d *dev)
 
 	node = of_graph_get_port_by_id(dev->parent->device_node, 2 + pdata->di);
 	if (node && of_graph_port_is_available(node)) {
-		dev_info(fbi->dev, "register vpl for %s\n", dev->parent->device_node->full_name);
+		dev_dbg(fbi->dev, "register vpl for %s\n", dev->parent->device_node->full_name);
 
 		fbi->vpl.node = dev->parent->device_node;
 		ret = vpl_register(&fbi->vpl);
@@ -330,8 +330,8 @@ static int ipufb_probe(struct device_d *dev)
 
 		ret = vpl_ioctl(&fbi->vpl, 2 + fbi->dino, VPL_GET_VIDEOMODES, &info->modes);
 		if (ret) {
-			dev_err(fbi->dev, "failed to get modes: %s\n", strerror(-ret));
-			return ret;
+			dev_dbg(fbi->dev, "failed to get modes: %s\n", strerror(-ret));
+			return 0;
 		}
 
 		ret = register_framebuffer(info);
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
