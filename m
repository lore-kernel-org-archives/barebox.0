Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bcVby-0004W3-AF
 for barebox@lists.infradead.org; Wed, 24 Aug 2016 10:40:51 +0000
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Wed, 24 Aug 2016 12:40:17 +0200
Message-Id: <1472035219-23917-1-git-send-email-p.zabel@pengutronix.de>
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
Subject: [PATCH 1/3] video: switch to media bus formats
To: barebox@lists.infradead.org

V4L2 pixel formats are supposed to describe video frames in memory. To
describe the pixel format on the hardware bus between display interface
and encoders, use media bus formats, which are more expressive.

This allows to get rid of the custom GBR24 and LVDS666 fourccs.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 drivers/video/imx-ipu-v3/imx-hdmi.c   |   3 +-
 drivers/video/imx-ipu-v3/imx-ipu-v3.h |   4 +-
 drivers/video/imx-ipu-v3/imx-ldb.c    |   7 +-
 drivers/video/imx-ipu-v3/ipu-dc.c     |  19 +++--
 drivers/video/imx-ipu-v3/ipu-prv.h    |   2 -
 drivers/video/imx-ipu-v3/ipufb.c      |  21 +++--
 include/video/fourcc.h                | 151 ----------------------------------
 include/video/media-bus-format.h      | 137 ++++++++++++++++++++++++++++++
 8 files changed, 165 insertions(+), 179 deletions(-)
 create mode 100644 include/video/media-bus-format.h

diff --git a/drivers/video/imx-ipu-v3/imx-hdmi.c b/drivers/video/imx-ipu-v3/imx-hdmi.c
index 8b251a5..17b6e4c 100644
--- a/drivers/video/imx-ipu-v3/imx-hdmi.c
+++ b/drivers/video/imx-ipu-v3/imx-hdmi.c
@@ -22,6 +22,7 @@
 #include <asm-generic/div64.h>
 #include <linux/clk.h>
 #include <i2c/i2c.h>
+#include <video/media-bus-format.h>
 #include <video/vpl.h>
 #include <mach/imx6-regs.h>
 #include <mach/imx53-regs.h>
@@ -1261,7 +1262,7 @@ static int dw_hdmi_ioctl(struct vpl *vpl, unsigned int port,
 		mode = data;
 
 		mode->di_clkflags = IPU_DI_CLKMODE_EXT | IPU_DI_CLKMODE_SYNC;
-		mode->interface_pix_fmt = V4L2_PIX_FMT_RGB24;
+		mode->bus_format = MEDIA_BUS_FMT_RGB888_1X24;
 
 		return 0;
 	}
diff --git a/drivers/video/imx-ipu-v3/imx-ipu-v3.h b/drivers/video/imx-ipu-v3/imx-ipu-v3.h
index fbfec22..cdfff69 100644
--- a/drivers/video/imx-ipu-v3/imx-ipu-v3.h
+++ b/drivers/video/imx-ipu-v3/imx-ipu-v3.h
@@ -116,7 +116,7 @@ struct ipu_di;
 struct ipu_dc *ipu_dc_get(struct ipu_soc *ipu, int channel);
 void ipu_dc_put(struct ipu_dc *dc);
 int ipu_dc_init_sync(struct ipu_dc *dc, struct ipu_di *di, bool interlaced,
-		u32 pixel_fmt, u32 width);
+		u32 bus_format, u32 width);
 void ipu_dc_enable_channel(struct ipu_dc *dc);
 void ipu_dc_disable_channel(struct ipu_dc *dc);
 
@@ -323,7 +323,7 @@ struct ipu_client_platformdata {
 
 struct ipu_di_mode {
 	u32 di_clkflags;
-	u32 interface_pix_fmt;
+	u32 bus_format;
 };
 
 #define IMX_IPU_VPL_DI_MODE	0x12660001
diff --git a/drivers/video/imx-ipu-v3/imx-ldb.c b/drivers/video/imx-ipu-v3/imx-ldb.c
index 17ae894..14a86a4 100644
--- a/drivers/video/imx-ipu-v3/imx-ldb.c
+++ b/drivers/video/imx-ipu-v3/imx-ldb.c
@@ -26,6 +26,7 @@
 #include <malloc.h>
 #include <errno.h>
 #include <init.h>
+#include <video/media-bus-format.h>
 #include <video/vpl.h>
 #include <mfd/imx6q-iomuxc-gpr.h>
 #include <linux/clk.h>
@@ -75,7 +76,7 @@ struct imx_ldb_data {
 
 struct imx_ldb {
 	struct device_d *dev;
-	u32 interface_pix_fmt;
+	u32 bus_format;
 	int mode_valid;
 	struct imx_ldb_channel channel[2];
 	u32 ldb_ctrl;
@@ -273,8 +274,8 @@ static int imx_ldb_ioctl(struct vpl *vpl, unsigned int port,
 		mode = data;
 
 		mode->di_clkflags = IPU_DI_CLKMODE_EXT | IPU_DI_CLKMODE_SYNC;
-		mode->interface_pix_fmt = (imx_ldb_ch->datawidth == 24) ?
-			V4L2_PIX_FMT_RGB24 : V4L2_PIX_FMT_BGR666;
+		mode->bus_format = (imx_ldb_ch->datawidth == 24) ?
+			MEDIA_BUS_FMT_RGB888_1X24 : MEDIA_BUS_FMT_RGB666_1X18;
 
 		return 0;
 	case VPL_GET_VIDEOMODES:
diff --git a/drivers/video/imx-ipu-v3/ipu-dc.c b/drivers/video/imx-ipu-v3/ipu-dc.c
index 2deb2ae..7b343e8 100644
--- a/drivers/video/imx-ipu-v3/ipu-dc.c
+++ b/drivers/video/imx-ipu-v3/ipu-dc.c
@@ -17,6 +17,7 @@
 #include <linux/err.h>
 #include <linux/clk.h>
 #include <malloc.h>
+#include <video/media-bus-format.h>
 
 #include "imx-ipu-v3.h"
 #include "ipu-prv.h"
@@ -138,18 +139,18 @@ static void dc_write_tmpl(struct ipu_dc *dc, int word, u32 opcode, u32 operand,
 	ipuwritel("dc", reg2, priv->dc_tmpl_reg + word * 8 + 4);
 }
 
-static int ipu_pixfmt_to_map(u32 fmt)
+static int ipu_bus_format_to_map(u32 bus_format)
 {
-	switch (fmt) {
-	case V4L2_PIX_FMT_RGB24:
+	switch (bus_format) {
+	case MEDIA_BUS_FMT_RGB888_1X24:
 		return IPU_DC_MAP_RGB24;
-	case V4L2_PIX_FMT_RGB565:
+	case MEDIA_BUS_FMT_RGB565_1X16:
 		return IPU_DC_MAP_RGB565;
-	case IPU_PIX_FMT_GBR24:
+	case MEDIA_BUS_FMT_GBR888_1X24:
 		return IPU_DC_MAP_GBR24;
-	case V4L2_PIX_FMT_BGR666:
+	case MEDIA_BUS_FMT_RGB666_1X18:
 		return IPU_DC_MAP_BGR666;
-	case V4L2_PIX_FMT_BGR24:
+	case MEDIA_BUS_FMT_BGR888_1X24:
 		return IPU_DC_MAP_BGR24;
 	default:
 		return -EINVAL;
@@ -157,7 +158,7 @@ static int ipu_pixfmt_to_map(u32 fmt)
 }
 
 int ipu_dc_init_sync(struct ipu_dc *dc, struct ipu_di *di, bool interlaced,
-		u32 pixel_fmt, u32 width)
+		u32 bus_format, u32 width)
 {
 	struct ipu_dc_priv *priv = dc->priv;
 	u32 reg = 0;
@@ -165,7 +166,7 @@ int ipu_dc_init_sync(struct ipu_dc *dc, struct ipu_di *di, bool interlaced,
 
 	dc->di = ipu_di_get_num(di);
 
-	map = ipu_pixfmt_to_map(pixel_fmt);
+	map = ipu_bus_format_to_map(bus_format);
 	if (map < 0) {
 		dev_dbg(priv->dev, "IPU_DISP: No MAP\n");
 		return map;
diff --git a/drivers/video/imx-ipu-v3/ipu-prv.h b/drivers/video/imx-ipu-v3/ipu-prv.h
index 44d7802..4d1c069 100644
--- a/drivers/video/imx-ipu-v3/ipu-prv.h
+++ b/drivers/video/imx-ipu-v3/ipu-prv.h
@@ -19,8 +19,6 @@ struct ipu_soc;
 
 #include "imx-ipu-v3.h"
 
-#define IPU_PIX_FMT_GBR24	v4l2_fourcc('G', 'B', 'R', '3')
-
 #define IPUV3_CHANNEL_CSI0			 0
 #define IPUV3_CHANNEL_CSI1			 1
 #define IPUV3_CHANNEL_CSI2			 2
diff --git a/drivers/video/imx-ipu-v3/ipufb.c b/drivers/video/imx-ipu-v3/ipufb.c
index 67fec11..cfafa22 100644
--- a/drivers/video/imx-ipu-v3/ipufb.c
+++ b/drivers/video/imx-ipu-v3/ipufb.c
@@ -23,6 +23,7 @@
 #include <linux/clk.h>
 #include <linux/err.h>
 #include <asm-generic/div64.h>
+#include <video/media-bus-format.h>
 
 #include "imx-ipu-v3.h"
 #include "ipuv3-plane.h"
@@ -56,7 +57,7 @@ struct ipufb_info {
 	void			(*enable)(int enable);
 
 	unsigned int		di_clkflags;
-	u32			interface_pix_fmt;
+	u32			bus_format;
 	struct ipu_dc		*dc;
 	struct ipu_di		*di;
 
@@ -108,7 +109,7 @@ int ipu_crtc_mode_set(struct ipufb_info *fbi,
 	int ret;
 	struct ipu_di_signal_cfg sig_cfg = {};
 	struct ipu_di_mode di_mode = {};
-	u32 interface_pix_fmt;
+	u32 bus_format;
 
 	dev_info(fbi->dev, "%s: mode->xres: %d\n", __func__,
 			mode->xres);
@@ -116,8 +117,7 @@ int ipu_crtc_mode_set(struct ipufb_info *fbi,
 			mode->yres);
 
 	vpl_ioctl(&fbi->vpl, 2 + fbi->dino, IMX_IPU_VPL_DI_MODE, &di_mode);
-	interface_pix_fmt = di_mode.interface_pix_fmt ?
-		di_mode.interface_pix_fmt : fbi->interface_pix_fmt;
+	bus_format = di_mode.bus_format ?: fbi->bus_format;
 
 	if (mode->sync & FB_SYNC_HOR_HIGH_ACT)
 		sig_cfg.Hsync_pol = 1;
@@ -148,8 +148,8 @@ int ipu_crtc_mode_set(struct ipufb_info *fbi,
 	sig_cfg.hsync_pin = 2;
 	sig_cfg.vsync_pin = 3;
 
-	ret = ipu_dc_init_sync(fbi->dc, fbi->di, sig_cfg.interlaced,
-			interface_pix_fmt, mode->xres);
+	ret = ipu_dc_init_sync(fbi->dc, fbi->di, sig_cfg.interlaced, bus_format,
+			mode->xres);
 	if (ret) {
 		dev_err(fbi->dev,
 				"initializing display controller failed with %d\n",
@@ -318,14 +318,13 @@ static int ipufb_probe(struct device_d *dev)
 		ret = of_property_read_string(node, "interface-pix-fmt", &fmt);
 		if (!ret) {
 			if (!strcmp(fmt, "rgb24"))
-				fbi->interface_pix_fmt = V4L2_PIX_FMT_RGB24;
+				fbi->bus_format = MEDIA_BUS_FMT_RGB888_1X24;
 			else if (!strcmp(fmt, "rgb565"))
-				fbi->interface_pix_fmt = V4L2_PIX_FMT_RGB565;
+				fbi->bus_format = MEDIA_BUS_FMT_RGB565_1X16;
 			else if (!strcmp(fmt, "bgr666"))
-				fbi->interface_pix_fmt = V4L2_PIX_FMT_BGR666;
+				fbi->bus_format = MEDIA_BUS_FMT_RGB666_1X18;
 			else if (!strcmp(fmt, "lvds666"))
-				fbi->interface_pix_fmt =
-					v4l2_fourcc('L', 'V', 'D', '6');
+				fbi->bus_format = MEDIA_BUS_FMT_RGB666_1X24_CPADHI;
 		}
 
 		ret = vpl_ioctl(&fbi->vpl, 2 + fbi->dino, VPL_GET_VIDEOMODES, &info->modes);
diff --git a/include/video/fourcc.h b/include/video/fourcc.h
index 322142c..211aabb 100644
--- a/include/video/fourcc.h
+++ b/include/video/fourcc.h
@@ -1,157 +1,6 @@
 #ifndef __VIDEO_FOURCC_H
 #define __VIDEO_FOURCC_H
 
-/*  Four-character-code (FOURCC) */
-#define v4l2_fourcc(a, b, c, d)\
-	((__u32)(a) | ((__u32)(b) << 8) | ((__u32)(c) << 16) | ((__u32)(d) << 24))
-
-/*      Pixel format         FOURCC                          depth  Description  */
-
-/* RGB formats */
-#define V4L2_PIX_FMT_RGB332  v4l2_fourcc('R', 'G', 'B', '1') /*  8  RGB-3-3-2     */
-#define V4L2_PIX_FMT_RGB444  v4l2_fourcc('R', '4', '4', '4') /* 16  xxxxrrrr ggggbbbb */
-#define V4L2_PIX_FMT_RGB555  v4l2_fourcc('R', 'G', 'B', 'O') /* 16  RGB-5-5-5     */
-#define V4L2_PIX_FMT_RGB565  v4l2_fourcc('R', 'G', 'B', 'P') /* 16  RGB-5-6-5     */
-#define V4L2_PIX_FMT_RGB555X v4l2_fourcc('R', 'G', 'B', 'Q') /* 16  RGB-5-5-5 BE  */
-#define V4L2_PIX_FMT_RGB565X v4l2_fourcc('R', 'G', 'B', 'R') /* 16  RGB-5-6-5 BE  */
-#define V4L2_PIX_FMT_BGR666  v4l2_fourcc('B', 'G', 'R', 'H') /* 18  BGR-6-6-6	  */
-#define V4L2_PIX_FMT_BGR24   v4l2_fourcc('B', 'G', 'R', '3') /* 24  BGR-8-8-8     */
-#define V4L2_PIX_FMT_RGB24   v4l2_fourcc('R', 'G', 'B', '3') /* 24  RGB-8-8-8     */
-#define V4L2_PIX_FMT_BGR32   v4l2_fourcc('B', 'G', 'R', '4') /* 32  BGR-8-8-8-8   */
-#define V4L2_PIX_FMT_RGB32   v4l2_fourcc('R', 'G', 'B', '4') /* 32  RGB-8-8-8-8   */
-
-/* Grey formats */
-#define V4L2_PIX_FMT_GREY    v4l2_fourcc('G', 'R', 'E', 'Y') /*  8  Greyscale     */
-#define V4L2_PIX_FMT_Y4      v4l2_fourcc('Y', '0', '4', ' ') /*  4  Greyscale     */
-#define V4L2_PIX_FMT_Y6      v4l2_fourcc('Y', '0', '6', ' ') /*  6  Greyscale     */
-#define V4L2_PIX_FMT_Y10     v4l2_fourcc('Y', '1', '0', ' ') /* 10  Greyscale     */
-#define V4L2_PIX_FMT_Y12     v4l2_fourcc('Y', '1', '2', ' ') /* 12  Greyscale     */
-#define V4L2_PIX_FMT_Y16     v4l2_fourcc('Y', '1', '6', ' ') /* 16  Greyscale     */
-
-/* Grey bit-packed formats */
-#define V4L2_PIX_FMT_Y10BPACK    v4l2_fourcc('Y', '1', '0', 'B') /* 10  Greyscale bit-packed */
-
-/* Palette formats */
-#define V4L2_PIX_FMT_PAL8    v4l2_fourcc('P', 'A', 'L', '8') /*  8  8-bit palette */
-
-/* Chrominance formats */
-#define V4L2_PIX_FMT_UV8     v4l2_fourcc('U', 'V', '8', ' ') /*  8  UV 4:4 */
-
-/* Luminance+Chrominance formats */
-#define V4L2_PIX_FMT_YVU410  v4l2_fourcc('Y', 'V', 'U', '9') /*  9  YVU 4:1:0     */
-#define V4L2_PIX_FMT_YVU420  v4l2_fourcc('Y', 'V', '1', '2') /* 12  YVU 4:2:0     */
-#define V4L2_PIX_FMT_YUYV    v4l2_fourcc('Y', 'U', 'Y', 'V') /* 16  YUV 4:2:2     */
-#define V4L2_PIX_FMT_YYUV    v4l2_fourcc('Y', 'Y', 'U', 'V') /* 16  YUV 4:2:2     */
-#define V4L2_PIX_FMT_YVYU    v4l2_fourcc('Y', 'V', 'Y', 'U') /* 16 YVU 4:2:2 */
-#define V4L2_PIX_FMT_UYVY    v4l2_fourcc('U', 'Y', 'V', 'Y') /* 16  YUV 4:2:2     */
-#define V4L2_PIX_FMT_VYUY    v4l2_fourcc('V', 'Y', 'U', 'Y') /* 16  YUV 4:2:2     */
-#define V4L2_PIX_FMT_YUV422P v4l2_fourcc('4', '2', '2', 'P') /* 16  YVU422 planar */
-#define V4L2_PIX_FMT_YUV411P v4l2_fourcc('4', '1', '1', 'P') /* 16  YVU411 planar */
-#define V4L2_PIX_FMT_Y41P    v4l2_fourcc('Y', '4', '1', 'P') /* 12  YUV 4:1:1     */
-#define V4L2_PIX_FMT_YUV444  v4l2_fourcc('Y', '4', '4', '4') /* 16  xxxxyyyy uuuuvvvv */
-#define V4L2_PIX_FMT_YUV555  v4l2_fourcc('Y', 'U', 'V', 'O') /* 16  YUV-5-5-5     */
-#define V4L2_PIX_FMT_YUV565  v4l2_fourcc('Y', 'U', 'V', 'P') /* 16  YUV-5-6-5     */
-#define V4L2_PIX_FMT_YUV32   v4l2_fourcc('Y', 'U', 'V', '4') /* 32  YUV-8-8-8-8   */
-#define V4L2_PIX_FMT_YUV410  v4l2_fourcc('Y', 'U', 'V', '9') /*  9  YUV 4:1:0     */
-#define V4L2_PIX_FMT_YUV420  v4l2_fourcc('Y', 'U', '1', '2') /* 12  YUV 4:2:0     */
-#define V4L2_PIX_FMT_HI240   v4l2_fourcc('H', 'I', '2', '4') /*  8  8-bit color   */
-#define V4L2_PIX_FMT_HM12    v4l2_fourcc('H', 'M', '1', '2') /*  8  YUV 4:2:0 16x16 macroblocks */
-#define V4L2_PIX_FMT_M420    v4l2_fourcc('M', '4', '2', '0') /* 12  YUV 4:2:0 2 lines y, 1 line uv interleaved */
-
-/* two planes -- one Y, one Cr + Cb interleaved  */
-#define V4L2_PIX_FMT_NV12    v4l2_fourcc('N', 'V', '1', '2') /* 12  Y/CbCr 4:2:0  */
-#define V4L2_PIX_FMT_NV21    v4l2_fourcc('N', 'V', '2', '1') /* 12  Y/CrCb 4:2:0  */
-#define V4L2_PIX_FMT_NV16    v4l2_fourcc('N', 'V', '1', '6') /* 16  Y/CbCr 4:2:2  */
-#define V4L2_PIX_FMT_NV61    v4l2_fourcc('N', 'V', '6', '1') /* 16  Y/CrCb 4:2:2  */
-#define V4L2_PIX_FMT_NV24    v4l2_fourcc('N', 'V', '2', '4') /* 24  Y/CbCr 4:4:4  */
-#define V4L2_PIX_FMT_NV42    v4l2_fourcc('N', 'V', '4', '2') /* 24  Y/CrCb 4:4:4  */
-
-/* two non contiguous planes - one Y, one Cr + Cb interleaved  */
-#define V4L2_PIX_FMT_NV12M   v4l2_fourcc('N', 'M', '1', '2') /* 12  Y/CbCr 4:2:0  */
-#define V4L2_PIX_FMT_NV21M   v4l2_fourcc('N', 'M', '2', '1') /* 21  Y/CrCb 4:2:0  */
-#define V4L2_PIX_FMT_NV16M   v4l2_fourcc('N', 'M', '1', '6') /* 16  Y/CbCr 4:2:2  */
-#define V4L2_PIX_FMT_NV61M   v4l2_fourcc('N', 'M', '6', '1') /* 16  Y/CrCb 4:2:2  */
-#define V4L2_PIX_FMT_NV12MT  v4l2_fourcc('T', 'M', '1', '2') /* 12  Y/CbCr 4:2:0 64x32 macroblocks */
-#define V4L2_PIX_FMT_NV12MT_16X16 v4l2_fourcc('V', 'M', '1', '2') /* 12  Y/CbCr 4:2:0 16x16 macroblocks */
-
-/* three non contiguous planes - Y, Cb, Cr */
-#define V4L2_PIX_FMT_YUV420M v4l2_fourcc('Y', 'M', '1', '2') /* 12  YUV420 planar */
-#define V4L2_PIX_FMT_YVU420M v4l2_fourcc('Y', 'M', '2', '1') /* 12  YVU420 planar */
-
-/* Bayer formats - see http://www.siliconimaging.com/RGB%20Bayer.htm */
-#define V4L2_PIX_FMT_SBGGR8  v4l2_fourcc('B', 'A', '8', '1') /*  8  BGBG.. GRGR.. */
-#define V4L2_PIX_FMT_SGBRG8  v4l2_fourcc('G', 'B', 'R', 'G') /*  8  GBGB.. RGRG.. */
-#define V4L2_PIX_FMT_SGRBG8  v4l2_fourcc('G', 'R', 'B', 'G') /*  8  GRGR.. BGBG.. */
-#define V4L2_PIX_FMT_SRGGB8  v4l2_fourcc('R', 'G', 'G', 'B') /*  8  RGRG.. GBGB.. */
-#define V4L2_PIX_FMT_SBGGR10 v4l2_fourcc('B', 'G', '1', '0') /* 10  BGBG.. GRGR.. */
-#define V4L2_PIX_FMT_SGBRG10 v4l2_fourcc('G', 'B', '1', '0') /* 10  GBGB.. RGRG.. */
-#define V4L2_PIX_FMT_SGRBG10 v4l2_fourcc('B', 'A', '1', '0') /* 10  GRGR.. BGBG.. */
-#define V4L2_PIX_FMT_SRGGB10 v4l2_fourcc('R', 'G', '1', '0') /* 10  RGRG.. GBGB.. */
-#define V4L2_PIX_FMT_SBGGR12 v4l2_fourcc('B', 'G', '1', '2') /* 12  BGBG.. GRGR.. */
-#define V4L2_PIX_FMT_SGBRG12 v4l2_fourcc('G', 'B', '1', '2') /* 12  GBGB.. RGRG.. */
-#define V4L2_PIX_FMT_SGRBG12 v4l2_fourcc('B', 'A', '1', '2') /* 12  GRGR.. BGBG.. */
-#define V4L2_PIX_FMT_SRGGB12 v4l2_fourcc('R', 'G', '1', '2') /* 12  RGRG.. GBGB.. */
-	/* 10bit raw bayer a-law compressed to 8 bits */
-#define V4L2_PIX_FMT_SBGGR10ALAW8 v4l2_fourcc('a', 'B', 'A', '8')
-#define V4L2_PIX_FMT_SGBRG10ALAW8 v4l2_fourcc('a', 'G', 'A', '8')
-#define V4L2_PIX_FMT_SGRBG10ALAW8 v4l2_fourcc('a', 'g', 'A', '8')
-#define V4L2_PIX_FMT_SRGGB10ALAW8 v4l2_fourcc('a', 'R', 'A', '8')
-	/* 10bit raw bayer DPCM compressed to 8 bits */
-#define V4L2_PIX_FMT_SBGGR10DPCM8 v4l2_fourcc('b', 'B', 'A', '8')
-#define V4L2_PIX_FMT_SGBRG10DPCM8 v4l2_fourcc('b', 'G', 'A', '8')
-#define V4L2_PIX_FMT_SGRBG10DPCM8 v4l2_fourcc('B', 'D', '1', '0')
-#define V4L2_PIX_FMT_SRGGB10DPCM8 v4l2_fourcc('b', 'R', 'A', '8')
-	/*
-	 * 10bit raw bayer, expanded to 16 bits
-	 * xxxxrrrrrrrrrrxxxxgggggggggg xxxxggggggggggxxxxbbbbbbbbbb...
-	 */
-#define V4L2_PIX_FMT_SBGGR16 v4l2_fourcc('B', 'Y', 'R', '2') /* 16  BGBG.. GRGR.. */
-
-/* compressed formats */
-#define V4L2_PIX_FMT_MJPEG    v4l2_fourcc('M', 'J', 'P', 'G') /* Motion-JPEG   */
-#define V4L2_PIX_FMT_JPEG     v4l2_fourcc('J', 'P', 'E', 'G') /* JFIF JPEG     */
-#define V4L2_PIX_FMT_DV       v4l2_fourcc('d', 'v', 's', 'd') /* 1394          */
-#define V4L2_PIX_FMT_MPEG     v4l2_fourcc('M', 'P', 'E', 'G') /* MPEG-1/2/4 Multiplexed */
-#define V4L2_PIX_FMT_H264     v4l2_fourcc('H', '2', '6', '4') /* H264 with start codes */
-#define V4L2_PIX_FMT_H264_NO_SC v4l2_fourcc('A', 'V', 'C', '1') /* H264 without start codes */
-#define V4L2_PIX_FMT_H264_MVC v4l2_fourcc('M', '2', '6', '4') /* H264 MVC */
-#define V4L2_PIX_FMT_H263     v4l2_fourcc('H', '2', '6', '3') /* H263          */
-#define V4L2_PIX_FMT_MPEG1    v4l2_fourcc('M', 'P', 'G', '1') /* MPEG-1 ES     */
-#define V4L2_PIX_FMT_MPEG2    v4l2_fourcc('M', 'P', 'G', '2') /* MPEG-2 ES     */
-#define V4L2_PIX_FMT_MPEG4    v4l2_fourcc('M', 'P', 'G', '4') /* MPEG-4 part 2 ES */
-#define V4L2_PIX_FMT_XVID     v4l2_fourcc('X', 'V', 'I', 'D') /* Xvid           */
-#define V4L2_PIX_FMT_VC1_ANNEX_G v4l2_fourcc('V', 'C', '1', 'G') /* SMPTE 421M Annex G compliant stream */
-#define V4L2_PIX_FMT_VC1_ANNEX_L v4l2_fourcc('V', 'C', '1', 'L') /* SMPTE 421M Annex L compliant stream */
-#define V4L2_PIX_FMT_VP8      v4l2_fourcc('V', 'P', '8', '0') /* VP8 */
-
-/*  Vendor-specific formats   */
-#define V4L2_PIX_FMT_CPIA1    v4l2_fourcc('C', 'P', 'I', 'A') /* cpia1 YUV */
-#define V4L2_PIX_FMT_WNVA     v4l2_fourcc('W', 'N', 'V', 'A') /* Winnov hw compress */
-#define V4L2_PIX_FMT_SN9C10X  v4l2_fourcc('S', '9', '1', '0') /* SN9C10x compression */
-#define V4L2_PIX_FMT_SN9C20X_I420 v4l2_fourcc('S', '9', '2', '0') /* SN9C20x YUV 4:2:0 */
-#define V4L2_PIX_FMT_PWC1     v4l2_fourcc('P', 'W', 'C', '1') /* pwc older webcam */
-#define V4L2_PIX_FMT_PWC2     v4l2_fourcc('P', 'W', 'C', '2') /* pwc newer webcam */
-#define V4L2_PIX_FMT_ET61X251 v4l2_fourcc('E', '6', '2', '5') /* ET61X251 compression */
-#define V4L2_PIX_FMT_SPCA501  v4l2_fourcc('S', '5', '0', '1') /* YUYV per line */
-#define V4L2_PIX_FMT_SPCA505  v4l2_fourcc('S', '5', '0', '5') /* YYUV per line */
-#define V4L2_PIX_FMT_SPCA508  v4l2_fourcc('S', '5', '0', '8') /* YUVY per line */
-#define V4L2_PIX_FMT_SPCA561  v4l2_fourcc('S', '5', '6', '1') /* compressed GBRG bayer */
-#define V4L2_PIX_FMT_PAC207   v4l2_fourcc('P', '2', '0', '7') /* compressed BGGR bayer */
-#define V4L2_PIX_FMT_MR97310A v4l2_fourcc('M', '3', '1', '0') /* compressed BGGR bayer */
-#define V4L2_PIX_FMT_JL2005BCD v4l2_fourcc('J', 'L', '2', '0') /* compressed RGGB bayer */
-#define V4L2_PIX_FMT_SN9C2028 v4l2_fourcc('S', 'O', 'N', 'X') /* compressed GBRG bayer */
-#define V4L2_PIX_FMT_SQ905C   v4l2_fourcc('9', '0', '5', 'C') /* compressed RGGB bayer */
-#define V4L2_PIX_FMT_PJPG     v4l2_fourcc('P', 'J', 'P', 'G') /* Pixart 73xx JPEG */
-#define V4L2_PIX_FMT_OV511    v4l2_fourcc('O', '5', '1', '1') /* ov511 JPEG */
-#define V4L2_PIX_FMT_OV518    v4l2_fourcc('O', '5', '1', '8') /* ov518 JPEG */
-#define V4L2_PIX_FMT_STV0680  v4l2_fourcc('S', '6', '8', '0') /* stv0680 bayer */
-#define V4L2_PIX_FMT_TM6000   v4l2_fourcc('T', 'M', '6', '0') /* tm5600/tm60x0 */
-#define V4L2_PIX_FMT_CIT_YYVYUY v4l2_fourcc('C', 'I', 'T', 'V') /* one line of Y then 1 line of VYUY */
-#define V4L2_PIX_FMT_KONICA420  v4l2_fourcc('K', 'O', 'N', 'I') /* YUV420 planar in blocks of 256 pixels */
-#define V4L2_PIX_FMT_JPGL	v4l2_fourcc('J', 'P', 'G', 'L') /* JPEG-Lite */
-#define V4L2_PIX_FMT_SE401      v4l2_fourcc('S', '4', '0', '1') /* se401 janggu compressed rgb */
-#define V4L2_PIX_FMT_S5C_UYVY_JPG v4l2_fourcc('S', '5', 'C', 'I') /* S5C73M3 interleaved UYVY/JPEG */
-
 #define fourcc_code(a, b, c, d) ((__u32)(a) | ((__u32)(b) << 8) | \
 				 ((__u32)(c) << 16) | ((__u32)(d) << 24))
 
diff --git a/include/video/media-bus-format.h b/include/video/media-bus-format.h
new file mode 100644
index 0000000..190d491
--- /dev/null
+++ b/include/video/media-bus-format.h
@@ -0,0 +1,137 @@
+/*
+ * Media Bus API header
+ *
+ * Copyright (C) 2009, Guennadi Liakhovetski <g.liakhovetski@gmx.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+#ifndef __LINUX_MEDIA_BUS_FORMAT_H
+#define __LINUX_MEDIA_BUS_FORMAT_H
+
+/*
+ * These bus formats uniquely identify data formats on the data bus. Format 0
+ * is reserved, MEDIA_BUS_FMT_FIXED shall be used by host-client pairs, where
+ * the data format is fixed. Additionally, "2X8" means that one pixel is
+ * transferred in two 8-bit samples, "BE" or "LE" specify in which order those
+ * samples are transferred over the bus: "LE" means that the least significant
+ * bits are transferred first, "BE" means that the most significant bits are
+ * transferred first, and "PADHI" and "PADLO" define which bits - low or high,
+ * in the incomplete high byte, are filled with padding bits.
+ *
+ * The bus formats are grouped by type, bus_width, bits per component, samples
+ * per pixel and order of subsamples. Numerical values are sorted using generic
+ * numerical sort order (8 thus comes before 10).
+ *
+ * As their value can't change when a new bus format is inserted in the
+ * enumeration, the bus formats are explicitly given a numerical value. The next
+ * free values for each category are listed below, update them when inserting
+ * new pixel codes.
+ */
+
+#define MEDIA_BUS_FMT_FIXED			0x0001
+
+/* RGB - next is	0x1018 */
+#define MEDIA_BUS_FMT_RGB444_1X12		0x1016
+#define MEDIA_BUS_FMT_RGB444_2X8_PADHI_BE	0x1001
+#define MEDIA_BUS_FMT_RGB444_2X8_PADHI_LE	0x1002
+#define MEDIA_BUS_FMT_RGB555_2X8_PADHI_BE	0x1003
+#define MEDIA_BUS_FMT_RGB555_2X8_PADHI_LE	0x1004
+#define MEDIA_BUS_FMT_RGB565_1X16		0x1017
+#define MEDIA_BUS_FMT_BGR565_2X8_BE		0x1005
+#define MEDIA_BUS_FMT_BGR565_2X8_LE		0x1006
+#define MEDIA_BUS_FMT_RGB565_2X8_BE		0x1007
+#define MEDIA_BUS_FMT_RGB565_2X8_LE		0x1008
+#define MEDIA_BUS_FMT_RGB666_1X18		0x1009
+#define MEDIA_BUS_FMT_RBG888_1X24		0x100e
+#define MEDIA_BUS_FMT_RGB666_1X24_CPADHI	0x1015
+#define MEDIA_BUS_FMT_RGB666_1X7X3_SPWG		0x1010
+#define MEDIA_BUS_FMT_BGR888_1X24		0x1013
+#define MEDIA_BUS_FMT_GBR888_1X24		0x1014
+#define MEDIA_BUS_FMT_RGB888_1X24		0x100a
+#define MEDIA_BUS_FMT_RGB888_2X12_BE		0x100b
+#define MEDIA_BUS_FMT_RGB888_2X12_LE		0x100c
+#define MEDIA_BUS_FMT_RGB888_1X7X4_SPWG		0x1011
+#define MEDIA_BUS_FMT_RGB888_1X7X4_JEIDA	0x1012
+#define MEDIA_BUS_FMT_ARGB8888_1X32		0x100d
+#define MEDIA_BUS_FMT_RGB888_1X32_PADHI		0x100f
+
+/* YUV (including grey) - next is	0x2026 */
+#define MEDIA_BUS_FMT_Y8_1X8			0x2001
+#define MEDIA_BUS_FMT_UV8_1X8			0x2015
+#define MEDIA_BUS_FMT_UYVY8_1_5X8		0x2002
+#define MEDIA_BUS_FMT_VYUY8_1_5X8		0x2003
+#define MEDIA_BUS_FMT_YUYV8_1_5X8		0x2004
+#define MEDIA_BUS_FMT_YVYU8_1_5X8		0x2005
+#define MEDIA_BUS_FMT_UYVY8_2X8			0x2006
+#define MEDIA_BUS_FMT_VYUY8_2X8			0x2007
+#define MEDIA_BUS_FMT_YUYV8_2X8			0x2008
+#define MEDIA_BUS_FMT_YVYU8_2X8			0x2009
+#define MEDIA_BUS_FMT_Y10_1X10			0x200a
+#define MEDIA_BUS_FMT_UYVY10_2X10		0x2018
+#define MEDIA_BUS_FMT_VYUY10_2X10		0x2019
+#define MEDIA_BUS_FMT_YUYV10_2X10		0x200b
+#define MEDIA_BUS_FMT_YVYU10_2X10		0x200c
+#define MEDIA_BUS_FMT_Y12_1X12			0x2013
+#define MEDIA_BUS_FMT_UYVY12_2X12		0x201c
+#define MEDIA_BUS_FMT_VYUY12_2X12		0x201d
+#define MEDIA_BUS_FMT_YUYV12_2X12		0x201e
+#define MEDIA_BUS_FMT_YVYU12_2X12		0x201f
+#define MEDIA_BUS_FMT_UYVY8_1X16		0x200f
+#define MEDIA_BUS_FMT_VYUY8_1X16		0x2010
+#define MEDIA_BUS_FMT_YUYV8_1X16		0x2011
+#define MEDIA_BUS_FMT_YVYU8_1X16		0x2012
+#define MEDIA_BUS_FMT_YDYUYDYV8_1X16		0x2014
+#define MEDIA_BUS_FMT_UYVY10_1X20		0x201a
+#define MEDIA_BUS_FMT_VYUY10_1X20		0x201b
+#define MEDIA_BUS_FMT_YUYV10_1X20		0x200d
+#define MEDIA_BUS_FMT_YVYU10_1X20		0x200e
+#define MEDIA_BUS_FMT_VUY8_1X24			0x2024
+#define MEDIA_BUS_FMT_YUV8_1X24			0x2025
+#define MEDIA_BUS_FMT_UYVY12_1X24		0x2020
+#define MEDIA_BUS_FMT_VYUY12_1X24		0x2021
+#define MEDIA_BUS_FMT_YUYV12_1X24		0x2022
+#define MEDIA_BUS_FMT_YVYU12_1X24		0x2023
+#define MEDIA_BUS_FMT_YUV10_1X30		0x2016
+#define MEDIA_BUS_FMT_AYUV8_1X32		0x2017
+
+/* Bayer - next is	0x3019 */
+#define MEDIA_BUS_FMT_SBGGR8_1X8		0x3001
+#define MEDIA_BUS_FMT_SGBRG8_1X8		0x3013
+#define MEDIA_BUS_FMT_SGRBG8_1X8		0x3002
+#define MEDIA_BUS_FMT_SRGGB8_1X8		0x3014
+#define MEDIA_BUS_FMT_SBGGR10_ALAW8_1X8		0x3015
+#define MEDIA_BUS_FMT_SGBRG10_ALAW8_1X8		0x3016
+#define MEDIA_BUS_FMT_SGRBG10_ALAW8_1X8		0x3017
+#define MEDIA_BUS_FMT_SRGGB10_ALAW8_1X8		0x3018
+#define MEDIA_BUS_FMT_SBGGR10_DPCM8_1X8		0x300b
+#define MEDIA_BUS_FMT_SGBRG10_DPCM8_1X8		0x300c
+#define MEDIA_BUS_FMT_SGRBG10_DPCM8_1X8		0x3009
+#define MEDIA_BUS_FMT_SRGGB10_DPCM8_1X8		0x300d
+#define MEDIA_BUS_FMT_SBGGR10_2X8_PADHI_BE	0x3003
+#define MEDIA_BUS_FMT_SBGGR10_2X8_PADHI_LE	0x3004
+#define MEDIA_BUS_FMT_SBGGR10_2X8_PADLO_BE	0x3005
+#define MEDIA_BUS_FMT_SBGGR10_2X8_PADLO_LE	0x3006
+#define MEDIA_BUS_FMT_SBGGR10_1X10		0x3007
+#define MEDIA_BUS_FMT_SGBRG10_1X10		0x300e
+#define MEDIA_BUS_FMT_SGRBG10_1X10		0x300a
+#define MEDIA_BUS_FMT_SRGGB10_1X10		0x300f
+#define MEDIA_BUS_FMT_SBGGR12_1X12		0x3008
+#define MEDIA_BUS_FMT_SGBRG12_1X12		0x3010
+#define MEDIA_BUS_FMT_SGRBG12_1X12		0x3011
+#define MEDIA_BUS_FMT_SRGGB12_1X12		0x3012
+
+/* JPEG compressed formats - next is	0x4002 */
+#define MEDIA_BUS_FMT_JPEG_1X8			0x4001
+
+/* Vendor specific formats - next is	0x5002 */
+
+/* S5C73M3 sensor specific interleaved UYVY and JPEG */
+#define MEDIA_BUS_FMT_S5C_UYVY_JPEG_1X8		0x5001
+
+/* HSV - next is	0x6002 */
+#define MEDIA_BUS_FMT_AHSV8888_1X32		0x6001
+
+#endif /* __LINUX_MEDIA_BUS_FORMAT_H */
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
