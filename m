Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZD6CH-0000dc-MM
 for barebox@lists.infradead.org; Thu, 09 Jul 2015 07:24:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  9 Jul 2015 09:24:15 +0200
Message-Id: <1436426657-5266-12-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/13] video: ipuv3: Replace ipu_output with VPL
To: Barebox List <barebox@lists.infradead.org>

The ipuv3 makes heavy use of video encoders internally to the SoC but
also external encoders are common. Switch to VPL support to be able
to handle these properly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/imx-ipu-v3/Kconfig      |   1 +
 drivers/video/imx-ipu-v3/imx-hdmi.c   |  93 +++++++++++-----------
 drivers/video/imx-ipu-v3/imx-ipu-v3.h |  24 ++----
 drivers/video/imx-ipu-v3/imx-ldb.c    | 116 +++++++++++++++++++++-------
 drivers/video/imx-ipu-v3/ipufb.c      | 141 ++++++++++++++--------------------
 5 files changed, 197 insertions(+), 178 deletions(-)

diff --git a/drivers/video/imx-ipu-v3/Kconfig b/drivers/video/imx-ipu-v3/Kconfig
index 2ca9132..386ff5b 100644
--- a/drivers/video/imx-ipu-v3/Kconfig
+++ b/drivers/video/imx-ipu-v3/Kconfig
@@ -1,6 +1,7 @@
 config DRIVER_VIDEO_IMX_IPUV3
 	bool "i.MX IPUv3 driver"
 	depends on ARCH_IMX
+	select VIDEO_VPL
 	help
 	  Support the IPUv3 found on Freescale i.MX51/53/6 SoCs
 
diff --git a/drivers/video/imx-ipu-v3/imx-hdmi.c b/drivers/video/imx-ipu-v3/imx-hdmi.c
index e01bfe8..f5a2e3c 100644
--- a/drivers/video/imx-ipu-v3/imx-hdmi.c
+++ b/drivers/video/imx-ipu-v3/imx-hdmi.c
@@ -23,6 +23,7 @@
 #include <asm-generic/div64.h>
 #include <linux/clk.h>
 #include <i2c/i2c.h>
+#include <video/vpl.h>
 #include <mach/imx6-regs.h>
 #include <mach/imx53-regs.h>
 
@@ -133,13 +134,13 @@ struct imx_hdmi {
 	bool phy_enabled;
 
 	struct regmap *regmap;
-	struct i2c_adapter *ddc;
+	struct device_node *ddc_node;;
 	void __iomem *regs;
 
 	unsigned int sample_rate;
 	int ratio;
 
-	struct ipu_output output;
+	struct vpl vpl;
 };
 
 static void imx_hdmi_set_ipu_di_mux(struct imx_hdmi *hdmi, int ipu_di)
@@ -1011,7 +1012,7 @@ static void imx_hdmi_clear_overflow(struct imx_hdmi *hdmi)
 		hdmi_writeb(hdmi, val, HDMI_FC_INVIDCONF);
 }
 
-static int imx_hdmi_setup(struct imx_hdmi *hdmi, struct fb_videomode *mode)
+static int imx_hdmi_setup(struct imx_hdmi *hdmi)
 {
 	int ret;
 
@@ -1134,43 +1135,58 @@ static struct of_device_id imx_hdmi_dt_ids[] = {
 	}
 };
 
-static int imx_hdmi_prepare(struct ipu_output *output, struct fb_videomode *mode, int di)
+static int imx_hdmi_get_modes(struct imx_hdmi *hdmi, struct display_timings *timings)
 {
-	struct imx_hdmi *hdmi = container_of(output, struct imx_hdmi, output);
+	int ret = -ENOENT;
 
-	imx_hdmi_set_ipu_di_mux(hdmi, di);
+	if (hdmi->ddc_node) {
+		struct i2c_adapter *i2c;
 
-	return 0;
-}
+                i2c = of_find_i2c_adapter_by_node(hdmi->ddc_node);
+		if (!i2c)
+			return -ENODEV;
+		timings->edid = edid_read_i2c(i2c);
+		if (!timings->edid)
+			return -EINVAL;
 
-static int imx_hdmi_commit(struct ipu_output *output, struct fb_videomode *mode, int di)
-{
-	struct imx_hdmi *hdmi = container_of(output, struct imx_hdmi, output);
-
-	imx_hdmi_setup(hdmi, mode);
+		ret = edid_to_display_timings(timings, timings->edid);
+	}
 
-	return 0;
+	return ret;
 }
 
-static int imx_hdmi_disable(struct ipu_output *output)
+static int imx_hdmi_ioctl(struct vpl *vpl, unsigned int port,
+		unsigned int cmd, void *data)
 {
-	struct imx_hdmi *hdmi = container_of(output, struct imx_hdmi, output);
-
-	imx_hdmi_phy_disable(hdmi);
+	struct imx_hdmi *hdmi = container_of(vpl, struct imx_hdmi, vpl);
+	struct ipu_di_mode *mode;
+
+	switch (cmd) {
+	case VPL_ENABLE:
+		return imx_hdmi_setup(hdmi);
+	case VPL_DISABLE:
+		imx_hdmi_phy_disable(hdmi);
+		return 0;
+	case VPL_PREPARE:
+		imx_hdmi_set_ipu_di_mux(hdmi, port);
+		return 0;
+	case VPL_GET_VIDEOMODES:
+		return imx_hdmi_get_modes(hdmi, data);
+	case IMX_IPU_VPL_DI_MODE:
+		mode = data;
+
+		mode->di_clkflags = IPU_DI_CLKMODE_EXT | IPU_DI_CLKMODE_SYNC;
+		mode->interface_pix_fmt = V4L2_PIX_FMT_RGB24;
+
+		return 0;
+	}
 
 	return 0;
 }
 
-static struct ipu_output_ops imx_hdmi_ops = {
-	.prepare = imx_hdmi_prepare,
-	.enable = imx_hdmi_commit,
-	.disable = imx_hdmi_disable,
-};
-
 static int imx_hdmi_probe(struct device_d *dev)
 {
 	struct device_node *np = dev->device_node;
-	struct device_node *ddc_node;
 	struct imx_hdmi *hdmi;
 	int ret;
 	const struct imx_hdmi_data *devtype;
@@ -1190,18 +1206,7 @@ static int imx_hdmi_probe(struct device_d *dev)
 	if (ret)
 		return ret;
 
-	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_EDID)) {
-		ddc_node = of_parse_phandle(np, "ddc-i2c-bus", 0);
-		if (ddc_node) {
-			hdmi->ddc = of_find_i2c_adapter_by_node(ddc_node);
-			if (!hdmi->ddc)
-				dev_dbg(hdmi->dev, "failed to read ddc node\n");
-		} else {
-			dev_dbg(hdmi->dev, "no ddc property found\n");
-		}
-
-		ddc_node = NULL;
-	}
+	hdmi->ddc_node = of_parse_phandle(np, "ddc-i2c-bus", 0);
 
 	hdmi->regs = dev_request_mem_region(dev, 0);
 	if (!hdmi->regs)
@@ -1269,15 +1274,11 @@ static int imx_hdmi_probe(struct device_d *dev)
 	/* Unmute interrupts */
 	hdmi_writeb(hdmi, ~HDMI_IH_PHY_STAT0_HPD, HDMI_IH_MUTE_PHY_STAT0);
 
-	hdmi->output.ops = &imx_hdmi_ops;
-	hdmi->output.di_clkflags = IPU_DI_CLKMODE_EXT | IPU_DI_CLKMODE_SYNC;
-	hdmi->output.out_pixel_fmt = V4L2_PIX_FMT_RGB24;
-	hdmi->output.name = asprintf("hdmi-0");
-	hdmi->output.ipu_mask = devtype->ipu_mask;
-	hdmi->output.edid_i2c_adapter = hdmi->ddc;
-	hdmi->output.modes = of_get_display_timings(np);
-
-	ipu_register_output(&hdmi->output);
+	hdmi->vpl.node = np;
+	hdmi->vpl.ioctl = imx_hdmi_ioctl;
+	ret = vpl_register(&hdmi->vpl);
+	if (ret)
+		return ret;
 
 	return 0;
 
diff --git a/drivers/video/imx-ipu-v3/imx-ipu-v3.h b/drivers/video/imx-ipu-v3/imx-ipu-v3.h
index d046aee..783535e 100644
--- a/drivers/video/imx-ipu-v3/imx-ipu-v3.h
+++ b/drivers/video/imx-ipu-v3/imx-ipu-v3.h
@@ -14,6 +14,7 @@
 
 #include <io.h>
 #include <fb.h>
+#include <video/vpl.h>
 #include <video/fourcc.h>
 
 struct ipu_soc;
@@ -318,26 +319,11 @@ struct ipu_client_platformdata {
 	struct device_node *device_node;
 };
 
-struct ipu_output;
-
-struct ipu_output_ops {
-	int (*prepare)(struct ipu_output *ipu_video_output, struct fb_videomode *mode, int di);
-	int (*enable)(struct ipu_output *ipu_video_output, struct fb_videomode *mode, int di);
-	int (*disable)(struct ipu_output *ipu_video_output);
-	int (*unprepare)(struct ipu_output *ipu_video_output);
-};
-
-struct ipu_output {
-	struct ipu_output_ops *ops;
-	struct list_head list;
-	unsigned int di_clkflags;
-	uint32_t out_pixel_fmt;
-	struct i2c_adapter *edid_i2c_adapter;
-	struct display_timings *modes;
-	char *name;
-	int ipu_mask;
+struct ipu_di_mode {
+	u32 di_clkflags;
+	u32 interface_pix_fmt;
 };
 
-int ipu_register_output(struct ipu_output *ouput);
+#define IMX_IPU_VPL_DI_MODE	0x12660001
 
 #endif /* __DRM_IPU_H__ */
diff --git a/drivers/video/imx-ipu-v3/imx-ldb.c b/drivers/video/imx-ipu-v3/imx-ldb.c
index a05bfad..db5f8b6 100644
--- a/drivers/video/imx-ipu-v3/imx-ldb.c
+++ b/drivers/video/imx-ipu-v3/imx-ldb.c
@@ -21,10 +21,13 @@
 #include <common.h>
 #include <fb.h>
 #include <io.h>
+#include <of_graph.h>
 #include <driver.h>
 #include <malloc.h>
 #include <errno.h>
 #include <init.h>
+#include <video/vpl.h>
+#include <mfd/imx6q-iomuxc-gpr.h>
 #include <linux/clk.h>
 #include <linux/err.h>
 #include <asm-generic/div64.h>
@@ -57,13 +60,17 @@ struct imx_ldb_channel {
 	int chno;
 	int mode_valid;
 	struct display_timings *modes;
-	struct ipu_output output;
+	struct device_node *remote;
+	struct vpl vpl;
+	int output_port;
+	int datawidth;
 };
 
 struct imx_ldb_data {
 	void __iomem *base;
 	int (*prepare)(struct imx_ldb_channel *imx_ldb_ch, int di);
 	unsigned ipu_mask;
+	int have_mux;
 };
 
 struct imx_ldb {
@@ -102,16 +109,11 @@ static const int of_get_data_mapping(struct device_node *np)
 	return -EINVAL;
 }
 
-static int imx_ldb_prepare(struct ipu_output *output, struct fb_videomode *mode, int di)
+static int imx_ldb_prepare(struct imx_ldb_channel *imx_ldb_ch, struct fb_videomode *mode,
+		int di)
 {
-	struct imx_ldb_channel *imx_ldb_ch = container_of(output, struct imx_ldb_channel, output);
 	struct imx_ldb *ldb = imx_ldb_ch->ldb;
 
-	if (PICOS2KHZ(mode->pixclock) > 85000) {
-		dev_warn(ldb->dev,
-			 "%s: mode exceeds 85 MHz pixel clock\n", __func__);
-	}
-
 	ldb->soc_data->prepare(imx_ldb_ch, di);
 
 	/* FIXME - assumes straight connections DI0 --> CH0, DI1 --> CH1 */
@@ -141,7 +143,20 @@ static int imx_ldb_prepare(struct ipu_output *output, struct fb_videomode *mode,
 
 	writel(ldb->ldb_ctrl, ldb->base);
 
-	return 0;
+	return vpl_ioctl(&imx_ldb_ch->vpl, imx_ldb_ch->output_port,
+			VPL_PREPARE, NULL);
+}
+
+static int imx_ldb_enable(struct imx_ldb_channel *imx_ldb_ch, int di)
+{
+	return vpl_ioctl(&imx_ldb_ch->vpl, imx_ldb_ch->output_port,
+				VPL_ENABLE, NULL);
+}
+
+static int imx_ldb_disable(struct imx_ldb_channel *imx_ldb_ch, int di)
+{
+	return vpl_ioctl(&imx_ldb_ch->vpl, imx_ldb_ch->output_port,
+			VPL_DISABLE, NULL);
 }
 
 static int imx6q_ldb_prepare(struct imx_ldb_channel *imx_ldb_ch, int di)
@@ -226,6 +241,7 @@ static struct imx_ldb_data imx_ldb_data_imx6q = {
 	.base = (void *)MX6_IOMUXC_BASE_ADDR + 0x8,
 	.prepare = imx6q_ldb_prepare,
 	.ipu_mask = 0xf,
+	.have_mux = 1,
 };
 
 static struct imx_ldb_data imx_ldb_data_imx53 = {
@@ -234,9 +250,42 @@ static struct imx_ldb_data imx_ldb_data_imx53 = {
 	.ipu_mask = 0x3,
 };
 
-static struct ipu_output_ops imx_ldb_ops = {
-	.prepare = imx_ldb_prepare,
-};
+static int imx_ldb_ioctl(struct vpl *vpl, unsigned int port,
+		unsigned int cmd, void *data)
+{
+	struct imx_ldb_channel *imx_ldb_ch = container_of(vpl,
+			struct imx_ldb_channel, vpl);
+	int ret;
+	struct ipu_di_mode *mode;
+
+	switch (cmd) {
+	case VPL_ENABLE:
+		ret = vpl_ioctl(vpl, imx_ldb_ch->output_port, cmd, data);
+		if (ret)
+			return ret;
+		return imx_ldb_enable(imx_ldb_ch, port);
+	case VPL_DISABLE:
+		ret = vpl_ioctl(vpl, imx_ldb_ch->output_port, cmd, data);
+		if (ret)
+			return ret;
+		return imx_ldb_disable(imx_ldb_ch, port);
+	case VPL_PREPARE:
+		ret = vpl_ioctl(vpl, imx_ldb_ch->output_port, cmd, data);
+		if (ret)
+			return ret;
+		return imx_ldb_prepare(imx_ldb_ch, data, port);
+	case IMX_IPU_VPL_DI_MODE:
+		mode = data;
+
+		mode->di_clkflags = IPU_DI_CLKMODE_EXT | IPU_DI_CLKMODE_SYNC;
+		mode->interface_pix_fmt = (imx_ldb_ch->datawidth == 24) ?
+			V4L2_PIX_FMT_RGB24 : V4L2_PIX_FMT_BGR666;
+
+		return 0;
+	default:
+		return vpl_ioctl(vpl, imx_ldb_ch->output_port, cmd, data);
+	}
+}
 
 static int imx_ldb_probe(struct device_d *dev)
 {
@@ -245,7 +294,6 @@ static int imx_ldb_probe(struct device_d *dev)
 	struct imx_ldb *imx_ldb;
 	int ret, i;
 	int dual = 0;
-	int datawidth;
 	int mapping;
 	const struct imx_ldb_data *devtype;
 
@@ -259,6 +307,8 @@ static int imx_ldb_probe(struct device_d *dev)
 
 	for_each_child_of_node(np, child) {
 		struct imx_ldb_channel *channel;
+		struct device_node *port;
+		struct device_node *endpoint;
 
 		ret = of_property_read_u32(child, "reg", &i);
 		if (ret || i < 0 || i > 1)
@@ -275,17 +325,37 @@ static int imx_ldb_probe(struct device_d *dev)
 		channel = &imx_ldb->channel[i];
 		channel->ldb = imx_ldb;
 		channel->chno = i;
+		channel->output_port = imx_ldb->soc_data->have_mux ? 4 : 1;
+
+		/* The output port is port@4 with mux or port@1 without mux */
+		port = of_graph_get_port_by_id(child, channel->output_port);
+		if (!port) {
+			dev_warn(dev, "No port found for %s\n", child->full_name);
+			continue;
+		}
 
-		ret = of_property_read_u32(child, "fsl,data-width", &datawidth);
+		endpoint = of_get_child_by_name(port, "endpoint");
+		if (!endpoint) {
+			dev_warn(dev, "No endpoint found on %s\n", port->full_name);
+			continue;
+		}
+
+		channel->vpl.node = child;
+		channel->vpl.ioctl = &imx_ldb_ioctl;
+		ret = vpl_register(&channel->vpl);
+		if (ret)
+			return ret;
+
+		ret = of_property_read_u32(child, "fsl,data-width", &channel->datawidth);
 		if (ret)
-			datawidth = 0;
-		else if (datawidth != 18 && datawidth != 24)
+			channel->datawidth = 0;
+		else if (channel->datawidth != 18 && channel->datawidth != 24)
 			return -EINVAL;
 
 		mapping = of_get_data_mapping(child);
 		switch (mapping) {
 		case LVDS_BIT_MAP_SPWG:
-			if (datawidth == 24) {
+			if (channel->datawidth == 24) {
 				if (i == 0 || dual)
 					imx_ldb->ldb_ctrl |= LDB_DATA_WIDTH_CH0_24;
 				if (i == 1 || dual)
@@ -293,7 +363,7 @@ static int imx_ldb_probe(struct device_d *dev)
 			}
 			break;
 		case LVDS_BIT_MAP_JEIDA:
-			if (datawidth == 18) {
+			if (channel->datawidth == 18) {
 				dev_err(dev, "JEIDA standard only supported in 24 bit\n");
 				return -EINVAL;
 			}
@@ -306,16 +376,6 @@ static int imx_ldb_probe(struct device_d *dev)
 			dev_err(dev, "data mapping not specified or invalid\n");
 			return -EINVAL;
 		}
-
-		channel->output.ops = &imx_ldb_ops;
-		channel->output.di_clkflags = IPU_DI_CLKMODE_EXT | IPU_DI_CLKMODE_SYNC;
-		channel->output.out_pixel_fmt = (datawidth == 24) ?
-			V4L2_PIX_FMT_RGB24 : V4L2_PIX_FMT_BGR666;
-		channel->output.modes = of_get_display_timings(child);
-		channel->output.name = asprintf("ldb-%d", i);
-		channel->output.ipu_mask = devtype->ipu_mask;
-
-		ipu_register_output(&channel->output);
 	}
 
 	return 0;
diff --git a/drivers/video/imx-ipu-v3/ipufb.c b/drivers/video/imx-ipu-v3/ipufb.c
index c032621..74c4dba 100644
--- a/drivers/video/imx-ipu-v3/ipufb.c
+++ b/drivers/video/imx-ipu-v3/ipufb.c
@@ -19,6 +19,7 @@
 #include <malloc.h>
 #include <errno.h>
 #include <init.h>
+#include <of_graph.h>
 #include <linux/clk.h>
 #include <linux/err.h>
 #include <asm-generic/div64.h>
@@ -62,8 +63,9 @@ struct ipufb_info {
 	struct list_head	list;
 	char			*name;
 	int			id;
+	int			dino;
 
-	struct ipu_output	*output;
+	struct vpl	vpl;
 };
 
 static inline u_int chan_to_field(u_int chan, struct fb_bitfield *bf)
@@ -73,23 +75,6 @@ static inline u_int chan_to_field(u_int chan, struct fb_bitfield *bf)
 	return chan << bf->offset;
 }
 
-static LIST_HEAD(ipu_outputs);
-static LIST_HEAD(ipu_fbs);
-
-int ipu_register_output(struct ipu_output *ouput)
-{
-	list_add_tail(&ouput->list, &ipu_outputs);
-
-	return 0;
-}
-
-static int ipu_register_fb(struct ipufb_info *ipufb)
-{
-	list_add_tail(&ipufb->list, &ipu_fbs);
-
-	return 0;
-}
-
 int ipu_crtc_mode_set(struct ipufb_info *fbi,
 			       struct fb_videomode *mode,
 			       int x, int y)
@@ -97,14 +82,17 @@ int ipu_crtc_mode_set(struct ipufb_info *fbi,
 	struct fb_info *info = &fbi->info;
 	int ret;
 	struct ipu_di_signal_cfg sig_cfg = {};
-	u32 out_pixel_fmt;
+	struct ipu_di_mode di_mode = {};
+	u32 interface_pix_fmt;
 
 	dev_info(fbi->dev, "%s: mode->xres: %d\n", __func__,
 			mode->xres);
 	dev_info(fbi->dev, "%s: mode->yres: %d\n", __func__,
 			mode->yres);
 
-	out_pixel_fmt = fbi->output->out_pixel_fmt;
+	vpl_ioctl(&fbi->vpl, 2 + fbi->dino, IMX_IPU_VPL_DI_MODE, &di_mode);
+	interface_pix_fmt = di_mode.interface_pix_fmt ?
+		di_mode.interface_pix_fmt : fbi->interface_pix_fmt;
 
 	if (mode->sync & FB_SYNC_HOR_HIGH_ACT)
 		sig_cfg.Hsync_pol = 1;
@@ -123,7 +111,7 @@ int ipu_crtc_mode_set(struct ipufb_info *fbi,
 	sig_cfg.v_sync_width = mode->vsync_len;
 	sig_cfg.v_end_width = mode->lower_margin;
 	sig_cfg.pixelclock = PICOS2KHZ(mode->pixclock) * 1000UL;
-	sig_cfg.clkflags = fbi->output->di_clkflags;
+	sig_cfg.clkflags = di_mode.di_clkflags;
 
 	sig_cfg.v_to_h_sync = 0;
 
@@ -131,7 +119,7 @@ int ipu_crtc_mode_set(struct ipufb_info *fbi,
 	sig_cfg.vsync_pin = 3;
 
 	ret = ipu_dc_init_sync(fbi->dc, fbi->di, sig_cfg.interlaced,
-			out_pixel_fmt, mode->xres);
+			interface_pix_fmt, mode->xres);
 	if (ret) {
 		dev_err(fbi->dev,
 				"initializing display controller failed with %d\n",
@@ -170,31 +158,25 @@ int ipu_crtc_mode_set(struct ipufb_info *fbi,
 static void ipufb_enable_controller(struct fb_info *info)
 {
 	struct ipufb_info *fbi = container_of(info, struct ipufb_info, info);
-	struct ipu_output *output = fbi->output;
 
-	if (output->ops->prepare)
-		output->ops->prepare(output, info->mode, fbi->id);
+	vpl_ioctl_prepare(&fbi->vpl, 2 + fbi->dino, info->mode);
 
 	ipu_crtc_mode_set(fbi, info->mode, 0, 0);
 
-	if (output->ops->enable)
-		output->ops->enable(output, info->mode, fbi->id);
+	vpl_ioctl_enable(&fbi->vpl, 2 + fbi->dino);
 }
 
 static void ipufb_disable_controller(struct fb_info *info)
 {
 	struct ipufb_info *fbi = container_of(info, struct ipufb_info, info);
-	struct ipu_output *output = fbi->output;
 
-	if (output->ops->disable)
-		output->ops->disable(output);
+	vpl_ioctl_disable(&fbi->vpl, 2 + fbi->dino);
 
 	ipu_plane_disable(fbi->plane[0]);
 	ipu_dc_disable_channel(fbi->dc);
 	ipu_di_disable(fbi->di);
 
-	if (output->ops->unprepare)
-		output->ops->unprepare(output);
+	vpl_ioctl_unprepare(&fbi->vpl, 2 + fbi->dino);
 }
 
 static int ipufb_activate_var(struct fb_info *info)
@@ -207,7 +189,7 @@ static int ipufb_activate_var(struct fb_info *info)
 	if (!fbi->info.screen_base)
 		return -ENOMEM;
 
-	memset(fbi->info.screen_base, 0, info->line_length * info->yres);
+	memset(fbi->info.screen_base, 0x0, info->line_length * info->yres);
 
 	return 0;
 }
@@ -218,56 +200,6 @@ static struct fb_ops ipufb_ops = {
 	.fb_activate_var = ipufb_activate_var,
 };
 
-static struct ipufb_info *ipu_output_find_di(struct ipu_output *output)
-{
-	struct ipufb_info *ipufb;
-
-	list_for_each_entry(ipufb, &ipu_fbs, list) {
-		if (!(output->ipu_mask & (1 << ipufb->id)))
-			continue;
-		if (ipufb->output)
-			continue;
-
-		return ipufb;
-	}
-
-	return NULL;
-}
-
-static int ipu_init(void)
-{
-	struct ipu_output *output;
-	struct ipufb_info *ipufb;
-	int ret;
-
-	list_for_each_entry(output, &ipu_outputs, list) {
-		pr_info("found output: %s\n", output->name);
-		ipufb = ipu_output_find_di(output);
-		if (!ipufb) {
-			pr_info("no di found for output %s\n", output->name);
-			continue;
-		}
-		pr_info("using di %s for output %s\n", ipufb->name, output->name);
-
-		ipufb->output = output;
-
-		ipufb->info.edid_i2c_adapter = output->edid_i2c_adapter;
-		if (output->modes) {
-			ipufb->info.modes.modes = output->modes->modes;
-			ipufb->info.modes.num_modes = output->modes->num_modes;
-		}
-
-		ret = register_framebuffer(&ipufb->info);
-		if (ret < 0) {
-			dev_err(ipufb->dev, "failed to register framebuffer\n");
-			return ret;
-		}
-	}
-
-	return 0;
-}
-late_initcall(ipu_init);
-
 static int ipu_get_resources(struct ipufb_info *fbi,
 		struct ipu_client_platformdata *pdata)
 {
@@ -310,6 +242,8 @@ static int ipufb_probe(struct device_d *dev)
 	int ret, ipuid;
 	struct ipu_client_platformdata *pdata = dev->platform_data;
 	struct ipu_rgb *ipu_rgb;
+	struct device_node *node;
+	const char *fmt;
 
 	fbi = xzalloc(sizeof(*fbi));
 	info = &fbi->info;
@@ -317,6 +251,7 @@ static int ipufb_probe(struct device_d *dev)
 	ipuid = of_alias_get_id(dev->parent->device_node, "ipu");
 	fbi->name = asprintf("ipu%d-di%d", ipuid + 1, pdata->di);
 	fbi->id = ipuid * 2 + pdata->di;
+	fbi->dino = pdata->di;
 
 	fbi->dev = dev;
 	info->priv = fbi;
@@ -336,7 +271,38 @@ static int ipufb_probe(struct device_d *dev)
 	if (ret)
 		return ret;
 
-	ret = ipu_register_fb(fbi);
+	node = of_graph_get_port_by_id(dev->parent->device_node, 2 + pdata->di);
+	if (node && of_graph_port_is_available(node)) {
+		dev_info(fbi->dev, "register vpl for %s\n", dev->parent->device_node->full_name);
+
+		fbi->vpl.node = dev->parent->device_node;
+		ret = vpl_register(&fbi->vpl);
+		if (ret)
+			return ret;
+
+		ret = of_property_read_string(node, "interface-pix-fmt", &fmt);
+		if (!ret) {
+			if (!strcmp(fmt, "rgb24"))
+				fbi->interface_pix_fmt = V4L2_PIX_FMT_RGB24;
+			else if (!strcmp(fmt, "rgb565"))
+				fbi->interface_pix_fmt = V4L2_PIX_FMT_RGB565;
+			else if (!strcmp(fmt, "bgr666"))
+				fbi->interface_pix_fmt = V4L2_PIX_FMT_BGR666;
+			else if (!strcmp(fmt, "lvds666"))
+				fbi->interface_pix_fmt =
+					v4l2_fourcc('L', 'V', 'D', '6');
+		}
+
+		ret = vpl_ioctl(&fbi->vpl, 2 + fbi->dino, VPL_GET_VIDEOMODES, &info->modes);
+		if (ret)
+			return ret;
+
+		ret = register_framebuffer(info);
+		if (ret < 0) {
+			dev_err(fbi->dev, "failed to register framebuffer\n");
+			return ret;
+		}
+	}
 
 	return ret;
 }
@@ -350,4 +316,9 @@ static struct driver_d ipufb_driver = {
 	.probe		= ipufb_probe,
 	.remove		= ipufb_remove,
 };
-device_platform_driver(ipufb_driver);
+
+static int ipufb_register(void)
+{
+	return platform_driver_register(&ipufb_driver);
+}
+late_initcall(ipufb_register);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
