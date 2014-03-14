Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WOTAp-0003AV-Dj
 for barebox@lists.infradead.org; Fri, 14 Mar 2014 14:33:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Mar 2014 15:32:48 +0100
Message-Id: <1394807569-23620-29-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1394807569-23620-1-git-send-email-s.hauer@pengutronix.de>
References: <1394807569-23620-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 28/29] video: i.MX IPUv3: Add hdmi support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/imx-ipu-v3/Kconfig    |    3 +
 drivers/video/imx-ipu-v3/Makefile   |    1 +
 drivers/video/imx-ipu-v3/imx-hdmi.c | 1297 +++++++++++++++++++++++++++++++++++
 drivers/video/imx-ipu-v3/imx-hdmi.h | 1032 ++++++++++++++++++++++++++++
 4 files changed, 2333 insertions(+)
 create mode 100644 drivers/video/imx-ipu-v3/imx-hdmi.c
 create mode 100644 drivers/video/imx-ipu-v3/imx-hdmi.h

diff --git a/drivers/video/imx-ipu-v3/Kconfig b/drivers/video/imx-ipu-v3/Kconfig
index e83158a..3d656e5 100644
--- a/drivers/video/imx-ipu-v3/Kconfig
+++ b/drivers/video/imx-ipu-v3/Kconfig
@@ -8,4 +8,7 @@ if DRIVER_VIDEO_IMX_IPUV3
 config DRIVER_VIDEO_IMX_IPUV3_LVDS
 	bool "IPUv3 LVDS support"
 
+config DRIVER_VIDEO_IMX_IPUV3_HDMI
+	bool "IPUv3 HDMI support"
+
 endif
diff --git a/drivers/video/imx-ipu-v3/Makefile b/drivers/video/imx-ipu-v3/Makefile
index e2ff43d..2bc0aec 100644
--- a/drivers/video/imx-ipu-v3/Makefile
+++ b/drivers/video/imx-ipu-v3/Makefile
@@ -2,3 +2,4 @@ obj-$(CONFIG_DRIVER_VIDEO_IMX_IPUV3) += ipu-common.o ipu-dmfc.o ipu-di.o
 obj-$(CONFIG_DRIVER_VIDEO_IMX_IPUV3) += ipu-dp.o ipuv3-plane.o ipufb.o
 obj-$(CONFIG_DRIVER_VIDEO_IMX_IPUV3) += ipu-dc.o
 obj-$(CONFIG_DRIVER_VIDEO_IMX_IPUV3_LVDS) += imx-ldb.o
+obj-$(CONFIG_DRIVER_VIDEO_IMX_IPUV3_HDMI) += imx-hdmi.o
diff --git a/drivers/video/imx-ipu-v3/imx-hdmi.c b/drivers/video/imx-ipu-v3/imx-hdmi.c
new file mode 100644
index 0000000..4f46288
--- /dev/null
+++ b/drivers/video/imx-ipu-v3/imx-hdmi.c
@@ -0,0 +1,1297 @@
+/*
+ * Copyright (C) 2011-2013 Freescale Semiconductor, Inc.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * SH-Mobile High-Definition Multimedia Interface (HDMI) driver
+ * for SLISHDMI13T and SLIPHDMIT IP cores
+ *
+ * Copyright (C) 2010, Guennadi Liakhovetski <g.liakhovetski@gmx.de>
+ */
+#include <common.h>
+#include <fb.h>
+#include <io.h>
+#include <driver.h>
+#include <malloc.h>
+#include <errno.h>
+#include <init.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+#include <asm-generic/div64.h>
+#include <linux/clk.h>
+#include <i2c/i2c.h>
+#include <mach/imx6-regs.h>
+#include <mach/imx53-regs.h>
+
+#include "imx-ipu-v3.h"
+#include "ipuv3-plane.h"
+#include "imx-hdmi.h"
+
+#define HDMI_EDID_LEN		512
+
+#define RGB			0
+#define YCBCR444		1
+#define YCBCR422_16BITS		2
+#define YCBCR422_8BITS		3
+#define XVYCC444		4
+
+enum hdmi_colorimetry {
+	HDMI_COLORIMETRY_NONE,
+	HDMI_COLORIMETRY_ITU_601,
+	HDMI_COLORIMETRY_ITU_709,
+	HDMI_COLORIMETRY_EXTENDED,
+};
+
+enum hdmi_datamap {
+	RGB444_8B = 0x01,
+	RGB444_10B = 0x03,
+	RGB444_12B = 0x05,
+	RGB444_16B = 0x07,
+	YCbCr444_8B = 0x09,
+	YCbCr444_10B = 0x0B,
+	YCbCr444_12B = 0x0D,
+	YCbCr444_16B = 0x0F,
+	YCbCr422_8B = 0x16,
+	YCbCr422_10B = 0x14,
+	YCbCr422_12B = 0x12,
+};
+
+enum imx_hdmi_devtype {
+	IMX6Q_HDMI,
+	IMX6DL_HDMI,
+};
+
+static const u16 csc_coeff_default[3][4] = {
+	{ 0x2000, 0x0000, 0x0000, 0x0000 },
+	{ 0x0000, 0x2000, 0x0000, 0x0000 },
+	{ 0x0000, 0x0000, 0x2000, 0x0000 }
+};
+
+static const u16 csc_coeff_rgb_out_eitu601[3][4] = {
+	{ 0x2000, 0x6926, 0x74fd, 0x010e },
+	{ 0x2000, 0x2cdd, 0x0000, 0x7e9a },
+	{ 0x2000, 0x0000, 0x38b4, 0x7e3b }
+};
+
+static const u16 csc_coeff_rgb_out_eitu709[3][4] = {
+	{ 0x2000, 0x7106, 0x7a02, 0x00a7 },
+	{ 0x2000, 0x3264, 0x0000, 0x7e6d },
+	{ 0x2000, 0x0000, 0x3b61, 0x7e25 }
+};
+
+static const u16 csc_coeff_rgb_in_eitu601[3][4] = {
+	{ 0x2591, 0x1322, 0x074b, 0x0000 },
+	{ 0x6535, 0x2000, 0x7acc, 0x0200 },
+	{ 0x6acd, 0x7534, 0x2000, 0x0200 }
+};
+
+static const u16 csc_coeff_rgb_in_eitu709[3][4] = {
+	{ 0x2dc5, 0x0d9b, 0x049e, 0x0000 },
+	{ 0x62f0, 0x2000, 0x7d11, 0x0200 },
+	{ 0x6756, 0x78ab, 0x2000, 0x0200 }
+};
+
+struct hdmi_vmode {
+	bool mdvi;
+	bool mhsyncpolarity;
+	bool mvsyncpolarity;
+	bool minterlaced;
+	bool mdataenablepolarity;
+
+	unsigned int mpixelclock;
+	unsigned int mpixelrepetitioninput;
+	unsigned int mpixelrepetitionoutput;
+};
+
+struct hdmi_data_info {
+	unsigned int enc_in_format;
+	unsigned int enc_out_format;
+	unsigned int enc_color_depth;
+	unsigned int colorimetry;
+	unsigned int pix_repet_factor;
+	unsigned int hdcp_enable;
+	struct hdmi_vmode video_mode;
+};
+
+struct imx_hdmi {
+	enum imx_hdmi_devtype dev_type;
+	struct device_d *dev;
+	struct clk *isfr_clk;
+	struct clk *iahb_clk;
+
+	bool connected;
+
+	struct hdmi_data_info hdmi_data;
+	int vic;
+
+	u8 edid[HDMI_EDID_LEN];
+	bool cable_plugin;
+
+	bool phy_enabled;
+
+	struct regmap *regmap;
+	struct i2c_adapter *ddc;
+	void __iomem *regs;
+
+	unsigned int sample_rate;
+	int ratio;
+
+	struct ipu_output output;
+};
+
+static void imx_hdmi_set_ipu_di_mux(struct imx_hdmi *hdmi, int ipu_di)
+{
+	void __iomem *gpr3 = (void *)MX6_IOMUXC_BASE_ADDR + 0xc;
+	uint32_t val;
+
+	dev_info(hdmi->dev, "setup hdmi mux to %d\n", ipu_di);
+
+	val = readl(gpr3);
+	val &= ~(3 << 2);
+	val |= ipu_di << 2;
+	writel(val, gpr3);
+}
+
+static inline void hdmi_writeb(struct imx_hdmi *hdmi, u8 val, int offset)
+{
+	writeb(val, hdmi->regs + offset);
+}
+
+static inline u8 hdmi_readb(struct imx_hdmi *hdmi, int offset)
+{
+	return readb(hdmi->regs + offset);
+}
+
+static void hdmi_modb(struct imx_hdmi *hdmi, u8 data, u8 mask, unsigned reg)
+{
+	u8 val = hdmi_readb(hdmi, reg) & ~mask;
+	val |= data & mask;
+	hdmi_writeb(hdmi, val, reg);
+}
+
+static void hdmi_mask_writeb(struct imx_hdmi *hdmi, u8 data, unsigned int reg,
+		      u8 shift, u8 mask)
+{
+	hdmi_modb(hdmi, data << shift, mask, reg);
+}
+
+static void hdmi_set_clock_regenerator_n(struct imx_hdmi *hdmi,
+					 unsigned int value)
+{
+	hdmi_writeb(hdmi, value & 0xff, HDMI_AUD_N1);
+	hdmi_writeb(hdmi, (value >> 8) & 0xff, HDMI_AUD_N2);
+	hdmi_writeb(hdmi, (value >> 16) & 0x0f, HDMI_AUD_N3);
+
+	/* nshift factor = 0 */
+	hdmi_modb(hdmi, 0, HDMI_AUD_CTS3_N_SHIFT_MASK, HDMI_AUD_CTS3);
+}
+
+static void hdmi_regenerate_cts(struct imx_hdmi *hdmi, unsigned int cts)
+{
+	/* Must be set/cleared first */
+	hdmi_modb(hdmi, 0, HDMI_AUD_CTS3_CTS_MANUAL, HDMI_AUD_CTS3);
+
+	hdmi_writeb(hdmi, cts & 0xff, HDMI_AUD_CTS1);
+	hdmi_writeb(hdmi, (cts >> 8) & 0xff, HDMI_AUD_CTS2);
+	hdmi_writeb(hdmi, ((cts >> 16) & HDMI_AUD_CTS3_AUDCTS19_16_MASK) |
+		    HDMI_AUD_CTS3_CTS_MANUAL, HDMI_AUD_CTS3);
+}
+
+static unsigned int hdmi_compute_n(unsigned int freq, unsigned long pixel_clk,
+				   unsigned int ratio)
+{
+	unsigned int n = (128 * freq) / 1000;
+
+	switch (freq) {
+	case 32000:
+		if (pixel_clk == 25170000)
+			n = (ratio == 150) ? 9152 : 4576;
+		else if (pixel_clk == 27020000)
+			n = (ratio == 150) ? 8192 : 4096;
+		else if (pixel_clk == 74170000 || pixel_clk == 148350000)
+			n = 11648;
+		else
+			n = 4096;
+		break;
+
+	case 44100:
+		if (pixel_clk == 25170000)
+			n = 7007;
+		else if (pixel_clk == 74170000)
+			n = 17836;
+		else if (pixel_clk == 148350000)
+			n = (ratio == 150) ? 17836 : 8918;
+		else
+			n = 6272;
+		break;
+
+	case 48000:
+		if (pixel_clk == 25170000)
+			n = (ratio == 150) ? 9152 : 6864;
+		else if (pixel_clk == 27020000)
+			n = (ratio == 150) ? 8192 : 6144;
+		else if (pixel_clk == 74170000)
+			n = 11648;
+		else if (pixel_clk == 148350000)
+			n = (ratio == 150) ? 11648 : 5824;
+		else
+			n = 6144;
+		break;
+
+	case 88200:
+		n = hdmi_compute_n(44100, pixel_clk, ratio) * 2;
+		break;
+
+	case 96000:
+		n = hdmi_compute_n(48000, pixel_clk, ratio) * 2;
+		break;
+
+	case 176400:
+		n = hdmi_compute_n(44100, pixel_clk, ratio) * 4;
+		break;
+
+	case 192000:
+		n = hdmi_compute_n(48000, pixel_clk, ratio) * 4;
+		break;
+
+	default:
+		break;
+	}
+
+	return n;
+}
+
+static unsigned int hdmi_compute_cts(unsigned int freq, unsigned long pixel_clk,
+				     unsigned int ratio)
+{
+	unsigned int cts = 0;
+
+	pr_debug("%s: freq: %d pixel_clk: %ld ratio: %d\n", __func__, freq,
+		 pixel_clk, ratio);
+
+	switch (freq) {
+	case 32000:
+		if (pixel_clk == 297000000) {
+			cts = 222750;
+			break;
+		}
+	case 48000:
+	case 96000:
+	case 192000:
+		switch (pixel_clk) {
+		case 25200000:
+		case 27000000:
+		case 54000000:
+		case 74250000:
+		case 148500000:
+			cts = pixel_clk / 1000;
+			break;
+		case 297000000:
+			cts = 247500;
+			break;
+		/*
+		 * All other TMDS clocks are not supported by
+		 * DWC_hdmi_tx. The TMDS clocks divided or
+		 * multiplied by 1,001 coefficients are not
+		 * supported.
+		 */
+		default:
+			break;
+		}
+		break;
+	case 44100:
+	case 88200:
+	case 176400:
+		switch (pixel_clk) {
+		case 25200000:
+			cts = 28000;
+			break;
+		case 27000000:
+			cts = 30000;
+			break;
+		case 54000000:
+			cts = 60000;
+			break;
+		case 74250000:
+			cts = 82500;
+			break;
+		case 148500000:
+			cts = 165000;
+			break;
+		case 297000000:
+			cts = 247500;
+			break;
+		default:
+			break;
+		}
+		break;
+	default:
+		break;
+	}
+	if (ratio == 100)
+		return cts;
+	else
+		return (cts * ratio) / 100;
+}
+
+static void hdmi_set_clk_regenerator(struct imx_hdmi *hdmi,
+	unsigned long pixel_clk)
+{
+	unsigned int clk_n, clk_cts;
+
+	clk_n = hdmi_compute_n(hdmi->sample_rate, pixel_clk,
+			       hdmi->ratio);
+	clk_cts = hdmi_compute_cts(hdmi->sample_rate, pixel_clk,
+				   hdmi->ratio);
+
+	if (!clk_cts) {
+		dev_dbg(hdmi->dev, "%s: pixel clock not supported: %lu\n",
+			 __func__, pixel_clk);
+		return;
+	}
+
+	dev_dbg(hdmi->dev, "%s: samplerate=%d  ratio=%d  pixelclk=%lu  N=%d cts=%d\n",
+		__func__, hdmi->sample_rate, hdmi->ratio,
+		pixel_clk, clk_n, clk_cts);
+
+	hdmi_set_clock_regenerator_n(hdmi, clk_n);
+	hdmi_regenerate_cts(hdmi, clk_cts);
+}
+
+static void hdmi_init_clk_regenerator(struct imx_hdmi *hdmi)
+{
+	hdmi_set_clk_regenerator(hdmi, 74250000);
+}
+
+/*
+ * this submodule is responsible for the video data synchronization.
+ * for example, for RGB 4:4:4 input, the data map is defined as
+ *			pin{47~40} <==> R[7:0]
+ *			pin{31~24} <==> G[7:0]
+ *			pin{15~8}  <==> B[7:0]
+ */
+static void hdmi_video_sample(struct imx_hdmi *hdmi)
+{
+	int color_format = 0;
+	u8 val;
+
+	if (hdmi->hdmi_data.enc_in_format == RGB) {
+		if (hdmi->hdmi_data.enc_color_depth == 8)
+			color_format = 0x01;
+		else if (hdmi->hdmi_data.enc_color_depth == 10)
+			color_format = 0x03;
+		else if (hdmi->hdmi_data.enc_color_depth == 12)
+			color_format = 0x05;
+		else if (hdmi->hdmi_data.enc_color_depth == 16)
+			color_format = 0x07;
+		else
+			return;
+	} else if (hdmi->hdmi_data.enc_in_format == YCBCR444) {
+		if (hdmi->hdmi_data.enc_color_depth == 8)
+			color_format = 0x09;
+		else if (hdmi->hdmi_data.enc_color_depth == 10)
+			color_format = 0x0B;
+		else if (hdmi->hdmi_data.enc_color_depth == 12)
+			color_format = 0x0D;
+		else if (hdmi->hdmi_data.enc_color_depth == 16)
+			color_format = 0x0F;
+		else
+			return;
+	} else if (hdmi->hdmi_data.enc_in_format == YCBCR422_8BITS) {
+		if (hdmi->hdmi_data.enc_color_depth == 8)
+			color_format = 0x16;
+		else if (hdmi->hdmi_data.enc_color_depth == 10)
+			color_format = 0x14;
+		else if (hdmi->hdmi_data.enc_color_depth == 12)
+			color_format = 0x12;
+		else
+			return;
+	}
+
+	val = HDMI_TX_INVID0_INTERNAL_DE_GENERATOR_DISABLE |
+		((color_format << HDMI_TX_INVID0_VIDEO_MAPPING_OFFSET) &
+		HDMI_TX_INVID0_VIDEO_MAPPING_MASK);
+	hdmi_writeb(hdmi, val, HDMI_TX_INVID0);
+
+	/* Enable TX stuffing: When DE is inactive, fix the output data to 0 */
+	val = HDMI_TX_INSTUFFING_BDBDATA_STUFFING_ENABLE |
+		HDMI_TX_INSTUFFING_RCRDATA_STUFFING_ENABLE |
+		HDMI_TX_INSTUFFING_GYDATA_STUFFING_ENABLE;
+	hdmi_writeb(hdmi, val, HDMI_TX_INSTUFFING);
+	hdmi_writeb(hdmi, 0x0, HDMI_TX_GYDATA0);
+	hdmi_writeb(hdmi, 0x0, HDMI_TX_GYDATA1);
+	hdmi_writeb(hdmi, 0x0, HDMI_TX_RCRDATA0);
+	hdmi_writeb(hdmi, 0x0, HDMI_TX_RCRDATA1);
+	hdmi_writeb(hdmi, 0x0, HDMI_TX_BCBDATA0);
+	hdmi_writeb(hdmi, 0x0, HDMI_TX_BCBDATA1);
+}
+
+static int is_color_space_conversion(struct imx_hdmi *hdmi)
+{
+	return (hdmi->hdmi_data.enc_in_format !=
+		hdmi->hdmi_data.enc_out_format);
+}
+
+static int is_color_space_decimation(struct imx_hdmi *hdmi)
+{
+	return ((hdmi->hdmi_data.enc_out_format == YCBCR422_8BITS) &&
+		(hdmi->hdmi_data.enc_in_format == RGB ||
+		hdmi->hdmi_data.enc_in_format == YCBCR444));
+}
+
+static int is_color_space_interpolation(struct imx_hdmi *hdmi)
+{
+	return ((hdmi->hdmi_data.enc_in_format == YCBCR422_8BITS) &&
+		(hdmi->hdmi_data.enc_out_format == RGB ||
+		hdmi->hdmi_data.enc_out_format == YCBCR444));
+}
+
+static void imx_hdmi_update_csc_coeffs(struct imx_hdmi *hdmi)
+{
+	const u16 (*csc_coeff)[3][4] = &csc_coeff_default;
+	unsigned i;
+	u32 csc_scale = 1;
+
+	if (is_color_space_conversion(hdmi)) {
+		if (hdmi->hdmi_data.enc_out_format == RGB) {
+			if (hdmi->hdmi_data.colorimetry == HDMI_COLORIMETRY_ITU_601)
+				csc_coeff = &csc_coeff_rgb_out_eitu601;
+			else
+				csc_coeff = &csc_coeff_rgb_out_eitu709;
+		} else if (hdmi->hdmi_data.enc_in_format == RGB) {
+			if (hdmi->hdmi_data.colorimetry == HDMI_COLORIMETRY_ITU_601)
+				csc_coeff = &csc_coeff_rgb_in_eitu601;
+			else
+				csc_coeff = &csc_coeff_rgb_in_eitu709;
+			csc_scale = 0;
+		}
+	}
+
+	/* The CSC registers are sequential, alternating MSB then LSB */
+	for (i = 0; i < ARRAY_SIZE(csc_coeff_default[0]); i++) {
+		u16 coeff_a = (*csc_coeff)[0][i];
+		u16 coeff_b = (*csc_coeff)[1][i];
+		u16 coeff_c = (*csc_coeff)[2][i];
+
+		hdmi_writeb(hdmi, coeff_a & 0xff, HDMI_CSC_COEF_A1_LSB + i * 2);
+		hdmi_writeb(hdmi, coeff_a >> 8, HDMI_CSC_COEF_A1_MSB + i * 2);
+		hdmi_writeb(hdmi, coeff_b & 0xff, HDMI_CSC_COEF_B1_LSB + i * 2);
+		hdmi_writeb(hdmi, coeff_b >> 8, HDMI_CSC_COEF_B1_MSB + i * 2);
+		hdmi_writeb(hdmi, coeff_c & 0xff, HDMI_CSC_COEF_C1_LSB + i * 2);
+		hdmi_writeb(hdmi, coeff_c >> 8, HDMI_CSC_COEF_C1_MSB + i * 2);
+	}
+
+	hdmi_modb(hdmi, csc_scale, HDMI_CSC_SCALE_CSCSCALE_MASK,
+		  HDMI_CSC_SCALE);
+}
+
+static void hdmi_video_csc(struct imx_hdmi *hdmi)
+{
+	int color_depth = 0;
+	int interpolation = HDMI_CSC_CFG_INTMODE_DISABLE;
+	int decimation = 0;
+
+	/* YCC422 interpolation to 444 mode */
+	if (is_color_space_interpolation(hdmi))
+		interpolation = HDMI_CSC_CFG_INTMODE_CHROMA_INT_FORMULA1;
+	else if (is_color_space_decimation(hdmi))
+		decimation = HDMI_CSC_CFG_DECMODE_CHROMA_INT_FORMULA3;
+
+	if (hdmi->hdmi_data.enc_color_depth == 8)
+		color_depth = HDMI_CSC_SCALE_CSC_COLORDE_PTH_24BPP;
+	else if (hdmi->hdmi_data.enc_color_depth == 10)
+		color_depth = HDMI_CSC_SCALE_CSC_COLORDE_PTH_30BPP;
+	else if (hdmi->hdmi_data.enc_color_depth == 12)
+		color_depth = HDMI_CSC_SCALE_CSC_COLORDE_PTH_36BPP;
+	else if (hdmi->hdmi_data.enc_color_depth == 16)
+		color_depth = HDMI_CSC_SCALE_CSC_COLORDE_PTH_48BPP;
+	else
+		return;
+
+	/* Configure the CSC registers */
+	hdmi_writeb(hdmi, interpolation | decimation, HDMI_CSC_CFG);
+	hdmi_modb(hdmi, color_depth, HDMI_CSC_SCALE_CSC_COLORDE_PTH_MASK,
+		  HDMI_CSC_SCALE);
+
+	imx_hdmi_update_csc_coeffs(hdmi);
+}
+
+/*
+ * HDMI video packetizer is used to packetize the data.
+ * for example, if input is YCC422 mode or repeater is used,
+ * data should be repacked this module can be bypassed.
+ */
+static void hdmi_video_packetize(struct imx_hdmi *hdmi)
+{
+	unsigned int color_depth = 0;
+	unsigned int remap_size = HDMI_VP_REMAP_YCC422_16bit;
+	unsigned int output_select = HDMI_VP_CONF_OUTPUT_SELECTOR_PP;
+	struct hdmi_data_info *hdmi_data = &hdmi->hdmi_data;
+	u8 val, vp_conf;
+
+	if (hdmi_data->enc_out_format == RGB
+		|| hdmi_data->enc_out_format == YCBCR444) {
+		if (!hdmi_data->enc_color_depth)
+			output_select = HDMI_VP_CONF_OUTPUT_SELECTOR_BYPASS;
+		else if (hdmi_data->enc_color_depth == 8) {
+			color_depth = 4;
+			output_select = HDMI_VP_CONF_OUTPUT_SELECTOR_BYPASS;
+		} else if (hdmi_data->enc_color_depth == 10)
+			color_depth = 5;
+		else if (hdmi_data->enc_color_depth == 12)
+			color_depth = 6;
+		else if (hdmi_data->enc_color_depth == 16)
+			color_depth = 7;
+		else
+			return;
+	} else if (hdmi_data->enc_out_format == YCBCR422_8BITS) {
+		if (!hdmi_data->enc_color_depth ||
+		    hdmi_data->enc_color_depth == 8)
+			remap_size = HDMI_VP_REMAP_YCC422_16bit;
+		else if (hdmi_data->enc_color_depth == 10)
+			remap_size = HDMI_VP_REMAP_YCC422_20bit;
+		else if (hdmi_data->enc_color_depth == 12)
+			remap_size = HDMI_VP_REMAP_YCC422_24bit;
+		else
+			return;
+		output_select = HDMI_VP_CONF_OUTPUT_SELECTOR_YCC422;
+	} else
+		return;
+
+	/* set the packetizer registers */
+	val = ((color_depth << HDMI_VP_PR_CD_COLOR_DEPTH_OFFSET) &
+		HDMI_VP_PR_CD_COLOR_DEPTH_MASK) |
+		((hdmi_data->pix_repet_factor <<
+		HDMI_VP_PR_CD_DESIRED_PR_FACTOR_OFFSET) &
+		HDMI_VP_PR_CD_DESIRED_PR_FACTOR_MASK);
+	hdmi_writeb(hdmi, val, HDMI_VP_PR_CD);
+
+	hdmi_modb(hdmi, HDMI_VP_STUFF_PR_STUFFING_STUFFING_MODE,
+		  HDMI_VP_STUFF_PR_STUFFING_MASK, HDMI_VP_STUFF);
+
+	/* Data from pixel repeater block */
+	if (hdmi_data->pix_repet_factor > 1) {
+		vp_conf = HDMI_VP_CONF_PR_EN_ENABLE |
+			  HDMI_VP_CONF_BYPASS_SELECT_PIX_REPEATER;
+	} else { /* data from packetizer block */
+		vp_conf = HDMI_VP_CONF_PR_EN_DISABLE |
+			  HDMI_VP_CONF_BYPASS_SELECT_VID_PACKETIZER;
+	}
+
+	hdmi_modb(hdmi, vp_conf,
+		  HDMI_VP_CONF_PR_EN_MASK |
+		  HDMI_VP_CONF_BYPASS_SELECT_MASK, HDMI_VP_CONF);
+
+	hdmi_modb(hdmi, 1 << HDMI_VP_STUFF_IDEFAULT_PHASE_OFFSET,
+		  HDMI_VP_STUFF_IDEFAULT_PHASE_MASK, HDMI_VP_STUFF);
+
+	hdmi_writeb(hdmi, remap_size, HDMI_VP_REMAP);
+
+	if (output_select == HDMI_VP_CONF_OUTPUT_SELECTOR_PP) {
+		vp_conf = HDMI_VP_CONF_BYPASS_EN_DISABLE |
+			  HDMI_VP_CONF_PP_EN_ENABLE |
+			  HDMI_VP_CONF_YCC422_EN_DISABLE;
+	} else if (output_select == HDMI_VP_CONF_OUTPUT_SELECTOR_YCC422) {
+		vp_conf = HDMI_VP_CONF_BYPASS_EN_DISABLE |
+			  HDMI_VP_CONF_PP_EN_DISABLE |
+			  HDMI_VP_CONF_YCC422_EN_ENABLE;
+	} else if (output_select == HDMI_VP_CONF_OUTPUT_SELECTOR_BYPASS) {
+		vp_conf = HDMI_VP_CONF_BYPASS_EN_ENABLE |
+			  HDMI_VP_CONF_PP_EN_DISABLE |
+			  HDMI_VP_CONF_YCC422_EN_DISABLE;
+	} else {
+		return;
+	}
+
+	hdmi_modb(hdmi, vp_conf,
+		  HDMI_VP_CONF_BYPASS_EN_MASK | HDMI_VP_CONF_PP_EN_ENMASK |
+		  HDMI_VP_CONF_YCC422_EN_MASK, HDMI_VP_CONF);
+
+	hdmi_modb(hdmi, HDMI_VP_STUFF_PP_STUFFING_STUFFING_MODE |
+			HDMI_VP_STUFF_YCC422_STUFFING_STUFFING_MODE,
+		  HDMI_VP_STUFF_PP_STUFFING_MASK |
+		  HDMI_VP_STUFF_YCC422_STUFFING_MASK, HDMI_VP_STUFF);
+
+	hdmi_modb(hdmi, output_select, HDMI_VP_CONF_OUTPUT_SELECTOR_MASK,
+		  HDMI_VP_CONF);
+}
+
+static inline void hdmi_phy_test_clear(struct imx_hdmi *hdmi,
+						unsigned char bit)
+{
+	hdmi_modb(hdmi, bit << HDMI_PHY_TST0_TSTCLR_OFFSET,
+		  HDMI_PHY_TST0_TSTCLR_MASK, HDMI_PHY_TST0);
+}
+
+static inline void hdmi_phy_test_enable(struct imx_hdmi *hdmi,
+						unsigned char bit)
+{
+	hdmi_modb(hdmi, bit << HDMI_PHY_TST0_TSTEN_OFFSET,
+		  HDMI_PHY_TST0_TSTEN_MASK, HDMI_PHY_TST0);
+}
+
+static inline void hdmi_phy_test_clock(struct imx_hdmi *hdmi,
+						unsigned char bit)
+{
+	hdmi_modb(hdmi, bit << HDMI_PHY_TST0_TSTCLK_OFFSET,
+		  HDMI_PHY_TST0_TSTCLK_MASK, HDMI_PHY_TST0);
+}
+
+static inline void hdmi_phy_test_din(struct imx_hdmi *hdmi,
+						unsigned char bit)
+{
+	hdmi_writeb(hdmi, bit, HDMI_PHY_TST1);
+}
+
+static inline void hdmi_phy_test_dout(struct imx_hdmi *hdmi,
+						unsigned char bit)
+{
+	hdmi_writeb(hdmi, bit, HDMI_PHY_TST2);
+}
+
+static bool hdmi_phy_wait_i2c_done(struct imx_hdmi *hdmi, int msec)
+{
+	unsigned char val = 0;
+	val = hdmi_readb(hdmi, HDMI_IH_I2CMPHY_STAT0) & 0x3;
+	while (!val) {
+		udelay(1000);
+		if (msec-- == 0)
+			return false;
+		val = hdmi_readb(hdmi, HDMI_IH_I2CMPHY_STAT0) & 0x3;
+	}
+	return true;
+}
+
+static void __hdmi_phy_i2c_write(struct imx_hdmi *hdmi, unsigned short data,
+			      unsigned char addr)
+{
+	hdmi_writeb(hdmi, 0xFF, HDMI_IH_I2CMPHY_STAT0);
+	hdmi_writeb(hdmi, addr, HDMI_PHY_I2CM_ADDRESS_ADDR);
+	hdmi_writeb(hdmi, (unsigned char)(data >> 8),
+		HDMI_PHY_I2CM_DATAO_1_ADDR);
+	hdmi_writeb(hdmi, (unsigned char)(data >> 0),
+		HDMI_PHY_I2CM_DATAO_0_ADDR);
+	hdmi_writeb(hdmi, HDMI_PHY_I2CM_OPERATION_ADDR_WRITE,
+		HDMI_PHY_I2CM_OPERATION_ADDR);
+	hdmi_phy_wait_i2c_done(hdmi, 1000);
+}
+
+static int hdmi_phy_i2c_write(struct imx_hdmi *hdmi, unsigned short data,
+				     unsigned char addr)
+{
+	__hdmi_phy_i2c_write(hdmi, data, addr);
+	return 0;
+}
+
+static void imx_hdmi_phy_enable_power(struct imx_hdmi *hdmi, u8 enable)
+{
+	hdmi_mask_writeb(hdmi, enable, HDMI_PHY_CONF0,
+			 HDMI_PHY_CONF0_PDZ_OFFSET,
+			 HDMI_PHY_CONF0_PDZ_MASK);
+}
+
+static void imx_hdmi_phy_enable_tmds(struct imx_hdmi *hdmi, u8 enable)
+{
+	hdmi_mask_writeb(hdmi, enable, HDMI_PHY_CONF0,
+			 HDMI_PHY_CONF0_ENTMDS_OFFSET,
+			 HDMI_PHY_CONF0_ENTMDS_MASK);
+}
+
+static void imx_hdmi_phy_gen2_pddq(struct imx_hdmi *hdmi, u8 enable)
+{
+	hdmi_mask_writeb(hdmi, enable, HDMI_PHY_CONF0,
+			 HDMI_PHY_CONF0_GEN2_PDDQ_OFFSET,
+			 HDMI_PHY_CONF0_GEN2_PDDQ_MASK);
+}
+
+static void imx_hdmi_phy_gen2_txpwron(struct imx_hdmi *hdmi, u8 enable)
+{
+	hdmi_mask_writeb(hdmi, enable, HDMI_PHY_CONF0,
+			 HDMI_PHY_CONF0_GEN2_TXPWRON_OFFSET,
+			 HDMI_PHY_CONF0_GEN2_TXPWRON_MASK);
+}
+
+static void imx_hdmi_phy_sel_data_en_pol(struct imx_hdmi *hdmi, u8 enable)
+{
+	hdmi_mask_writeb(hdmi, enable, HDMI_PHY_CONF0,
+			 HDMI_PHY_CONF0_SELDATAENPOL_OFFSET,
+			 HDMI_PHY_CONF0_SELDATAENPOL_MASK);
+}
+
+static void imx_hdmi_phy_sel_interface_control(struct imx_hdmi *hdmi, u8 enable)
+{
+	hdmi_mask_writeb(hdmi, enable, HDMI_PHY_CONF0,
+			 HDMI_PHY_CONF0_SELDIPIF_OFFSET,
+			 HDMI_PHY_CONF0_SELDIPIF_MASK);
+}
+
+enum {
+	RES_8,
+	RES_10,
+	RES_12,
+	RES_MAX,
+};
+
+struct mpll_config {
+	unsigned long mpixelclock;
+	struct {
+		u16 cpce;
+		u16 gmp;
+	} res[RES_MAX];
+};
+
+static const struct mpll_config mpll_config[] = {
+	{
+		45250000, {
+			{ 0x01e0, 0x0000 },
+			{ 0x21e1, 0x0000 },
+			{ 0x41e2, 0x0000 }
+		},
+	}, {
+		92500000, {
+			{ 0x0140, 0x0005 },
+			{ 0x2141, 0x0005 },
+			{ 0x4142, 0x0005 },
+		},
+	}, {
+		148500000, {
+			{ 0x00a0, 0x000a },
+			{ 0x20a1, 0x000a },
+			{ 0x40a2, 0x000a },
+		},
+	}, {
+		~0UL, {
+			{ 0x00a0, 0x000a },
+			{ 0x2001, 0x000f },
+			{ 0x4002, 0x000f },
+		},
+	}
+};
+
+struct curr_ctrl {
+	unsigned long mpixelclock;
+	u16 curr[RES_MAX];
+};
+
+static const struct curr_ctrl curr_ctrl[] = {
+	/*	pixelclk     bpp8    bpp10   bpp12 */
+	{
+		 54000000, { 0x091c, 0x091c, 0x06dc },
+	}, {
+		 58400000, { 0x091c, 0x06dc, 0x06dc },
+	}, {
+		 72000000, { 0x06dc, 0x06dc, 0x091c },
+	}, {
+		 74250000, { 0x06dc, 0x0b5c, 0x091c },
+	}, {
+		118800000, { 0x091c, 0x091c, 0x06dc },
+	}, {
+		216000000, { 0x06dc, 0x0b5c, 0x091c },
+	}
+};
+
+static int hdmi_phy_configure(struct imx_hdmi *hdmi, unsigned char prep,
+			      unsigned char res, int cscon)
+{
+	unsigned res_idx, i;
+	u8 val, msec;
+
+	if (prep)
+		return -EINVAL;
+
+	switch (res) {
+	case 0:	/* color resolution 0 is 8 bit colour depth */
+	case 8:
+		res_idx = RES_8;
+		break;
+	case 10:
+		res_idx = RES_10;
+		break;
+	case 12:
+		res_idx = RES_12;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	/* Enable csc path */
+	if (cscon)
+		val = HDMI_MC_FLOWCTRL_FEED_THROUGH_OFF_CSC_IN_PATH;
+	else
+		val = HDMI_MC_FLOWCTRL_FEED_THROUGH_OFF_CSC_BYPASS;
+
+	hdmi_writeb(hdmi, val, HDMI_MC_FLOWCTRL);
+
+	/* gen2 tx power off */
+	imx_hdmi_phy_gen2_txpwron(hdmi, 0);
+
+	/* gen2 pddq */
+	imx_hdmi_phy_gen2_pddq(hdmi, 1);
+
+	/* PHY reset */
+	hdmi_writeb(hdmi, HDMI_MC_PHYRSTZ_DEASSERT, HDMI_MC_PHYRSTZ);
+	hdmi_writeb(hdmi, HDMI_MC_PHYRSTZ_ASSERT, HDMI_MC_PHYRSTZ);
+
+	hdmi_writeb(hdmi, HDMI_MC_HEACPHY_RST_ASSERT, HDMI_MC_HEACPHY_RST);
+
+	hdmi_phy_test_clear(hdmi, 1);
+	hdmi_writeb(hdmi, HDMI_PHY_I2CM_SLAVE_ADDR_PHY_GEN2,
+			HDMI_PHY_I2CM_SLAVE_ADDR);
+	hdmi_phy_test_clear(hdmi, 0);
+
+	/* PLL/MPLL Cfg - always match on final entry */
+	for (i = 0; i < ARRAY_SIZE(mpll_config) - 1; i++)
+		if (hdmi->hdmi_data.video_mode.mpixelclock <=
+		    mpll_config[i].mpixelclock)
+			break;
+
+	hdmi_phy_i2c_write(hdmi, mpll_config[i].res[res_idx].cpce, 0x06);
+	hdmi_phy_i2c_write(hdmi, mpll_config[i].res[res_idx].gmp, 0x15);
+
+	for (i = 0; i < ARRAY_SIZE(curr_ctrl); i++)
+		if (hdmi->hdmi_data.video_mode.mpixelclock <=
+		    curr_ctrl[i].mpixelclock)
+			break;
+
+	if (i >= ARRAY_SIZE(curr_ctrl)) {
+		dev_err(hdmi->dev,
+				"Pixel clock %d - unsupported by HDMI\n",
+				hdmi->hdmi_data.video_mode.mpixelclock);
+		return -EINVAL;
+	}
+
+	/* CURRCTRL */
+	hdmi_phy_i2c_write(hdmi, curr_ctrl[i].curr[res_idx], 0x10);
+
+	hdmi_phy_i2c_write(hdmi, 0x0000, 0x13);  /* PLLPHBYCTRL */
+	hdmi_phy_i2c_write(hdmi, 0x0006, 0x17);
+	/* RESISTANCE TERM 133Ohm Cfg */
+	hdmi_phy_i2c_write(hdmi, 0x0005, 0x19);  /* TXTERM */
+	/* PREEMP Cgf 0.00 */
+	hdmi_phy_i2c_write(hdmi, 0x800d, 0x09);  /* CKSYMTXCTRL */
+	/* TX/CK LVL 10 */
+	hdmi_phy_i2c_write(hdmi, 0x01ad, 0x0E);  /* VLEVCTRL */
+	/* REMOVE CLK TERM */
+	hdmi_phy_i2c_write(hdmi, 0x8000, 0x05);  /* CKCALCTRL */
+
+	imx_hdmi_phy_enable_power(hdmi, 1);
+
+	/* toggle TMDS enable */
+	imx_hdmi_phy_enable_tmds(hdmi, 0);
+	imx_hdmi_phy_enable_tmds(hdmi, 1);
+
+	/* gen2 tx power on */
+	imx_hdmi_phy_gen2_txpwron(hdmi, 1);
+	imx_hdmi_phy_gen2_pddq(hdmi, 0);
+
+	/*Wait for PHY PLL lock */
+	msec = 5;
+	do {
+		val = hdmi_readb(hdmi, HDMI_PHY_STAT0) & HDMI_PHY_TX_PHY_LOCK;
+		if (!val)
+			break;
+
+		if (msec == 0) {
+			dev_err(hdmi->dev, "PHY PLL not locked\n");
+			return -ETIMEDOUT;
+		}
+
+		udelay(1000);
+		msec--;
+	} while (1);
+
+	return 0;
+}
+
+static int imx_hdmi_phy_init(struct imx_hdmi *hdmi)
+{
+	int i, ret;
+	bool cscon = false;
+
+	/*check csc whether needed activated in HDMI mode */
+	cscon = (is_color_space_conversion(hdmi) &&
+			!hdmi->hdmi_data.video_mode.mdvi);
+
+	/* HDMI Phy spec says to do the phy initialization sequence twice */
+	for (i = 0; i < 2; i++) {
+		imx_hdmi_phy_sel_data_en_pol(hdmi, 1);
+		imx_hdmi_phy_sel_interface_control(hdmi, 0);
+		imx_hdmi_phy_enable_tmds(hdmi, 0);
+		imx_hdmi_phy_enable_power(hdmi, 0);
+
+		/* Enable CSC */
+		ret = hdmi_phy_configure(hdmi, 0, 8, cscon);
+		if (ret)
+			return ret;
+	}
+
+	hdmi->phy_enabled = true;
+	return 0;
+}
+
+static void hdmi_tx_hdcp_config(struct imx_hdmi *hdmi)
+{
+	u8 de;
+
+	if (hdmi->hdmi_data.video_mode.mdataenablepolarity)
+		de = HDMI_A_VIDPOLCFG_DATAENPOL_ACTIVE_HIGH;
+	else
+		de = HDMI_A_VIDPOLCFG_DATAENPOL_ACTIVE_LOW;
+
+	/* disable rx detect */
+	hdmi_modb(hdmi, HDMI_A_HDCPCFG0_RXDETECT_DISABLE,
+		  HDMI_A_HDCPCFG0_RXDETECT_MASK, HDMI_A_HDCPCFG0);
+
+	hdmi_modb(hdmi, de, HDMI_A_VIDPOLCFG_DATAENPOL_MASK, HDMI_A_VIDPOLCFG);
+
+	hdmi_modb(hdmi, HDMI_A_HDCPCFG1_ENCRYPTIONDISABLE_DISABLE,
+		  HDMI_A_HDCPCFG1_ENCRYPTIONDISABLE_MASK, HDMI_A_HDCPCFG1);
+}
+
+static void imx_hdmi_phy_disable(struct imx_hdmi *hdmi)
+{
+	if (!hdmi->phy_enabled)
+		return;
+
+	imx_hdmi_phy_enable_tmds(hdmi, 0);
+	imx_hdmi_phy_enable_power(hdmi, 0);
+
+	hdmi->phy_enabled = false;
+}
+
+/* HDMI Initialization Step B.4 */
+static void imx_hdmi_enable_video_path(struct imx_hdmi *hdmi)
+{
+	u8 clkdis;
+
+	/* control period minimum duration */
+	hdmi_writeb(hdmi, 12, HDMI_FC_CTRLDUR);
+	hdmi_writeb(hdmi, 32, HDMI_FC_EXCTRLDUR);
+	hdmi_writeb(hdmi, 1, HDMI_FC_EXCTRLSPAC);
+
+	/* Set to fill TMDS data channels */
+	hdmi_writeb(hdmi, 0x0B, HDMI_FC_CH0PREAM);
+	hdmi_writeb(hdmi, 0x16, HDMI_FC_CH1PREAM);
+	hdmi_writeb(hdmi, 0x21, HDMI_FC_CH2PREAM);
+
+	/* Enable pixel clock and tmds data path */
+	clkdis = 0x7F;
+	clkdis &= ~HDMI_MC_CLKDIS_PIXELCLK_DISABLE;
+	hdmi_writeb(hdmi, clkdis, HDMI_MC_CLKDIS);
+
+	clkdis &= ~HDMI_MC_CLKDIS_TMDSCLK_DISABLE;
+	hdmi_writeb(hdmi, clkdis, HDMI_MC_CLKDIS);
+
+	/* Enable csc path */
+	if (is_color_space_conversion(hdmi)) {
+		clkdis &= ~HDMI_MC_CLKDIS_CSCCLK_DISABLE;
+		hdmi_writeb(hdmi, clkdis, HDMI_MC_CLKDIS);
+	}
+}
+
+/* Workaround to clear the overflow condition */
+static void imx_hdmi_clear_overflow(struct imx_hdmi *hdmi)
+{
+	int count;
+	u8 val;
+
+	/* TMDS software reset */
+	hdmi_writeb(hdmi, (u8)~HDMI_MC_SWRSTZ_TMDSSWRST_REQ, HDMI_MC_SWRSTZ);
+
+	val = hdmi_readb(hdmi, HDMI_FC_INVIDCONF);
+	if (hdmi->dev_type == IMX6DL_HDMI) {
+		hdmi_writeb(hdmi, val, HDMI_FC_INVIDCONF);
+		return;
+	}
+
+	for (count = 0; count < 4; count++)
+		hdmi_writeb(hdmi, val, HDMI_FC_INVIDCONF);
+}
+
+static int imx_hdmi_setup(struct imx_hdmi *hdmi, struct fb_videomode *mode)
+{
+	int ret;
+
+	hdmi->vic = 0;
+
+	dev_dbg(hdmi->dev, "Non-CEA mode used in HDMI\n");
+	hdmi->hdmi_data.video_mode.mdvi = true;
+
+	hdmi->hdmi_data.colorimetry = HDMI_COLORIMETRY_ITU_709;
+	hdmi->hdmi_data.video_mode.mpixelrepetitionoutput = 0;
+	hdmi->hdmi_data.video_mode.mpixelrepetitioninput = 0;
+
+	/* TODO: Get input format from IPU (via FB driver interface) */
+	hdmi->hdmi_data.enc_in_format = RGB;
+
+	hdmi->hdmi_data.enc_out_format = RGB;
+
+	hdmi->hdmi_data.enc_color_depth = 8;
+	hdmi->hdmi_data.pix_repet_factor = 0;
+	hdmi->hdmi_data.hdcp_enable = 0;
+	hdmi->hdmi_data.video_mode.mdataenablepolarity = true;
+
+	/* HDMI Initializateion Step B.2 */
+	ret = imx_hdmi_phy_init(hdmi);
+	if (ret)
+		return ret;
+
+	/* HDMI Initialization Step B.3 */
+	imx_hdmi_enable_video_path(hdmi);
+
+	/* not for DVI mode */
+	dev_dbg(hdmi->dev, "%s DVI mode\n", __func__);
+
+	hdmi_video_packetize(hdmi);
+	hdmi_video_csc(hdmi);
+	hdmi_video_sample(hdmi);
+	hdmi_tx_hdcp_config(hdmi);
+
+	imx_hdmi_clear_overflow(hdmi);
+
+	return 0;
+}
+
+static void initialize_hdmi_ih_mutes(struct imx_hdmi *hdmi)
+{
+	u8 ih_mute;
+
+	/*
+	 * Boot up defaults are:
+	 * HDMI_IH_MUTE   = 0x03 (disabled)
+	 * HDMI_IH_MUTE_* = 0x00 (enabled)
+	 *
+	 * Disable top level interrupt bits in HDMI block
+	 */
+	ih_mute = hdmi_readb(hdmi, HDMI_IH_MUTE) |
+		  HDMI_IH_MUTE_MUTE_WAKEUP_INTERRUPT |
+		  HDMI_IH_MUTE_MUTE_ALL_INTERRUPT;
+
+	hdmi_writeb(hdmi, ih_mute, HDMI_IH_MUTE);
+
+	/* by default mask all interrupts */
+	hdmi_writeb(hdmi, 0xff, HDMI_VP_MASK);
+	hdmi_writeb(hdmi, 0xff, HDMI_FC_MASK0);
+	hdmi_writeb(hdmi, 0xff, HDMI_FC_MASK1);
+	hdmi_writeb(hdmi, 0xff, HDMI_FC_MASK2);
+	hdmi_writeb(hdmi, 0xff, HDMI_PHY_MASK0);
+	hdmi_writeb(hdmi, 0xff, HDMI_PHY_I2CM_INT_ADDR);
+	hdmi_writeb(hdmi, 0xff, HDMI_PHY_I2CM_CTLINT_ADDR);
+	hdmi_writeb(hdmi, 0xff, HDMI_AUD_INT);
+	hdmi_writeb(hdmi, 0xff, HDMI_AUD_SPDIFINT);
+	hdmi_writeb(hdmi, 0xff, HDMI_AUD_HBR_MASK);
+	hdmi_writeb(hdmi, 0xff, HDMI_GP_MASK);
+	hdmi_writeb(hdmi, 0xff, HDMI_A_APIINTMSK);
+	hdmi_writeb(hdmi, 0xff, HDMI_CEC_MASK);
+	hdmi_writeb(hdmi, 0xff, HDMI_I2CM_INT);
+	hdmi_writeb(hdmi, 0xff, HDMI_I2CM_CTLINT);
+
+	/* Disable interrupts in the IH_MUTE_* registers */
+	hdmi_writeb(hdmi, 0xff, HDMI_IH_MUTE_FC_STAT0);
+	hdmi_writeb(hdmi, 0xff, HDMI_IH_MUTE_FC_STAT1);
+	hdmi_writeb(hdmi, 0xff, HDMI_IH_MUTE_FC_STAT2);
+	hdmi_writeb(hdmi, 0xff, HDMI_IH_MUTE_AS_STAT0);
+	hdmi_writeb(hdmi, 0xff, HDMI_IH_MUTE_PHY_STAT0);
+	hdmi_writeb(hdmi, 0xff, HDMI_IH_MUTE_I2CM_STAT0);
+	hdmi_writeb(hdmi, 0xff, HDMI_IH_MUTE_CEC_STAT0);
+	hdmi_writeb(hdmi, 0xff, HDMI_IH_MUTE_VP_STAT0);
+	hdmi_writeb(hdmi, 0xff, HDMI_IH_MUTE_I2CMPHY_STAT0);
+	hdmi_writeb(hdmi, 0xff, HDMI_IH_MUTE_AHBDMAAUD_STAT0);
+
+	/* Enable top level interrupt bits in HDMI block */
+	ih_mute &= ~(HDMI_IH_MUTE_MUTE_WAKEUP_INTERRUPT |
+		    HDMI_IH_MUTE_MUTE_ALL_INTERRUPT);
+	hdmi_writeb(hdmi, ih_mute, HDMI_IH_MUTE);
+}
+
+struct imx_hdmi_data {
+	unsigned ipu_mask;
+	enum imx_hdmi_devtype devtype;
+};
+
+static struct imx_hdmi_data imx6q_hdmi_data = {
+	.ipu_mask = 0xf,
+	.devtype = IMX6Q_HDMI,
+};
+
+static struct imx_hdmi_data imx6dl_hdmi_data = {
+	.ipu_mask = 0x3,
+	.devtype = IMX6DL_HDMI,
+};
+
+static struct of_device_id imx_hdmi_dt_ids[] = {
+	{
+		.compatible = "fsl,imx6q-hdmi",
+		.data = (unsigned long)&imx6q_hdmi_data,
+	}, {
+		.compatible = "fsl,imx6dl-hdmi",
+		.data = (unsigned long)&imx6dl_hdmi_data,
+	}, {
+		/* sentinel */
+	}
+};
+
+static int imx_hdmi_prepare(struct ipu_output *output, struct fb_videomode *mode, int di)
+{
+	struct imx_hdmi *hdmi = container_of(output, struct imx_hdmi, output);
+
+	imx_hdmi_set_ipu_di_mux(hdmi, di);
+
+	return 0;
+}
+
+static int imx_hdmi_commit(struct ipu_output *output, struct fb_videomode *mode, int di)
+{
+	struct imx_hdmi *hdmi = container_of(output, struct imx_hdmi, output);
+
+	imx_hdmi_setup(hdmi, mode);
+
+	return 0;
+}
+
+static int imx_hdmi_disable(struct ipu_output *output)
+{
+	struct imx_hdmi *hdmi = container_of(output, struct imx_hdmi, output);
+
+	imx_hdmi_phy_disable(hdmi);
+
+	return 0;
+}
+
+static struct ipu_output_ops imx_hdmi_ops = {
+	.prepare = imx_hdmi_prepare,
+	.enable = imx_hdmi_commit,
+	.disable = imx_hdmi_disable,
+};
+
+static int imx_hdmi_probe(struct device_d *dev)
+{
+	struct device_node *np = dev->device_node;
+	struct device_node *ddc_node;
+	struct imx_hdmi *hdmi;
+	int ret;
+	const struct imx_hdmi_data *devtype;
+
+	ret = dev_get_drvdata(dev, (unsigned long *)&devtype);
+	if (ret)
+		return ret;
+
+	hdmi = xzalloc(sizeof(*hdmi));
+
+	hdmi->dev = dev;
+	hdmi->connected = 0;
+	hdmi->sample_rate = 48000;
+	hdmi->ratio = 100;
+
+	ret = dev_get_drvdata(dev, (unsigned long *)&hdmi->dev_type);
+	if (ret)
+		return ret;
+
+	ddc_node = of_parse_phandle(np, "ddc-i2c-bus", 0);
+	if (ddc_node) {
+		hdmi->ddc = of_find_i2c_adapter_by_node(ddc_node);
+		if (!hdmi->ddc)
+			dev_dbg(hdmi->dev, "failed to read ddc node\n");
+	} else {
+		dev_dbg(hdmi->dev, "no ddc property found\n");
+	}
+
+	ddc_node = NULL;
+
+	hdmi->regs = dev_request_mem_region(dev, 0);
+	if (!hdmi->regs)
+		return -EBUSY;
+
+	hdmi->isfr_clk = clk_get(hdmi->dev, "isfr");
+	if (IS_ERR(hdmi->isfr_clk)) {
+		ret = PTR_ERR(hdmi->isfr_clk);
+		dev_err(dev,
+			"Unable to get HDMI isfr clk: %d\n", ret);
+		return ret;
+	}
+
+	ret = clk_enable(hdmi->isfr_clk);
+	if (ret)
+		return ret;
+
+	hdmi->iahb_clk = clk_get(hdmi->dev, "iahb");
+	if (IS_ERR(hdmi->iahb_clk)) {
+		ret = PTR_ERR(hdmi->iahb_clk);
+		dev_err(dev,
+			"Unable to get HDMI iahb clk: %d\n", ret);
+		goto err_isfr;
+	}
+
+	ret = clk_enable(hdmi->iahb_clk);
+	if (ret)
+		goto err_isfr;
+
+	/* Product and revision IDs */
+	dev_info(dev,
+		"Detected HDMI controller 0x%x:0x%x:0x%x:0x%x\n",
+		hdmi_readb(hdmi, HDMI_DESIGN_ID),
+		hdmi_readb(hdmi, HDMI_REVISION_ID),
+		hdmi_readb(hdmi, HDMI_PRODUCT_ID0),
+		hdmi_readb(hdmi, HDMI_PRODUCT_ID1));
+
+	initialize_hdmi_ih_mutes(hdmi);
+
+	/*
+	 * To prevent overflows in HDMI_IH_FC_STAT2, set the clk regenerator
+	 * N and cts values before enabling phy
+	 */
+	hdmi_init_clk_regenerator(hdmi);
+
+	/*
+	 * Configure registers related to HDMI interrupt
+	 * generation before registering IRQ.
+	 */
+	hdmi_writeb(hdmi, HDMI_PHY_HPD, HDMI_PHY_POL0);
+
+	/* Clear Hotplug interrupts */
+	hdmi_writeb(hdmi, HDMI_IH_PHY_STAT0_HPD, HDMI_IH_PHY_STAT0);
+
+	hdmi_writeb(hdmi, HDMI_PHY_I2CM_INT_ADDR_DONE_POL,
+		    HDMI_PHY_I2CM_INT_ADDR);
+
+	hdmi_writeb(hdmi, HDMI_PHY_I2CM_CTLINT_ADDR_NAC_POL |
+		    HDMI_PHY_I2CM_CTLINT_ADDR_ARBITRATION_POL,
+		    HDMI_PHY_I2CM_CTLINT_ADDR);
+
+	/* enable cable hot plug irq */
+	hdmi_writeb(hdmi, (u8)~HDMI_PHY_HPD, HDMI_PHY_MASK0);
+
+	/* Unmute interrupts */
+	hdmi_writeb(hdmi, ~HDMI_IH_PHY_STAT0_HPD, HDMI_IH_MUTE_PHY_STAT0);
+
+	hdmi->output.ops = &imx_hdmi_ops;
+	hdmi->output.di_clkflags = IPU_DI_CLKMODE_EXT | IPU_DI_CLKMODE_SYNC;
+	hdmi->output.out_pixel_fmt = V4L2_PIX_FMT_RGB24;
+	hdmi->output.name = asprintf("hdmi-0");
+	hdmi->output.ipu_mask = devtype->ipu_mask;
+	hdmi->output.edid_i2c_adapter = hdmi->ddc;
+	hdmi->output.modes = of_get_display_timings(np);
+
+	ipu_register_output(&hdmi->output);
+
+	return 0;
+
+err_isfr:
+	clk_disable(hdmi->isfr_clk);
+
+	return ret;
+}
+
+static struct driver_d imx_hdmi_driver = {
+	.probe		= imx_hdmi_probe,
+	.of_compatible	= imx_hdmi_dt_ids,
+	.name		= "imx-hdmi",
+};
+device_platform_driver(imx_hdmi_driver);
+
+MODULE_AUTHOR("Sascha Hauer <s.hauer@pengutronix.de>");
+MODULE_DESCRIPTION("i.MX6 HDMI transmitter driver");
+MODULE_LICENSE("GPL");
diff --git a/drivers/video/imx-ipu-v3/imx-hdmi.h b/drivers/video/imx-ipu-v3/imx-hdmi.h
new file mode 100644
index 0000000..39b6776
--- /dev/null
+++ b/drivers/video/imx-ipu-v3/imx-hdmi.h
@@ -0,0 +1,1032 @@
+/*
+ * Copyright (C) 2011 Freescale Semiconductor, Inc.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
+#ifndef __IMX_HDMI_H__
+#define __IMX_HDMI_H__
+
+/* Identification Registers */
+#define HDMI_DESIGN_ID                          0x0000
+#define HDMI_REVISION_ID                        0x0001
+#define HDMI_PRODUCT_ID0                        0x0002
+#define HDMI_PRODUCT_ID1                        0x0003
+#define HDMI_CONFIG0_ID                         0x0004
+#define HDMI_CONFIG1_ID                         0x0005
+#define HDMI_CONFIG2_ID                         0x0006
+#define HDMI_CONFIG3_ID                         0x0007
+
+/* Interrupt Registers */
+#define HDMI_IH_FC_STAT0                        0x0100
+#define HDMI_IH_FC_STAT1                        0x0101
+#define HDMI_IH_FC_STAT2                        0x0102
+#define HDMI_IH_AS_STAT0                        0x0103
+#define HDMI_IH_PHY_STAT0                       0x0104
+#define HDMI_IH_I2CM_STAT0                      0x0105
+#define HDMI_IH_CEC_STAT0                       0x0106
+#define HDMI_IH_VP_STAT0                        0x0107
+#define HDMI_IH_I2CMPHY_STAT0                   0x0108
+#define HDMI_IH_AHBDMAAUD_STAT0                 0x0109
+
+#define HDMI_IH_MUTE_FC_STAT0                   0x0180
+#define HDMI_IH_MUTE_FC_STAT1                   0x0181
+#define HDMI_IH_MUTE_FC_STAT2                   0x0182
+#define HDMI_IH_MUTE_AS_STAT0                   0x0183
+#define HDMI_IH_MUTE_PHY_STAT0                  0x0184
+#define HDMI_IH_MUTE_I2CM_STAT0                 0x0185
+#define HDMI_IH_MUTE_CEC_STAT0                  0x0186
+#define HDMI_IH_MUTE_VP_STAT0                   0x0187
+#define HDMI_IH_MUTE_I2CMPHY_STAT0              0x0188
+#define HDMI_IH_MUTE_AHBDMAAUD_STAT0            0x0189
+#define HDMI_IH_MUTE                            0x01FF
+
+/* Video Sample Registers */
+#define HDMI_TX_INVID0                          0x0200
+#define HDMI_TX_INSTUFFING                      0x0201
+#define HDMI_TX_GYDATA0                         0x0202
+#define HDMI_TX_GYDATA1                         0x0203
+#define HDMI_TX_RCRDATA0                        0x0204
+#define HDMI_TX_RCRDATA1                        0x0205
+#define HDMI_TX_BCBDATA0                        0x0206
+#define HDMI_TX_BCBDATA1                        0x0207
+
+/* Video Packetizer Registers */
+#define HDMI_VP_STATUS                          0x0800
+#define HDMI_VP_PR_CD                           0x0801
+#define HDMI_VP_STUFF                           0x0802
+#define HDMI_VP_REMAP                           0x0803
+#define HDMI_VP_CONF                            0x0804
+#define HDMI_VP_STAT                            0x0805
+#define HDMI_VP_INT                             0x0806
+#define HDMI_VP_MASK                            0x0807
+#define HDMI_VP_POL                             0x0808
+
+/* Frame Composer Registers */
+#define HDMI_FC_INVIDCONF                       0x1000
+#define HDMI_FC_INHACTV0                        0x1001
+#define HDMI_FC_INHACTV1                        0x1002
+#define HDMI_FC_INHBLANK0                       0x1003
+#define HDMI_FC_INHBLANK1                       0x1004
+#define HDMI_FC_INVACTV0                        0x1005
+#define HDMI_FC_INVACTV1                        0x1006
+#define HDMI_FC_INVBLANK                        0x1007
+#define HDMI_FC_HSYNCINDELAY0                   0x1008
+#define HDMI_FC_HSYNCINDELAY1                   0x1009
+#define HDMI_FC_HSYNCINWIDTH0                   0x100A
+#define HDMI_FC_HSYNCINWIDTH1                   0x100B
+#define HDMI_FC_VSYNCINDELAY                    0x100C
+#define HDMI_FC_VSYNCINWIDTH                    0x100D
+#define HDMI_FC_INFREQ0                         0x100E
+#define HDMI_FC_INFREQ1                         0x100F
+#define HDMI_FC_INFREQ2                         0x1010
+#define HDMI_FC_CTRLDUR                         0x1011
+#define HDMI_FC_EXCTRLDUR                       0x1012
+#define HDMI_FC_EXCTRLSPAC                      0x1013
+#define HDMI_FC_CH0PREAM                        0x1014
+#define HDMI_FC_CH1PREAM                        0x1015
+#define HDMI_FC_CH2PREAM                        0x1016
+#define HDMI_FC_AVICONF3                        0x1017
+#define HDMI_FC_GCP                             0x1018
+#define HDMI_FC_AVICONF0                        0x1019
+#define HDMI_FC_AVICONF1                        0x101A
+#define HDMI_FC_AVICONF2                        0x101B
+#define HDMI_FC_AVIVID                          0x101C
+#define HDMI_FC_AVIETB0                         0x101D
+#define HDMI_FC_AVIETB1                         0x101E
+#define HDMI_FC_AVISBB0                         0x101F
+#define HDMI_FC_AVISBB1                         0x1020
+#define HDMI_FC_AVIELB0                         0x1021
+#define HDMI_FC_AVIELB1                         0x1022
+#define HDMI_FC_AVISRB0                         0x1023
+#define HDMI_FC_AVISRB1                         0x1024
+#define HDMI_FC_AUDICONF0                       0x1025
+#define HDMI_FC_AUDICONF1                       0x1026
+#define HDMI_FC_AUDICONF2                       0x1027
+#define HDMI_FC_AUDICONF3                       0x1028
+#define HDMI_FC_VSDIEEEID0                      0x1029
+#define HDMI_FC_VSDSIZE                         0x102A
+#define HDMI_FC_VSDIEEEID1                      0x1030
+#define HDMI_FC_VSDIEEEID2                      0x1031
+#define HDMI_FC_VSDPAYLOAD0                     0x1032
+#define HDMI_FC_VSDPAYLOAD1                     0x1033
+#define HDMI_FC_VSDPAYLOAD2                     0x1034
+#define HDMI_FC_VSDPAYLOAD3                     0x1035
+#define HDMI_FC_VSDPAYLOAD4                     0x1036
+#define HDMI_FC_VSDPAYLOAD5                     0x1037
+#define HDMI_FC_VSDPAYLOAD6                     0x1038
+#define HDMI_FC_VSDPAYLOAD7                     0x1039
+#define HDMI_FC_VSDPAYLOAD8                     0x103A
+#define HDMI_FC_VSDPAYLOAD9                     0x103B
+#define HDMI_FC_VSDPAYLOAD10                    0x103C
+#define HDMI_FC_VSDPAYLOAD11                    0x103D
+#define HDMI_FC_VSDPAYLOAD12                    0x103E
+#define HDMI_FC_VSDPAYLOAD13                    0x103F
+#define HDMI_FC_VSDPAYLOAD14                    0x1040
+#define HDMI_FC_VSDPAYLOAD15                    0x1041
+#define HDMI_FC_VSDPAYLOAD16                    0x1042
+#define HDMI_FC_VSDPAYLOAD17                    0x1043
+#define HDMI_FC_VSDPAYLOAD18                    0x1044
+#define HDMI_FC_VSDPAYLOAD19                    0x1045
+#define HDMI_FC_VSDPAYLOAD20                    0x1046
+#define HDMI_FC_VSDPAYLOAD21                    0x1047
+#define HDMI_FC_VSDPAYLOAD22                    0x1048
+#define HDMI_FC_VSDPAYLOAD23                    0x1049
+#define HDMI_FC_SPDVENDORNAME0                  0x104A
+#define HDMI_FC_SPDVENDORNAME1                  0x104B
+#define HDMI_FC_SPDVENDORNAME2                  0x104C
+#define HDMI_FC_SPDVENDORNAME3                  0x104D
+#define HDMI_FC_SPDVENDORNAME4                  0x104E
+#define HDMI_FC_SPDVENDORNAME5                  0x104F
+#define HDMI_FC_SPDVENDORNAME6                  0x1050
+#define HDMI_FC_SPDVENDORNAME7                  0x1051
+#define HDMI_FC_SDPPRODUCTNAME0                 0x1052
+#define HDMI_FC_SDPPRODUCTNAME1                 0x1053
+#define HDMI_FC_SDPPRODUCTNAME2                 0x1054
+#define HDMI_FC_SDPPRODUCTNAME3                 0x1055
+#define HDMI_FC_SDPPRODUCTNAME4                 0x1056
+#define HDMI_FC_SDPPRODUCTNAME5                 0x1057
+#define HDMI_FC_SDPPRODUCTNAME6                 0x1058
+#define HDMI_FC_SDPPRODUCTNAME7                 0x1059
+#define HDMI_FC_SDPPRODUCTNAME8                 0x105A
+#define HDMI_FC_SDPPRODUCTNAME9                 0x105B
+#define HDMI_FC_SDPPRODUCTNAME10                0x105C
+#define HDMI_FC_SDPPRODUCTNAME11                0x105D
+#define HDMI_FC_SDPPRODUCTNAME12                0x105E
+#define HDMI_FC_SDPPRODUCTNAME13                0x105F
+#define HDMI_FC_SDPPRODUCTNAME14                0x1060
+#define HDMI_FC_SPDPRODUCTNAME15                0x1061
+#define HDMI_FC_SPDDEVICEINF                    0x1062
+#define HDMI_FC_AUDSCONF                        0x1063
+#define HDMI_FC_AUDSSTAT                        0x1064
+#define HDMI_FC_DATACH0FILL                     0x1070
+#define HDMI_FC_DATACH1FILL                     0x1071
+#define HDMI_FC_DATACH2FILL                     0x1072
+#define HDMI_FC_CTRLQHIGH                       0x1073
+#define HDMI_FC_CTRLQLOW                        0x1074
+#define HDMI_FC_ACP0                            0x1075
+#define HDMI_FC_ACP28                           0x1076
+#define HDMI_FC_ACP27                           0x1077
+#define HDMI_FC_ACP26                           0x1078
+#define HDMI_FC_ACP25                           0x1079
+#define HDMI_FC_ACP24                           0x107A
+#define HDMI_FC_ACP23                           0x107B
+#define HDMI_FC_ACP22                           0x107C
+#define HDMI_FC_ACP21                           0x107D
+#define HDMI_FC_ACP20                           0x107E
+#define HDMI_FC_ACP19                           0x107F
+#define HDMI_FC_ACP18                           0x1080
+#define HDMI_FC_ACP17                           0x1081
+#define HDMI_FC_ACP16                           0x1082
+#define HDMI_FC_ACP15                           0x1083
+#define HDMI_FC_ACP14                           0x1084
+#define HDMI_FC_ACP13                           0x1085
+#define HDMI_FC_ACP12                           0x1086
+#define HDMI_FC_ACP11                           0x1087
+#define HDMI_FC_ACP10                           0x1088
+#define HDMI_FC_ACP9                            0x1089
+#define HDMI_FC_ACP8                            0x108A
+#define HDMI_FC_ACP7                            0x108B
+#define HDMI_FC_ACP6                            0x108C
+#define HDMI_FC_ACP5                            0x108D
+#define HDMI_FC_ACP4                            0x108E
+#define HDMI_FC_ACP3                            0x108F
+#define HDMI_FC_ACP2                            0x1090
+#define HDMI_FC_ACP1                            0x1091
+#define HDMI_FC_ISCR1_0                         0x1092
+#define HDMI_FC_ISCR1_16                        0x1093
+#define HDMI_FC_ISCR1_15                        0x1094
+#define HDMI_FC_ISCR1_14                        0x1095
+#define HDMI_FC_ISCR1_13                        0x1096
+#define HDMI_FC_ISCR1_12                        0x1097
+#define HDMI_FC_ISCR1_11                        0x1098
+#define HDMI_FC_ISCR1_10                        0x1099
+#define HDMI_FC_ISCR1_9                         0x109A
+#define HDMI_FC_ISCR1_8                         0x109B
+#define HDMI_FC_ISCR1_7                         0x109C
+#define HDMI_FC_ISCR1_6                         0x109D
+#define HDMI_FC_ISCR1_5                         0x109E
+#define HDMI_FC_ISCR1_4                         0x109F
+#define HDMI_FC_ISCR1_3                         0x10A0
+#define HDMI_FC_ISCR1_2                         0x10A1
+#define HDMI_FC_ISCR1_1                         0x10A2
+#define HDMI_FC_ISCR2_15                        0x10A3
+#define HDMI_FC_ISCR2_14                        0x10A4
+#define HDMI_FC_ISCR2_13                        0x10A5
+#define HDMI_FC_ISCR2_12                        0x10A6
+#define HDMI_FC_ISCR2_11                        0x10A7
+#define HDMI_FC_ISCR2_10                        0x10A8
+#define HDMI_FC_ISCR2_9                         0x10A9
+#define HDMI_FC_ISCR2_8                         0x10AA
+#define HDMI_FC_ISCR2_7                         0x10AB
+#define HDMI_FC_ISCR2_6                         0x10AC
+#define HDMI_FC_ISCR2_5                         0x10AD
+#define HDMI_FC_ISCR2_4                         0x10AE
+#define HDMI_FC_ISCR2_3                         0x10AF
+#define HDMI_FC_ISCR2_2                         0x10B0
+#define HDMI_FC_ISCR2_1                         0x10B1
+#define HDMI_FC_ISCR2_0                         0x10B2
+#define HDMI_FC_DATAUTO0                        0x10B3
+#define HDMI_FC_DATAUTO1                        0x10B4
+#define HDMI_FC_DATAUTO2                        0x10B5
+#define HDMI_FC_DATMAN                          0x10B6
+#define HDMI_FC_DATAUTO3                        0x10B7
+#define HDMI_FC_RDRB0                           0x10B8
+#define HDMI_FC_RDRB1                           0x10B9
+#define HDMI_FC_RDRB2                           0x10BA
+#define HDMI_FC_RDRB3                           0x10BB
+#define HDMI_FC_RDRB4                           0x10BC
+#define HDMI_FC_RDRB5                           0x10BD
+#define HDMI_FC_RDRB6                           0x10BE
+#define HDMI_FC_RDRB7                           0x10BF
+#define HDMI_FC_STAT0                           0x10D0
+#define HDMI_FC_INT0                            0x10D1
+#define HDMI_FC_MASK0                           0x10D2
+#define HDMI_FC_POL0                            0x10D3
+#define HDMI_FC_STAT1                           0x10D4
+#define HDMI_FC_INT1                            0x10D5
+#define HDMI_FC_MASK1                           0x10D6
+#define HDMI_FC_POL1                            0x10D7
+#define HDMI_FC_STAT2                           0x10D8
+#define HDMI_FC_INT2                            0x10D9
+#define HDMI_FC_MASK2                           0x10DA
+#define HDMI_FC_POL2                            0x10DB
+#define HDMI_FC_PRCONF                          0x10E0
+
+#define HDMI_FC_GMD_STAT                        0x1100
+#define HDMI_FC_GMD_EN                          0x1101
+#define HDMI_FC_GMD_UP                          0x1102
+#define HDMI_FC_GMD_CONF                        0x1103
+#define HDMI_FC_GMD_HB                          0x1104
+#define HDMI_FC_GMD_PB0                         0x1105
+#define HDMI_FC_GMD_PB1                         0x1106
+#define HDMI_FC_GMD_PB2                         0x1107
+#define HDMI_FC_GMD_PB3                         0x1108
+#define HDMI_FC_GMD_PB4                         0x1109
+#define HDMI_FC_GMD_PB5                         0x110A
+#define HDMI_FC_GMD_PB6                         0x110B
+#define HDMI_FC_GMD_PB7                         0x110C
+#define HDMI_FC_GMD_PB8                         0x110D
+#define HDMI_FC_GMD_PB9                         0x110E
+#define HDMI_FC_GMD_PB10                        0x110F
+#define HDMI_FC_GMD_PB11                        0x1110
+#define HDMI_FC_GMD_PB12                        0x1111
+#define HDMI_FC_GMD_PB13                        0x1112
+#define HDMI_FC_GMD_PB14                        0x1113
+#define HDMI_FC_GMD_PB15                        0x1114
+#define HDMI_FC_GMD_PB16                        0x1115
+#define HDMI_FC_GMD_PB17                        0x1116
+#define HDMI_FC_GMD_PB18                        0x1117
+#define HDMI_FC_GMD_PB19                        0x1118
+#define HDMI_FC_GMD_PB20                        0x1119
+#define HDMI_FC_GMD_PB21                        0x111A
+#define HDMI_FC_GMD_PB22                        0x111B
+#define HDMI_FC_GMD_PB23                        0x111C
+#define HDMI_FC_GMD_PB24                        0x111D
+#define HDMI_FC_GMD_PB25                        0x111E
+#define HDMI_FC_GMD_PB26                        0x111F
+#define HDMI_FC_GMD_PB27                        0x1120
+
+#define HDMI_FC_DBGFORCE                        0x1200
+#define HDMI_FC_DBGAUD0CH0                      0x1201
+#define HDMI_FC_DBGAUD1CH0                      0x1202
+#define HDMI_FC_DBGAUD2CH0                      0x1203
+#define HDMI_FC_DBGAUD0CH1                      0x1204
+#define HDMI_FC_DBGAUD1CH1                      0x1205
+#define HDMI_FC_DBGAUD2CH1                      0x1206
+#define HDMI_FC_DBGAUD0CH2                      0x1207
+#define HDMI_FC_DBGAUD1CH2                      0x1208
+#define HDMI_FC_DBGAUD2CH2                      0x1209
+#define HDMI_FC_DBGAUD0CH3                      0x120A
+#define HDMI_FC_DBGAUD1CH3                      0x120B
+#define HDMI_FC_DBGAUD2CH3                      0x120C
+#define HDMI_FC_DBGAUD0CH4                      0x120D
+#define HDMI_FC_DBGAUD1CH4                      0x120E
+#define HDMI_FC_DBGAUD2CH4                      0x120F
+#define HDMI_FC_DBGAUD0CH5                      0x1210
+#define HDMI_FC_DBGAUD1CH5                      0x1211
+#define HDMI_FC_DBGAUD2CH5                      0x1212
+#define HDMI_FC_DBGAUD0CH6                      0x1213
+#define HDMI_FC_DBGAUD1CH6                      0x1214
+#define HDMI_FC_DBGAUD2CH6                      0x1215
+#define HDMI_FC_DBGAUD0CH7                      0x1216
+#define HDMI_FC_DBGAUD1CH7                      0x1217
+#define HDMI_FC_DBGAUD2CH7                      0x1218
+#define HDMI_FC_DBGTMDS0                        0x1219
+#define HDMI_FC_DBGTMDS1                        0x121A
+#define HDMI_FC_DBGTMDS2                        0x121B
+
+/* HDMI Source PHY Registers */
+#define HDMI_PHY_CONF0                          0x3000
+#define HDMI_PHY_TST0                           0x3001
+#define HDMI_PHY_TST1                           0x3002
+#define HDMI_PHY_TST2                           0x3003
+#define HDMI_PHY_STAT0                          0x3004
+#define HDMI_PHY_INT0                           0x3005
+#define HDMI_PHY_MASK0                          0x3006
+#define HDMI_PHY_POL0                           0x3007
+
+/* HDMI Master PHY Registers */
+#define HDMI_PHY_I2CM_SLAVE_ADDR                0x3020
+#define HDMI_PHY_I2CM_ADDRESS_ADDR              0x3021
+#define HDMI_PHY_I2CM_DATAO_1_ADDR              0x3022
+#define HDMI_PHY_I2CM_DATAO_0_ADDR              0x3023
+#define HDMI_PHY_I2CM_DATAI_1_ADDR              0x3024
+#define HDMI_PHY_I2CM_DATAI_0_ADDR              0x3025
+#define HDMI_PHY_I2CM_OPERATION_ADDR            0x3026
+#define HDMI_PHY_I2CM_INT_ADDR                  0x3027
+#define HDMI_PHY_I2CM_CTLINT_ADDR               0x3028
+#define HDMI_PHY_I2CM_DIV_ADDR                  0x3029
+#define HDMI_PHY_I2CM_SOFTRSTZ_ADDR             0x302a
+#define HDMI_PHY_I2CM_SS_SCL_HCNT_1_ADDR        0x302b
+#define HDMI_PHY_I2CM_SS_SCL_HCNT_0_ADDR        0x302c
+#define HDMI_PHY_I2CM_SS_SCL_LCNT_1_ADDR        0x302d
+#define HDMI_PHY_I2CM_SS_SCL_LCNT_0_ADDR        0x302e
+#define HDMI_PHY_I2CM_FS_SCL_HCNT_1_ADDR        0x302f
+#define HDMI_PHY_I2CM_FS_SCL_HCNT_0_ADDR        0x3030
+#define HDMI_PHY_I2CM_FS_SCL_LCNT_1_ADDR        0x3031
+#define HDMI_PHY_I2CM_FS_SCL_LCNT_0_ADDR        0x3032
+
+/* Audio Sampler Registers */
+#define HDMI_AUD_CONF0                          0x3100
+#define HDMI_AUD_CONF1                          0x3101
+#define HDMI_AUD_INT                            0x3102
+#define HDMI_AUD_CONF2                          0x3103
+#define HDMI_AUD_N1                             0x3200
+#define HDMI_AUD_N2                             0x3201
+#define HDMI_AUD_N3                             0x3202
+#define HDMI_AUD_CTS1                           0x3203
+#define HDMI_AUD_CTS2                           0x3204
+#define HDMI_AUD_CTS3                           0x3205
+#define HDMI_AUD_INPUTCLKFS                     0x3206
+#define HDMI_AUD_SPDIFINT			0x3302
+#define HDMI_AUD_CONF0_HBR                      0x3400
+#define HDMI_AUD_HBR_STATUS                     0x3401
+#define HDMI_AUD_HBR_INT                        0x3402
+#define HDMI_AUD_HBR_POL                        0x3403
+#define HDMI_AUD_HBR_MASK                       0x3404
+
+/*
+ * Generic Parallel Audio Interface Registers
+ * Not used as GPAUD interface is not enabled in hw
+ */
+#define HDMI_GP_CONF0                           0x3500
+#define HDMI_GP_CONF1                           0x3501
+#define HDMI_GP_CONF2                           0x3502
+#define HDMI_GP_STAT                            0x3503
+#define HDMI_GP_INT                             0x3504
+#define HDMI_GP_MASK                            0x3505
+#define HDMI_GP_POL                             0x3506
+
+/* Audio DMA Registers */
+#define HDMI_AHB_DMA_CONF0                      0x3600
+#define HDMI_AHB_DMA_START                      0x3601
+#define HDMI_AHB_DMA_STOP                       0x3602
+#define HDMI_AHB_DMA_THRSLD                     0x3603
+#define HDMI_AHB_DMA_STRADDR0                   0x3604
+#define HDMI_AHB_DMA_STRADDR1                   0x3605
+#define HDMI_AHB_DMA_STRADDR2                   0x3606
+#define HDMI_AHB_DMA_STRADDR3                   0x3607
+#define HDMI_AHB_DMA_STPADDR0                   0x3608
+#define HDMI_AHB_DMA_STPADDR1                   0x3609
+#define HDMI_AHB_DMA_STPADDR2                   0x360a
+#define HDMI_AHB_DMA_STPADDR3                   0x360b
+#define HDMI_AHB_DMA_BSTADDR0                   0x360c
+#define HDMI_AHB_DMA_BSTADDR1                   0x360d
+#define HDMI_AHB_DMA_BSTADDR2                   0x360e
+#define HDMI_AHB_DMA_BSTADDR3                   0x360f
+#define HDMI_AHB_DMA_MBLENGTH0                  0x3610
+#define HDMI_AHB_DMA_MBLENGTH1                  0x3611
+#define HDMI_AHB_DMA_STAT                       0x3612
+#define HDMI_AHB_DMA_INT                        0x3613
+#define HDMI_AHB_DMA_MASK                       0x3614
+#define HDMI_AHB_DMA_POL                        0x3615
+#define HDMI_AHB_DMA_CONF1                      0x3616
+#define HDMI_AHB_DMA_BUFFSTAT                   0x3617
+#define HDMI_AHB_DMA_BUFFINT                    0x3618
+#define HDMI_AHB_DMA_BUFFMASK                   0x3619
+#define HDMI_AHB_DMA_BUFFPOL                    0x361a
+
+/* Main Controller Registers */
+#define HDMI_MC_SFRDIV                          0x4000
+#define HDMI_MC_CLKDIS                          0x4001
+#define HDMI_MC_SWRSTZ                          0x4002
+#define HDMI_MC_OPCTRL                          0x4003
+#define HDMI_MC_FLOWCTRL                        0x4004
+#define HDMI_MC_PHYRSTZ                         0x4005
+#define HDMI_MC_LOCKONCLOCK                     0x4006
+#define HDMI_MC_HEACPHY_RST                     0x4007
+
+/* Color Space  Converter Registers */
+#define HDMI_CSC_CFG                            0x4100
+#define HDMI_CSC_SCALE                          0x4101
+#define HDMI_CSC_COEF_A1_MSB                    0x4102
+#define HDMI_CSC_COEF_A1_LSB                    0x4103
+#define HDMI_CSC_COEF_A2_MSB                    0x4104
+#define HDMI_CSC_COEF_A2_LSB                    0x4105
+#define HDMI_CSC_COEF_A3_MSB                    0x4106
+#define HDMI_CSC_COEF_A3_LSB                    0x4107
+#define HDMI_CSC_COEF_A4_MSB                    0x4108
+#define HDMI_CSC_COEF_A4_LSB                    0x4109
+#define HDMI_CSC_COEF_B1_MSB                    0x410A
+#define HDMI_CSC_COEF_B1_LSB                    0x410B
+#define HDMI_CSC_COEF_B2_MSB                    0x410C
+#define HDMI_CSC_COEF_B2_LSB                    0x410D
+#define HDMI_CSC_COEF_B3_MSB                    0x410E
+#define HDMI_CSC_COEF_B3_LSB                    0x410F
+#define HDMI_CSC_COEF_B4_MSB                    0x4110
+#define HDMI_CSC_COEF_B4_LSB                    0x4111
+#define HDMI_CSC_COEF_C1_MSB                    0x4112
+#define HDMI_CSC_COEF_C1_LSB                    0x4113
+#define HDMI_CSC_COEF_C2_MSB                    0x4114
+#define HDMI_CSC_COEF_C2_LSB                    0x4115
+#define HDMI_CSC_COEF_C3_MSB                    0x4116
+#define HDMI_CSC_COEF_C3_LSB                    0x4117
+#define HDMI_CSC_COEF_C4_MSB                    0x4118
+#define HDMI_CSC_COEF_C4_LSB                    0x4119
+
+/* HDCP Encryption Engine Registers */
+#define HDMI_A_HDCPCFG0                         0x5000
+#define HDMI_A_HDCPCFG1                         0x5001
+#define HDMI_A_HDCPOBS0                         0x5002
+#define HDMI_A_HDCPOBS1                         0x5003
+#define HDMI_A_HDCPOBS2                         0x5004
+#define HDMI_A_HDCPOBS3                         0x5005
+#define HDMI_A_APIINTCLR                        0x5006
+#define HDMI_A_APIINTSTAT                       0x5007
+#define HDMI_A_APIINTMSK                        0x5008
+#define HDMI_A_VIDPOLCFG                        0x5009
+#define HDMI_A_OESSWCFG                         0x500A
+#define HDMI_A_TIMER1SETUP0                     0x500B
+#define HDMI_A_TIMER1SETUP1                     0x500C
+#define HDMI_A_TIMER2SETUP0                     0x500D
+#define HDMI_A_TIMER2SETUP1                     0x500E
+#define HDMI_A_100MSCFG                         0x500F
+#define HDMI_A_2SCFG0                           0x5010
+#define HDMI_A_2SCFG1                           0x5011
+#define HDMI_A_5SCFG0                           0x5012
+#define HDMI_A_5SCFG1                           0x5013
+#define HDMI_A_SRMVERLSB                        0x5014
+#define HDMI_A_SRMVERMSB                        0x5015
+#define HDMI_A_SRMCTRL                          0x5016
+#define HDMI_A_SFRSETUP                         0x5017
+#define HDMI_A_I2CHSETUP                        0x5018
+#define HDMI_A_INTSETUP                         0x5019
+#define HDMI_A_PRESETUP                         0x501A
+#define HDMI_A_SRM_BASE                         0x5020
+
+/* CEC Engine Registers */
+#define HDMI_CEC_CTRL                           0x7D00
+#define HDMI_CEC_STAT                           0x7D01
+#define HDMI_CEC_MASK                           0x7D02
+#define HDMI_CEC_POLARITY                       0x7D03
+#define HDMI_CEC_INT                            0x7D04
+#define HDMI_CEC_ADDR_L                         0x7D05
+#define HDMI_CEC_ADDR_H                         0x7D06
+#define HDMI_CEC_TX_CNT                         0x7D07
+#define HDMI_CEC_RX_CNT                         0x7D08
+#define HDMI_CEC_TX_DATA0                       0x7D10
+#define HDMI_CEC_TX_DATA1                       0x7D11
+#define HDMI_CEC_TX_DATA2                       0x7D12
+#define HDMI_CEC_TX_DATA3                       0x7D13
+#define HDMI_CEC_TX_DATA4                       0x7D14
+#define HDMI_CEC_TX_DATA5                       0x7D15
+#define HDMI_CEC_TX_DATA6                       0x7D16
+#define HDMI_CEC_TX_DATA7                       0x7D17
+#define HDMI_CEC_TX_DATA8                       0x7D18
+#define HDMI_CEC_TX_DATA9                       0x7D19
+#define HDMI_CEC_TX_DATA10                      0x7D1a
+#define HDMI_CEC_TX_DATA11                      0x7D1b
+#define HDMI_CEC_TX_DATA12                      0x7D1c
+#define HDMI_CEC_TX_DATA13                      0x7D1d
+#define HDMI_CEC_TX_DATA14                      0x7D1e
+#define HDMI_CEC_TX_DATA15                      0x7D1f
+#define HDMI_CEC_RX_DATA0                       0x7D20
+#define HDMI_CEC_RX_DATA1                       0x7D21
+#define HDMI_CEC_RX_DATA2                       0x7D22
+#define HDMI_CEC_RX_DATA3                       0x7D23
+#define HDMI_CEC_RX_DATA4                       0x7D24
+#define HDMI_CEC_RX_DATA5                       0x7D25
+#define HDMI_CEC_RX_DATA6                       0x7D26
+#define HDMI_CEC_RX_DATA7                       0x7D27
+#define HDMI_CEC_RX_DATA8                       0x7D28
+#define HDMI_CEC_RX_DATA9                       0x7D29
+#define HDMI_CEC_RX_DATA10                      0x7D2a
+#define HDMI_CEC_RX_DATA11                      0x7D2b
+#define HDMI_CEC_RX_DATA12                      0x7D2c
+#define HDMI_CEC_RX_DATA13                      0x7D2d
+#define HDMI_CEC_RX_DATA14                      0x7D2e
+#define HDMI_CEC_RX_DATA15                      0x7D2f
+#define HDMI_CEC_LOCK                           0x7D30
+#define HDMI_CEC_WKUPCTRL                       0x7D31
+
+/* I2C Master Registers (E-DDC) */
+#define HDMI_I2CM_SLAVE                         0x7E00
+#define HDMI_I2CMESS                            0x7E01
+#define HDMI_I2CM_DATAO                         0x7E02
+#define HDMI_I2CM_DATAI                         0x7E03
+#define HDMI_I2CM_OPERATION                     0x7E04
+#define HDMI_I2CM_INT                           0x7E05
+#define HDMI_I2CM_CTLINT                        0x7E06
+#define HDMI_I2CM_DIV                           0x7E07
+#define HDMI_I2CM_SEGADDR                       0x7E08
+#define HDMI_I2CM_SOFTRSTZ                      0x7E09
+#define HDMI_I2CM_SEGPTR                        0x7E0A
+#define HDMI_I2CM_SS_SCL_HCNT_1_ADDR            0x7E0B
+#define HDMI_I2CM_SS_SCL_HCNT_0_ADDR            0x7E0C
+#define HDMI_I2CM_SS_SCL_LCNT_1_ADDR            0x7E0D
+#define HDMI_I2CM_SS_SCL_LCNT_0_ADDR            0x7E0E
+#define HDMI_I2CM_FS_SCL_HCNT_1_ADDR            0x7E0F
+#define HDMI_I2CM_FS_SCL_HCNT_0_ADDR            0x7E10
+#define HDMI_I2CM_FS_SCL_LCNT_1_ADDR            0x7E11
+#define HDMI_I2CM_FS_SCL_LCNT_0_ADDR            0x7E12
+
+enum {
+/* IH_FC_INT2 field values */
+	HDMI_IH_FC_INT2_OVERFLOW_MASK = 0x03,
+	HDMI_IH_FC_INT2_LOW_PRIORITY_OVERFLOW = 0x02,
+	HDMI_IH_FC_INT2_HIGH_PRIORITY_OVERFLOW = 0x01,
+
+/* IH_FC_STAT2 field values */
+	HDMI_IH_FC_STAT2_OVERFLOW_MASK = 0x03,
+	HDMI_IH_FC_STAT2_LOW_PRIORITY_OVERFLOW = 0x02,
+	HDMI_IH_FC_STAT2_HIGH_PRIORITY_OVERFLOW = 0x01,
+
+/* IH_PHY_STAT0 field values */
+	HDMI_IH_PHY_STAT0_RX_SENSE3 = 0x20,
+	HDMI_IH_PHY_STAT0_RX_SENSE2 = 0x10,
+	HDMI_IH_PHY_STAT0_RX_SENSE1 = 0x8,
+	HDMI_IH_PHY_STAT0_RX_SENSE0 = 0x4,
+	HDMI_IH_PHY_STAT0_TX_PHY_LOCK = 0x2,
+	HDMI_IH_PHY_STAT0_HPD = 0x1,
+
+/* IH_MUTE_I2CMPHY_STAT0 field values */
+	HDMI_IH_MUTE_I2CMPHY_STAT0_I2CMPHYDONE = 0x2,
+	HDMI_IH_MUTE_I2CMPHY_STAT0_I2CMPHYERROR = 0x1,
+
+/* IH_AHBDMAAUD_STAT0 field values */
+	HDMI_IH_AHBDMAAUD_STAT0_ERROR = 0x20,
+	HDMI_IH_AHBDMAAUD_STAT0_LOST = 0x10,
+	HDMI_IH_AHBDMAAUD_STAT0_RETRY = 0x08,
+	HDMI_IH_AHBDMAAUD_STAT0_DONE = 0x04,
+	HDMI_IH_AHBDMAAUD_STAT0_BUFFFULL = 0x02,
+	HDMI_IH_AHBDMAAUD_STAT0_BUFFEMPTY = 0x01,
+
+/* IH_MUTE_FC_STAT2 field values */
+	HDMI_IH_MUTE_FC_STAT2_OVERFLOW_MASK = 0x03,
+	HDMI_IH_MUTE_FC_STAT2_LOW_PRIORITY_OVERFLOW = 0x02,
+	HDMI_IH_MUTE_FC_STAT2_HIGH_PRIORITY_OVERFLOW = 0x01,
+
+/* IH_MUTE_AHBDMAAUD_STAT0 field values */
+	HDMI_IH_MUTE_AHBDMAAUD_STAT0_ERROR = 0x20,
+	HDMI_IH_MUTE_AHBDMAAUD_STAT0_LOST = 0x10,
+	HDMI_IH_MUTE_AHBDMAAUD_STAT0_RETRY = 0x08,
+	HDMI_IH_MUTE_AHBDMAAUD_STAT0_DONE = 0x04,
+	HDMI_IH_MUTE_AHBDMAAUD_STAT0_BUFFFULL = 0x02,
+	HDMI_IH_MUTE_AHBDMAAUD_STAT0_BUFFEMPTY = 0x01,
+
+/* IH_MUTE field values */
+	HDMI_IH_MUTE_MUTE_WAKEUP_INTERRUPT = 0x2,
+	HDMI_IH_MUTE_MUTE_ALL_INTERRUPT = 0x1,
+
+/* TX_INVID0 field values */
+	HDMI_TX_INVID0_INTERNAL_DE_GENERATOR_MASK = 0x80,
+	HDMI_TX_INVID0_INTERNAL_DE_GENERATOR_ENABLE = 0x80,
+	HDMI_TX_INVID0_INTERNAL_DE_GENERATOR_DISABLE = 0x00,
+	HDMI_TX_INVID0_VIDEO_MAPPING_MASK = 0x1F,
+	HDMI_TX_INVID0_VIDEO_MAPPING_OFFSET = 0,
+
+/* TX_INSTUFFING field values */
+	HDMI_TX_INSTUFFING_BDBDATA_STUFFING_MASK = 0x4,
+	HDMI_TX_INSTUFFING_BDBDATA_STUFFING_ENABLE = 0x4,
+	HDMI_TX_INSTUFFING_BDBDATA_STUFFING_DISABLE = 0x0,
+	HDMI_TX_INSTUFFING_RCRDATA_STUFFING_MASK = 0x2,
+	HDMI_TX_INSTUFFING_RCRDATA_STUFFING_ENABLE = 0x2,
+	HDMI_TX_INSTUFFING_RCRDATA_STUFFING_DISABLE = 0x0,
+	HDMI_TX_INSTUFFING_GYDATA_STUFFING_MASK = 0x1,
+	HDMI_TX_INSTUFFING_GYDATA_STUFFING_ENABLE = 0x1,
+	HDMI_TX_INSTUFFING_GYDATA_STUFFING_DISABLE = 0x0,
+
+/* VP_PR_CD field values */
+	HDMI_VP_PR_CD_COLOR_DEPTH_MASK = 0xF0,
+	HDMI_VP_PR_CD_COLOR_DEPTH_OFFSET = 4,
+	HDMI_VP_PR_CD_DESIRED_PR_FACTOR_MASK = 0x0F,
+	HDMI_VP_PR_CD_DESIRED_PR_FACTOR_OFFSET = 0,
+
+/* VP_STUFF field values */
+	HDMI_VP_STUFF_IDEFAULT_PHASE_MASK = 0x20,
+	HDMI_VP_STUFF_IDEFAULT_PHASE_OFFSET = 5,
+	HDMI_VP_STUFF_IFIX_PP_TO_LAST_MASK = 0x10,
+	HDMI_VP_STUFF_IFIX_PP_TO_LAST_OFFSET = 4,
+	HDMI_VP_STUFF_ICX_GOTO_P0_ST_MASK = 0x8,
+	HDMI_VP_STUFF_ICX_GOTO_P0_ST_OFFSET = 3,
+	HDMI_VP_STUFF_YCC422_STUFFING_MASK = 0x4,
+	HDMI_VP_STUFF_YCC422_STUFFING_STUFFING_MODE = 0x4,
+	HDMI_VP_STUFF_YCC422_STUFFING_DIRECT_MODE = 0x0,
+	HDMI_VP_STUFF_PP_STUFFING_MASK = 0x2,
+	HDMI_VP_STUFF_PP_STUFFING_STUFFING_MODE = 0x2,
+	HDMI_VP_STUFF_PP_STUFFING_DIRECT_MODE = 0x0,
+	HDMI_VP_STUFF_PR_STUFFING_MASK = 0x1,
+	HDMI_VP_STUFF_PR_STUFFING_STUFFING_MODE = 0x1,
+	HDMI_VP_STUFF_PR_STUFFING_DIRECT_MODE = 0x0,
+
+/* VP_CONF field values */
+	HDMI_VP_CONF_BYPASS_EN_MASK = 0x40,
+	HDMI_VP_CONF_BYPASS_EN_ENABLE = 0x40,
+	HDMI_VP_CONF_BYPASS_EN_DISABLE = 0x00,
+	HDMI_VP_CONF_PP_EN_ENMASK = 0x20,
+	HDMI_VP_CONF_PP_EN_ENABLE = 0x20,
+	HDMI_VP_CONF_PP_EN_DISABLE = 0x00,
+	HDMI_VP_CONF_PR_EN_MASK = 0x10,
+	HDMI_VP_CONF_PR_EN_ENABLE = 0x10,
+	HDMI_VP_CONF_PR_EN_DISABLE = 0x00,
+	HDMI_VP_CONF_YCC422_EN_MASK = 0x8,
+	HDMI_VP_CONF_YCC422_EN_ENABLE = 0x8,
+	HDMI_VP_CONF_YCC422_EN_DISABLE = 0x0,
+	HDMI_VP_CONF_BYPASS_SELECT_MASK = 0x4,
+	HDMI_VP_CONF_BYPASS_SELECT_VID_PACKETIZER = 0x4,
+	HDMI_VP_CONF_BYPASS_SELECT_PIX_REPEATER = 0x0,
+	HDMI_VP_CONF_OUTPUT_SELECTOR_MASK = 0x3,
+	HDMI_VP_CONF_OUTPUT_SELECTOR_BYPASS = 0x3,
+	HDMI_VP_CONF_OUTPUT_SELECTOR_YCC422 = 0x1,
+	HDMI_VP_CONF_OUTPUT_SELECTOR_PP = 0x0,
+
+/* VP_REMAP field values */
+	HDMI_VP_REMAP_MASK = 0x3,
+	HDMI_VP_REMAP_YCC422_24bit = 0x2,
+	HDMI_VP_REMAP_YCC422_20bit = 0x1,
+	HDMI_VP_REMAP_YCC422_16bit = 0x0,
+
+/* FC_INVIDCONF field values */
+	HDMI_FC_INVIDCONF_HDCP_KEEPOUT_MASK = 0x80,
+	HDMI_FC_INVIDCONF_HDCP_KEEPOUT_ACTIVE = 0x80,
+	HDMI_FC_INVIDCONF_HDCP_KEEPOUT_INACTIVE = 0x00,
+	HDMI_FC_INVIDCONF_VSYNC_IN_POLARITY_MASK = 0x40,
+	HDMI_FC_INVIDCONF_VSYNC_IN_POLARITY_ACTIVE_HIGH = 0x40,
+	HDMI_FC_INVIDCONF_VSYNC_IN_POLARITY_ACTIVE_LOW = 0x00,
+	HDMI_FC_INVIDCONF_HSYNC_IN_POLARITY_MASK = 0x20,
+	HDMI_FC_INVIDCONF_HSYNC_IN_POLARITY_ACTIVE_HIGH = 0x20,
+	HDMI_FC_INVIDCONF_HSYNC_IN_POLARITY_ACTIVE_LOW = 0x00,
+	HDMI_FC_INVIDCONF_DE_IN_POLARITY_MASK = 0x10,
+	HDMI_FC_INVIDCONF_DE_IN_POLARITY_ACTIVE_HIGH = 0x10,
+	HDMI_FC_INVIDCONF_DE_IN_POLARITY_ACTIVE_LOW = 0x00,
+	HDMI_FC_INVIDCONF_DVI_MODEZ_MASK = 0x8,
+	HDMI_FC_INVIDCONF_DVI_MODEZ_HDMI_MODE = 0x8,
+	HDMI_FC_INVIDCONF_DVI_MODEZ_DVI_MODE = 0x0,
+	HDMI_FC_INVIDCONF_R_V_BLANK_IN_OSC_MASK = 0x2,
+	HDMI_FC_INVIDCONF_R_V_BLANK_IN_OSC_ACTIVE_HIGH = 0x2,
+	HDMI_FC_INVIDCONF_R_V_BLANK_IN_OSC_ACTIVE_LOW = 0x0,
+	HDMI_FC_INVIDCONF_IN_I_P_MASK = 0x1,
+	HDMI_FC_INVIDCONF_IN_I_P_INTERLACED = 0x1,
+	HDMI_FC_INVIDCONF_IN_I_P_PROGRESSIVE = 0x0,
+
+/* FC_AUDICONF0 field values */
+	HDMI_FC_AUDICONF0_CC_OFFSET = 4,
+	HDMI_FC_AUDICONF0_CC_MASK = 0x70,
+	HDMI_FC_AUDICONF0_CT_OFFSET = 0,
+	HDMI_FC_AUDICONF0_CT_MASK = 0xF,
+
+/* FC_AUDICONF1 field values */
+	HDMI_FC_AUDICONF1_SS_OFFSET = 3,
+	HDMI_FC_AUDICONF1_SS_MASK = 0x18,
+	HDMI_FC_AUDICONF1_SF_OFFSET = 0,
+	HDMI_FC_AUDICONF1_SF_MASK = 0x7,
+
+/* FC_AUDICONF3 field values */
+	HDMI_FC_AUDICONF3_LFEPBL_OFFSET = 5,
+	HDMI_FC_AUDICONF3_LFEPBL_MASK = 0x60,
+	HDMI_FC_AUDICONF3_DM_INH_OFFSET = 4,
+	HDMI_FC_AUDICONF3_DM_INH_MASK = 0x10,
+	HDMI_FC_AUDICONF3_LSV_OFFSET = 0,
+	HDMI_FC_AUDICONF3_LSV_MASK = 0xF,
+
+/* FC_AUDSCHNLS0 field values */
+	HDMI_FC_AUDSCHNLS0_CGMSA_OFFSET = 4,
+	HDMI_FC_AUDSCHNLS0_CGMSA_MASK = 0x30,
+	HDMI_FC_AUDSCHNLS0_COPYRIGHT_OFFSET = 0,
+	HDMI_FC_AUDSCHNLS0_COPYRIGHT_MASK = 0x01,
+
+/* FC_AUDSCHNLS3-6 field values */
+	HDMI_FC_AUDSCHNLS3_OIEC_CH0_OFFSET = 0,
+	HDMI_FC_AUDSCHNLS3_OIEC_CH0_MASK = 0x0f,
+	HDMI_FC_AUDSCHNLS3_OIEC_CH1_OFFSET = 4,
+	HDMI_FC_AUDSCHNLS3_OIEC_CH1_MASK = 0xf0,
+	HDMI_FC_AUDSCHNLS4_OIEC_CH2_OFFSET = 0,
+	HDMI_FC_AUDSCHNLS4_OIEC_CH2_MASK = 0x0f,
+	HDMI_FC_AUDSCHNLS4_OIEC_CH3_OFFSET = 4,
+	HDMI_FC_AUDSCHNLS4_OIEC_CH3_MASK = 0xf0,
+
+	HDMI_FC_AUDSCHNLS5_OIEC_CH0_OFFSET = 0,
+	HDMI_FC_AUDSCHNLS5_OIEC_CH0_MASK = 0x0f,
+	HDMI_FC_AUDSCHNLS5_OIEC_CH1_OFFSET = 4,
+	HDMI_FC_AUDSCHNLS5_OIEC_CH1_MASK = 0xf0,
+	HDMI_FC_AUDSCHNLS6_OIEC_CH2_OFFSET = 0,
+	HDMI_FC_AUDSCHNLS6_OIEC_CH2_MASK = 0x0f,
+	HDMI_FC_AUDSCHNLS6_OIEC_CH3_OFFSET = 4,
+	HDMI_FC_AUDSCHNLS6_OIEC_CH3_MASK = 0xf0,
+
+/* HDMI_FC_AUDSCHNLS7 field values */
+	HDMI_FC_AUDSCHNLS7_ACCURACY_OFFSET = 4,
+	HDMI_FC_AUDSCHNLS7_ACCURACY_MASK = 0x30,
+
+/* HDMI_FC_AUDSCHNLS8 field values */
+	HDMI_FC_AUDSCHNLS8_ORIGSAMPFREQ_MASK = 0xf0,
+	HDMI_FC_AUDSCHNLS8_ORIGSAMPFREQ_OFFSET = 4,
+	HDMI_FC_AUDSCHNLS8_WORDLEGNTH_MASK = 0x0f,
+	HDMI_FC_AUDSCHNLS8_WORDLEGNTH_OFFSET = 0,
+
+/* FC_AUDSCONF field values */
+	HDMI_FC_AUDSCONF_AUD_PACKET_SAMPFIT_MASK = 0xF0,
+	HDMI_FC_AUDSCONF_AUD_PACKET_SAMPFIT_OFFSET = 4,
+	HDMI_FC_AUDSCONF_AUD_PACKET_LAYOUT_MASK = 0x1,
+	HDMI_FC_AUDSCONF_AUD_PACKET_LAYOUT_OFFSET = 0,
+	HDMI_FC_AUDSCONF_AUD_PACKET_LAYOUT_LAYOUT1 = 0x1,
+	HDMI_FC_AUDSCONF_AUD_PACKET_LAYOUT_LAYOUT0 = 0x0,
+
+/* FC_STAT2 field values */
+	HDMI_FC_STAT2_OVERFLOW_MASK = 0x03,
+	HDMI_FC_STAT2_LOW_PRIORITY_OVERFLOW = 0x02,
+	HDMI_FC_STAT2_HIGH_PRIORITY_OVERFLOW = 0x01,
+
+/* FC_INT2 field values */
+	HDMI_FC_INT2_OVERFLOW_MASK = 0x03,
+	HDMI_FC_INT2_LOW_PRIORITY_OVERFLOW = 0x02,
+	HDMI_FC_INT2_HIGH_PRIORITY_OVERFLOW = 0x01,
+
+/* FC_MASK2 field values */
+	HDMI_FC_MASK2_OVERFLOW_MASK = 0x03,
+	HDMI_FC_MASK2_LOW_PRIORITY_OVERFLOW = 0x02,
+	HDMI_FC_MASK2_HIGH_PRIORITY_OVERFLOW = 0x01,
+
+/* FC_PRCONF field values */
+	HDMI_FC_PRCONF_INCOMING_PR_FACTOR_MASK = 0xF0,
+	HDMI_FC_PRCONF_INCOMING_PR_FACTOR_OFFSET = 4,
+	HDMI_FC_PRCONF_OUTPUT_PR_FACTOR_MASK = 0x0F,
+	HDMI_FC_PRCONF_OUTPUT_PR_FACTOR_OFFSET = 0,
+
+/* FC_AVICONF0-FC_AVICONF3 field values */
+	HDMI_FC_AVICONF0_PIX_FMT_MASK = 0x03,
+	HDMI_FC_AVICONF0_PIX_FMT_RGB = 0x00,
+	HDMI_FC_AVICONF0_PIX_FMT_YCBCR422 = 0x01,
+	HDMI_FC_AVICONF0_PIX_FMT_YCBCR444 = 0x02,
+	HDMI_FC_AVICONF0_ACTIVE_FMT_MASK = 0x40,
+	HDMI_FC_AVICONF0_ACTIVE_FMT_INFO_PRESENT = 0x40,
+	HDMI_FC_AVICONF0_ACTIVE_FMT_NO_INFO = 0x00,
+	HDMI_FC_AVICONF0_BAR_DATA_MASK = 0x0C,
+	HDMI_FC_AVICONF0_BAR_DATA_NO_DATA = 0x00,
+	HDMI_FC_AVICONF0_BAR_DATA_VERT_BAR = 0x04,
+	HDMI_FC_AVICONF0_BAR_DATA_HORIZ_BAR = 0x08,
+	HDMI_FC_AVICONF0_BAR_DATA_VERT_HORIZ_BAR = 0x0C,
+	HDMI_FC_AVICONF0_SCAN_INFO_MASK = 0x30,
+	HDMI_FC_AVICONF0_SCAN_INFO_OVERSCAN = 0x10,
+	HDMI_FC_AVICONF0_SCAN_INFO_UNDERSCAN = 0x20,
+	HDMI_FC_AVICONF0_SCAN_INFO_NODATA = 0x00,
+
+	HDMI_FC_AVICONF1_ACTIVE_ASPECT_RATIO_MASK = 0x0F,
+	HDMI_FC_AVICONF1_ACTIVE_ASPECT_RATIO_USE_CODED = 0x08,
+	HDMI_FC_AVICONF1_ACTIVE_ASPECT_RATIO_4_3 = 0x09,
+	HDMI_FC_AVICONF1_ACTIVE_ASPECT_RATIO_16_9 = 0x0A,
+	HDMI_FC_AVICONF1_ACTIVE_ASPECT_RATIO_14_9 = 0x0B,
+	HDMI_FC_AVICONF1_CODED_ASPECT_RATIO_MASK = 0x30,
+	HDMI_FC_AVICONF1_CODED_ASPECT_RATIO_NO_DATA = 0x00,
+	HDMI_FC_AVICONF1_CODED_ASPECT_RATIO_4_3 = 0x10,
+	HDMI_FC_AVICONF1_CODED_ASPECT_RATIO_16_9 = 0x20,
+	HDMI_FC_AVICONF1_COLORIMETRY_MASK = 0xC0,
+	HDMI_FC_AVICONF1_COLORIMETRY_NO_DATA = 0x00,
+	HDMI_FC_AVICONF1_COLORIMETRY_SMPTE = 0x40,
+	HDMI_FC_AVICONF1_COLORIMETRY_ITUR = 0x80,
+	HDMI_FC_AVICONF1_COLORIMETRY_EXTENDED_INFO = 0xC0,
+
+	HDMI_FC_AVICONF2_SCALING_MASK = 0x03,
+	HDMI_FC_AVICONF2_SCALING_NONE = 0x00,
+	HDMI_FC_AVICONF2_SCALING_HORIZ = 0x01,
+	HDMI_FC_AVICONF2_SCALING_VERT = 0x02,
+	HDMI_FC_AVICONF2_SCALING_HORIZ_VERT = 0x03,
+	HDMI_FC_AVICONF2_RGB_QUANT_MASK = 0x0C,
+	HDMI_FC_AVICONF2_RGB_QUANT_DEFAULT = 0x00,
+	HDMI_FC_AVICONF2_RGB_QUANT_LIMITED_RANGE = 0x04,
+	HDMI_FC_AVICONF2_RGB_QUANT_FULL_RANGE = 0x08,
+	HDMI_FC_AVICONF2_EXT_COLORIMETRY_MASK = 0x70,
+	HDMI_FC_AVICONF2_EXT_COLORIMETRY_XVYCC601 = 0x00,
+	HDMI_FC_AVICONF2_EXT_COLORIMETRY_XVYCC709 = 0x10,
+	HDMI_FC_AVICONF2_EXT_COLORIMETRY_SYCC601 = 0x20,
+	HDMI_FC_AVICONF2_EXT_COLORIMETRY_ADOBE_YCC601 = 0x30,
+	HDMI_FC_AVICONF2_EXT_COLORIMETRY_ADOBE_RGB = 0x40,
+	HDMI_FC_AVICONF2_IT_CONTENT_MASK = 0x80,
+	HDMI_FC_AVICONF2_IT_CONTENT_NO_DATA = 0x00,
+	HDMI_FC_AVICONF2_IT_CONTENT_VALID = 0x80,
+
+	HDMI_FC_AVICONF3_IT_CONTENT_TYPE_MASK = 0x03,
+	HDMI_FC_AVICONF3_IT_CONTENT_TYPE_GRAPHICS = 0x00,
+	HDMI_FC_AVICONF3_IT_CONTENT_TYPE_PHOTO = 0x01,
+	HDMI_FC_AVICONF3_IT_CONTENT_TYPE_CINEMA = 0x02,
+	HDMI_FC_AVICONF3_IT_CONTENT_TYPE_GAME = 0x03,
+	HDMI_FC_AVICONF3_QUANT_RANGE_MASK = 0x0C,
+	HDMI_FC_AVICONF3_QUANT_RANGE_LIMITED = 0x00,
+	HDMI_FC_AVICONF3_QUANT_RANGE_FULL = 0x04,
+
+/* FC_DBGFORCE field values */
+	HDMI_FC_DBGFORCE_FORCEAUDIO = 0x10,
+	HDMI_FC_DBGFORCE_FORCEVIDEO = 0x1,
+
+/* PHY_CONF0 field values */
+	HDMI_PHY_CONF0_PDZ_MASK = 0x80,
+	HDMI_PHY_CONF0_PDZ_OFFSET = 7,
+	HDMI_PHY_CONF0_ENTMDS_MASK = 0x40,
+	HDMI_PHY_CONF0_ENTMDS_OFFSET = 6,
+	HDMI_PHY_CONF0_SPARECTRL = 0x20,
+	HDMI_PHY_CONF0_GEN2_PDDQ_MASK = 0x10,
+	HDMI_PHY_CONF0_GEN2_PDDQ_OFFSET = 4,
+	HDMI_PHY_CONF0_GEN2_TXPWRON_MASK = 0x8,
+	HDMI_PHY_CONF0_GEN2_TXPWRON_OFFSET = 3,
+	HDMI_PHY_CONF0_GEN2_ENHPDRXSENSE_MASK = 0x4,
+	HDMI_PHY_CONF0_GEN2_ENHPDRXSENSE_OFFSET = 2,
+	HDMI_PHY_CONF0_SELDATAENPOL_MASK = 0x2,
+	HDMI_PHY_CONF0_SELDATAENPOL_OFFSET = 1,
+	HDMI_PHY_CONF0_SELDIPIF_MASK = 0x1,
+	HDMI_PHY_CONF0_SELDIPIF_OFFSET = 0,
+
+/* PHY_TST0 field values */
+	HDMI_PHY_TST0_TSTCLR_MASK = 0x20,
+	HDMI_PHY_TST0_TSTCLR_OFFSET = 5,
+	HDMI_PHY_TST0_TSTEN_MASK = 0x10,
+	HDMI_PHY_TST0_TSTEN_OFFSET = 4,
+	HDMI_PHY_TST0_TSTCLK_MASK = 0x1,
+	HDMI_PHY_TST0_TSTCLK_OFFSET = 0,
+
+/* PHY_STAT0 field values */
+	HDMI_PHY_RX_SENSE3 = 0x80,
+	HDMI_PHY_RX_SENSE2 = 0x40,
+	HDMI_PHY_RX_SENSE1 = 0x20,
+	HDMI_PHY_RX_SENSE0 = 0x10,
+	HDMI_PHY_HPD = 0x02,
+	HDMI_PHY_TX_PHY_LOCK = 0x01,
+
+/* PHY_I2CM_SLAVE_ADDR field values */
+	HDMI_PHY_I2CM_SLAVE_ADDR_PHY_GEN2 = 0x69,
+	HDMI_PHY_I2CM_SLAVE_ADDR_HEAC_PHY = 0x49,
+
+/* PHY_I2CM_OPERATION_ADDR field values */
+	HDMI_PHY_I2CM_OPERATION_ADDR_WRITE = 0x10,
+	HDMI_PHY_I2CM_OPERATION_ADDR_READ = 0x1,
+
+/* HDMI_PHY_I2CM_INT_ADDR */
+	HDMI_PHY_I2CM_INT_ADDR_DONE_POL = 0x08,
+	HDMI_PHY_I2CM_INT_ADDR_DONE_MASK = 0x04,
+
+/* HDMI_PHY_I2CM_CTLINT_ADDR */
+	HDMI_PHY_I2CM_CTLINT_ADDR_NAC_POL = 0x80,
+	HDMI_PHY_I2CM_CTLINT_ADDR_NAC_MASK = 0x40,
+	HDMI_PHY_I2CM_CTLINT_ADDR_ARBITRATION_POL = 0x08,
+	HDMI_PHY_I2CM_CTLINT_ADDR_ARBITRATION_MASK = 0x04,
+
+/* AUD_CTS3 field values */
+	HDMI_AUD_CTS3_N_SHIFT_OFFSET = 5,
+	HDMI_AUD_CTS3_N_SHIFT_MASK = 0xe0,
+	HDMI_AUD_CTS3_N_SHIFT_1 = 0,
+	HDMI_AUD_CTS3_N_SHIFT_16 = 0x20,
+	HDMI_AUD_CTS3_N_SHIFT_32 = 0x40,
+	HDMI_AUD_CTS3_N_SHIFT_64 = 0x60,
+	HDMI_AUD_CTS3_N_SHIFT_128 = 0x80,
+	HDMI_AUD_CTS3_N_SHIFT_256 = 0xa0,
+	/* note that the CTS3 MANUAL bit has been removed
+	   from our part. Can't set it, will read as 0. */
+	HDMI_AUD_CTS3_CTS_MANUAL = 0x10,
+	HDMI_AUD_CTS3_AUDCTS19_16_MASK = 0x0f,
+
+/* AHB_DMA_CONF0 field values */
+	HDMI_AHB_DMA_CONF0_SW_FIFO_RST_OFFSET = 7,
+	HDMI_AHB_DMA_CONF0_SW_FIFO_RST_MASK = 0x80,
+	HDMI_AHB_DMA_CONF0_HBR = 0x10,
+	HDMI_AHB_DMA_CONF0_EN_HLOCK_OFFSET = 3,
+	HDMI_AHB_DMA_CONF0_EN_HLOCK_MASK = 0x08,
+	HDMI_AHB_DMA_CONF0_INCR_TYPE_OFFSET = 1,
+	HDMI_AHB_DMA_CONF0_INCR_TYPE_MASK = 0x06,
+	HDMI_AHB_DMA_CONF0_INCR4 = 0x0,
+	HDMI_AHB_DMA_CONF0_INCR8 = 0x2,
+	HDMI_AHB_DMA_CONF0_INCR16 = 0x4,
+	HDMI_AHB_DMA_CONF0_BURST_MODE = 0x1,
+
+/* HDMI_AHB_DMA_START field values */
+	HDMI_AHB_DMA_START_START_OFFSET = 0,
+	HDMI_AHB_DMA_START_START_MASK = 0x01,
+
+/* HDMI_AHB_DMA_STOP field values */
+	HDMI_AHB_DMA_STOP_STOP_OFFSET = 0,
+	HDMI_AHB_DMA_STOP_STOP_MASK = 0x01,
+
+/* AHB_DMA_STAT, AHB_DMA_INT, AHB_DMA_MASK, AHB_DMA_POL field values */
+	HDMI_AHB_DMA_DONE = 0x80,
+	HDMI_AHB_DMA_RETRY_SPLIT = 0x40,
+	HDMI_AHB_DMA_LOSTOWNERSHIP = 0x20,
+	HDMI_AHB_DMA_ERROR = 0x10,
+	HDMI_AHB_DMA_FIFO_THREMPTY = 0x04,
+	HDMI_AHB_DMA_FIFO_FULL = 0x02,
+	HDMI_AHB_DMA_FIFO_EMPTY = 0x01,
+
+/* AHB_DMA_BUFFSTAT, AHB_DMA_BUFFINT,AHB_DMA_BUFFMASK,AHB_DMA_BUFFPOL values */
+	HDMI_AHB_DMA_BUFFSTAT_FULL = 0x02,
+	HDMI_AHB_DMA_BUFFSTAT_EMPTY = 0x01,
+
+/* MC_CLKDIS field values */
+	HDMI_MC_CLKDIS_HDCPCLK_DISABLE = 0x40,
+	HDMI_MC_CLKDIS_CECCLK_DISABLE = 0x20,
+	HDMI_MC_CLKDIS_CSCCLK_DISABLE = 0x10,
+	HDMI_MC_CLKDIS_AUDCLK_DISABLE = 0x8,
+	HDMI_MC_CLKDIS_PREPCLK_DISABLE = 0x4,
+	HDMI_MC_CLKDIS_TMDSCLK_DISABLE = 0x2,
+	HDMI_MC_CLKDIS_PIXELCLK_DISABLE = 0x1,
+
+/* MC_SWRSTZ field values */
+	HDMI_MC_SWRSTZ_TMDSSWRST_REQ = 0x02,
+
+/* MC_FLOWCTRL field values */
+	HDMI_MC_FLOWCTRL_FEED_THROUGH_OFF_MASK = 0x1,
+	HDMI_MC_FLOWCTRL_FEED_THROUGH_OFF_CSC_IN_PATH = 0x1,
+	HDMI_MC_FLOWCTRL_FEED_THROUGH_OFF_CSC_BYPASS = 0x0,
+
+/* MC_PHYRSTZ field values */
+	HDMI_MC_PHYRSTZ_ASSERT = 0x0,
+	HDMI_MC_PHYRSTZ_DEASSERT = 0x1,
+
+/* MC_HEACPHY_RST field values */
+	HDMI_MC_HEACPHY_RST_ASSERT = 0x1,
+	HDMI_MC_HEACPHY_RST_DEASSERT = 0x0,
+
+/* CSC_CFG field values */
+	HDMI_CSC_CFG_INTMODE_MASK = 0x30,
+	HDMI_CSC_CFG_INTMODE_OFFSET = 4,
+	HDMI_CSC_CFG_INTMODE_DISABLE = 0x00,
+	HDMI_CSC_CFG_INTMODE_CHROMA_INT_FORMULA1 = 0x10,
+	HDMI_CSC_CFG_INTMODE_CHROMA_INT_FORMULA2 = 0x20,
+	HDMI_CSC_CFG_DECMODE_MASK = 0x3,
+	HDMI_CSC_CFG_DECMODE_OFFSET = 0,
+	HDMI_CSC_CFG_DECMODE_DISABLE = 0x0,
+	HDMI_CSC_CFG_DECMODE_CHROMA_INT_FORMULA1 = 0x1,
+	HDMI_CSC_CFG_DECMODE_CHROMA_INT_FORMULA2 = 0x2,
+	HDMI_CSC_CFG_DECMODE_CHROMA_INT_FORMULA3 = 0x3,
+
+/* CSC_SCALE field values */
+	HDMI_CSC_SCALE_CSC_COLORDE_PTH_MASK = 0xF0,
+	HDMI_CSC_SCALE_CSC_COLORDE_PTH_24BPP = 0x00,
+	HDMI_CSC_SCALE_CSC_COLORDE_PTH_30BPP = 0x50,
+	HDMI_CSC_SCALE_CSC_COLORDE_PTH_36BPP = 0x60,
+	HDMI_CSC_SCALE_CSC_COLORDE_PTH_48BPP = 0x70,
+	HDMI_CSC_SCALE_CSCSCALE_MASK = 0x03,
+
+/* A_HDCPCFG0 field values */
+	HDMI_A_HDCPCFG0_ELVENA_MASK = 0x80,
+	HDMI_A_HDCPCFG0_ELVENA_ENABLE = 0x80,
+	HDMI_A_HDCPCFG0_ELVENA_DISABLE = 0x00,
+	HDMI_A_HDCPCFG0_I2CFASTMODE_MASK = 0x40,
+	HDMI_A_HDCPCFG0_I2CFASTMODE_ENABLE = 0x40,
+	HDMI_A_HDCPCFG0_I2CFASTMODE_DISABLE = 0x00,
+	HDMI_A_HDCPCFG0_BYPENCRYPTION_MASK = 0x20,
+	HDMI_A_HDCPCFG0_BYPENCRYPTION_ENABLE = 0x20,
+	HDMI_A_HDCPCFG0_BYPENCRYPTION_DISABLE = 0x00,
+	HDMI_A_HDCPCFG0_SYNCRICHECK_MASK = 0x10,
+	HDMI_A_HDCPCFG0_SYNCRICHECK_ENABLE = 0x10,
+	HDMI_A_HDCPCFG0_SYNCRICHECK_DISABLE = 0x00,
+	HDMI_A_HDCPCFG0_AVMUTE_MASK = 0x8,
+	HDMI_A_HDCPCFG0_AVMUTE_ENABLE = 0x8,
+	HDMI_A_HDCPCFG0_AVMUTE_DISABLE = 0x0,
+	HDMI_A_HDCPCFG0_RXDETECT_MASK = 0x4,
+	HDMI_A_HDCPCFG0_RXDETECT_ENABLE = 0x4,
+	HDMI_A_HDCPCFG0_RXDETECT_DISABLE = 0x0,
+	HDMI_A_HDCPCFG0_EN11FEATURE_MASK = 0x2,
+	HDMI_A_HDCPCFG0_EN11FEATURE_ENABLE = 0x2,
+	HDMI_A_HDCPCFG0_EN11FEATURE_DISABLE = 0x0,
+	HDMI_A_HDCPCFG0_HDMIDVI_MASK = 0x1,
+	HDMI_A_HDCPCFG0_HDMIDVI_HDMI = 0x1,
+	HDMI_A_HDCPCFG0_HDMIDVI_DVI = 0x0,
+
+/* A_HDCPCFG1 field values */
+	HDMI_A_HDCPCFG1_DISSHA1CHECK_MASK = 0x8,
+	HDMI_A_HDCPCFG1_DISSHA1CHECK_DISABLE = 0x8,
+	HDMI_A_HDCPCFG1_DISSHA1CHECK_ENABLE = 0x0,
+	HDMI_A_HDCPCFG1_PH2UPSHFTENC_MASK = 0x4,
+	HDMI_A_HDCPCFG1_PH2UPSHFTENC_ENABLE = 0x4,
+	HDMI_A_HDCPCFG1_PH2UPSHFTENC_DISABLE = 0x0,
+	HDMI_A_HDCPCFG1_ENCRYPTIONDISABLE_MASK = 0x2,
+	HDMI_A_HDCPCFG1_ENCRYPTIONDISABLE_DISABLE = 0x2,
+	HDMI_A_HDCPCFG1_ENCRYPTIONDISABLE_ENABLE = 0x0,
+	HDMI_A_HDCPCFG1_SWRESET_MASK = 0x1,
+	HDMI_A_HDCPCFG1_SWRESET_ASSERT = 0x0,
+
+/* A_VIDPOLCFG field values */
+	HDMI_A_VIDPOLCFG_UNENCRYPTCONF_MASK = 0x60,
+	HDMI_A_VIDPOLCFG_UNENCRYPTCONF_OFFSET = 5,
+	HDMI_A_VIDPOLCFG_DATAENPOL_MASK = 0x10,
+	HDMI_A_VIDPOLCFG_DATAENPOL_ACTIVE_HIGH = 0x10,
+	HDMI_A_VIDPOLCFG_DATAENPOL_ACTIVE_LOW = 0x0,
+	HDMI_A_VIDPOLCFG_VSYNCPOL_MASK = 0x8,
+	HDMI_A_VIDPOLCFG_VSYNCPOL_ACTIVE_HIGH = 0x8,
+	HDMI_A_VIDPOLCFG_VSYNCPOL_ACTIVE_LOW = 0x0,
+	HDMI_A_VIDPOLCFG_HSYNCPOL_MASK = 0x2,
+	HDMI_A_VIDPOLCFG_HSYNCPOL_ACTIVE_HIGH = 0x2,
+	HDMI_A_VIDPOLCFG_HSYNCPOL_ACTIVE_LOW = 0x0,
+};
+#endif /* __IMX_HDMI_H__ */
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
