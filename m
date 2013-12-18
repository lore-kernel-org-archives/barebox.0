Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VtJH7-0001RE-Ov
 for barebox@lists.infradead.org; Wed, 18 Dec 2013 15:43:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Dec 2013 16:42:34 +0100
Message-Id: <1387381362-7780-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/10] video: ipufb: do not use bitfields
To: barebox@lists.infradead.org

bitfields are not portable and one should make assumptions of the
layout of bitfields. Replace them with the ipu_ch_param_write_field()
which is already used in the mainline IPUv3 driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/imx-ipu-fb.c | 269 +++++++++++++++++++++------------------------
 1 file changed, 128 insertions(+), 141 deletions(-)

diff --git a/drivers/video/imx-ipu-fb.c b/drivers/video/imx-ipu-fb.c
index 8391b1d..8300e69 100644
--- a/drivers/video/imx-ipu-fb.c
+++ b/drivers/video/imx-ipu-fb.c
@@ -281,110 +281,96 @@ static struct imx_ipu_fb_rgb def_rgb_32 = {
 	.transp = {.offset = 24, .length = 8,},
 };
 
-struct chan_param_mem_planar {
-	/* Word 0 */
-	u32	xv:10;
-	u32	yv:10;
-	u32	xb:12;
-
-	u32	yb:12;
-	u32	res1:2;
-	u32	nsb:1;
-	u32	lnpb:6;
-	u32	ubo_l:11;
-
-	u32	ubo_h:15;
-	u32	vbo_l:17;
-
-	u32	vbo_h:9;
-	u32	res2:3;
-	u32	fw:12;
-	u32	fh_l:8;
-
-	u32	fh_h:4;
-	u32	res3:28;
-
-	/* Word 1 */
-	u32	eba0;
-
-	u32	eba1;
-
-	u32	bpp:3;
-	u32	sl:14;
-	u32	pfs:3;
-	u32	bam:3;
-	u32	res4:2;
-	u32	npb:6;
-	u32	res5:1;
-
-	u32	sat:2;
-	u32	res6:30;
-} __attribute__ ((packed));
-
-struct chan_param_mem_interleaved {
-	/* Word 0 */
-	u32	xv:10;
-	u32	yv:10;
-	u32	xb:12;
-
-	u32	yb:12;
-	u32	sce:1;
-	u32	res1:1;
-	u32	nsb:1;
-	u32	lnpb:6;
-	u32	sx:10;
-	u32	sy_l:1;
-
-	u32	sy_h:9;
-	u32	ns:10;
-	u32	sm:10;
-	u32	sdx_l:3;
-
-	u32	sdx_h:2;
-	u32	sdy:5;
-	u32	sdrx:1;
-	u32	sdry:1;
-	u32	sdr1:1;
-	u32	res2:2;
-	u32	fw:12;
-	u32	fh_l:8;
-
-	u32	fh_h:4;
-	u32	res3:28;
-
-	/* Word 1 */
-	u32	eba0;
-
-	u32	eba1;
-
-	u32	bpp:3;
-	u32	sl:14;
-	u32	pfs:3;
-	u32	bam:3;
-	u32	res4:2;
-	u32	npb:6;
-	u32	res5:1;
-
-	u32	sat:2;
-	u32	scc:1;
-	u32	ofs0:5;
-	u32	ofs1:5;
-	u32	ofs2:5;
-	u32	ofs3:5;
-	u32	wid0:3;
-	u32	wid1:3;
-	u32	wid2:3;
-
-	u32	wid3:3;
-	u32	dec_sel:1;
-	u32	res6:28;
-} __attribute__ ((packed));
-
-union chan_param_mem {
-	struct chan_param_mem_planar		pp;
-	struct chan_param_mem_interleaved	ip;
+#define IPU_CPMEM_WORD(word, ofs, size) ((((word) * 160 + (ofs)) << 8) | (size))
+
+#define IPU_FIELD_XV		IPU_CPMEM_WORD(0, 0, 10)
+#define IPU_FIELD_YV		IPU_CPMEM_WORD(0, 10, 10)
+#define IPU_FIELD_XB		IPU_CPMEM_WORD(0, 20, 12)
+
+#define IPU_FIELD_YB		IPU_CPMEM_WORD(0, 32, 12)
+#define IPU_FIELD_SCE		IPU_CPMEM_WORD(0, 44, 1)
+#define IPU_FIELD_RES1		IPU_CPMEM_WORD(0, 45, 1)
+#define IPU_FIELD_NSB		IPU_CPMEM_WORD(0, 46, 1)
+#define IPU_FIELD_LNPB		IPU_CPMEM_WORD(0, 47, 6)
+#define IPU_FIELD_SX		IPU_CPMEM_WORD(0, 53, 10)
+#define IPU_FIELD_SY_L		IPU_CPMEM_WORD(0, 63, 1)
+
+#define IPU_FIELD_SY_H		IPU_CPMEM_WORD(0, 64, 9)
+#define IPU_FIELD_NS		IPU_CPMEM_WORD(0, 73, 10)
+#define IPU_FIELD_SM		IPU_CPMEM_WORD(0, 83, 10)
+#define IPU_FIELD_SDX_L		IPU_CPMEM_WORD(0, 93, 3)
+
+#define IPU_FIELD_SDX_H		IPU_CPMEM_WORD(0, 96, 2)
+#define IPU_FIELD_SDY		IPU_CPMEM_WORD(0, 98, 5)
+#define IPU_FIELD_SDRX		IPU_CPMEM_WORD(0, 103, 1)
+#define IPU_FIELD_SDRY		IPU_CPMEM_WORD(0, 104, 1)
+#define IPU_FIELD_SDR1		IPU_CPMEM_WORD(0, 105, 1)
+#define IPU_FIELD_RES2		IPU_CPMEM_WORD(0, 106, 2)
+#define IPU_FIELD_FW		IPU_CPMEM_WORD(0, 108, 12)
+#define IPU_FIELD_FH_L		IPU_CPMEM_WORD(0, 120, 8)
+
+#define IPU_FIELD_FH_H		IPU_CPMEM_WORD(0, 128, 4)
+#define IPU_FIELD_RES3		IPU_CPMEM_WORD(0, 132, 28)
+
+#define IPU_FIELD_EBA0		IPU_CPMEM_WORD(1, 0, 32)
+
+#define IPU_FIELD_EBA1		IPU_CPMEM_WORD(1, 32, 32)
+
+#define IPU_FIELD_BPP		IPU_CPMEM_WORD(1, 64, 3)
+#define IPU_FIELD_SL		IPU_CPMEM_WORD(1, 67, 14)
+#define IPU_FIELD_PFS		IPU_CPMEM_WORD(1, 81, 3)
+#define IPU_FIELD_BAM		IPU_CPMEM_WORD(1, 84, 3)
+#define IPU_FIELD_RES4		IPU_CPMEM_WORD(1, 87, 2)
+#define IPU_FIELD_NPB		IPU_CPMEM_WORD(1, 89, 6)
+#define IPU_FIELD_RES5		IPU_CPMEM_WORD(1, 95, 1)
+
+#define IPU_FIELD_SAT		IPU_CPMEM_WORD(1, 96, 2)
+#define IPU_FIELD_SCC		IPU_CPMEM_WORD(1, 98, 1)
+#define IPU_FIELD_OFS0		IPU_CPMEM_WORD(1, 99, 5)
+#define IPU_FIELD_OFS1		IPU_CPMEM_WORD(1, 104, 5)
+#define IPU_FIELD_OFS2		IPU_CPMEM_WORD(1, 109, 5)
+#define IPU_FIELD_OFS3		IPU_CPMEM_WORD(1, 114, 5)
+#define IPU_FIELD_WID0		IPU_CPMEM_WORD(1, 119, 3)
+#define IPU_FIELD_WID1		IPU_CPMEM_WORD(1, 122, 3)
+#define IPU_FIELD_WID2		IPU_CPMEM_WORD(1, 125, 3)
+
+#define IPU_FIELD_WID3		IPU_CPMEM_WORD(1, 128, 3)
+#define IPU_FIELD_DEC_SEL	IPU_CPMEM_WORD(1, 131, 1)
+#define IPU_FIELD_RES6		IPU_CPMEM_WORD(1, 132, 28)
+
+struct ipu_cpmem_word {
+	u32 data[5];
 };
 
+struct ipu_ch_param {
+	struct ipu_cpmem_word word[2];
+};
+
+void ipu_ch_param_write_field(struct ipu_ch_param __iomem *base, u32 wbs, u32 v)
+{
+	u32 bit = (wbs >> 8) % 160;
+	u32 size = wbs & 0xff;
+	u32 word = (wbs >> 8) / 160;
+	u32 i = bit / 32;
+	u32 ofs = bit % 32;
+	u32 mask = (1 << size) - 1;
+	u32 val;
+
+	pr_debug("%s %d %d %d\n", __func__, word, bit , size);
+
+	val = readl(&base->word[word].data[i]);
+	val &= ~(mask << ofs);
+	val |= v << ofs;
+	writel(val, &base->word[word].data[i]);
+
+	if ((bit + size - 1) / 32 > i) {
+		val = readl(&base->word[word].data[i + 1]);
+		val &= ~(mask >> (ofs ? (32 - ofs) : 0));
+		val |= v >> (ofs ? (32 - ofs) : 0);
+		writel(val, &base->word[word].data[i + 1]);
+	}
+}
+
 static inline u32 reg_read(struct ipu_fb_info *fbi, unsigned long reg)
 {
 	u32 val;
@@ -500,60 +486,61 @@ static int sdc_init_panel(struct fb_info *info, enum disp_data_mapping fmt)
 	return 0;
 }
 
-static void ipu_ch_param_set_size(union chan_param_mem *params,
+static void ipu_ch_param_set_size(struct ipu_ch_param *p,
 				  u32 pixel_fmt, uint16_t width,
 				  uint16_t height, uint16_t stride)
 {
-	params->pp.fw		= width - 1;
-	params->pp.fh_l		= height - 1;
-	params->pp.fh_h		= (height - 1) >> 8;
-	params->pp.sl		= stride - 1;
+	ipu_ch_param_write_field(p, IPU_FIELD_FW, width - 1);
+	ipu_ch_param_write_field(p, IPU_FIELD_FH_L, height - 1);
+	ipu_ch_param_write_field(p, IPU_FIELD_FH_H, (height - 1) >> 8);
+	ipu_ch_param_write_field(p, IPU_FIELD_SL, stride - 1);
 
 	/* See above, for further formats see the Linux driver */
 	switch (pixel_fmt) {
 	case IPU_PIX_FMT_RGB565:
-		params->ip.bpp	= 2;
-		params->ip.pfs	= 4;
-		params->ip.npb	= 7;
-		params->ip.sat	= 2;		/* SAT = 32-bit access */
-		params->ip.ofs0	= 0;		/* Red bit offset */
-		params->ip.ofs1	= 5;		/* Green bit offset */
-		params->ip.ofs2	= 11;		/* Blue bit offset */
-		params->ip.ofs3	= 16;		/* Alpha bit offset */
-		params->ip.wid0	= 4;		/* Red bit width - 1 */
-		params->ip.wid1	= 5;		/* Green bit width - 1 */
-		params->ip.wid2	= 4;		/* Blue bit width - 1 */
+		ipu_ch_param_write_field(p, IPU_FIELD_BPP, 2);
+		ipu_ch_param_write_field(p, IPU_FIELD_PFS, 4);
+		ipu_ch_param_write_field(p, IPU_FIELD_NPB, 7);
+		ipu_ch_param_write_field(p, IPU_FIELD_SAT, 2);		/* SAT = 32-bit access */
+		ipu_ch_param_write_field(p, IPU_FIELD_OFS0, 0);		/* Red bit offset */
+		ipu_ch_param_write_field(p, IPU_FIELD_OFS1, 5);		/* Green bit offset */
+		ipu_ch_param_write_field(p, IPU_FIELD_OFS2, 11);	/* Blue bit offset */
+		ipu_ch_param_write_field(p, IPU_FIELD_OFS3, 16);	/* Alpha bit offset */
+		ipu_ch_param_write_field(p, IPU_FIELD_WID0, 4);		/* Red bit width - 1 */
+		ipu_ch_param_write_field(p, IPU_FIELD_WID1, 5);		/* Green bit width - 1 */
+		ipu_ch_param_write_field(p, IPU_FIELD_WID2, 4);		/* Blue bit width - 1 */
 		break;
 	case IPU_PIX_FMT_RGB24:
-		params->ip.bpp	= 1;		/* 24 BPP & RGB PFS */
-		params->ip.pfs	= 4;
-		params->ip.npb	= 7;
-		params->ip.sat	= 2;		/* SAT = 32-bit access */
-		params->ip.ofs0	= 16;		/* Red bit offset */
-		params->ip.ofs1	= 8;		/* Green bit offset */
-		params->ip.ofs2	= 0;		/* Blue bit offset */
-		params->ip.ofs3	= 24;		/* Alpha bit offset */
-		params->ip.wid0	= 7;		/* Red bit width - 1 */
-		params->ip.wid1	= 7;		/* Green bit width - 1 */
-		params->ip.wid2	= 7;		/* Blue bit width - 1 */
+		ipu_ch_param_write_field(p, IPU_FIELD_BPP, 1);		/* 24 BPP & RGB PFS */
+		ipu_ch_param_write_field(p, IPU_FIELD_PFS, 4);
+		ipu_ch_param_write_field(p, IPU_FIELD_NPB, 7);
+		ipu_ch_param_write_field(p, IPU_FIELD_SAT, 2);		/* SAT = 32-bit access */
+		ipu_ch_param_write_field(p, IPU_FIELD_OFS0, 16);	/* Red bit offset */
+		ipu_ch_param_write_field(p, IPU_FIELD_OFS1, 8);		/* Green bit offset */
+		ipu_ch_param_write_field(p, IPU_FIELD_OFS2, 0);		/* Blue bit offset */
+		ipu_ch_param_write_field(p, IPU_FIELD_OFS3, 24);	/* Alpha bit offset */
+		ipu_ch_param_write_field(p, IPU_FIELD_WID0, 7);		/* Red bit width - 1 */
+		ipu_ch_param_write_field(p, IPU_FIELD_WID1, 7);		/* Green bit width - 1 */
+		ipu_ch_param_write_field(p, IPU_FIELD_WID2, 7);		/* Blue bit width - 1 */
 		break;
 	default:
 		break;
 	}
 
-	params->pp.nsb = 1;
+	ipu_ch_param_write_field(p, IPU_FIELD_NSB, 1);
 }
 
-static void ipu_ch_param_set_buffer(union chan_param_mem *params,
-				    void *buf0, void *buf1)
+static void ipu_ch_param_set_buffer(struct ipu_ch_param *p, void *buf0, void *buf1)
 {
-	params->pp.eba0 = (u32)buf0;
-	params->pp.eba1 = (u32)buf1;
+	ipu_ch_param_write_field(p, IPU_FIELD_EBA0, (u32)buf0);
+	ipu_ch_param_write_field(p, IPU_FIELD_EBA1, (u32)buf1);
 }
 
 static void ipu_write_param_mem(struct ipu_fb_info *fbi, u32 addr,
-		u32 *data, u32 num_words)
+		struct ipu_ch_param *p, u32 num_words)
 {
+	u32 *data = (void *)p;
+
 	for (; num_words > 0; num_words--) {
 		reg_write(fbi, addr, IPU_IMA_ADDR);
 		reg_write(fbi, *data++, IPU_IMA_DATA);
@@ -586,7 +573,7 @@ static u32 dma_param_addr(enum ipu_channel channel)
 static void ipu_init_channel_buffer(struct ipu_fb_info *fbi,
 		enum ipu_channel channel, void *fbmem)
 {
-	union chan_param_mem params = {};
+	struct ipu_ch_param p = {};
 	u32 reg;
 	u32 stride_bytes;
 
@@ -594,12 +581,12 @@ static void ipu_init_channel_buffer(struct ipu_fb_info *fbi,
 	stride_bytes = (stride_bytes + 3) & ~3;
 
 	/* Build parameter memory data for DMA channel */
-	ipu_ch_param_set_size(&params, bpp_to_pixfmt(fbi->info.bits_per_pixel),
+	ipu_ch_param_set_size(&p, bpp_to_pixfmt(fbi->info.bits_per_pixel),
 			      fbi->info.xres, fbi->info.yres, stride_bytes);
-	ipu_ch_param_set_buffer(&params, fbmem, NULL);
-	params.pp.bam = 0;
-	/* Some channels (rotation) have restriction on burst length */
 
+	ipu_ch_param_set_buffer(&p, fbmem, NULL);
+
+	/* Some channels (rotation) have restriction on burst length */
 	switch (channel) {
 	case IDMAC_SDC_0:
 	case IDMAC_SDC_1:
@@ -610,7 +597,7 @@ static void ipu_init_channel_buffer(struct ipu_fb_info *fbi,
 		break;
 	}
 
-	ipu_write_param_mem(fbi, dma_param_addr(channel), (u32 *)&params, 10);
+	ipu_write_param_mem(fbi, dma_param_addr(channel), &p, 10);
 
 	/* Disable double-buffering */
 	reg = reg_read(fbi, IPU_CHA_DB_MODE_SEL);
-- 
1.8.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
