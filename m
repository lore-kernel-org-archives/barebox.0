Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZNhsy-0001UN-NL
 for barebox@lists.infradead.org; Fri, 07 Aug 2015 13:40:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Aug 2015 15:40:07 +0200
Message-Id: <1438954809-5962-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1438954809-5962-1-git-send-email-s.hauer@pengutronix.de>
References: <1438954809-5962-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] video: ipuv3: Adjust videomode to IPU limitations
To: Barebox List <barebox@lists.infradead.org>

The IPU needs an upper margin >= 2. Make this sure. This is based
on Linux commit:

commit 6541d71082fdb91f862c92920c6530e4e0548d6f
Author: Jiada Wang <jiada_wang@mentor.com>
Date:   Thu Dec 18 18:00:20 2014 -0800

    gpu: ipu-di: Add ipu_di_adjust_videomode()

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/imx-ipu-v3/ipufb.c | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/drivers/video/imx-ipu-v3/ipufb.c b/drivers/video/imx-ipu-v3/ipufb.c
index e804c31..ebfcfcc 100644
--- a/drivers/video/imx-ipu-v3/ipufb.c
+++ b/drivers/video/imx-ipu-v3/ipufb.c
@@ -75,6 +75,31 @@ static inline u_int chan_to_field(u_int chan, struct fb_bitfield *bf)
 	return chan << bf->offset;
 }
 
+static int ipu_crtc_adjust_videomode(struct ipufb_info *fbi, struct fb_videomode *mode)
+{
+	u32 diff;
+
+	if (mode->lower_margin >= 2)
+		return 0;
+
+	diff = 2 - mode->lower_margin;
+
+	if (mode->upper_margin >= diff) {
+		mode->upper_margin -= diff;
+	} else if (mode->vsync_len > diff) {
+		mode->vsync_len = mode->vsync_len - diff;
+	} else {
+		dev_warn(fbi->dev, "failed to adjust videomode\n");
+		return -EINVAL;
+	}
+
+	mode->lower_margin = 2;
+
+	dev_warn(fbi->dev, "videomode adapted for IPU restrictions\n");
+
+	return 0;
+}
+
 int ipu_crtc_mode_set(struct ipufb_info *fbi,
 			       struct fb_videomode *mode,
 			       int x, int y)
@@ -109,6 +134,11 @@ int ipu_crtc_mode_set(struct ipufb_info *fbi,
 
 	sig_cfg.v_start_width = mode->upper_margin;
 	sig_cfg.v_sync_width = mode->vsync_len;
+
+	ret = ipu_crtc_adjust_videomode(fbi, mode);
+	if (ret)
+		return ret;
+
 	sig_cfg.v_end_width = mode->lower_margin;
 	sig_cfg.pixelclock = PICOS2KHZ(mode->pixclock) * 1000UL;
 	sig_cfg.clkflags = di_mode.di_clkflags;
-- 
2.4.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
