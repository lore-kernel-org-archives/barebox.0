Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cF286-0002mU-PZ
 for barebox@lists.infradead.org; Thu, 08 Dec 2016 17:05:12 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Thu,  8 Dec 2016 18:04:40 +0100
Message-Id: <1481216681-24393-2-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1481216681-24393-1-git-send-email-jlu@pengutronix.de>
References: <1481216681-24393-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 2/3] video: IPU framebuffer: honor clock and enable polarities
To: barebox@lists.infradead.org

These flags are already parsed from DT, so we can just use them to
configure the timings correctly.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 drivers/video/imx-ipu-v3/ipufb.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/video/imx-ipu-v3/ipufb.c b/drivers/video/imx-ipu-v3/ipufb.c
index 63024b546d69..343f9e557868 100644
--- a/drivers/video/imx-ipu-v3/ipufb.c
+++ b/drivers/video/imx-ipu-v3/ipufb.c
@@ -128,8 +128,9 @@ int ipu_crtc_mode_set(struct ipufb_info *fbi,
 	if (mode->sync & FB_SYNC_VERT_HIGH_ACT)
 		sig_cfg.Vsync_pol = 1;
 
-	sig_cfg.enable_pol = 1;
-	sig_cfg.clk_pol = 0;
+	sig_cfg.enable_pol = !(mode->display_flags & DISPLAY_FLAGS_DE_LOW);
+	/* Default to driving pixel data on negative clock edges */
+	sig_cfg.clk_pol = !!(mode->display_flags & DISPLAY_FLAGS_PIXDATA_POSEDGE);
 	sig_cfg.width = mode->xres;
 	sig_cfg.height = mode->yres;
 	sig_cfg.h_start_width = mode->left_margin;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
