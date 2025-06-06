Delivery-date: Fri, 06 Jun 2025 07:59:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNQ6d-004HM9-0y
	for lore@lore.pengutronix.de;
	Fri, 06 Jun 2025 07:59:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNQ6W-00051m-Da
	for lore@pengutronix.de; Fri, 06 Jun 2025 07:59:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iRcSOv+HBaHy97F+2BJowedWIj8CJRiNA/3Xs4vVVCg=; b=C59/v7olXbTDNy4v11ir3Du7jo
	uZcJh00DHMsWjig2V3gNKvGgxHOPXUdb9YpodH6F/8UNKYaxs7RjnTVw4WjcbrWGCFp/uB1S1YH09
	zrkQgSY1vrczqu7lYJwNLwr88N0+hJ3UUJxc09SKu8ISbE81S8HPejxUhGyVESAZWMlVYYFj9+gNN
	joZlEy8LGnGNBAveVd8jpFGCl/VFLHL4lpC5tl+6jDnI7aCTwBqMYICH5WephxVs1+nTgzLVy7Aks
	MrLhMOSFNmMX4zeN6aknvyxlRwNKCWaaXJO+f6+0B92T2E3YSIU8jelMSGDOlrDcWPtoYL/V1uzPi
	Vds510Nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNQ5i-0000000H9Wj-0vfS;
	Fri, 06 Jun 2025 05:58:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNQ5T-0000000H9GL-0Sm7
	for barebox@lists.infradead.org;
	Fri, 06 Jun 2025 05:57:59 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uNQ5R-0003r4-QG; Fri, 06 Jun 2025 07:57:53 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri,  6 Jun 2025 07:57:47 +0200
Message-Id: <20250606055748.1990383-16-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250606055748.1990383-1-a.fatoum@barebox.org>
References: <20250606055748.1990383-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_225755_489099_559224A4 
X-CRM114-Status: GOOD (  24.74  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 15/16] video: add support for Orise Technology otm8009a panel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is the panel used on the STM32MP157C-DK2. Unfortunately, I have not
been successful in reading the panel ID via MIPI-DSI, but video mode
works fine.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/Kconfig                    |   9 +
 drivers/video/Makefile                   |   1 +
 drivers/video/panel-orisetech-otm8009a.c | 506 +++++++++++++++++++++++
 include/linux/gpio/consumer.h            |   3 +
 include/video/backlight.h                |  14 +
 include/video/drm/drm_connector.h        |   2 +
 6 files changed, 535 insertions(+)
 create mode 100644 drivers/video/panel-orisetech-otm8009a.c

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index c4b244fa5a98..2cf6bf6906d5 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -203,6 +203,15 @@ config DRIVER_VIDEO_PANEL_SITRONIX_ST7789V
 	  Say Y here if you want to enable support for the Sitronix
 	  ST7789V controller for 240x320 LCD panels
 
+config DRIVER_VIDEO_PANEL_ORISETECH_OTM8009A
+	tristate "Orise Technology otm8009a 480x800 dsi 2dl panel"
+	depends on OF
+	depends on DRIVER_VIDEO_MIPI_DSI
+	depends on DRIVER_VIDEO_BACKLIGHT
+	help
+	  Say Y here if you want to enable support for Orise Technology
+	  otm8009a 480x800 dsi 2dl panel.
+
 config DRIVER_VIDEO_PANEL_MIPI_DBI
 	tristate "MIPI DBI compatible panels"
 	depends on OFTREE && SPI
diff --git a/drivers/video/Makefile b/drivers/video/Makefile
index f6c309ead23b..470a5abaa450 100644
--- a/drivers/video/Makefile
+++ b/drivers/video/Makefile
@@ -15,6 +15,7 @@ obj-$(CONFIG_DRIVER_VIDEO_MIPI_DSI) += mipi_dsi.o
 obj-$(CONFIG_DRIVER_VIDEO_PANEL_ILITEK_ILI9341) += panel-ilitek-ili9341.o
 obj-$(CONFIG_DRIVER_VIDEO_PANEL_MIPI_DBI) += panel-mipi-dbi.o
 obj-$(CONFIG_DRIVER_VIDEO_PANEL_SITRONIX_ST7789V) += panel-sitronix-st7789v.o
+obj-$(CONFIG_DRIVER_VIDEO_PANEL_ORISETECH_OTM8009A) += panel-orisetech-otm8009a.o
 
 obj-$(CONFIG_DRIVER_VIDEO_ATMEL) += atmel_lcdfb.o atmel_lcdfb_core.o
 obj-$(CONFIG_DRIVER_VIDEO_ATMEL_HLCD) += atmel_hlcdfb.o atmel_lcdfb_core.o
diff --git a/drivers/video/panel-orisetech-otm8009a.c b/drivers/video/panel-orisetech-otm8009a.c
new file mode 100644
index 000000000000..3530547971d8
--- /dev/null
+++ b/drivers/video/panel-orisetech-otm8009a.c
@@ -0,0 +1,506 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) STMicroelectronics SA 2017
+ *
+ * Authors: Philippe Cornu <philippe.cornu@st.com>
+ *          Yannick Fertre <yannick.fertre@st.com>
+ */
+
+#include <video/backlight.h>
+#include <video/vpl.h>
+#include <clock.h>
+#include <linux/kernel.h>
+#include <linux/gpio/consumer.h>
+#include <video/media-bus-format.h>
+#include <linux/mod_devicetable.h>
+#include <linux/module.h>
+#include <regulator.h>
+
+#include <video/mipi_display.h>
+
+#include <video/mipi_dsi.h>
+#include <video/mipi_display.h>
+#include <video/drm/drm_modes.h>
+#include <video/videomode.h>
+
+#define OTM8009A_BACKLIGHT_DEFAULT	240
+#define OTM8009A_BACKLIGHT_MAX		255
+
+/* Manufacturer Command Set */
+#define MCS_ADRSFT	0x0000	/* Address Shift Function */
+#define MCS_PANSET	0xB3A6	/* Panel Type Setting */
+#define MCS_SD_CTRL	0xC0A2	/* Source Driver Timing Setting */
+#define MCS_P_DRV_M	0xC0B4	/* Panel Driving Mode */
+#define MCS_OSC_ADJ	0xC181	/* Oscillator Adjustment for Idle/Normal mode */
+#define MCS_RGB_VID_SET	0xC1A1	/* RGB Video Mode Setting */
+#define MCS_SD_PCH_CTRL	0xC480	/* Source Driver Precharge Control */
+#define MCS_NO_DOC1	0xC48A	/* Command not documented */
+#define MCS_PWR_CTRL1	0xC580	/* Power Control Setting 1 */
+#define MCS_PWR_CTRL2	0xC590	/* Power Control Setting 2 for Normal Mode */
+#define MCS_PWR_CTRL4	0xC5B0	/* Power Control Setting 4 for DC Voltage */
+#define MCS_PANCTRLSET1	0xCB80	/* Panel Control Setting 1 */
+#define MCS_PANCTRLSET2	0xCB90	/* Panel Control Setting 2 */
+#define MCS_PANCTRLSET3	0xCBA0	/* Panel Control Setting 3 */
+#define MCS_PANCTRLSET4	0xCBB0	/* Panel Control Setting 4 */
+#define MCS_PANCTRLSET5	0xCBC0	/* Panel Control Setting 5 */
+#define MCS_PANCTRLSET6	0xCBD0	/* Panel Control Setting 6 */
+#define MCS_PANCTRLSET7	0xCBE0	/* Panel Control Setting 7 */
+#define MCS_PANCTRLSET8	0xCBF0	/* Panel Control Setting 8 */
+#define MCS_PANU2D1	0xCC80	/* Panel U2D Setting 1 */
+#define MCS_PANU2D2	0xCC90	/* Panel U2D Setting 2 */
+#define MCS_PANU2D3	0xCCA0	/* Panel U2D Setting 3 */
+#define MCS_PAND2U1	0xCCB0	/* Panel D2U Setting 1 */
+#define MCS_PAND2U2	0xCCC0	/* Panel D2U Setting 2 */
+#define MCS_PAND2U3	0xCCD0	/* Panel D2U Setting 3 */
+#define MCS_GOAVST	0xCE80	/* GOA VST Setting */
+#define MCS_GOACLKA1	0xCEA0	/* GOA CLKA1 Setting */
+#define MCS_GOACLKA3	0xCEB0	/* GOA CLKA3 Setting */
+#define MCS_GOAECLK	0xCFC0	/* GOA ECLK Setting */
+#define MCS_NO_DOC2	0xCFD0	/* Command not documented */
+#define MCS_GVDDSET	0xD800	/* GVDD/NGVDD */
+#define MCS_VCOMDC	0xD900	/* VCOM Voltage Setting */
+#define MCS_GMCT2_2P	0xE100	/* Gamma Correction 2.2+ Setting */
+#define MCS_GMCT2_2N	0xE200	/* Gamma Correction 2.2- Setting */
+#define MCS_NO_DOC3	0xF5B6	/* Command not documented */
+#define MCS_CMD2_ENA1	0xFF00	/* Enable Access Command2 "CMD2" */
+#define MCS_CMD2_ENA2	0xFF80	/* Enable Access Orise Command2 */
+
+#define OTM8009A_HDISPLAY	480
+#define OTM8009A_VDISPLAY	800
+
+struct otm8009a {
+	struct device *dev;
+	struct vpl vpl;
+	struct backlight_device bl_dev;
+	struct gpio_desc *reset_gpio;
+	struct regulator *supply;
+	bool prepared;
+};
+
+static const struct drm_display_mode modes[] = {
+	{ /* 50 Hz, preferred */
+		.clock = 29700,
+		.hdisplay = 480,
+		.hsync_start = 480 + 98,
+		.hsync_end = 480 + 98 + 32,
+		.htotal = 480 + 98 + 32 + 98,
+		.vdisplay = 800,
+		.vsync_start = 800 + 15,
+		.vsync_end = 800 + 15 + 10,
+		.vtotal = 800 + 15 + 10 + 14,
+		.flags = DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
+		.width_mm = 52,
+		.height_mm = 86,
+	},
+	{ /* 60 Hz */
+		.clock = 33000,
+		.hdisplay = 480,
+		.hsync_start = 480 + 70,
+		.hsync_end = 480 + 70 + 32,
+		.htotal = 480 + 70 + 32 + 72,
+		.vdisplay = 800,
+		.vsync_start = 800 + 15,
+		.vsync_end = 800 + 15 + 10,
+		.vtotal = 800 + 15 + 10 + 16,
+		.flags = DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
+		.width_mm = 52,
+		.height_mm = 86,
+	},
+};
+
+static inline struct otm8009a *panel_to_otm8009a(struct vpl *vpl)
+{
+	return container_of(vpl, struct otm8009a, vpl);
+}
+
+static void otm8009a_dcs_write_buf(struct otm8009a *ctx, const void *data,
+				   size_t len)
+{
+	struct mipi_dsi_device *dsi = to_mipi_dsi_device(ctx->dev);
+
+	if (mipi_dsi_dcs_write_buffer(dsi, data, len) < 0)
+		dev_warn(ctx->dev, "mipi dsi dcs %swrite buffer [0x%02x..] failed\n",
+			 dsi->mode_flags & MIPI_DSI_MODE_LPM ? "" : "hs ",
+			 *(u8 *)data);
+}
+
+#define dcs_write_seq(ctx, seq...)			\
+({							\
+	static const u8 d[] = { seq };			\
+	otm8009a_dcs_write_buf(ctx, d, ARRAY_SIZE(d));	\
+})
+
+#define dcs_write_cmd_at(ctx, cmd, seq...)		\
+({							\
+	dcs_write_seq(ctx, MCS_ADRSFT, (cmd) & 0xFF);	\
+	dcs_write_seq(ctx, (cmd) >> 8, seq);		\
+})
+
+static int otm8009a_init_sequence(struct otm8009a *ctx)
+{
+	struct mipi_dsi_device *dsi = to_mipi_dsi_device(ctx->dev);
+	int ret;
+
+	/* Enter CMD2 */
+	dcs_write_cmd_at(ctx, MCS_CMD2_ENA1, 0x80, 0x09, 0x01);
+
+	/* Enter Orise Command2 */
+	dcs_write_cmd_at(ctx, MCS_CMD2_ENA2, 0x80, 0x09);
+
+	dcs_write_cmd_at(ctx, MCS_SD_PCH_CTRL, 0x30);
+	mdelay(10);
+
+	dcs_write_cmd_at(ctx, MCS_NO_DOC1, 0x40);
+	mdelay(10);
+
+	dcs_write_cmd_at(ctx, MCS_PWR_CTRL4 + 1, 0xA9);
+	dcs_write_cmd_at(ctx, MCS_PWR_CTRL2 + 1, 0x34);
+	dcs_write_cmd_at(ctx, MCS_P_DRV_M, 0x50);
+	dcs_write_cmd_at(ctx, MCS_VCOMDC, 0x4E);
+	dcs_write_cmd_at(ctx, MCS_OSC_ADJ, 0x66); /* 65Hz */
+	dcs_write_cmd_at(ctx, MCS_PWR_CTRL2 + 2, 0x01);
+	dcs_write_cmd_at(ctx, MCS_PWR_CTRL2 + 5, 0x34);
+	dcs_write_cmd_at(ctx, MCS_PWR_CTRL2 + 4, 0x33);
+	dcs_write_cmd_at(ctx, MCS_GVDDSET, 0x79, 0x79);
+	dcs_write_cmd_at(ctx, MCS_SD_CTRL + 1, 0x1B);
+	dcs_write_cmd_at(ctx, MCS_PWR_CTRL1 + 2, 0x83);
+	dcs_write_cmd_at(ctx, MCS_SD_PCH_CTRL + 1, 0x83);
+	dcs_write_cmd_at(ctx, MCS_RGB_VID_SET, 0x0E);
+	dcs_write_cmd_at(ctx, MCS_PANSET, 0x00, 0x01);
+
+	dcs_write_cmd_at(ctx, MCS_GOAVST, 0x85, 0x01, 0x00, 0x84, 0x01, 0x00);
+	dcs_write_cmd_at(ctx, MCS_GOACLKA1, 0x18, 0x04, 0x03, 0x39, 0x00, 0x00,
+			 0x00, 0x18, 0x03, 0x03, 0x3A, 0x00, 0x00, 0x00);
+	dcs_write_cmd_at(ctx, MCS_GOACLKA3, 0x18, 0x02, 0x03, 0x3B, 0x00, 0x00,
+			 0x00, 0x18, 0x01, 0x03, 0x3C, 0x00, 0x00, 0x00);
+	dcs_write_cmd_at(ctx, MCS_GOAECLK, 0x01, 0x01, 0x20, 0x20, 0x00, 0x00,
+			 0x01, 0x02, 0x00, 0x00);
+
+	dcs_write_cmd_at(ctx, MCS_NO_DOC2, 0x00);
+
+	dcs_write_cmd_at(ctx, MCS_PANCTRLSET1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
+	dcs_write_cmd_at(ctx, MCS_PANCTRLSET2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
+			 0, 0, 0, 0, 0);
+	dcs_write_cmd_at(ctx, MCS_PANCTRLSET3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
+			 0, 0, 0, 0, 0);
+	dcs_write_cmd_at(ctx, MCS_PANCTRLSET4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
+	dcs_write_cmd_at(ctx, MCS_PANCTRLSET5, 0, 4, 4, 4, 4, 4, 0, 0, 0, 0,
+			 0, 0, 0, 0, 0);
+	dcs_write_cmd_at(ctx, MCS_PANCTRLSET6, 0, 0, 0, 0, 0, 0, 4, 4, 4, 4,
+			 4, 0, 0, 0, 0);
+	dcs_write_cmd_at(ctx, MCS_PANCTRLSET7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
+	dcs_write_cmd_at(ctx, MCS_PANCTRLSET8, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
+			 0xFF, 0xFF, 0xFF, 0xFF, 0xFF);
+
+	dcs_write_cmd_at(ctx, MCS_PANU2D1, 0x00, 0x26, 0x09, 0x0B, 0x01, 0x25,
+			 0x00, 0x00, 0x00, 0x00);
+	dcs_write_cmd_at(ctx, MCS_PANU2D2, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+			 0x00, 0x00, 0x00, 0x00, 0x00, 0x26, 0x0A, 0x0C, 0x02);
+	dcs_write_cmd_at(ctx, MCS_PANU2D3, 0x25, 0x00, 0x00, 0x00, 0x00, 0x00,
+			 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
+	dcs_write_cmd_at(ctx, MCS_PAND2U1, 0x00, 0x25, 0x0C, 0x0A, 0x02, 0x26,
+			 0x00, 0x00, 0x00, 0x00);
+	dcs_write_cmd_at(ctx, MCS_PAND2U2, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+			 0x00, 0x00, 0x00, 0x00, 0x00, 0x25, 0x0B, 0x09, 0x01);
+	dcs_write_cmd_at(ctx, MCS_PAND2U3, 0x26, 0x00, 0x00, 0x00, 0x00, 0x00,
+			 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
+
+	dcs_write_cmd_at(ctx, MCS_PWR_CTRL1 + 1, 0x66);
+
+	dcs_write_cmd_at(ctx, MCS_NO_DOC3, 0x06);
+
+	dcs_write_cmd_at(ctx, MCS_GMCT2_2P, 0x00, 0x09, 0x0F, 0x0E, 0x07, 0x10,
+			 0x0B, 0x0A, 0x04, 0x07, 0x0B, 0x08, 0x0F, 0x10, 0x0A,
+			 0x01);
+	dcs_write_cmd_at(ctx, MCS_GMCT2_2N, 0x00, 0x09, 0x0F, 0x0E, 0x07, 0x10,
+			 0x0B, 0x0A, 0x04, 0x07, 0x0B, 0x08, 0x0F, 0x10, 0x0A,
+			 0x01);
+
+	/* Exit CMD2 */
+	dcs_write_cmd_at(ctx, MCS_CMD2_ENA1, 0xFF, 0xFF, 0xFF);
+
+	ret = mipi_dsi_dcs_nop(dsi);
+	if (ret)
+		return ret;
+
+	ret = mipi_dsi_dcs_exit_sleep_mode(dsi);
+	if (ret)
+		return ret;
+
+	/* Wait for sleep out exit */
+	mdelay(120);
+
+	/* Default portrait 480x800 rgb24 */
+	dcs_write_seq(ctx, MIPI_DCS_SET_ADDRESS_MODE, 0x00);
+
+	ret = mipi_dsi_dcs_set_column_address(dsi, 0, OTM8009A_HDISPLAY - 1);
+	if (ret)
+		return ret;
+
+	ret = mipi_dsi_dcs_set_page_address(dsi, 0, OTM8009A_VDISPLAY - 1);
+	if (ret)
+		return ret;
+
+	/* See otm8009a driver documentation for pixel format descriptions */
+	ret = mipi_dsi_dcs_set_pixel_format(dsi, MIPI_DCS_PIXEL_FMT_24BIT |
+					    MIPI_DCS_PIXEL_FMT_24BIT << 4);
+	if (ret)
+		return ret;
+
+	/* Disable CABC feature */
+	dcs_write_seq(ctx, MIPI_DCS_WRITE_POWER_SAVE, 0x00);
+
+	ret = mipi_dsi_dcs_set_display_on(dsi);
+	if (ret)
+		return ret;
+
+	ret = mipi_dsi_dcs_nop(dsi);
+	if (ret)
+		return ret;
+
+	/* Send Command GRAM memory write (no parameters) */
+	dcs_write_seq(ctx, MIPI_DCS_WRITE_MEMORY_START);
+
+	/* Wait a short while to let the panel be ready before the 1st frame */
+	mdelay(10);
+
+	return 0;
+}
+
+static int otm8009a_disable(struct otm8009a *ctx)
+{
+	struct mipi_dsi_device *dsi = to_mipi_dsi_device(ctx->dev);
+	int ret;
+
+	backlight_disable(&ctx->bl_dev);
+
+	ret = mipi_dsi_dcs_set_display_off(dsi);
+	if (ret)
+		return ret;
+
+	ret = mipi_dsi_dcs_enter_sleep_mode(dsi);
+	if (ret)
+		return ret;
+
+	mdelay(120);
+
+	return 0;
+}
+
+static int otm8009a_unprepare(struct otm8009a *ctx)
+{
+	if (ctx->reset_gpio) {
+		gpiod_set_value_cansleep(ctx->reset_gpio, 1);
+		mdelay(20);
+	}
+
+	regulator_disable(ctx->supply);
+
+	ctx->prepared = false;
+
+	return 0;
+}
+
+static int otm8009a_prepare(struct otm8009a *ctx)
+{
+	int ret;
+
+	ret = regulator_enable(ctx->supply);
+	if (ret < 0) {
+		dev_err(ctx->dev, "failed to enable supply: %pe\n", ERR_PTR(ret));
+		return ret;
+	}
+
+	if (ctx->reset_gpio) {
+		gpiod_set_value_cansleep(ctx->reset_gpio, 0);
+		gpiod_set_value_cansleep(ctx->reset_gpio, 1);
+		mdelay(1); /* >50us */
+		gpiod_set_value_cansleep(ctx->reset_gpio, 0);
+		mdelay(10); /* >5ms */
+	}
+
+	ret = otm8009a_init_sequence(ctx);
+	if (ret)
+		return ret;
+
+	ctx->prepared = true;
+
+	return 0;
+}
+
+static int otm8009a_enable(struct otm8009a *ctx)
+{
+	backlight_enable(&ctx->bl_dev);
+
+	return 0;
+}
+
+static int otm8009a_get_modes(struct otm8009a *ctx,
+			      struct display_timings *timings)
+{
+	struct fb_videomode *video_modes;
+	unsigned int num_modes = ARRAY_SIZE(modes);
+	unsigned int i;
+
+	video_modes = calloc(num_modes, sizeof(*video_modes));
+	if (!video_modes)
+		return -ENOMEM;
+
+	for (i = 0; i < num_modes; i++)
+		drm_display_mode_to_fb_videomode(&modes[i], &video_modes[i]);
+
+	timings->modes = video_modes;
+	timings->num_modes = num_modes;
+
+	return 0;
+}
+
+static int otm8009a_ioctl(struct vpl *vpl, unsigned int port,
+			  unsigned int cmd, void *ptr)
+{
+	struct otm8009a *ctx = panel_to_otm8009a(vpl);
+
+	switch (cmd) {
+	case VPL_PREPARE:
+		return otm8009a_prepare(ctx);
+	case VPL_ENABLE:
+		return otm8009a_enable(ctx);
+	case VPL_DISABLE:
+		return otm8009a_disable(ctx);
+	case VPL_UNPREPARE:
+		return otm8009a_unprepare(ctx);
+	case VPL_GET_VIDEOMODES:
+		return otm8009a_get_modes(ctx, ptr);
+	case VPL_GET_BUS_FORMAT:
+		*(u32 *)ptr = MEDIA_BUS_FMT_RGB888_1X24;
+		return 0;
+	default:
+		return 0;
+	}
+}
+
+/*
+ * DSI-BASED BACKLIGHT
+ */
+
+static int otm8009a_backlight_update_status(struct backlight_device *bd,
+					    int brightness)
+{
+	struct otm8009a *ctx = container_of(bd, struct otm8009a, bl_dev);
+	u8 data[2];
+
+	if (!ctx->prepared) {
+		dev_dbg(&bd->dev, "lcd not ready yet for setting its backlight!\n");
+		return -ENXIO;
+	}
+
+	if (brightness > 0) {
+		/* Power on the backlight with the requested brightness
+		 * Note We can not use mipi_dsi_dcs_set_display_brightness()
+		 * as otm8009a driver support only 8-bit brightness (1 param).
+		 */
+		data[0] = MIPI_DCS_SET_DISPLAY_BRIGHTNESS;
+		data[1] = brightness;
+		otm8009a_dcs_write_buf(ctx, data, ARRAY_SIZE(data));
+
+		/* set Brightness Control & Backlight on */
+		data[1] = 0x24;
+
+	} else {
+		/* Power off the backlight: set Brightness Control & Bl off */
+		data[1] = 0;
+	}
+
+	/* Update Brightness Control & Backlight */
+	data[0] = MIPI_DCS_WRITE_CONTROL_DISPLAY;
+	otm8009a_dcs_write_buf(ctx, data, ARRAY_SIZE(data));
+
+	/* Need to wait a few time before sending the first image */
+	mdelay(10);
+
+	return 0;
+}
+
+static int otm8009a_probe(struct mipi_dsi_device *dsi)
+{
+	struct device *dev = &dsi->dev;
+	struct backlight_device *bl_dev;
+	struct otm8009a *ctx;
+	int ret;
+
+	ctx = devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
+	if (!ctx)
+		return -ENOMEM;
+
+	ctx->reset_gpio = gpiod_get_optional(dev, "reset", GPIOD_OUT_LOW);
+	if (IS_ERR(ctx->reset_gpio)) {
+		dev_err(dev, "cannot get reset-gpio\n");
+		return PTR_ERR(ctx->reset_gpio);
+	}
+
+	ctx->supply = regulator_get(dev, "power");
+	if (IS_ERR(ctx->supply)) {
+		ret = PTR_ERR(ctx->supply);
+		if (ret != -EPROBE_DEFER)
+			dev_err(dev, "failed to request regulator: %pe\n", ERR_PTR(ret));
+		return ret;
+	}
+
+	mipi_dsi_set_drvdata(dsi, ctx);
+
+	ctx->dev = dev;
+
+	dsi->lanes = 2;
+	dsi->format = MIPI_DSI_FMT_RGB888;
+	dsi->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
+			  MIPI_DSI_MODE_LPM | MIPI_DSI_CLOCK_NON_CONTINUOUS;
+
+	ctx->vpl.node = dev->of_node;
+	ctx->vpl.ioctl = otm8009a_ioctl;
+
+	ret = vpl_register(&ctx->vpl);
+	if (ret)
+		return ret;
+
+	ret = mipi_dsi_attach(dsi);
+	if (ret < 0) {
+		dev_err(dev, "mipi_dsi_attach failed. Is host ready?\n");
+		return ret;
+	}
+
+	bl_dev = &ctx->bl_dev;
+
+	bl_dev->brightness_max = OTM8009A_BACKLIGHT_MAX;
+	bl_dev->brightness_default = OTM8009A_BACKLIGHT_DEFAULT;
+	bl_dev->brightness_set = otm8009a_backlight_update_status;
+	bl_dev->dev.parent = dev;
+	bl_dev->node = dev->of_node;
+
+	ret = backlight_register(bl_dev);
+	if (ret) {
+		dev_err(dev, "failed to register backlight: %pe\n", ERR_PTR(ret));
+		return ret;
+	}
+
+	return 0;
+}
+
+static const struct of_device_id orisetech_otm8009a_of_match[] = {
+	{ .compatible = "orisetech,otm8009a" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, orisetech_otm8009a_of_match);
+
+static struct mipi_dsi_driver orisetech_otm8009a_driver = {
+	.probe  = otm8009a_probe,
+	.driver = {
+		.name = "panel-orisetech-otm8009a",
+		.of_match_table = orisetech_otm8009a_of_match,
+	},
+};
+module_mipi_dsi_driver(orisetech_otm8009a_driver);
+
+MODULE_AUTHOR("Philippe Cornu <philippe.cornu@st.com>");
+MODULE_AUTHOR("Yannick Fertre <yannick.fertre@st.com>");
+MODULE_DESCRIPTION("DRM driver for Orise Tech OTM8009A MIPI DSI panel");
+MODULE_LICENSE("GPL v2");
diff --git a/include/linux/gpio/consumer.h b/include/linux/gpio/consumer.h
index 288fd7a030e9..c461f3f3108b 100644
--- a/include/linux/gpio/consumer.h
+++ b/include/linux/gpio/consumer.h
@@ -234,6 +234,9 @@ struct gpio_desc *gpiod_request_one(unsigned gpio,
 
 #endif
 
+#define gpiod_get_value_cansleep	gpiod_get_value
+#define gpiod_set_value_cansleep	gpiod_set_value
+
 static inline struct gpio_desc *dev_gpiod_get(struct device *dev,
 				struct device_node *np,
 				const char *con_id,
diff --git a/include/video/backlight.h b/include/video/backlight.h
index dcb8e8c5e10e..13e852152ea9 100644
--- a/include/video/backlight.h
+++ b/include/video/backlight.h
@@ -3,6 +3,8 @@
 #ifndef __VIDEO_BACKLIGHT_H
 #define __VIDEO_BACKLIGHT_H
 
+#include <device.h>
+
 #ifdef CONFIG_DRIVER_VIDEO_BACKLIGHT
 struct backlight_device {
 	int brightness;
@@ -36,4 +38,16 @@ static inline struct backlight_device *
 of_backlight_find(struct device_node *node) { return NULL; }
 #endif
 
+static inline int
+backlight_enable(struct backlight_device *dev)
+{
+	return dev ? backlight_set_brightness_default(dev) : 0;
+}
+
+static inline int
+backlight_disable(struct backlight_device *dev)
+{
+	return dev ? backlight_set_brightness(dev, 0) : 0;
+}
+
 #endif /* __VIDEO_BACKLIGHT_H */
diff --git a/include/video/drm/drm_connector.h b/include/video/drm/drm_connector.h
index 53ec7d3b79cb..40edc9e627a6 100644
--- a/include/video/drm/drm_connector.h
+++ b/include/video/drm/drm_connector.h
@@ -24,6 +24,8 @@
 #define __DRM_CONNECTOR_H__
 
 #include <uapi/drm/drm_mode.h>
+#include <linux/types.h>
+#include <linux/bitops.h>
 
 enum drm_connector_force {
 	DRM_FORCE_UNSPECIFIED,
-- 
2.39.5



