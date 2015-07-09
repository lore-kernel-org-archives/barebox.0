Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZD6CH-0000db-MG
 for barebox@lists.infradead.org; Thu, 09 Jul 2015 07:24:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  9 Jul 2015 09:24:14 +0200
Message-Id: <1436426657-5266-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1436426657-5266-1-git-send-email-s.hauer@pengutronix.de>
References: <1436426657-5266-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/13] video: ipuv3: remove unused variable
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/imx-ipu-v3/imx-ipu-v3.h | 1 -
 drivers/video/imx-ipu-v3/ipufb.c      | 1 -
 2 files changed, 2 deletions(-)

diff --git a/drivers/video/imx-ipu-v3/imx-ipu-v3.h b/drivers/video/imx-ipu-v3/imx-ipu-v3.h
index 7c48a7c..d046aee 100644
--- a/drivers/video/imx-ipu-v3/imx-ipu-v3.h
+++ b/drivers/video/imx-ipu-v3/imx-ipu-v3.h
@@ -44,7 +44,6 @@ struct ipu_di_signal_cfg {
 
 	u16 width;
 	u16 height;
-	u32 pixel_fmt;
 	u16 h_start_width;
 	u16 h_sync_width;
 	u16 h_end_width;
diff --git a/drivers/video/imx-ipu-v3/ipufb.c b/drivers/video/imx-ipu-v3/ipufb.c
index 7ee4ae3..c032621 100644
--- a/drivers/video/imx-ipu-v3/ipufb.c
+++ b/drivers/video/imx-ipu-v3/ipufb.c
@@ -115,7 +115,6 @@ int ipu_crtc_mode_set(struct ipufb_info *fbi,
 	sig_cfg.clk_pol = 1;
 	sig_cfg.width = mode->xres;
 	sig_cfg.height = mode->yres;
-	sig_cfg.pixel_fmt = out_pixel_fmt;
 	sig_cfg.h_start_width = mode->left_margin;
 	sig_cfg.h_sync_width = mode->hsync_len;
 	sig_cfg.h_end_width = mode->right_margin;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
