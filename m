Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bcVby-0004W4-A1
 for barebox@lists.infradead.org; Wed, 24 Aug 2016 10:40:47 +0000
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Wed, 24 Aug 2016 12:40:18 +0200
Message-Id: <1472035219-23917-2-git-send-email-p.zabel@pengutronix.de>
In-Reply-To: <1472035219-23917-1-git-send-email-p.zabel@pengutronix.de>
References: <1472035219-23917-1-git-send-email-p.zabel@pengutronix.de>
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
Subject: [PATCH 2/3] video: add VPL ioctl to get bus format
To: barebox@lists.infradead.org

The i.MX specific DI_MODE VPL ioctl already allows to query the encoder
input bus format. This patch also allows non-i.MX specific encoder drivers
to report their input bus format.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 drivers/video/imx-ipu-v3/ipufb.c | 8 ++++++--
 include/video/vpl.h              | 1 +
 2 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/video/imx-ipu-v3/ipufb.c b/drivers/video/imx-ipu-v3/ipufb.c
index cfafa22..63024b5 100644
--- a/drivers/video/imx-ipu-v3/ipufb.c
+++ b/drivers/video/imx-ipu-v3/ipufb.c
@@ -109,7 +109,7 @@ int ipu_crtc_mode_set(struct ipufb_info *fbi,
 	int ret;
 	struct ipu_di_signal_cfg sig_cfg = {};
 	struct ipu_di_mode di_mode = {};
-	u32 bus_format;
+	u32 bus_format = 0;
 
 	dev_info(fbi->dev, "%s: mode->xres: %d\n", __func__,
 			mode->xres);
@@ -117,7 +117,11 @@ int ipu_crtc_mode_set(struct ipufb_info *fbi,
 			mode->yres);
 
 	vpl_ioctl(&fbi->vpl, 2 + fbi->dino, IMX_IPU_VPL_DI_MODE, &di_mode);
-	bus_format = di_mode.bus_format ?: fbi->bus_format;
+	vpl_ioctl(&fbi->vpl, 2 + fbi->dino, VPL_GET_BUS_FORMAT, &bus_format);
+	if (bus_format)
+		di_mode.di_clkflags = IPU_DI_CLKMODE_NON_FRACTIONAL;
+	else
+		bus_format = di_mode.bus_format ?: fbi->bus_format;
 
 	if (mode->sync & FB_SYNC_HOR_HIGH_ACT)
 		sig_cfg.Hsync_pol = 1;
diff --git a/include/video/vpl.h b/include/video/vpl.h
index 846007f..6ae7b0f 100644
--- a/include/video/vpl.h
+++ b/include/video/vpl.h
@@ -8,6 +8,7 @@
 #define VPL_ENABLE		0x67660003
 #define VPL_DISABLE		0x67660004
 #define VPL_GET_VIDEOMODES	0x67660005
+#define VPL_GET_BUS_FORMAT	0x67660006
 
 struct vpl {
 	int (*ioctl)(struct vpl *, unsigned int port,
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
