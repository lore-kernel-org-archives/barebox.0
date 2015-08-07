Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZNhst-000194-Nj
 for barebox@lists.infradead.org; Fri, 07 Aug 2015 13:40:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Aug 2015 15:40:06 +0200
Message-Id: <1438954809-5962-2-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] video: imx-hdmi: sync with kernel
To: Barebox List <barebox@lists.infradead.org>

This syncs the imx-hdmi driver with Linux 4.2-rc1 where it makes sense. This
makes it easier to compare the driver with the kernel. This also adds
hdmi_av_composer which is mandatory. Somehow the driver worked without it in
lower resolutions, but now it also works for higher resolutions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/imx-ipu-v3/imx-hdmi.c | 380 ++++++++++++++++++++++--------------
 drivers/video/imx-ipu-v3/imx-hdmi.h |   3 +-
 2 files changed, 235 insertions(+), 148 deletions(-)

diff --git a/drivers/video/imx-ipu-v3/imx-hdmi.c b/drivers/video/imx-ipu-v3/imx-hdmi.c
index f5a2e3c..fa55b19 100644
--- a/drivers/video/imx-ipu-v3/imx-hdmi.c
+++ b/drivers/video/imx-ipu-v3/imx-hdmi.c
@@ -6,8 +6,7 @@
  * the Free Software Foundation; either version 2 of the License, or
  * (at your option) any later version.
  *
- * SH-Mobile High-Definition Multimedia Interface (HDMI) driver
- * for SLISHDMI13T and SLIPHDMIT IP cores
+ * Designware High-Definition Multimedia Interface (HDMI) driver
  *
  * Copyright (C) 2010, Guennadi Liakhovetski <g.liakhovetski@gmx.de>
  */
@@ -60,7 +59,7 @@ enum hdmi_datamap {
 	YCbCr422_12B = 0x12,
 };
 
-enum imx_hdmi_devtype {
+enum dw_hdmi_devtype {
 	IMX6Q_HDMI,
 	IMX6DL_HDMI,
 };
@@ -117,8 +116,8 @@ struct hdmi_data_info {
 	struct hdmi_vmode video_mode;
 };
 
-struct imx_hdmi {
-	enum imx_hdmi_devtype dev_type;
+struct dw_hdmi {
+	enum dw_hdmi_devtype dev_type;
 	struct device_d *dev;
 	struct clk *isfr_clk;
 	struct clk *iahb_clk;
@@ -140,10 +139,12 @@ struct imx_hdmi {
 	unsigned int sample_rate;
 	int ratio;
 
+	struct fb_videomode *mode;
+
 	struct vpl vpl;
 };
 
-static void imx_hdmi_set_ipu_di_mux(struct imx_hdmi *hdmi, int ipu_di)
+static void dw_hdmi_set_ipu_di_mux(struct dw_hdmi *hdmi, int ipu_di)
 {
 	void __iomem *gpr3 = (void *)MX6_IOMUXC_BASE_ADDR + 0xc;
 	uint32_t val;
@@ -156,49 +157,47 @@ static void imx_hdmi_set_ipu_di_mux(struct imx_hdmi *hdmi, int ipu_di)
 	writel(val, gpr3);
 }
 
-static inline void hdmi_writeb(struct imx_hdmi *hdmi, u8 val, int offset)
+static inline void hdmi_writeb(struct dw_hdmi *hdmi, u8 val, int offset)
 {
 	writeb(val, hdmi->regs + offset);
 }
 
-static inline u8 hdmi_readb(struct imx_hdmi *hdmi, int offset)
+static inline u8 hdmi_readb(struct dw_hdmi *hdmi, int offset)
 {
 	return readb(hdmi->regs + offset);
 }
 
-static void hdmi_modb(struct imx_hdmi *hdmi, u8 data, u8 mask, unsigned reg)
+static void hdmi_modb(struct dw_hdmi *hdmi, u8 data, u8 mask, unsigned reg)
 {
 	u8 val = hdmi_readb(hdmi, reg) & ~mask;
+
 	val |= data & mask;
 	hdmi_writeb(hdmi, val, reg);
 }
 
-static void hdmi_mask_writeb(struct imx_hdmi *hdmi, u8 data, unsigned int reg,
-		      u8 shift, u8 mask)
+static void hdmi_mask_writeb(struct dw_hdmi *hdmi, u8 data, unsigned int reg,
+			     u8 shift, u8 mask)
 {
 	hdmi_modb(hdmi, data << shift, mask, reg);
 }
 
-static void hdmi_set_clock_regenerator_n(struct imx_hdmi *hdmi,
-					 unsigned int value)
+static void hdmi_set_cts_n(struct dw_hdmi *hdmi, unsigned int cts,
+			   unsigned int n)
 {
-	hdmi_writeb(hdmi, value & 0xff, HDMI_AUD_N1);
-	hdmi_writeb(hdmi, (value >> 8) & 0xff, HDMI_AUD_N2);
-	hdmi_writeb(hdmi, (value >> 16) & 0x0f, HDMI_AUD_N3);
+	/* Must be set/cleared first */
+	hdmi_modb(hdmi, 0, HDMI_AUD_CTS3_CTS_MANUAL, HDMI_AUD_CTS3);
 
 	/* nshift factor = 0 */
 	hdmi_modb(hdmi, 0, HDMI_AUD_CTS3_N_SHIFT_MASK, HDMI_AUD_CTS3);
-}
-
-static void hdmi_regenerate_cts(struct imx_hdmi *hdmi, unsigned int cts)
-{
-	/* Must be set/cleared first */
-	hdmi_modb(hdmi, 0, HDMI_AUD_CTS3_CTS_MANUAL, HDMI_AUD_CTS3);
 
-	hdmi_writeb(hdmi, cts & 0xff, HDMI_AUD_CTS1);
-	hdmi_writeb(hdmi, (cts >> 8) & 0xff, HDMI_AUD_CTS2);
 	hdmi_writeb(hdmi, ((cts >> 16) & HDMI_AUD_CTS3_AUDCTS19_16_MASK) |
 		    HDMI_AUD_CTS3_CTS_MANUAL, HDMI_AUD_CTS3);
+	hdmi_writeb(hdmi, (cts >> 8) & 0xff, HDMI_AUD_CTS2);
+	hdmi_writeb(hdmi, cts & 0xff, HDMI_AUD_CTS1);
+
+	hdmi_writeb(hdmi, (n >> 16) & 0x0f, HDMI_AUD_N3);
+	hdmi_writeb(hdmi, (n >> 8) & 0xff, HDMI_AUD_N2);
+	hdmi_writeb(hdmi, n & 0xff, HDMI_AUD_N1);
 }
 
 static unsigned int hdmi_compute_n(unsigned int freq, unsigned long pixel_clk,
@@ -334,12 +333,11 @@ static unsigned int hdmi_compute_cts(unsigned int freq, unsigned long pixel_clk,
 	}
 	if (ratio == 100)
 		return cts;
-	else
-		return (cts * ratio) / 100;
+	return (cts * ratio) / 100;
 }
 
-static void hdmi_set_clk_regenerator(struct imx_hdmi *hdmi,
-	unsigned long pixel_clk)
+static void hdmi_set_clk_regenerator(struct dw_hdmi *hdmi,
+				     unsigned long pixel_clk)
 {
 	unsigned int clk_n, clk_cts;
 
@@ -350,7 +348,7 @@ static void hdmi_set_clk_regenerator(struct imx_hdmi *hdmi,
 
 	if (!clk_cts) {
 		dev_dbg(hdmi->dev, "%s: pixel clock not supported: %lu\n",
-			 __func__, pixel_clk);
+			__func__, pixel_clk);
 		return;
 	}
 
@@ -358,11 +356,10 @@ static void hdmi_set_clk_regenerator(struct imx_hdmi *hdmi,
 		__func__, hdmi->sample_rate, hdmi->ratio,
 		pixel_clk, clk_n, clk_cts);
 
-	hdmi_set_clock_regenerator_n(hdmi, clk_n);
-	hdmi_regenerate_cts(hdmi, clk_cts);
+	hdmi_set_cts_n(hdmi, clk_cts, clk_n);
 }
 
-static void hdmi_init_clk_regenerator(struct imx_hdmi *hdmi)
+static void hdmi_init_clk_regenerator(struct dw_hdmi *hdmi)
 {
 	hdmi_set_clk_regenerator(hdmi, 74250000);
 }
@@ -374,7 +371,7 @@ static void hdmi_init_clk_regenerator(struct imx_hdmi *hdmi)
  *			pin{31~24} <==> G[7:0]
  *			pin{15~8}  <==> B[7:0]
  */
-static void hdmi_video_sample(struct imx_hdmi *hdmi)
+static void hdmi_video_sample(struct dw_hdmi *hdmi)
 {
 	int color_format = 0;
 	u8 val;
@@ -430,27 +427,32 @@ static void hdmi_video_sample(struct imx_hdmi *hdmi)
 	hdmi_writeb(hdmi, 0x0, HDMI_TX_BCBDATA1);
 }
 
-static int is_color_space_conversion(struct imx_hdmi *hdmi)
+static int is_color_space_conversion(struct dw_hdmi *hdmi)
 {
-	return (hdmi->hdmi_data.enc_in_format !=
-		hdmi->hdmi_data.enc_out_format);
+	return hdmi->hdmi_data.enc_in_format != hdmi->hdmi_data.enc_out_format;
 }
 
-static int is_color_space_decimation(struct imx_hdmi *hdmi)
+static int is_color_space_decimation(struct dw_hdmi *hdmi)
 {
-	return ((hdmi->hdmi_data.enc_out_format == YCBCR422_8BITS) &&
-		(hdmi->hdmi_data.enc_in_format == RGB ||
-		hdmi->hdmi_data.enc_in_format == YCBCR444));
+	if (hdmi->hdmi_data.enc_out_format != YCBCR422_8BITS)
+		return 0;
+	if (hdmi->hdmi_data.enc_in_format == RGB ||
+	    hdmi->hdmi_data.enc_in_format == YCBCR444)
+		return 1;
+	return 0;
 }
 
-static int is_color_space_interpolation(struct imx_hdmi *hdmi)
+static int is_color_space_interpolation(struct dw_hdmi *hdmi)
 {
-	return ((hdmi->hdmi_data.enc_in_format == YCBCR422_8BITS) &&
-		(hdmi->hdmi_data.enc_out_format == RGB ||
-		hdmi->hdmi_data.enc_out_format == YCBCR444));
+	if (hdmi->hdmi_data.enc_in_format != YCBCR422_8BITS)
+		return 0;
+	if (hdmi->hdmi_data.enc_out_format == RGB ||
+	    hdmi->hdmi_data.enc_out_format == YCBCR444)
+		return 1;
+	return 0;
 }
 
-static void imx_hdmi_update_csc_coeffs(struct imx_hdmi *hdmi)
+static void dw_hdmi_update_csc_coeffs(struct dw_hdmi *hdmi)
 {
 	const u16 (*csc_coeff)[3][4] = &csc_coeff_default;
 	unsigned i;
@@ -458,12 +460,14 @@ static void imx_hdmi_update_csc_coeffs(struct imx_hdmi *hdmi)
 
 	if (is_color_space_conversion(hdmi)) {
 		if (hdmi->hdmi_data.enc_out_format == RGB) {
-			if (hdmi->hdmi_data.colorimetry == HDMI_COLORIMETRY_ITU_601)
+			if (hdmi->hdmi_data.colorimetry ==
+					HDMI_COLORIMETRY_ITU_601)
 				csc_coeff = &csc_coeff_rgb_out_eitu601;
 			else
 				csc_coeff = &csc_coeff_rgb_out_eitu709;
 		} else if (hdmi->hdmi_data.enc_in_format == RGB) {
-			if (hdmi->hdmi_data.colorimetry == HDMI_COLORIMETRY_ITU_601)
+			if (hdmi->hdmi_data.colorimetry ==
+					HDMI_COLORIMETRY_ITU_601)
 				csc_coeff = &csc_coeff_rgb_in_eitu601;
 			else
 				csc_coeff = &csc_coeff_rgb_in_eitu709;
@@ -489,7 +493,7 @@ static void imx_hdmi_update_csc_coeffs(struct imx_hdmi *hdmi)
 		  HDMI_CSC_SCALE);
 }
 
-static void hdmi_video_csc(struct imx_hdmi *hdmi)
+static void hdmi_video_csc(struct dw_hdmi *hdmi)
 {
 	int color_depth = 0;
 	int interpolation = HDMI_CSC_CFG_INTMODE_DISABLE;
@@ -517,7 +521,7 @@ static void hdmi_video_csc(struct imx_hdmi *hdmi)
 	hdmi_modb(hdmi, color_depth, HDMI_CSC_SCALE_CSC_COLORDE_PTH_MASK,
 		  HDMI_CSC_SCALE);
 
-	imx_hdmi_update_csc_coeffs(hdmi);
+	dw_hdmi_update_csc_coeffs(hdmi);
 }
 
 /*
@@ -525,7 +529,7 @@ static void hdmi_video_csc(struct imx_hdmi *hdmi)
  * for example, if input is YCC422 mode or repeater is used,
  * data should be repacked this module can be bypassed.
  */
-static void hdmi_video_packetize(struct imx_hdmi *hdmi)
+static void hdmi_video_packetize(struct dw_hdmi *hdmi)
 {
 	unsigned int color_depth = 0;
 	unsigned int remap_size = HDMI_VP_REMAP_YCC422_16bit;
@@ -533,21 +537,22 @@ static void hdmi_video_packetize(struct imx_hdmi *hdmi)
 	struct hdmi_data_info *hdmi_data = &hdmi->hdmi_data;
 	u8 val, vp_conf;
 
-	if (hdmi_data->enc_out_format == RGB
-		|| hdmi_data->enc_out_format == YCBCR444) {
-		if (!hdmi_data->enc_color_depth)
+	if (hdmi_data->enc_out_format == RGB ||
+	    hdmi_data->enc_out_format == YCBCR444) {
+		if (!hdmi_data->enc_color_depth) {
 			output_select = HDMI_VP_CONF_OUTPUT_SELECTOR_BYPASS;
-		else if (hdmi_data->enc_color_depth == 8) {
+		} else if (hdmi_data->enc_color_depth == 8) {
 			color_depth = 4;
 			output_select = HDMI_VP_CONF_OUTPUT_SELECTOR_BYPASS;
-		} else if (hdmi_data->enc_color_depth == 10)
+		} else if (hdmi_data->enc_color_depth == 10) {
 			color_depth = 5;
-		else if (hdmi_data->enc_color_depth == 12)
+		} else if (hdmi_data->enc_color_depth == 12) {
 			color_depth = 6;
-		else if (hdmi_data->enc_color_depth == 16)
+		} else if (hdmi_data->enc_color_depth == 16) {
 			color_depth = 7;
-		else
+		} else {
 			return;
+		}
 	} else if (hdmi_data->enc_out_format == YCBCR422_8BITS) {
 		if (!hdmi_data->enc_color_depth ||
 		    hdmi_data->enc_color_depth == 8)
@@ -559,8 +564,9 @@ static void hdmi_video_packetize(struct imx_hdmi *hdmi)
 		else
 			return;
 		output_select = HDMI_VP_CONF_OUTPUT_SELECTOR_YCC422;
-	} else
+	} else {
 		return;
+	}
 
 	/* set the packetizer registers */
 	val = ((color_depth << HDMI_VP_PR_CD_COLOR_DEPTH_OFFSET) &
@@ -620,109 +626,110 @@ static void hdmi_video_packetize(struct imx_hdmi *hdmi)
 		  HDMI_VP_CONF);
 }
 
-static inline void hdmi_phy_test_clear(struct imx_hdmi *hdmi,
-						unsigned char bit)
+static inline void hdmi_phy_test_clear(struct dw_hdmi *hdmi,
+				       unsigned char bit)
 {
 	hdmi_modb(hdmi, bit << HDMI_PHY_TST0_TSTCLR_OFFSET,
 		  HDMI_PHY_TST0_TSTCLR_MASK, HDMI_PHY_TST0);
 }
 
-static inline void hdmi_phy_test_enable(struct imx_hdmi *hdmi,
-						unsigned char bit)
+static inline void hdmi_phy_test_enable(struct dw_hdmi *hdmi,
+					unsigned char bit)
 {
 	hdmi_modb(hdmi, bit << HDMI_PHY_TST0_TSTEN_OFFSET,
 		  HDMI_PHY_TST0_TSTEN_MASK, HDMI_PHY_TST0);
 }
 
-static inline void hdmi_phy_test_clock(struct imx_hdmi *hdmi,
-						unsigned char bit)
+static inline void hdmi_phy_test_clock(struct dw_hdmi *hdmi,
+				       unsigned char bit)
 {
 	hdmi_modb(hdmi, bit << HDMI_PHY_TST0_TSTCLK_OFFSET,
 		  HDMI_PHY_TST0_TSTCLK_MASK, HDMI_PHY_TST0);
 }
 
-static inline void hdmi_phy_test_din(struct imx_hdmi *hdmi,
-						unsigned char bit)
+static inline void hdmi_phy_test_din(struct dw_hdmi *hdmi,
+				     unsigned char bit)
 {
 	hdmi_writeb(hdmi, bit, HDMI_PHY_TST1);
 }
 
-static inline void hdmi_phy_test_dout(struct imx_hdmi *hdmi,
-						unsigned char bit)
+static inline void hdmi_phy_test_dout(struct dw_hdmi *hdmi,
+				      unsigned char bit)
 {
 	hdmi_writeb(hdmi, bit, HDMI_PHY_TST2);
 }
 
-static bool hdmi_phy_wait_i2c_done(struct imx_hdmi *hdmi, int msec)
+static bool hdmi_phy_wait_i2c_done(struct dw_hdmi *hdmi, int msec)
 {
-	unsigned char val = 0;
-	val = hdmi_readb(hdmi, HDMI_IH_I2CMPHY_STAT0) & 0x3;
-	while (!val) {
-		udelay(1000);
+	u32 val;
+
+	while ((val = hdmi_readb(hdmi, HDMI_IH_I2CMPHY_STAT0) & 0x3) == 0) {
 		if (msec-- == 0)
 			return false;
-		val = hdmi_readb(hdmi, HDMI_IH_I2CMPHY_STAT0) & 0x3;
+		udelay(1000);
 	}
+	hdmi_writeb(hdmi, val, HDMI_IH_I2CMPHY_STAT0);
+
 	return true;
 }
 
-static void __hdmi_phy_i2c_write(struct imx_hdmi *hdmi, unsigned short data,
-			      unsigned char addr)
+static void __hdmi_phy_i2c_write(struct dw_hdmi *hdmi, unsigned short data,
+				 unsigned char addr)
 {
 	hdmi_writeb(hdmi, 0xFF, HDMI_IH_I2CMPHY_STAT0);
 	hdmi_writeb(hdmi, addr, HDMI_PHY_I2CM_ADDRESS_ADDR);
 	hdmi_writeb(hdmi, (unsigned char)(data >> 8),
-		HDMI_PHY_I2CM_DATAO_1_ADDR);
+		    HDMI_PHY_I2CM_DATAO_1_ADDR);
 	hdmi_writeb(hdmi, (unsigned char)(data >> 0),
-		HDMI_PHY_I2CM_DATAO_0_ADDR);
+		    HDMI_PHY_I2CM_DATAO_0_ADDR);
 	hdmi_writeb(hdmi, HDMI_PHY_I2CM_OPERATION_ADDR_WRITE,
-		HDMI_PHY_I2CM_OPERATION_ADDR);
+		    HDMI_PHY_I2CM_OPERATION_ADDR);
 	hdmi_phy_wait_i2c_done(hdmi, 1000);
 }
 
-static int hdmi_phy_i2c_write(struct imx_hdmi *hdmi, unsigned short data,
-				     unsigned char addr)
+static int hdmi_phy_i2c_write(struct dw_hdmi *hdmi, unsigned short data,
+			      unsigned char addr)
 {
 	__hdmi_phy_i2c_write(hdmi, data, addr);
 	return 0;
 }
 
-static void imx_hdmi_phy_enable_power(struct imx_hdmi *hdmi, u8 enable)
+static void dw_hdmi_phy_enable_power(struct dw_hdmi *hdmi, u8 enable)
 {
 	hdmi_mask_writeb(hdmi, enable, HDMI_PHY_CONF0,
 			 HDMI_PHY_CONF0_PDZ_OFFSET,
 			 HDMI_PHY_CONF0_PDZ_MASK);
 }
 
-static void imx_hdmi_phy_enable_tmds(struct imx_hdmi *hdmi, u8 enable)
+static void dw_hdmi_phy_enable_tmds(struct dw_hdmi *hdmi, u8 enable)
 {
 	hdmi_mask_writeb(hdmi, enable, HDMI_PHY_CONF0,
 			 HDMI_PHY_CONF0_ENTMDS_OFFSET,
 			 HDMI_PHY_CONF0_ENTMDS_MASK);
 }
 
-static void imx_hdmi_phy_gen2_pddq(struct imx_hdmi *hdmi, u8 enable)
+static void dw_hdmi_phy_gen2_pddq(struct dw_hdmi *hdmi, u8 enable)
 {
 	hdmi_mask_writeb(hdmi, enable, HDMI_PHY_CONF0,
 			 HDMI_PHY_CONF0_GEN2_PDDQ_OFFSET,
 			 HDMI_PHY_CONF0_GEN2_PDDQ_MASK);
 }
 
-static void imx_hdmi_phy_gen2_txpwron(struct imx_hdmi *hdmi, u8 enable)
+static void dw_hdmi_phy_gen2_txpwron(struct dw_hdmi *hdmi, u8 enable)
 {
 	hdmi_mask_writeb(hdmi, enable, HDMI_PHY_CONF0,
 			 HDMI_PHY_CONF0_GEN2_TXPWRON_OFFSET,
 			 HDMI_PHY_CONF0_GEN2_TXPWRON_MASK);
 }
 
-static void imx_hdmi_phy_sel_data_en_pol(struct imx_hdmi *hdmi, u8 enable)
+static void dw_hdmi_phy_sel_data_en_pol(struct dw_hdmi *hdmi, u8 enable)
 {
 	hdmi_mask_writeb(hdmi, enable, HDMI_PHY_CONF0,
 			 HDMI_PHY_CONF0_SELDATAENPOL_OFFSET,
 			 HDMI_PHY_CONF0_SELDATAENPOL_MASK);
 }
 
-static void imx_hdmi_phy_sel_interface_control(struct imx_hdmi *hdmi, u8 enable)
+static void dw_hdmi_phy_sel_interface_control(struct dw_hdmi *hdmi, u8 enable)
 {
 	hdmi_mask_writeb(hdmi, enable, HDMI_PHY_CONF0,
 			 HDMI_PHY_CONF0_SELDIPIF_OFFSET,
@@ -730,10 +737,10 @@ static void imx_hdmi_phy_sel_interface_control(struct imx_hdmi *hdmi, u8 enable)
 }
 
 enum {
-	RES_8,
-	RES_10,
-	RES_12,
-	RES_MAX,
+	DW_HDMI_RES_8,
+	DW_HDMI_RES_10,
+	DW_HDMI_RES_12,
+	DW_HDMI_RES_MAX,
 };
 
 struct mpll_config {
@@ -741,7 +748,7 @@ struct mpll_config {
 	struct {
 		u16 cpce;
 		u16 gmp;
-	} res[RES_MAX];
+	} res[DW_HDMI_RES_MAX];
 };
 
 static const struct mpll_config mpll_config[] = {
@@ -774,7 +781,7 @@ static const struct mpll_config mpll_config[] = {
 
 struct curr_ctrl {
 	unsigned long mpixelclock;
-	u16 curr[RES_MAX];
+	u16 curr[DW_HDMI_RES_MAX];
 };
 
 static const struct curr_ctrl curr_ctrl[] = {
@@ -794,7 +801,7 @@ static const struct curr_ctrl curr_ctrl[] = {
 	}
 };
 
-static int hdmi_phy_configure(struct imx_hdmi *hdmi, unsigned char prep,
+static int hdmi_phy_configure(struct dw_hdmi *hdmi, unsigned char prep,
 			      unsigned char res, int cscon)
 {
 	unsigned res_idx, i;
@@ -806,13 +813,13 @@ static int hdmi_phy_configure(struct imx_hdmi *hdmi, unsigned char prep,
 	switch (res) {
 	case 0:	/* color resolution 0 is 8 bit colour depth */
 	case 8:
-		res_idx = RES_8;
+		res_idx = DW_HDMI_RES_8;
 		break;
 	case 10:
-		res_idx = RES_10;
+		res_idx = DW_HDMI_RES_10;
 		break;
 	case 12:
-		res_idx = RES_12;
+		res_idx = DW_HDMI_RES_12;
 		break;
 	default:
 		return -EINVAL;
@@ -827,10 +834,10 @@ static int hdmi_phy_configure(struct imx_hdmi *hdmi, unsigned char prep,
 	hdmi_writeb(hdmi, val, HDMI_MC_FLOWCTRL);
 
 	/* gen2 tx power off */
-	imx_hdmi_phy_gen2_txpwron(hdmi, 0);
+	dw_hdmi_phy_gen2_txpwron(hdmi, 0);
 
 	/* gen2 pddq */
-	imx_hdmi_phy_gen2_pddq(hdmi, 1);
+	dw_hdmi_phy_gen2_pddq(hdmi, 1);
 
 	/* PHY reset */
 	hdmi_writeb(hdmi, HDMI_MC_PHYRSTZ_DEASSERT, HDMI_MC_PHYRSTZ);
@@ -840,7 +847,7 @@ static int hdmi_phy_configure(struct imx_hdmi *hdmi, unsigned char prep,
 
 	hdmi_phy_test_clear(hdmi, 1);
 	hdmi_writeb(hdmi, HDMI_PHY_I2CM_SLAVE_ADDR_PHY_GEN2,
-			HDMI_PHY_I2CM_SLAVE_ADDR);
+		    HDMI_PHY_I2CM_SLAVE_ADDR);
 	hdmi_phy_test_clear(hdmi, 0);
 
 	/* PLL/MPLL Cfg - always match on final entry */
@@ -878,15 +885,15 @@ static int hdmi_phy_configure(struct imx_hdmi *hdmi, unsigned char prep,
 	/* REMOVE CLK TERM */
 	hdmi_phy_i2c_write(hdmi, 0x8000, 0x05);  /* CKCALCTRL */
 
-	imx_hdmi_phy_enable_power(hdmi, 1);
+	dw_hdmi_phy_enable_power(hdmi, 1);
 
 	/* toggle TMDS enable */
-	imx_hdmi_phy_enable_tmds(hdmi, 0);
-	imx_hdmi_phy_enable_tmds(hdmi, 1);
+	dw_hdmi_phy_enable_tmds(hdmi, 0);
+	dw_hdmi_phy_enable_tmds(hdmi, 1);
 
 	/* gen2 tx power on */
-	imx_hdmi_phy_gen2_txpwron(hdmi, 1);
-	imx_hdmi_phy_gen2_pddq(hdmi, 0);
+	dw_hdmi_phy_gen2_txpwron(hdmi, 1);
+	dw_hdmi_phy_gen2_pddq(hdmi, 0);
 
 	/*Wait for PHY PLL lock */
 	msec = 5;
@@ -907,7 +914,7 @@ static int hdmi_phy_configure(struct imx_hdmi *hdmi, unsigned char prep,
 	return 0;
 }
 
-static int imx_hdmi_phy_init(struct imx_hdmi *hdmi)
+static int dw_hdmi_phy_init(struct dw_hdmi *hdmi)
 {
 	int i, ret;
 	bool cscon = false;
@@ -918,10 +925,10 @@ static int imx_hdmi_phy_init(struct imx_hdmi *hdmi)
 
 	/* HDMI Phy spec says to do the phy initialization sequence twice */
 	for (i = 0; i < 2; i++) {
-		imx_hdmi_phy_sel_data_en_pol(hdmi, 1);
-		imx_hdmi_phy_sel_interface_control(hdmi, 0);
-		imx_hdmi_phy_enable_tmds(hdmi, 0);
-		imx_hdmi_phy_enable_power(hdmi, 0);
+		dw_hdmi_phy_sel_data_en_pol(hdmi, 1);
+		dw_hdmi_phy_sel_interface_control(hdmi, 0);
+		dw_hdmi_phy_enable_tmds(hdmi, 0);
+		dw_hdmi_phy_enable_power(hdmi, 0);
 
 		/* Enable CSC */
 		ret = hdmi_phy_configure(hdmi, 0, 8, cscon);
@@ -933,7 +940,7 @@ static int imx_hdmi_phy_init(struct imx_hdmi *hdmi)
 	return 0;
 }
 
-static void hdmi_tx_hdcp_config(struct imx_hdmi *hdmi)
+static void hdmi_tx_hdcp_config(struct dw_hdmi *hdmi)
 {
 	u8 de;
 
@@ -952,19 +959,99 @@ static void hdmi_tx_hdcp_config(struct imx_hdmi *hdmi)
 		  HDMI_A_HDCPCFG1_ENCRYPTIONDISABLE_MASK, HDMI_A_HDCPCFG1);
 }
 
-static void imx_hdmi_phy_disable(struct imx_hdmi *hdmi)
+static void hdmi_av_composer(struct dw_hdmi *hdmi)
+{
+	u8 inv_val;
+	struct hdmi_vmode *vmode = &hdmi->hdmi_data.video_mode;
+	int hblank, vblank;
+	struct fb_videomode *mode = hdmi->mode;
+
+	vmode->mhsyncpolarity = !!(mode->sync & FB_SYNC_HOR_HIGH_ACT);
+	vmode->mvsyncpolarity = !!(mode->sync & FB_SYNC_VERT_HIGH_ACT);
+	vmode->minterlaced = !!(mode->vmode & FB_VMODE_INTERLACED);
+	vmode->mpixelclock = PICOS2KHZ(mode->pixclock) * 1000;
+
+	dev_dbg(hdmi->dev, "final pixclk = %d\n", vmode->mpixelclock);
+
+	/* Set up HDMI_FC_INVIDCONF */
+	inv_val = (hdmi->hdmi_data.hdcp_enable ?
+		HDMI_FC_INVIDCONF_HDCP_KEEPOUT_ACTIVE :
+		HDMI_FC_INVIDCONF_HDCP_KEEPOUT_INACTIVE);
+
+	inv_val |= (vmode->mvsyncpolarity ?
+		HDMI_FC_INVIDCONF_VSYNC_IN_POLARITY_ACTIVE_HIGH :
+		HDMI_FC_INVIDCONF_VSYNC_IN_POLARITY_ACTIVE_LOW);
+
+	inv_val |= (vmode->mhsyncpolarity ?
+		HDMI_FC_INVIDCONF_HSYNC_IN_POLARITY_ACTIVE_HIGH :
+		HDMI_FC_INVIDCONF_HSYNC_IN_POLARITY_ACTIVE_LOW);
+
+	inv_val |= (vmode->mdataenablepolarity ?
+		HDMI_FC_INVIDCONF_DE_IN_POLARITY_ACTIVE_HIGH :
+		HDMI_FC_INVIDCONF_DE_IN_POLARITY_ACTIVE_LOW);
+
+	if (hdmi->vic == 39)
+		inv_val |= HDMI_FC_INVIDCONF_R_V_BLANK_IN_OSC_ACTIVE_HIGH;
+	else
+		inv_val |= (vmode->minterlaced ?
+			HDMI_FC_INVIDCONF_R_V_BLANK_IN_OSC_ACTIVE_HIGH :
+			HDMI_FC_INVIDCONF_R_V_BLANK_IN_OSC_ACTIVE_LOW);
+
+	inv_val |= (vmode->minterlaced ?
+		HDMI_FC_INVIDCONF_IN_I_P_INTERLACED :
+		HDMI_FC_INVIDCONF_IN_I_P_PROGRESSIVE);
+
+	inv_val |= (vmode->mdvi ?
+		HDMI_FC_INVIDCONF_DVI_MODEZ_DVI_MODE :
+		HDMI_FC_INVIDCONF_DVI_MODEZ_HDMI_MODE);
+
+	hdmi_writeb(hdmi, inv_val, HDMI_FC_INVIDCONF);
+
+	/* Set up horizontal active pixel width */
+	hdmi_writeb(hdmi, mode->xres >> 8, HDMI_FC_INHACTV1);
+	hdmi_writeb(hdmi, mode->xres, HDMI_FC_INHACTV0);
+
+	/* Set up vertical active lines */
+	hdmi_writeb(hdmi, mode->yres >> 8, HDMI_FC_INVACTV1);
+	hdmi_writeb(hdmi, mode->yres, HDMI_FC_INVACTV0);
+
+	/* Set up horizontal blanking pixel region width */
+	hblank = mode->left_margin + mode->right_margin + mode->hsync_len;
+	hdmi_writeb(hdmi, hblank >> 8, HDMI_FC_INHBLANK1);
+	hdmi_writeb(hdmi, hblank, HDMI_FC_INHBLANK0);
+
+	/* Set up vertical blanking pixel region width */
+	vblank = mode->upper_margin + mode->lower_margin + mode->vsync_len;
+	hdmi_writeb(hdmi, vblank, HDMI_FC_INVBLANK);
+
+	/* Set up HSYNC active edge delay width (in pixel clks) */
+	hdmi_writeb(hdmi, mode->right_margin >> 8, HDMI_FC_HSYNCINDELAY1);
+	hdmi_writeb(hdmi, mode->right_margin, HDMI_FC_HSYNCINDELAY0);
+
+	/* Set up VSYNC active edge delay (in lines) */
+	hdmi_writeb(hdmi, mode->lower_margin, HDMI_FC_VSYNCINDELAY);
+
+	/* Set up HSYNC active pulse width (in pixel clks) */
+	hdmi_writeb(hdmi, mode->hsync_len >> 8, HDMI_FC_HSYNCINWIDTH1);
+	hdmi_writeb(hdmi, mode->hsync_len, HDMI_FC_HSYNCINWIDTH0);
+
+	/* Set up VSYNC active edge delay (in lines) */
+	hdmi_writeb(hdmi, mode->vsync_len, HDMI_FC_VSYNCINWIDTH);
+}
+
+static void dw_hdmi_phy_disable(struct dw_hdmi *hdmi)
 {
 	if (!hdmi->phy_enabled)
 		return;
 
-	imx_hdmi_phy_enable_tmds(hdmi, 0);
-	imx_hdmi_phy_enable_power(hdmi, 0);
+	dw_hdmi_phy_enable_tmds(hdmi, 0);
+	dw_hdmi_phy_enable_power(hdmi, 0);
 
 	hdmi->phy_enabled = false;
 }
 
 /* HDMI Initialization Step B.4 */
-static void imx_hdmi_enable_video_path(struct imx_hdmi *hdmi)
+static void dw_hdmi_enable_video_path(struct dw_hdmi *hdmi)
 {
 	u8 clkdis;
 
@@ -994,7 +1081,7 @@ static void imx_hdmi_enable_video_path(struct imx_hdmi *hdmi)
 }
 
 /* Workaround to clear the overflow condition */
-static void imx_hdmi_clear_overflow(struct imx_hdmi *hdmi)
+static void dw_hdmi_clear_overflow(struct dw_hdmi *hdmi)
 {
 	int count;
 	u8 val;
@@ -1012,12 +1099,10 @@ static void imx_hdmi_clear_overflow(struct imx_hdmi *hdmi)
 		hdmi_writeb(hdmi, val, HDMI_FC_INVIDCONF);
 }
 
-static int imx_hdmi_setup(struct imx_hdmi *hdmi)
+static int dw_hdmi_setup(struct dw_hdmi *hdmi)
 {
 	int ret;
 
-	hdmi->vic = 0;
-
 	dev_dbg(hdmi->dev, "Non-CEA mode used in HDMI\n");
 	hdmi->hdmi_data.video_mode.mdvi = true;
 
@@ -1035,28 +1120,28 @@ static int imx_hdmi_setup(struct imx_hdmi *hdmi)
 	hdmi->hdmi_data.hdcp_enable = 0;
 	hdmi->hdmi_data.video_mode.mdataenablepolarity = true;
 
+	/* HDMI Initialization Step B.1 */
+	hdmi_av_composer(hdmi);
+
 	/* HDMI Initializateion Step B.2 */
-	ret = imx_hdmi_phy_init(hdmi);
+	ret = dw_hdmi_phy_init(hdmi);
 	if (ret)
 		return ret;
 
 	/* HDMI Initialization Step B.3 */
-	imx_hdmi_enable_video_path(hdmi);
-
-	/* not for DVI mode */
-	dev_dbg(hdmi->dev, "%s DVI mode\n", __func__);
+	dw_hdmi_enable_video_path(hdmi);
 
 	hdmi_video_packetize(hdmi);
 	hdmi_video_csc(hdmi);
 	hdmi_video_sample(hdmi);
 	hdmi_tx_hdcp_config(hdmi);
 
-	imx_hdmi_clear_overflow(hdmi);
+	dw_hdmi_clear_overflow(hdmi);
 
 	return 0;
 }
 
-static void initialize_hdmi_ih_mutes(struct imx_hdmi *hdmi)
+static void initialize_hdmi_ih_mutes(struct dw_hdmi *hdmi)
 {
 	u8 ih_mute;
 
@@ -1108,22 +1193,22 @@ static void initialize_hdmi_ih_mutes(struct imx_hdmi *hdmi)
 	hdmi_writeb(hdmi, ih_mute, HDMI_IH_MUTE);
 }
 
-struct imx_hdmi_data {
+struct dw_hdmi_data {
 	unsigned ipu_mask;
-	enum imx_hdmi_devtype devtype;
+	enum dw_hdmi_devtype devtype;
 };
 
-static struct imx_hdmi_data imx6q_hdmi_data = {
+static struct dw_hdmi_data imx6q_hdmi_data = {
 	.ipu_mask = 0xf,
 	.devtype = IMX6Q_HDMI,
 };
 
-static struct imx_hdmi_data imx6dl_hdmi_data = {
+static struct dw_hdmi_data imx6dl_hdmi_data = {
 	.ipu_mask = 0x3,
 	.devtype = IMX6DL_HDMI,
 };
 
-static struct of_device_id imx_hdmi_dt_ids[] = {
+static struct of_device_id dw_hdmi_dt_ids[] = {
 	{
 		.compatible = "fsl,imx6q-hdmi",
 		.data = &imx6q_hdmi_data,
@@ -1135,7 +1220,7 @@ static struct of_device_id imx_hdmi_dt_ids[] = {
 	}
 };
 
-static int imx_hdmi_get_modes(struct imx_hdmi *hdmi, struct display_timings *timings)
+static int dw_hdmi_get_modes(struct dw_hdmi *hdmi, struct display_timings *timings)
 {
 	int ret = -ENOENT;
 
@@ -1155,23 +1240,24 @@ static int imx_hdmi_get_modes(struct imx_hdmi *hdmi, struct display_timings *tim
 	return ret;
 }
 
-static int imx_hdmi_ioctl(struct vpl *vpl, unsigned int port,
+static int dw_hdmi_ioctl(struct vpl *vpl, unsigned int port,
 		unsigned int cmd, void *data)
 {
-	struct imx_hdmi *hdmi = container_of(vpl, struct imx_hdmi, vpl);
+	struct dw_hdmi *hdmi = container_of(vpl, struct dw_hdmi, vpl);
 	struct ipu_di_mode *mode;
 
 	switch (cmd) {
 	case VPL_ENABLE:
-		return imx_hdmi_setup(hdmi);
+		return dw_hdmi_setup(hdmi);
 	case VPL_DISABLE:
-		imx_hdmi_phy_disable(hdmi);
+		dw_hdmi_phy_disable(hdmi);
 		return 0;
 	case VPL_PREPARE:
-		imx_hdmi_set_ipu_di_mux(hdmi, port);
+		hdmi->mode = data;
+		dw_hdmi_set_ipu_di_mux(hdmi, port);
 		return 0;
 	case VPL_GET_VIDEOMODES:
-		return imx_hdmi_get_modes(hdmi, data);
+		return dw_hdmi_get_modes(hdmi, data);
 	case IMX_IPU_VPL_DI_MODE:
 		mode = data;
 
@@ -1184,12 +1270,12 @@ static int imx_hdmi_ioctl(struct vpl *vpl, unsigned int port,
 	return 0;
 }
 
-static int imx_hdmi_probe(struct device_d *dev)
+static int dw_hdmi_probe(struct device_d *dev)
 {
 	struct device_node *np = dev->device_node;
-	struct imx_hdmi *hdmi;
+	struct dw_hdmi *hdmi;
 	int ret;
-	const struct imx_hdmi_data *devtype;
+	const struct dw_hdmi_data *devtype;
 
 	ret = dev_get_drvdata(dev, (const void **)&devtype);
 	if (ret)
@@ -1275,7 +1361,7 @@ static int imx_hdmi_probe(struct device_d *dev)
 	hdmi_writeb(hdmi, ~HDMI_IH_PHY_STAT0_HPD, HDMI_IH_MUTE_PHY_STAT0);
 
 	hdmi->vpl.node = np;
-	hdmi->vpl.ioctl = imx_hdmi_ioctl;
+	hdmi->vpl.ioctl = dw_hdmi_ioctl;
 	ret = vpl_register(&hdmi->vpl);
 	if (ret)
 		return ret;
@@ -1288,12 +1374,12 @@ err_isfr:
 	return ret;
 }
 
-static struct driver_d imx_hdmi_driver = {
-	.probe		= imx_hdmi_probe,
-	.of_compatible	= imx_hdmi_dt_ids,
+static struct driver_d dw_hdmi_driver = {
+	.probe		= dw_hdmi_probe,
+	.of_compatible	= dw_hdmi_dt_ids,
 	.name		= "imx-hdmi",
 };
-device_platform_driver(imx_hdmi_driver);
+device_platform_driver(dw_hdmi_driver);
 
 MODULE_AUTHOR("Sascha Hauer <s.hauer@pengutronix.de>");
 MODULE_DESCRIPTION("i.MX6 HDMI transmitter driver");
diff --git a/drivers/video/imx-ipu-v3/imx-hdmi.h b/drivers/video/imx-ipu-v3/imx-hdmi.h
index 39b6776..b3e1442 100644
--- a/drivers/video/imx-ipu-v3/imx-hdmi.h
+++ b/drivers/video/imx-ipu-v3/imx-hdmi.h
@@ -837,7 +837,8 @@ enum {
 	HDMI_PHY_CONF0_PDZ_OFFSET = 7,
 	HDMI_PHY_CONF0_ENTMDS_MASK = 0x40,
 	HDMI_PHY_CONF0_ENTMDS_OFFSET = 6,
-	HDMI_PHY_CONF0_SPARECTRL = 0x20,
+	HDMI_PHY_CONF0_SPARECTRL_MASK = 0x20,
+	HDMI_PHY_CONF0_SPARECTRL_OFFSET = 5,
 	HDMI_PHY_CONF0_GEN2_PDDQ_MASK = 0x10,
 	HDMI_PHY_CONF0_GEN2_PDDQ_OFFSET = 4,
 	HDMI_PHY_CONF0_GEN2_TXPWRON_MASK = 0x8,
-- 
2.4.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
