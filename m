Delivery-date: Thu, 26 Sep 2024 15:16:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stoLq-0030sG-2f
	for lore@lore.pengutronix.de;
	Thu, 26 Sep 2024 15:16:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stoLk-0005rg-UC
	for lore@pengutronix.de; Thu, 26 Sep 2024 15:16:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uxIWbEcVq2+qXac1AcHYJXxeM6KbpfbFcGf5E4uxrfw=; b=RtAzR5kH3+sz8IuCF2r5ErBMWI
	lSvJ5HzQBFcEzlIS8ddeVu012HnUkbDQGAFm6OYEzcssT1dBDqeO6Kp1I7dUHTEYusQhtb3ZsMY+V
	hYsqssPhGPI2tzCPTi/SyqM9vJKvkWHF9ZGrSHLRDPF5arVJiqUA4bHQwfJCyDeLbk/DjrZXv57Fc
	zDJDb3ySVPXUZ+luUOJSr+f5A32RAF0W/lqo0CRirX5u9ztAC/b5B9dhFcVIoH4UtzTX31Ci/vi3C
	N634fPcWDU7ImXDMEI+y+1Armpr4nihLzLhVkq/+xHTn1gQEo9skHM7JuMuGZSv17yGGATWiQlN3v
	z9TjfcMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stoKx-00000008R00-2WwN;
	Thu, 26 Sep 2024 13:15:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stoKn-00000008Qvu-3rGA
	for barebox@lists.infradead.org;
	Thu, 26 Sep 2024 13:15:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stoKl-0004uo-Px; Thu, 26 Sep 2024 15:15:03 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stoKl-001h7G-5P; Thu, 26 Sep 2024 15:15:03 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stoKl-00GZyn-1i;
	Thu, 26 Sep 2024 15:15:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 26 Sep 2024 15:15:05 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240926-vop2-v1-7-fe0581f2020b@pengutronix.de>
References: <20240926-vop2-v1-0-fe0581f2020b@pengutronix.de>
In-Reply-To: <20240926-vop2-v1-0-fe0581f2020b@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727356502; l=23242;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Qd2xzt0sVYSPg5NglhCWsgYTOoCD5LPXzDpoGxTygcY=;
 b=8svRBiAVo/rhA3uw3TWoFTknQrlPUHghzkJMCsqY0nDzjrq6sA2PCyrLlaclC7bh0lFIfl9bc
 o9xi5C+I4eQCTgo8HNEeA2Wx8Fydp0c0BsZc5Y0d/W1q23kNxqpBsZL
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_061506_367209_06F416EB 
X-CRM114-Status: GOOD (  20.09  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 07/13] video: Add Sitronix st7789v panel driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds a panel driver for the Sitronix st7789v panel based
on the corresponding Linux-6.10 driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/Kconfig                  |   8 +
 drivers/video/Makefile                 |   1 +
 drivers/video/panel-sitronix-st7789v.c | 652 +++++++++++++++++++++++++++++++++
 include/video/vpl.h                    |   1 +
 4 files changed, 662 insertions(+)

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index 9e176d3198..e86f511da4 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -186,6 +186,14 @@ config DRIVER_VIDEO_PANEL_ILITEK_ILI9341
 	  QVGA (240x320) RGB panels. support serial & parallel rgb
 	  interface.
 
+config DRIVER_VIDEO_PANEL_SITRONIX_ST7789V
+	tristate "Sitronix ST7789V panel"
+	depends on OFTREE && SPI
+	select VIDEO_VPL
+	help
+	  Say Y here if you want to enable support for the Sitronix
+	  ST7789V controller for 240x320 LCD panels
+
 config DRIVER_VIDEO_PANEL_MIPI_DBI
 	tristate "DRM support for MIPI DBI compatible panels"
 	depends on OFTREE && SPI
diff --git a/drivers/video/Makefile b/drivers/video/Makefile
index 9e6a241a33..37a184a7e2 100644
--- a/drivers/video/Makefile
+++ b/drivers/video/Makefile
@@ -12,6 +12,7 @@ obj-$(CONFIG_DRIVER_VIDEO_SIMPLE_PANEL) += simple-panel.o
 obj-$(CONFIG_DRIVER_VIDEO_MIPI_DBI) += mipi_dbi.o
 obj-$(CONFIG_DRIVER_VIDEO_PANEL_ILITEK_ILI9341) += panel-ilitek-ili9341.o
 obj-$(CONFIG_DRIVER_VIDEO_PANEL_MIPI_DBI) += panel-mipi-dbi.o
+obj-$(CONFIG_DRIVER_VIDEO_PANEL_SITRONIX_ST7789V) += panel-sitronix-st7789v.o
 
 obj-$(CONFIG_DRIVER_VIDEO_ATMEL) += atmel_lcdfb.o atmel_lcdfb_core.o
 obj-$(CONFIG_DRIVER_VIDEO_ATMEL_HLCD) += atmel_hlcdfb.o atmel_lcdfb_core.o
diff --git a/drivers/video/panel-sitronix-st7789v.c b/drivers/video/panel-sitronix-st7789v.c
new file mode 100644
index 0000000000..36852fb88e
--- /dev/null
+++ b/drivers/video/panel-sitronix-st7789v.c
@@ -0,0 +1,652 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2017 Free Electrons
+ */
+
+#include <driver.h>
+#include <linux/gpio/consumer.h>
+#include <linux/module.h>
+#include <regulator.h>
+#include <spi/spi.h>
+#include <fb.h>
+#include <linux/device.h>
+#include <video/vpl.h>
+#include <video/videomode.h>
+#include <video/drm/drm_connector.h>
+#include <video/mipi_display.h>
+#include <video/media-bus-format.h>
+
+#define ST7789V_RAMCTRL_CMD		0xb0
+#define ST7789V_RAMCTRL_RM_RGB			BIT(4)
+#define ST7789V_RAMCTRL_DM_RGB			BIT(0)
+#define ST7789V_RAMCTRL_MAGIC			(3 << 6)
+#define ST7789V_RAMCTRL_EPF(n)			(((n) & 3) << 4)
+
+#define ST7789V_RGBCTRL_CMD		0xb1
+#define ST7789V_RGBCTRL_WO			BIT(7)
+#define ST7789V_RGBCTRL_RCM(n)			(((n) & 3) << 5)
+#define ST7789V_RGBCTRL_VSYNC_HIGH		BIT(3)
+#define ST7789V_RGBCTRL_HSYNC_HIGH		BIT(2)
+#define ST7789V_RGBCTRL_PCLK_FALLING		BIT(1)
+#define ST7789V_RGBCTRL_DE_LOW			BIT(0)
+#define ST7789V_RGBCTRL_VBP(n)			((n) & 0x7f)
+#define ST7789V_RGBCTRL_HBP(n)			((n) & 0x1f)
+
+#define ST7789V_PORCTRL_CMD		0xb2
+#define ST7789V_PORCTRL_IDLE_BP(n)		(((n) & 0xf) << 4)
+#define ST7789V_PORCTRL_IDLE_FP(n)		((n) & 0xf)
+#define ST7789V_PORCTRL_PARTIAL_BP(n)		(((n) & 0xf) << 4)
+#define ST7789V_PORCTRL_PARTIAL_FP(n)		((n) & 0xf)
+
+#define ST7789V_GCTRL_CMD		0xb7
+#define ST7789V_GCTRL_VGHS(n)			(((n) & 7) << 4)
+#define ST7789V_GCTRL_VGLS(n)			((n) & 7)
+
+#define ST7789V_VCOMS_CMD		0xbb
+
+#define ST7789V_LCMCTRL_CMD		0xc0
+#define ST7789V_LCMCTRL_XBGR			BIT(5)
+#define ST7789V_LCMCTRL_XMX			BIT(3)
+#define ST7789V_LCMCTRL_XMH			BIT(2)
+
+#define ST7789V_VDVVRHEN_CMD		0xc2
+#define ST7789V_VDVVRHEN_CMDEN			BIT(0)
+
+#define ST7789V_VRHS_CMD		0xc3
+
+#define ST7789V_VDVS_CMD		0xc4
+
+#define ST7789V_FRCTRL2_CMD		0xc6
+
+#define ST7789V_PWCTRL1_CMD		0xd0
+#define ST7789V_PWCTRL1_MAGIC			0xa4
+#define ST7789V_PWCTRL1_AVDD(n)			(((n) & 3) << 6)
+#define ST7789V_PWCTRL1_AVCL(n)			(((n) & 3) << 4)
+#define ST7789V_PWCTRL1_VDS(n)			((n) & 3)
+
+#define ST7789V_PVGAMCTRL_CMD		0xe0
+#define ST7789V_PVGAMCTRL_JP0(n)		(((n) & 3) << 4)
+#define ST7789V_PVGAMCTRL_JP1(n)		(((n) & 3) << 4)
+#define ST7789V_PVGAMCTRL_VP0(n)		((n) & 0xf)
+#define ST7789V_PVGAMCTRL_VP1(n)		((n) & 0x3f)
+#define ST7789V_PVGAMCTRL_VP2(n)		((n) & 0x3f)
+#define ST7789V_PVGAMCTRL_VP4(n)		((n) & 0x1f)
+#define ST7789V_PVGAMCTRL_VP6(n)		((n) & 0x1f)
+#define ST7789V_PVGAMCTRL_VP13(n)		((n) & 0xf)
+#define ST7789V_PVGAMCTRL_VP20(n)		((n) & 0x7f)
+#define ST7789V_PVGAMCTRL_VP27(n)		((n) & 7)
+#define ST7789V_PVGAMCTRL_VP36(n)		(((n) & 7) << 4)
+#define ST7789V_PVGAMCTRL_VP43(n)		((n) & 0x7f)
+#define ST7789V_PVGAMCTRL_VP50(n)		((n) & 0xf)
+#define ST7789V_PVGAMCTRL_VP57(n)		((n) & 0x1f)
+#define ST7789V_PVGAMCTRL_VP59(n)		((n) & 0x1f)
+#define ST7789V_PVGAMCTRL_VP61(n)		((n) & 0x3f)
+#define ST7789V_PVGAMCTRL_VP62(n)		((n) & 0x3f)
+#define ST7789V_PVGAMCTRL_VP63(n)		(((n) & 0xf) << 4)
+
+#define ST7789V_NVGAMCTRL_CMD		0xe1
+#define ST7789V_NVGAMCTRL_JN0(n)		(((n) & 3) << 4)
+#define ST7789V_NVGAMCTRL_JN1(n)		(((n) & 3) << 4)
+#define ST7789V_NVGAMCTRL_VN0(n)		((n) & 0xf)
+#define ST7789V_NVGAMCTRL_VN1(n)		((n) & 0x3f)
+#define ST7789V_NVGAMCTRL_VN2(n)		((n) & 0x3f)
+#define ST7789V_NVGAMCTRL_VN4(n)		((n) & 0x1f)
+#define ST7789V_NVGAMCTRL_VN6(n)		((n) & 0x1f)
+#define ST7789V_NVGAMCTRL_VN13(n)		((n) & 0xf)
+#define ST7789V_NVGAMCTRL_VN20(n)		((n) & 0x7f)
+#define ST7789V_NVGAMCTRL_VN27(n)		((n) & 7)
+#define ST7789V_NVGAMCTRL_VN36(n)		(((n) & 7) << 4)
+#define ST7789V_NVGAMCTRL_VN43(n)		((n) & 0x7f)
+#define ST7789V_NVGAMCTRL_VN50(n)		((n) & 0xf)
+#define ST7789V_NVGAMCTRL_VN57(n)		((n) & 0x1f)
+#define ST7789V_NVGAMCTRL_VN59(n)		((n) & 0x1f)
+#define ST7789V_NVGAMCTRL_VN61(n)		((n) & 0x3f)
+#define ST7789V_NVGAMCTRL_VN62(n)		((n) & 0x3f)
+#define ST7789V_NVGAMCTRL_VN63(n)		(((n) & 0xf) << 4)
+
+#define ST7789V_TEST(val, func)			\
+	do {					\
+		if ((val = (func)))		\
+			return val;		\
+	} while (0)
+
+#define ST7789V_IDS { 0x85, 0x85, 0x52 }
+#define ST7789V_IDS_SIZE 3
+
+struct st7789_panel_info {
+	const struct drm_display_mode *mode;
+	u32 bus_format;
+	u32 bus_flags;
+	bool invert_mode;
+	bool partial_mode;
+	u16 partial_start;
+	u16 partial_end;
+};
+
+struct st7789v {
+	const struct st7789_panel_info *info;
+	struct spi_device *spi;
+	struct gpio_desc *reset;
+	struct regulator *power;
+	enum drm_panel_orientation orientation;
+	struct device *dev;
+	struct vpl vpl;
+};
+
+enum st7789v_prefix {
+	ST7789V_COMMAND = 0,
+	ST7789V_DATA = 1,
+};
+
+static int st7789v_spi_write(struct st7789v *ctx, enum st7789v_prefix prefix,
+			     u8 data)
+{
+	struct spi_transfer xfer = { };
+	u16 txbuf = ((prefix & 1) << 8) | data;
+
+	xfer.tx_buf = &txbuf;
+	xfer.len = sizeof(txbuf);
+
+	return spi_sync_transfer(ctx->spi, &xfer, 1);
+}
+
+static int st7789v_write_command(struct st7789v *ctx, u8 cmd)
+{
+	return st7789v_spi_write(ctx, ST7789V_COMMAND, cmd);
+}
+
+static int st7789v_write_data(struct st7789v *ctx, u8 cmd)
+{
+	return st7789v_spi_write(ctx, ST7789V_DATA, cmd);
+}
+
+static int st7789v_read_data(struct st7789v *ctx, u8 cmd, u8 *buf,
+			     unsigned int len)
+{
+	struct spi_transfer xfer[2] = { };
+	struct spi_message msg;
+	u16 txbuf = ((ST7789V_COMMAND & 1) << 8) | cmd;
+	u16 rxbuf[4] = {};
+	u8 bit9 = 0;
+	int ret, i;
+
+	switch (len) {
+	case 1:
+	case 3:
+	case 4:
+		break;
+	default:
+		return -EOPNOTSUPP;
+	}
+
+	spi_message_init(&msg);
+
+	xfer[0].tx_buf = &txbuf;
+	xfer[0].len = sizeof(txbuf);
+	spi_message_add_tail(&xfer[0], &msg);
+
+	xfer[1].rx_buf = rxbuf;
+	xfer[1].len = len * 2;
+	spi_message_add_tail(&xfer[1], &msg);
+
+	ret = spi_sync(ctx->spi, &msg);
+	if (ret)
+		return ret;
+
+	for (i = 0; i < len; i++) {
+		buf[i] = rxbuf[i] >> i | (bit9 << (9 - i));
+		if (i)
+			bit9 = rxbuf[i] & GENMASK(i - 1, 0);
+	}
+
+	return 0;
+}
+
+static int st7789v_check_id(struct st7789v *ctx)
+{
+	const u8 st7789v_ids[ST7789V_IDS_SIZE] = ST7789V_IDS;
+	bool invalid_ids = false;
+	int ret, i;
+	u8 ids[3];
+
+	ret = st7789v_read_data(ctx, MIPI_DCS_GET_DISPLAY_ID, ids, ST7789V_IDS_SIZE);
+	if (ret)
+		return ret;
+printf("%s: %02x %02x %02x\n", __func__, ids[0], ids[1], ids[2]);
+	for (i = 0; i < ST7789V_IDS_SIZE; i++) {
+		if (ids[i] != st7789v_ids[i]) {
+			invalid_ids = true;
+			break;
+		}
+	}
+
+	if (invalid_ids)
+		return -EIO;
+
+	return 0;
+}
+
+static const struct drm_display_mode default_mode = {
+	.clock = 7000,
+	.hdisplay = 240,
+	.hsync_start = 240 + 38,
+	.hsync_end = 240 + 38 + 10,
+	.htotal = 240 + 38 + 10 + 10,
+	.vdisplay = 320,
+	.vsync_start = 320 + 8,
+	.vsync_end = 320 + 8 + 4,
+	.vtotal = 320 + 8 + 4 + 4,
+	.width_mm = 61,
+	.height_mm = 103,
+	.flags = DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC,
+};
+
+static const struct drm_display_mode t28cp45tn89_mode = {
+	.clock = 6008,
+	.hdisplay = 240,
+	.hsync_start = 240 + 38,
+	.hsync_end = 240 + 38 + 10,
+	.htotal = 240 + 38 + 10 + 10,
+	.vdisplay = 320,
+	.vsync_start = 320 + 8,
+	.vsync_end = 320 + 8 + 4,
+	.vtotal = 320 + 8 + 4 + 4,
+	.width_mm = 43,
+	.height_mm = 57,
+	.flags = DRM_MODE_FLAG_PVSYNC | DRM_MODE_FLAG_NVSYNC,
+};
+
+static const struct drm_display_mode et028013dma_mode = {
+	.clock = 3000,
+	.hdisplay = 240,
+	.hsync_start = 240 + 38,
+	.hsync_end = 240 + 38 + 10,
+	.htotal = 240 + 38 + 10 + 10,
+	.vdisplay = 320,
+	.vsync_start = 320 + 8,
+	.vsync_end = 320 + 8 + 4,
+	.vtotal = 320 + 8 + 4 + 4,
+	.width_mm = 43,
+	.height_mm = 58,
+	.flags = DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC,
+};
+
+static const struct drm_display_mode jt240mhqs_hwt_ek_e3_mode = {
+	.clock = 6000,
+	.hdisplay = 240,
+	.hsync_start = 240 + 28,
+	.hsync_end = 240 + 28 + 10,
+	.htotal = 240 + 28 + 10 + 10,
+	.vdisplay = 280,
+	.vsync_start = 280 + 8,
+	.vsync_end = 280 + 8 + 4,
+	.vtotal = 280 + 8 + 4 + 4,
+	.width_mm = 43,
+	.height_mm = 37,
+	.flags = DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC,
+};
+
+static const struct st7789_panel_info default_panel = {
+	.mode = &default_mode,
+	.invert_mode = true,
+	.bus_format = MEDIA_BUS_FMT_RGB666_1X18,
+	.bus_flags = DRM_BUS_FLAG_DE_HIGH |
+		     DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE,
+};
+
+static const struct st7789_panel_info t28cp45tn89_panel = {
+	.mode = &t28cp45tn89_mode,
+	.invert_mode = false,
+	.bus_format = MEDIA_BUS_FMT_RGB565_1X16,
+	.bus_flags = DRM_BUS_FLAG_DE_HIGH |
+		     DRM_BUS_FLAG_PIXDATA_SAMPLE_POSEDGE,
+};
+
+static const struct st7789_panel_info et028013dma_panel = {
+	.mode = &et028013dma_mode,
+	.invert_mode = true,
+	.bus_format = MEDIA_BUS_FMT_RGB666_1X18,
+	.bus_flags = DRM_BUS_FLAG_DE_HIGH |
+		     DRM_BUS_FLAG_PIXDATA_SAMPLE_POSEDGE,
+};
+
+static const struct st7789_panel_info jt240mhqs_hwt_ek_e3_panel = {
+	.mode = &jt240mhqs_hwt_ek_e3_mode,
+	.invert_mode = true,
+	.bus_format = MEDIA_BUS_FMT_RGB666_1X18,
+	.bus_flags = DRM_BUS_FLAG_DE_HIGH |
+		     DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE,
+	.partial_mode = true,
+	.partial_start = 38,
+	.partial_end = 318,
+};
+
+static int st7789v_get_modes(struct st7789v *ctx,
+			     struct display_timings *timings)
+{
+	struct fb_videomode *mode;
+
+	mode = xzalloc(sizeof(*mode));
+
+	drm_display_mode_to_fb_videomode(ctx->info->mode, mode);
+
+	timings->modes = mode;
+	timings->num_modes = 1;
+
+	return 0;
+}
+
+static int st7789v_get_display_info(struct st7789v *ctx,
+			     struct drm_display_info *display_info)
+{
+	display_info->bus_flags = ctx->info->bus_flags;
+	display_info->panel_orientation = ctx->orientation;
+
+	return 0;
+}
+
+static int st7789v_prepare(struct st7789v *ctx)
+{
+	u8 mode, pixel_fmt, polarity;
+	int ret;
+
+	if (!ctx->info->partial_mode)
+		mode = ST7789V_RGBCTRL_WO;
+	else
+		mode = 0;
+
+	switch (ctx->info->bus_format) {
+	case MEDIA_BUS_FMT_RGB666_1X18:
+		pixel_fmt = MIPI_DCS_PIXEL_FMT_18BIT;
+		break;
+	case MEDIA_BUS_FMT_RGB565_1X16:
+		pixel_fmt = MIPI_DCS_PIXEL_FMT_16BIT;
+		break;
+	default:
+		dev_err(ctx->dev, "unsupported bus format: %d\n",
+			ctx->info->bus_format);
+		return -EINVAL;
+	}
+
+	pixel_fmt = (pixel_fmt << 4) | pixel_fmt;
+
+	polarity = 0;
+	if (ctx->info->mode->flags & DRM_MODE_FLAG_PVSYNC)
+		polarity |= ST7789V_RGBCTRL_VSYNC_HIGH;
+	if (ctx->info->mode->flags & DRM_MODE_FLAG_PHSYNC)
+		polarity |= ST7789V_RGBCTRL_HSYNC_HIGH;
+	if (ctx->info->bus_flags & DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE)
+		polarity |= ST7789V_RGBCTRL_PCLK_FALLING;
+	if (ctx->info->bus_flags & DRM_BUS_FLAG_DE_LOW)
+		polarity |= ST7789V_RGBCTRL_DE_LOW;
+
+	ret = regulator_enable(ctx->power);
+	if (ret)
+		return ret;
+
+	gpiod_set_value(ctx->reset, 1);
+	mdelay(30);
+	gpiod_set_value(ctx->reset, 0);
+	mdelay(120);
+
+	/*
+	 * Avoid failing if the IDs are invalid in case the Rx bus width
+	 * description is missing.
+	 */
+	ret = st7789v_check_id(ctx);
+	if (ret)
+		dev_warn(ctx->dev, "Unrecognized panel IDs");
+
+	ST7789V_TEST(ret, st7789v_write_command(ctx, MIPI_DCS_EXIT_SLEEP_MODE));
+
+	/* We need to wait 120ms after a sleep out command */
+	mdelay(120);
+
+	ST7789V_TEST(ret, st7789v_write_command(ctx,
+						MIPI_DCS_SET_ADDRESS_MODE));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, 0));
+
+	ST7789V_TEST(ret, st7789v_write_command(ctx,
+						MIPI_DCS_SET_PIXEL_FORMAT));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, pixel_fmt));
+
+	ST7789V_TEST(ret, st7789v_write_command(ctx, ST7789V_PORCTRL_CMD));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, 0xc));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, 0xc));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, 0));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_PORCTRL_IDLE_BP(3) |
+					     ST7789V_PORCTRL_IDLE_FP(3)));
+	ST7789V_TEST(ret, st7789v_write_data(ctx,
+					     ST7789V_PORCTRL_PARTIAL_BP(3) |
+					     ST7789V_PORCTRL_PARTIAL_FP(3)));
+
+	ST7789V_TEST(ret, st7789v_write_command(ctx, ST7789V_GCTRL_CMD));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_GCTRL_VGLS(5) |
+					     ST7789V_GCTRL_VGHS(3)));
+
+	ST7789V_TEST(ret, st7789v_write_command(ctx, ST7789V_VCOMS_CMD));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, 0x2b));
+
+	ST7789V_TEST(ret, st7789v_write_command(ctx, ST7789V_LCMCTRL_CMD));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_LCMCTRL_XMH |
+					     ST7789V_LCMCTRL_XMX |
+					     ST7789V_LCMCTRL_XBGR));
+
+	ST7789V_TEST(ret, st7789v_write_command(ctx, ST7789V_VDVVRHEN_CMD));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_VDVVRHEN_CMDEN));
+
+	ST7789V_TEST(ret, st7789v_write_command(ctx, ST7789V_VRHS_CMD));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, 0xf));
+
+	ST7789V_TEST(ret, st7789v_write_command(ctx, ST7789V_VDVS_CMD));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, 0x20));
+
+	ST7789V_TEST(ret, st7789v_write_command(ctx, ST7789V_FRCTRL2_CMD));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, 0xf));
+
+	ST7789V_TEST(ret, st7789v_write_command(ctx, ST7789V_PWCTRL1_CMD));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_PWCTRL1_MAGIC));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_PWCTRL1_AVDD(2) |
+					     ST7789V_PWCTRL1_AVCL(2) |
+					     ST7789V_PWCTRL1_VDS(1)));
+
+	ST7789V_TEST(ret, st7789v_write_command(ctx, ST7789V_PVGAMCTRL_CMD));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_PVGAMCTRL_VP63(0xd)));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_PVGAMCTRL_VP1(0xca)));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_PVGAMCTRL_VP2(0xe)));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_PVGAMCTRL_VP4(8)));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_PVGAMCTRL_VP6(9)));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_PVGAMCTRL_VP13(7)));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_PVGAMCTRL_VP20(0x2d)));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_PVGAMCTRL_VP27(0xb) |
+					     ST7789V_PVGAMCTRL_VP36(3)));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_PVGAMCTRL_VP43(0x3d)));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_PVGAMCTRL_JP1(3) |
+					     ST7789V_PVGAMCTRL_VP50(4)));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_PVGAMCTRL_VP57(0xa)));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_PVGAMCTRL_VP59(0xa)));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_PVGAMCTRL_VP61(0x1b)));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_PVGAMCTRL_VP62(0x28)));
+
+	ST7789V_TEST(ret, st7789v_write_command(ctx, ST7789V_NVGAMCTRL_CMD));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_NVGAMCTRL_VN63(0xd)));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_NVGAMCTRL_VN1(0xca)));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_NVGAMCTRL_VN2(0xf)));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_NVGAMCTRL_VN4(8)));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_NVGAMCTRL_VN6(8)));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_NVGAMCTRL_VN13(7)));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_NVGAMCTRL_VN20(0x2e)));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_NVGAMCTRL_VN27(0xc) |
+					     ST7789V_NVGAMCTRL_VN36(5)));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_NVGAMCTRL_VN43(0x40)));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_NVGAMCTRL_JN1(3) |
+					     ST7789V_NVGAMCTRL_VN50(4)));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_NVGAMCTRL_VN57(9)));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_NVGAMCTRL_VN59(0xb)));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_NVGAMCTRL_VN61(0x1b)));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_NVGAMCTRL_VN62(0x28)));
+
+	if (ctx->info->invert_mode) {
+		ST7789V_TEST(ret, st7789v_write_command(ctx,
+						MIPI_DCS_ENTER_INVERT_MODE));
+	} else {
+		ST7789V_TEST(ret, st7789v_write_command(ctx,
+						MIPI_DCS_EXIT_INVERT_MODE));
+	}
+
+	if (ctx->info->partial_mode) {
+		u8 area_data[4] = {
+			(ctx->info->partial_start >> 8) & 0xff,
+			(ctx->info->partial_start >> 0) & 0xff,
+			((ctx->info->partial_end - 1) >> 8) & 0xff,
+			((ctx->info->partial_end - 1) >> 0) & 0xff,
+		};
+
+		/* Caution: if userspace ever pushes a mode different from the
+		 * expected one (i.e., the one advertised by get_modes), we'll
+		 * add margins.
+		 */
+
+		ST7789V_TEST(ret, st7789v_write_command(
+					  ctx, MIPI_DCS_ENTER_PARTIAL_MODE));
+
+		ST7789V_TEST(ret, st7789v_write_command(
+					  ctx, MIPI_DCS_SET_PAGE_ADDRESS));
+		ST7789V_TEST(ret, st7789v_write_data(ctx, area_data[0]));
+		ST7789V_TEST(ret, st7789v_write_data(ctx, area_data[1]));
+		ST7789V_TEST(ret, st7789v_write_data(ctx, area_data[2]));
+		ST7789V_TEST(ret, st7789v_write_data(ctx, area_data[3]));
+
+		ST7789V_TEST(ret, st7789v_write_command(
+					  ctx, MIPI_DCS_SET_PARTIAL_ROWS));
+		ST7789V_TEST(ret, st7789v_write_data(ctx, area_data[0]));
+		ST7789V_TEST(ret, st7789v_write_data(ctx, area_data[1]));
+		ST7789V_TEST(ret, st7789v_write_data(ctx, area_data[2]));
+		ST7789V_TEST(ret, st7789v_write_data(ctx, area_data[3]));
+	}
+
+	ST7789V_TEST(ret, st7789v_write_command(ctx, ST7789V_RAMCTRL_CMD));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_RAMCTRL_DM_RGB |
+					     ST7789V_RAMCTRL_RM_RGB));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_RAMCTRL_EPF(3) |
+					     ST7789V_RAMCTRL_MAGIC));
+
+	ST7789V_TEST(ret, st7789v_write_command(ctx, ST7789V_RGBCTRL_CMD));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, mode |
+					     ST7789V_RGBCTRL_RCM(2) |
+					     polarity));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_RGBCTRL_VBP(8)));
+	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_RGBCTRL_HBP(20)));
+
+	return 0;
+}
+
+static int st7789v_enable(struct st7789v *ctx)
+{
+	return st7789v_write_command(ctx, MIPI_DCS_SET_DISPLAY_ON);
+}
+
+static int st7789v_disable(struct st7789v *ctx)
+{
+	int ret;
+
+	ST7789V_TEST(ret, st7789v_write_command(ctx, MIPI_DCS_SET_DISPLAY_OFF));
+
+	return 0;
+}
+
+static int st7789v_unprepare(struct st7789v *ctx)
+{
+	int ret;
+
+	ST7789V_TEST(ret, st7789v_write_command(ctx, MIPI_DCS_ENTER_SLEEP_MODE));
+
+	regulator_disable(ctx->power);
+
+	return 0;
+}
+
+static int ili9341_ioctl(struct vpl *vpl, unsigned int port,
+			 unsigned int cmd, void *ptr)
+{       
+	struct st7789v *ctx = container_of(vpl, struct st7789v, vpl);
+
+	switch (cmd) {
+	case VPL_PREPARE:
+		return st7789v_prepare(ctx);
+	case VPL_ENABLE:
+		return st7789v_enable(ctx);
+	case VPL_DISABLE:
+		return st7789v_disable(ctx);
+	case VPL_UNPREPARE:
+		return st7789v_unprepare(ctx);
+	case VPL_GET_VIDEOMODES:
+		return st7789v_get_modes(ctx, ptr);
+	case VPL_GET_BUS_FORMAT:
+		*(u32 *)ptr = ctx->info->bus_format;
+		return 0;
+	case VPL_GET_DISPLAY_INFO:
+		return st7789v_get_display_info(ctx, ptr);
+	default:
+		return 0;
+	}
+}
+
+#define spi_setup(spi) spi->master->setup(spi)
+
+static int st7789v_probe(struct device *dev)
+{
+	struct spi_device *spi = to_spi_device(dev);
+	struct st7789v *ctx;
+	int ret;
+
+	ctx = devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
+	if (!ctx)
+		return -ENOMEM;
+
+	ctx->spi = spi;
+	ctx->dev = dev;
+
+	spi->bits_per_word = 9;
+	ret = spi_setup(spi);
+	if (ret < 0)
+		return dev_err_probe(dev, ret, "Failed to setup spi\n");
+
+	ctx->info = device_get_match_data(&spi->dev);
+
+	ctx->power = regulator_get(dev, "power");
+	ret = PTR_ERR_OR_ZERO(ctx->power);
+	if (ret)
+		return dev_err_probe(dev, ret, "Failed to get regulator\n");
+
+	ctx->reset = gpiod_get_optional(dev, "reset", GPIOD_OUT_LOW);
+	ret = PTR_ERR_OR_ZERO(ctx->reset);
+	if (ret)
+		return dev_err_probe(dev, ret, "Failed to get reset line\n");
+
+	ctx->vpl.node = dev->of_node;
+	ctx->vpl.ioctl = ili9341_ioctl;
+
+	return vpl_register(&ctx->vpl);
+}
+
+static const struct of_device_id st7789v_of_match[] = {
+	{ .compatible = "sitronix,st7789v", .data = &default_panel },
+	{ .compatible = "inanbo,t28cp45tn89-v17", .data = &t28cp45tn89_panel },
+	{ .compatible = "edt,et028013dma", .data = &et028013dma_panel },
+	{ .compatible = "jasonic,jt240mhqs-hwt-ek-e3",
+	  .data = &jt240mhqs_hwt_ek_e3_panel },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, st7789v_of_match);
+
+static struct driver st7789v_driver = {
+	.name = "panel-sitronix-st7789v",
+	.of_compatible = st7789v_of_match,
+	.probe = st7789v_probe,
+};
+device_spi_driver(st7789v_driver);
+
+MODULE_AUTHOR("Maxime Ripard <maxime.ripard@free-electrons.com>");
+MODULE_DESCRIPTION("Sitronix st7789v LCD Driver");
+MODULE_LICENSE("GPL v2");
diff --git a/include/video/vpl.h b/include/video/vpl.h
index 15711b4701..5ea3d6dcf2 100644
--- a/include/video/vpl.h
+++ b/include/video/vpl.h
@@ -11,6 +11,7 @@
 #define VPL_DISABLE		0x67660004
 #define VPL_GET_VIDEOMODES	0x67660005
 #define VPL_GET_BUS_FORMAT	0x67660006
+#define VPL_GET_DISPLAY_INFO	0x67660007
 
 struct vpl {
 	int (*ioctl)(struct vpl *, unsigned int port,

-- 
2.39.5



