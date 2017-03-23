Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cr2hA-0004IR-JD
 for barebox@lists.infradead.org; Thu, 23 Mar 2017 13:22:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 23 Mar 2017 14:22:06 +0100
Message-Id: <20170323132206.29164-2-s.hauer@pengutronix.de>
In-Reply-To: <20170323132206.29164-1-s.hauer@pengutronix.de>
References: <20170323132206.29164-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] video: ipu: register framebuffer,
 even when no modes are found
To: Barebox List <barebox@lists.infradead.org>

When no monitor is connected it might be normal that no modes are found.
Do not bail out with an error in this case, which gives an ugly error
message, but instead still register the framebuffer. This gives the
user a chance to examine it and see that the framebuffer has no modes.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/imx-ipu-v3/ipufb.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/video/imx-ipu-v3/ipufb.c b/drivers/video/imx-ipu-v3/ipufb.c
index 4781c45098..9597eda0d0 100644
--- a/drivers/video/imx-ipu-v3/ipufb.c
+++ b/drivers/video/imx-ipu-v3/ipufb.c
@@ -333,10 +333,8 @@ static int ipufb_probe(struct device_d *dev)
 		}
 
 		ret = vpl_ioctl(&fbi->vpl, 2 + fbi->dino, VPL_GET_VIDEOMODES, &info->modes);
-		if (ret) {
+		if (ret)
 			dev_dbg(fbi->dev, "failed to get modes: %s\n", strerror(-ret));
-			return ret;
-		}
 
 		ret = register_framebuffer(info);
 		if (ret < 0) {
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
