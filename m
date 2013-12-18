Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VtJHC-0001Rx-CK
 for barebox@lists.infradead.org; Wed, 18 Dec 2013 15:43:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Dec 2013 16:42:35 +0100
Message-Id: <1387381362-7780-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1387381362-7780-1-git-send-email-s.hauer@pengutronix.de>
References: <1387381362-7780-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/10] video: ipufb: calculate channel param fields from
 fb_bitfields
To: barebox@lists.infradead.org

No need to hardcode the channel parameters for the rgb offsets,
we can calculate them from the fb_bitfields. ipu_ch_param_write_field()
is the same as is the mainline IPUv3 driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/imx-ipu-fb.c | 92 +++++++++++++++++++++++++++++-----------------
 1 file changed, 59 insertions(+), 33 deletions(-)

diff --git a/drivers/video/imx-ipu-fb.c b/drivers/video/imx-ipu-fb.c
index 8300e69..717fc71 100644
--- a/drivers/video/imx-ipu-fb.c
+++ b/drivers/video/imx-ipu-fb.c
@@ -258,6 +258,7 @@ struct imx_ipu_fb_rgb {
 	struct fb_bitfield	green;
 	struct fb_bitfield	blue;
 	struct fb_bitfield	transp;
+	int			bits_per_pixel;
 };
 
 static struct imx_ipu_fb_rgb def_rgb_16 = {
@@ -265,6 +266,7 @@ static struct imx_ipu_fb_rgb def_rgb_16 = {
 	.green	= {.offset = 5, .length = 6,},
 	.blue	= {.offset = 0, .length = 5,},
 	.transp = {.offset = 0, .length = 0,},
+	.bits_per_pixel = 16,
 };
 
 static struct imx_ipu_fb_rgb def_rgb_24 = {
@@ -272,6 +274,7 @@ static struct imx_ipu_fb_rgb def_rgb_24 = {
 	.green	= {.offset = 8, .length = 8,},
 	.blue	= {.offset = 0, .length = 8,},
 	.transp = {.offset = 0, .length = 0,},
+	.bits_per_pixel = 24,
 };
 
 static struct imx_ipu_fb_rgb def_rgb_32 = {
@@ -279,6 +282,7 @@ static struct imx_ipu_fb_rgb def_rgb_32 = {
 	.green	= {.offset = 8, .length = 8,},
 	.blue	= {.offset = 0, .length = 8,},
 	.transp = {.offset = 24, .length = 8,},
+	.bits_per_pixel = 32,
 };
 
 #define IPU_CPMEM_WORD(word, ofs, size) ((((word) * 160 + (ofs)) << 8) | (size))
@@ -486,6 +490,59 @@ static int sdc_init_panel(struct fb_info *info, enum disp_data_mapping fmt)
 	return 0;
 }
 
+int ipu_cpmem_set_format_rgb(struct ipu_ch_param *p, struct imx_ipu_fb_rgb *rgb)
+{
+	int bpp = 0, npb = 0, ro, go, bo, to;
+
+	ro = rgb->bits_per_pixel - rgb->red.length - rgb->red.offset;
+	go = rgb->bits_per_pixel - rgb->green.length - rgb->green.offset;
+	bo = rgb->bits_per_pixel - rgb->blue.length - rgb->blue.offset;
+	to = rgb->bits_per_pixel - rgb->transp.length - rgb->transp.offset;
+
+	ipu_ch_param_write_field(p, IPU_FIELD_WID0, rgb->red.length - 1);
+	ipu_ch_param_write_field(p, IPU_FIELD_OFS0, ro);
+	ipu_ch_param_write_field(p, IPU_FIELD_WID1, rgb->green.length - 1);
+	ipu_ch_param_write_field(p, IPU_FIELD_OFS1, go);
+	ipu_ch_param_write_field(p, IPU_FIELD_WID2, rgb->blue.length - 1);
+	ipu_ch_param_write_field(p, IPU_FIELD_OFS2, bo);
+
+	if (rgb->transp.length) {
+		ipu_ch_param_write_field(p, IPU_FIELD_WID3, rgb->transp.length - 1);
+		ipu_ch_param_write_field(p, IPU_FIELD_OFS3, to);
+	} else {
+		ipu_ch_param_write_field(p, IPU_FIELD_WID3, 7);
+		ipu_ch_param_write_field(p, IPU_FIELD_OFS3, rgb->bits_per_pixel);
+	}
+
+	switch (rgb->bits_per_pixel) {
+	case 32:
+		bpp = 0;
+		npb = 7;
+		break;
+	case 24:
+		bpp = 1;
+		npb = 7;
+		break;
+	case 16:
+		bpp = 2;
+		npb = 15;
+		break;
+	case 8:
+		bpp = 3;
+		npb = 31;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	ipu_ch_param_write_field(p, IPU_FIELD_BPP, bpp);
+	ipu_ch_param_write_field(p, IPU_FIELD_PFS, 4);
+	ipu_ch_param_write_field(p, IPU_FIELD_NPB, npb);
+	ipu_ch_param_write_field(p, IPU_FIELD_SAT, 2);
+
+	return 0;
+}
+
 static void ipu_ch_param_set_size(struct ipu_ch_param *p,
 				  u32 pixel_fmt, uint16_t width,
 				  uint16_t height, uint16_t stride)
@@ -498,30 +555,10 @@ static void ipu_ch_param_set_size(struct ipu_ch_param *p,
 	/* See above, for further formats see the Linux driver */
 	switch (pixel_fmt) {
 	case IPU_PIX_FMT_RGB565:
-		ipu_ch_param_write_field(p, IPU_FIELD_BPP, 2);
-		ipu_ch_param_write_field(p, IPU_FIELD_PFS, 4);
-		ipu_ch_param_write_field(p, IPU_FIELD_NPB, 7);
-		ipu_ch_param_write_field(p, IPU_FIELD_SAT, 2);		/* SAT = 32-bit access */
-		ipu_ch_param_write_field(p, IPU_FIELD_OFS0, 0);		/* Red bit offset */
-		ipu_ch_param_write_field(p, IPU_FIELD_OFS1, 5);		/* Green bit offset */
-		ipu_ch_param_write_field(p, IPU_FIELD_OFS2, 11);	/* Blue bit offset */
-		ipu_ch_param_write_field(p, IPU_FIELD_OFS3, 16);	/* Alpha bit offset */
-		ipu_ch_param_write_field(p, IPU_FIELD_WID0, 4);		/* Red bit width - 1 */
-		ipu_ch_param_write_field(p, IPU_FIELD_WID1, 5);		/* Green bit width - 1 */
-		ipu_ch_param_write_field(p, IPU_FIELD_WID2, 4);		/* Blue bit width - 1 */
+		ipu_cpmem_set_format_rgb(p, &def_rgb_16);
 		break;
 	case IPU_PIX_FMT_RGB24:
-		ipu_ch_param_write_field(p, IPU_FIELD_BPP, 1);		/* 24 BPP & RGB PFS */
-		ipu_ch_param_write_field(p, IPU_FIELD_PFS, 4);
-		ipu_ch_param_write_field(p, IPU_FIELD_NPB, 7);
-		ipu_ch_param_write_field(p, IPU_FIELD_SAT, 2);		/* SAT = 32-bit access */
-		ipu_ch_param_write_field(p, IPU_FIELD_OFS0, 16);	/* Red bit offset */
-		ipu_ch_param_write_field(p, IPU_FIELD_OFS1, 8);		/* Green bit offset */
-		ipu_ch_param_write_field(p, IPU_FIELD_OFS2, 0);		/* Blue bit offset */
-		ipu_ch_param_write_field(p, IPU_FIELD_OFS3, 24);	/* Alpha bit offset */
-		ipu_ch_param_write_field(p, IPU_FIELD_WID0, 7);		/* Red bit width - 1 */
-		ipu_ch_param_write_field(p, IPU_FIELD_WID1, 7);		/* Green bit width - 1 */
-		ipu_ch_param_write_field(p, IPU_FIELD_WID2, 7);		/* Blue bit width - 1 */
+		ipu_cpmem_set_format_rgb(p, &def_rgb_24);
 		break;
 	default:
 		break;
@@ -586,17 +623,6 @@ static void ipu_init_channel_buffer(struct ipu_fb_info *fbi,
 
 	ipu_ch_param_set_buffer(&p, fbmem, NULL);
 
-	/* Some channels (rotation) have restriction on burst length */
-	switch (channel) {
-	case IDMAC_SDC_0:
-	case IDMAC_SDC_1:
-		/* In original code only IPU_PIX_FMT_RGB565 was setting burst */
-		params.pp.npb = 16 - 1;
-		break;
-	default:
-		break;
-	}
-
 	ipu_write_param_mem(fbi, dma_param_addr(channel), &p, 10);
 
 	/* Disable double-buffering */
-- 
1.8.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
