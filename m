Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZQC2t-0002au-Bs
 for barebox@lists.infradead.org; Fri, 14 Aug 2015 10:17:08 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1ZQC2X-0005zX-VF
 for barebox@lists.infradead.org; Fri, 14 Aug 2015 12:16:45 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 14 Aug 2015 12:16:43 +0200
Message-Id: <1439547405-12578-3-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1439547405-12578-1-git-send-email-l.stach@pengutronix.de>
References: <1439547405-12578-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 3/5] video: ipu-fb: mark internally used functions as static
To: barebox@lists.infradead.org

Fixes symbol clashes with the IPUv3 driver:
In function `ipu_ch_param_write_field':
drivers/video/imx-ipu-v3/ipu-common.c:103: multiple definition of `ipu_ch_param_write_field'
drivers/video/imx-ipu-fb.c:359: first defined here

In function `ipu_cpmem_set_format_rgb':
drivers/video/imx-ipu-v3/ipu-common.c:155: multiple definition of `ipu_cpmem_set_format_rgb'
drivers/video/imx-ipu-fb.c:504: first defined here

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/video/imx-ipu-fb.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/video/imx-ipu-fb.c b/drivers/video/imx-ipu-fb.c
index b56658202c5f..a87e720d9615 100644
--- a/drivers/video/imx-ipu-fb.c
+++ b/drivers/video/imx-ipu-fb.c
@@ -355,7 +355,8 @@ struct ipu_ch_param {
 	struct ipu_cpmem_word word[2];
 };
 
-void ipu_ch_param_write_field(struct ipu_ch_param __iomem *base, u32 wbs, u32 v)
+static void ipu_ch_param_write_field(struct ipu_ch_param __iomem *base,
+				     u32 wbs, u32 v)
 {
 	u32 bit = (wbs >> 8) % 160;
 	u32 size = wbs & 0xff;
@@ -500,7 +501,8 @@ static int sdc_init_panel(struct fb_info *info, enum disp_data_mapping fmt)
 	return 0;
 }
 
-int ipu_cpmem_set_format_rgb(struct ipu_ch_param *p, struct imx_ipu_fb_rgb *rgb)
+static int ipu_cpmem_set_format_rgb(struct ipu_ch_param *p,
+				    struct imx_ipu_fb_rgb *rgb)
 {
 	int bpp = 0, npb = 0, ro, go, bo, to;
 
-- 
2.4.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
