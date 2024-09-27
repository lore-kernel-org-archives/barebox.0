Delivery-date: Fri, 27 Sep 2024 12:44:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su8SV-003N8Q-39
	for lore@lore.pengutronix.de;
	Fri, 27 Sep 2024 12:44:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su8S8-0006WG-Qy
	for lore@pengutronix.de; Fri, 27 Sep 2024 12:44:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=m2rC1cwE0+PA1eP+STyRbt00EIaC3+kR3EkvkKPGCLQ=; b=lhUkNmBaUtrNQMOXtaGpacRFMF
	7Er2uwgyeNmUIb11J+qpqFaZ66mHEoOixDgHw/WeD+8hg4t0MdXBv4rzUwhXfMGCBt1aC9OcD1KW5
	uSViaj/KxDGHsblkqBJP3VsWP7sMyy3DGS86GDV+iOgqKAJINQaTj4eVKSkCmJIYBpcvzp8VYMXrv
	OA8XR3/iwoWYjRFUkcjTQy2QLEt+6aiTzDgWKXfDw10nb6pyNT2ZyZtzRXpSO4c2MxVPw1n6fANy4
	ec/z/a5/R8ZUHiOE8c39HRcvqWrXOBi/7/ID+9drtJifnkIoKWZSJ+wkvm0uf5mfbwtcf/YQC+j96
	c9QqKTww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1su8QW-0000000AqxZ-0hjc;
	Fri, 27 Sep 2024 10:42:20 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su8Ox-0000000AqVz-1f8o
	for barebox@bombadil.infradead.org;
	Fri, 27 Sep 2024 10:40:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=m2rC1cwE0+PA1eP+STyRbt00EIaC3+kR3EkvkKPGCLQ=; b=eZn/g63zrAhoOLOuCXQHRvHdq2
	eYhATuZMSlc7AscnEMbp7u/b+L8yL8HDuK774KxCvPF0xEKgvsM+gJauJ5gD6QWxG5Zm5jHQ0Pa0b
	cZ1B+HTCsiDn59TT30HAND9h+FMInHlTqYd8jD7quPMvutSXGwXBIQzCzgvjC+76AOoWqbgb4KE3F
	bGthMkTQw0I8Nb4HHMTqB0+ibbV6NhtfdxxL5HcmGd94hrsMr7cdxl+CJgTfLG/QaXNs54tlDLaOr
	2qKfunaVt2YwSj973d6ZwZaXLejMeKr9CX4qIDKFjgR7lAhBC3gVVLIauJYkWXDdLUX3+NPL+7UQV
	cOzoR9Tg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su8Os-00000002Kcp-1Vrx
	for barebox@lists.infradead.org;
	Fri, 27 Sep 2024 10:40:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8Or-00043g-TW; Fri, 27 Sep 2024 12:40:37 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8Or-001u4K-GX; Fri, 27 Sep 2024 12:40:37 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8Lv-000PJg-1Y;
	Fri, 27 Sep 2024 12:37:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 27 Sep 2024 12:37:48 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240927-vop2-v2-15-dc8dcfc651d5@pengutronix.de>
References: <20240927-vop2-v2-0-dc8dcfc651d5@pengutronix.de>
In-Reply-To: <20240927-vop2-v2-0-dc8dcfc651d5@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727433454; l=114903;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=iKHtixQKIafwhFLzMzIL1RM9De+2c/X0GYl9+5dMNgY=;
 b=S8pNDz/mu7GPi9QNaL6E9vLAWn+zyqIg+q9a+ML6dWkb5U26dqDKACe6K6hJU8dt6KWP7RDHe
 TPUlwznnCJdA6LokDfXtR65Ba6Tzv7nshjRgAtIcqh8JmpJVj5fAgdn
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 15/15] video: Rockchip: Add VOP2 driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds support for the Rockchip VOP2 video core found on the Rockchip
SoCs RK3566, RK3568 and RK3588. The code is based on the Linux driver
and has been heavily stripped down for barebox. Support for the cluster
windows has been removed, also support for YUV modes has been dropped.

Tested-by: Ahmad Fatoum <a.fatoum@pengutronix.de> # rk3566 HDMI
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/Kconfig                      |    1 +
 drivers/video/Makefile                     |    1 +
 drivers/video/rockchip/Kconfig             |   18 +
 drivers/video/rockchip/Makefile            |    2 +
 drivers/video/rockchip/dw_hdmi-rockchip.c  |  365 +++++
 drivers/video/rockchip/rockchip_drm_drv.h  |   66 +
 drivers/video/rockchip/rockchip_drm_vop.h  |  424 ++++++
 drivers/video/rockchip/rockchip_drm_vop2.c | 2041 ++++++++++++++++++++++++++++
 drivers/video/rockchip/rockchip_drm_vop2.h |  541 ++++++++
 drivers/video/rockchip/rockchip_vop2_reg.c |  280 ++++
 10 files changed, 3739 insertions(+)

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index 588f0cfde5..b23ddfdb1e 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -94,6 +94,7 @@ config DRIVER_VIDEO_BCM283X
 	help
 	  Add support for the BCM283X/VideoCore frame buffer device.
 
+source "drivers/video/rockchip/Kconfig"
 source "drivers/video/imx-ipu-v3/Kconfig"
 
 source "drivers/video/bochs/Kconfig"
diff --git a/drivers/video/Makefile b/drivers/video/Makefile
index fd1da2a864..6aa5d50e5d 100644
--- a/drivers/video/Makefile
+++ b/drivers/video/Makefile
@@ -33,3 +33,4 @@ obj-$(CONFIG_DRIVER_VIDEO_FB_SSD1307) += ssd1307fb.o
 obj-$(CONFIG_BACKLIGHT_RAVE_SP)	+= rave-sp-backlight.o
 obj-$(CONFIG_DRIVER_VIDEO_DW_HDMI) += dw-hdmi.o
 obj-$(CONFIG_DRIVER_VIDEO_BOCHS) += bochs/
+obj-$(CONFIG_DRIVER_VIDEO_ROCKCHIP) += rockchip/
diff --git a/drivers/video/rockchip/Kconfig b/drivers/video/rockchip/Kconfig
new file mode 100644
index 0000000000..b91c6fc398
--- /dev/null
+++ b/drivers/video/rockchip/Kconfig
@@ -0,0 +1,18 @@
+config DRIVER_VIDEO_ROCKCHIP
+	bool "Rockchip framebuffer drivers"
+
+if DRIVER_VIDEO_ROCKCHIP
+
+config DRIVER_VIDEO_ROCKCHIP_VOP2
+        bool "Rockchip vop2 framebuffer driver"
+        select VIDEO_VPL
+        select OFTREE
+
+config DRIVER_VIDEO_ROCKCHIP_HDMI
+        bool "Rockchip HDMI driver"
+        select VIDEO_VPL
+        select OFTREE
+        select DRIVER_VIDEO_EDID
+        select DRIVER_VIDEO_DW_HDMI
+
+endif
diff --git a/drivers/video/rockchip/Makefile b/drivers/video/rockchip/Makefile
new file mode 100644
index 0000000000..278ce1302d
--- /dev/null
+++ b/drivers/video/rockchip/Makefile
@@ -0,0 +1,2 @@
+obj-$(CONFIG_DRIVER_VIDEO_ROCKCHIP_VOP2) += rockchip_drm_vop2.o rockchip_vop2_reg.o
+obj-$(CONFIG_DRIVER_VIDEO_ROCKCHIP_HDMI) += dw_hdmi-rockchip.o
diff --git a/drivers/video/rockchip/dw_hdmi-rockchip.c b/drivers/video/rockchip/dw_hdmi-rockchip.c
new file mode 100644
index 0000000000..f334443759
--- /dev/null
+++ b/drivers/video/rockchip/dw_hdmi-rockchip.c
@@ -0,0 +1,365 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (c) 2014, Fuzhou Rockchip Electronics Co., Ltd
+ */
+
+#include <linux/clk.h>
+#include <driver.h>
+#include <mfd/syscon.h>
+#include <regulator.h>
+#include <linux/bits.h>
+#include <linux/regmap.h>
+#include <video/dw_hdmi.h>
+#include <linux/phy/phy.h>
+#include <linux/math.h>
+#include <video/drm/drm_connector.h>
+#include <video/drm/drm_modes.h>
+#include <fb.h>
+
+#include "rockchip_drm_drv.h"
+
+#define RK3568_GRF_VO_CON1		0x0364
+#define RK3568_HDMI_SDAIN_MSK		BIT(15)
+#define RK3568_HDMI_SCLIN_MSK		BIT(14)
+
+#define HIWORD_UPDATE(val, mask)	(val | (mask) << 16)
+
+/**
+ * struct rockchip_hdmi_chip_data - splite the grf setting of kind of chips
+ * @lcdsel_grf_reg: grf register offset of lcdc select
+ * @lcdsel_big: reg value of selecting vop big for HDMI
+ * @lcdsel_lit: reg value of selecting vop little for HDMI
+ */
+struct rockchip_hdmi_chip_data {
+	int	lcdsel_grf_reg;
+	u32	lcdsel_big;
+	u32	lcdsel_lit;
+};
+
+struct rockchip_hdmi {
+	struct device *dev;
+	struct regmap *regmap;
+	const struct rockchip_hdmi_chip_data *chip_data;
+	const struct dw_hdmi_plat_data *plat_data;
+	struct clk *ref_clk;
+	struct clk *grf_clk;
+	struct dw_hdmi *hdmi;
+	struct regulator *avdd_0v9;
+	struct regulator *avdd_1v8;
+	struct phy *phy;
+};
+
+static const struct dw_hdmi_mpll_config rockchip_mpll_cfg[] = {
+	{
+		27000000, {
+			{ 0x00b3, 0x0000},
+			{ 0x2153, 0x0000},
+			{ 0x40f3, 0x0000}
+		},
+	}, {
+		36000000, {
+			{ 0x00b3, 0x0000},
+			{ 0x2153, 0x0000},
+			{ 0x40f3, 0x0000}
+		},
+	}, {
+		40000000, {
+			{ 0x00b3, 0x0000},
+			{ 0x2153, 0x0000},
+			{ 0x40f3, 0x0000}
+		},
+	}, {
+		54000000, {
+			{ 0x0072, 0x0001},
+			{ 0x2142, 0x0001},
+			{ 0x40a2, 0x0001},
+		},
+	}, {
+		65000000, {
+			{ 0x0072, 0x0001},
+			{ 0x2142, 0x0001},
+			{ 0x40a2, 0x0001},
+		},
+	}, {
+		66000000, {
+			{ 0x013e, 0x0003},
+			{ 0x217e, 0x0002},
+			{ 0x4061, 0x0002}
+		},
+	}, {
+		74250000, {
+			{ 0x0072, 0x0001},
+			{ 0x2145, 0x0002},
+			{ 0x4061, 0x0002}
+		},
+	}, {
+		83500000, {
+			{ 0x0072, 0x0001},
+		},
+	}, {
+		108000000, {
+			{ 0x0051, 0x0002},
+			{ 0x2145, 0x0002},
+			{ 0x4061, 0x0002}
+		},
+	}, {
+		106500000, {
+			{ 0x0051, 0x0002},
+			{ 0x2145, 0x0002},
+			{ 0x4061, 0x0002}
+		},
+	}, {
+		146250000, {
+			{ 0x0051, 0x0002},
+			{ 0x2145, 0x0002},
+			{ 0x4061, 0x0002}
+		},
+	}, {
+		148500000, {
+			{ 0x0051, 0x0003},
+			{ 0x214c, 0x0003},
+			{ 0x4064, 0x0003}
+		},
+	}, {
+		340000000, {
+			{ 0x0040, 0x0003 },
+			{ 0x3b4c, 0x0003 },
+			{ 0x5a64, 0x0003 },
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
+static const struct dw_hdmi_curr_ctrl rockchip_cur_ctr[] = {
+	/*      pixelclk    bpp8    bpp10   bpp12 */
+	{
+		40000000,  { 0x0018, 0x0018, 0x0018 },
+	}, {
+		65000000,  { 0x0028, 0x0028, 0x0028 },
+	}, {
+		66000000,  { 0x0038, 0x0038, 0x0038 },
+	}, {
+		74250000,  { 0x0028, 0x0038, 0x0038 },
+	}, {
+		83500000,  { 0x0028, 0x0038, 0x0038 },
+	}, {
+		146250000, { 0x0038, 0x0038, 0x0038 },
+	}, {
+		148500000, { 0x0000, 0x0038, 0x0038 },
+	}, {
+		600000000, { 0x0000, 0x0000, 0x0000 },
+	}, {
+		~0UL,      { 0x0000, 0x0000, 0x0000},
+	}
+};
+
+static const struct dw_hdmi_phy_config rockchip_phy_config[] = {
+	/*pixelclk   symbol   term   vlev*/
+	{ 74250000,  0x8009, 0x0004, 0x0272},
+	{ 148500000, 0x802b, 0x0004, 0x028d},
+	{ 297000000, 0x8039, 0x0005, 0x028d},
+	{ ~0UL,	     0x0000, 0x0000, 0x0000}
+};
+
+static int rockchip_hdmi_parse_dt(struct rockchip_hdmi *hdmi)
+{
+	struct device_node *np = hdmi->dev->of_node;
+
+	hdmi->regmap = syscon_regmap_lookup_by_phandle(np, "rockchip,grf");
+	if (IS_ERR(hdmi->regmap)) {
+		dev_err(hdmi->dev, "Unable to get rockchip,grf\n");
+		return PTR_ERR(hdmi->regmap);
+	}
+
+	hdmi->ref_clk = clk_get_optional(hdmi->dev, "ref");
+	if (!hdmi->ref_clk)
+		hdmi->ref_clk = clk_get_optional(hdmi->dev, "vpll");
+
+	if (PTR_ERR(hdmi->ref_clk) == -EPROBE_DEFER) {
+		return -EPROBE_DEFER;
+	} else if (IS_ERR(hdmi->ref_clk)) {
+		dev_err(hdmi->dev, "failed to get reference clock\n");
+		return PTR_ERR(hdmi->ref_clk);
+	}
+
+	hdmi->grf_clk = clk_get(hdmi->dev, "grf");
+	if (PTR_ERR(hdmi->grf_clk) == -ENOENT) {
+		hdmi->grf_clk = NULL;
+	} else if (PTR_ERR(hdmi->grf_clk) == -EPROBE_DEFER) {
+		return -EPROBE_DEFER;
+	} else if (IS_ERR(hdmi->grf_clk)) {
+		dev_err(hdmi->dev, "failed to get grf clock\n");
+		return PTR_ERR(hdmi->grf_clk);
+	}
+
+	hdmi->avdd_0v9 = regulator_get(hdmi->dev, "avdd-0v9");
+	if (IS_ERR(hdmi->avdd_0v9))
+		return PTR_ERR(hdmi->avdd_0v9);
+
+	hdmi->avdd_1v8 = regulator_get(hdmi->dev, "avdd-1v8");
+	if (IS_ERR(hdmi->avdd_1v8))
+		return PTR_ERR(hdmi->avdd_1v8);
+
+	return 0;
+}
+
+static bool
+dw_hdmi_rockchip_mode_valid(struct dw_hdmi *dw_hdmi, void *data,
+			    const struct drm_display_info *info,
+			    const struct drm_display_mode *mode)
+{
+	struct rockchip_hdmi *hdmi = data;
+	const struct dw_hdmi_mpll_config *mpll_cfg = rockchip_mpll_cfg;
+	int pclk = mode->clock * 1000;
+	bool exact_match = hdmi->plat_data->phy_force_vendor;
+	int i;
+
+	if (hdmi->ref_clk) {
+		int rpclk = clk_round_rate(hdmi->ref_clk, pclk);
+
+		if (abs(rpclk - pclk) > pclk / 1000)
+			return false;
+	}
+
+	for (i = 0; mpll_cfg[i].mpixelclock != (~0UL); i++) {
+		/*
+		 * For vendor specific phys force an exact match of the pixelclock
+		 * to preserve the original behaviour of the driver.
+		 */
+		if (exact_match && pclk == mpll_cfg[i].mpixelclock)
+			return true;
+		/*
+		 * The Synopsys phy can work with pixelclocks up to the value given
+		 * in the corresponding mpll_cfg entry.
+		 */
+		if (!exact_match && pclk <= mpll_cfg[i].mpixelclock)
+			return true;
+	}
+
+	return false;
+}
+
+static int dw_hdmi_rockchip_mode_set(struct dw_hdmi *dw_hdmi, void *data,
+				     const struct drm_display_mode *mode)
+{
+	struct rockchip_hdmi *hdmi = data;
+	long rate;
+
+	rate = clk_round_rate(hdmi->ref_clk, mode->clock * 1000);
+
+	clk_set_rate(hdmi->ref_clk, rate);
+
+	return 0;
+}
+
+static struct rockchip_hdmi_chip_data rk3568_chip_data = {
+	.lcdsel_grf_reg = -1,
+};
+
+static const struct dw_hdmi_plat_data rk3568_hdmi_drv_data = {
+	.mode_set   = dw_hdmi_rockchip_mode_set,
+	.mode_valid = dw_hdmi_rockchip_mode_valid,
+	.mpll_cfg   = rockchip_mpll_cfg,
+	.cur_ctr    = rockchip_cur_ctr,
+	.phy_config = rockchip_phy_config,
+	.phy_data = &rk3568_chip_data,
+	.use_drm_infoframe = true,
+};
+
+static const struct of_device_id dw_hdmi_rockchip_dt_ids[] = {
+	{ .compatible = "rockchip,rk3568-dw-hdmi",
+	  .data = &rk3568_hdmi_drv_data
+	},
+	{},
+};
+MODULE_DEVICE_TABLE(of, dw_hdmi_rockchip_dt_ids);
+
+static int dw_hdmi_rockchip_probe(struct device *dev)
+{
+	const struct dw_hdmi_plat_data *data;
+	struct dw_hdmi_plat_data *plat_data;
+	struct rockchip_hdmi *hdmi;
+	int ret;
+
+	data = device_get_match_data(dev);
+	if (!data)
+		return dev_err_probe(dev, -EINVAL, "No match data\n");
+
+	hdmi = xzalloc(sizeof(*hdmi));
+
+	plat_data = xmemdup(data, sizeof(*data));
+
+	hdmi->dev = dev;
+	hdmi->plat_data = plat_data;
+	hdmi->chip_data = plat_data->phy_data;
+	plat_data->phy_data = hdmi;
+	plat_data->priv_data = hdmi;
+
+	ret = rockchip_hdmi_parse_dt(hdmi);
+	if (ret)
+		return dev_err_probe(dev, ret, "Unable to parse OF data\n");
+
+	hdmi->phy = phy_optional_get(dev, "hdmi");
+	if (IS_ERR(hdmi->phy))
+		return dev_err_probe(dev, ret, "failed to get phy\n");
+
+	ret = regulator_enable(hdmi->avdd_0v9);
+	if (ret) {
+		dev_err_probe(dev, ret, "failed to enable avdd0v9\n");
+		goto err_avdd_0v9;
+	}
+
+	ret = regulator_enable(hdmi->avdd_1v8);
+	if (ret) {
+		dev_err_probe(dev, ret, "failed to enable avdd1v8\n");
+		goto err_avdd_1v8;
+	}
+
+	ret = clk_prepare_enable(hdmi->ref_clk);
+	if (ret) {
+		dev_err_probe(dev, ret, "Failed to enable HDMI reference clock\n");
+		goto err_clk;
+	}
+
+	if (hdmi->chip_data == &rk3568_chip_data) {
+		regmap_write(hdmi->regmap, RK3568_GRF_VO_CON1,
+			     HIWORD_UPDATE(RK3568_HDMI_SDAIN_MSK |
+					   RK3568_HDMI_SCLIN_MSK,
+					   RK3568_HDMI_SDAIN_MSK |
+					   RK3568_HDMI_SCLIN_MSK));
+	}
+
+	hdmi->hdmi = dw_hdmi_bind(dev, plat_data);
+
+	/*
+	 * If dw_hdmi_bind() fails we'll never call dw_hdmi_unbind(),
+	 * which would have called the encoder cleanup.  Do it manually.
+	 */
+	if (IS_ERR(hdmi->hdmi)) {
+		ret = PTR_ERR(hdmi->hdmi);
+		goto err_bind;
+	}
+
+	return 0;
+
+err_bind:
+	clk_disable(hdmi->ref_clk);
+err_clk:
+	regulator_disable(hdmi->avdd_1v8);
+err_avdd_1v8:
+	regulator_disable(hdmi->avdd_0v9);
+err_avdd_0v9:
+	return ret;
+}
+
+struct driver dw_hdmi_rockchip_driver = {
+	.probe  = dw_hdmi_rockchip_probe,
+	.name = "dwhdmi-rockchip",
+	.of_compatible = dw_hdmi_rockchip_dt_ids,
+};
+device_platform_driver(dw_hdmi_rockchip_driver);
diff --git a/drivers/video/rockchip/rockchip_drm_drv.h b/drivers/video/rockchip/rockchip_drm_drv.h
new file mode 100644
index 0000000000..9bc480ee04
--- /dev/null
+++ b/drivers/video/rockchip/rockchip_drm_drv.h
@@ -0,0 +1,66 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
+ * Author:Mark Yao <mark.yao@rock-chips.com>
+ *
+ * based on exynos_drm_drv.h
+ */
+
+#ifndef _ROCKCHIP_DRM_DRV_H
+#define _ROCKCHIP_DRM_DRV_H
+
+#define ROCKCHIP_MAX_FB_BUFFER	3
+#define ROCKCHIP_MAX_CONNECTOR	2
+#define ROCKCHIP_MAX_CRTC	4
+
+/*
+ * display output interface supported by rockchip lcdc
+ */
+#define ROCKCHIP_OUT_MODE_P888		0
+#define ROCKCHIP_OUT_MODE_BT1120	0
+#define ROCKCHIP_OUT_MODE_P666		1
+#define ROCKCHIP_OUT_MODE_P565		2
+#define ROCKCHIP_OUT_MODE_BT656		5
+#define ROCKCHIP_OUT_MODE_S888		8
+#define ROCKCHIP_OUT_MODE_S888_DUMMY	12
+#define ROCKCHIP_OUT_MODE_YUV420	14
+/* for use special outface */
+#define ROCKCHIP_OUT_MODE_AAAA		15
+
+/* output flags */
+#define ROCKCHIP_OUTPUT_DSI_DUAL	BIT(0)
+
+struct drm_device;
+struct drm_connector;
+struct iommu_domain;
+
+struct rockchip_crtc_state {
+	int output_type;
+	int output_mode;
+	int output_bpc;
+	int output_flags;
+	bool enable_afbc;
+	bool yuv_overlay;
+	u32 bus_format;
+	u32 bus_flags;
+	int color_space;
+};
+#define to_rockchip_crtc_state(s) \
+		container_of(s, struct rockchip_crtc_state, base)
+
+/*
+ * Rockchip drm private structure.
+ *
+ * @crtc: array of enabled CRTCs, used to map from "pipe" to drm_crtc.
+ * @num_pipe: number of pipes for this device.
+ * @mm_lock: protect drm_mm on multi-threads.
+ */
+struct rockchip_drm_private {
+	struct device *iommu_dev;
+};
+
+struct rockchip_encoder {
+	int crtc_endpoint_id;
+};
+
+#endif /* _ROCKCHIP_DRM_DRV_H_ */
diff --git a/drivers/video/rockchip/rockchip_drm_vop.h b/drivers/video/rockchip/rockchip_drm_vop.h
new file mode 100644
index 0000000000..255b6aa165
--- /dev/null
+++ b/drivers/video/rockchip/rockchip_drm_vop.h
@@ -0,0 +1,424 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
+ * Author:Mark Yao <mark.yao@rock-chips.com>
+ */
+
+#ifndef _ROCKCHIP_DRM_VOP_H
+#define _ROCKCHIP_DRM_VOP_H
+
+/*
+ * major: IP major version, used for IP structure
+ * minor: big feature change under same structure
+ */
+#define VOP_VERSION(major, minor)	((major) << 8 | (minor))
+#define VOP_MAJOR(version)		((version) >> 8)
+#define VOP_MINOR(version)		((version) & 0xff)
+
+#define NUM_YUV2YUV_COEFFICIENTS 12
+
+/* AFBC supports a number of configurable modes. Relevant to us is block size
+ * (16x16 or 32x8), storage modifiers (SPARSE, SPLIT), and the YUV-like
+ * colourspace transform (YTR). 16x16 SPARSE mode is always used. SPLIT mode
+ * could be enabled via the hreg_block_split register, but is not currently
+ * handled. The colourspace transform is implicitly always assumed by the
+ * decoder, so consumers must use this transform as well.
+ *
+ * Failure to match modifiers will cause errors displaying AFBC buffers
+ * produced by conformant AFBC producers, including Mesa.
+ */
+#define ROCKCHIP_AFBC_MOD \
+	DRM_FORMAT_MOD_ARM_AFBC( \
+		AFBC_FORMAT_MOD_BLOCK_SIZE_16x16 | AFBC_FORMAT_MOD_SPARSE \
+			| AFBC_FORMAT_MOD_YTR \
+	)
+
+enum vop_data_format {
+	VOP_FMT_ARGB8888 = 0,
+	VOP_FMT_RGB888,
+	VOP_FMT_RGB565,
+	VOP_FMT_YUV420SP = 4,
+	VOP_FMT_YUV422SP,
+	VOP_FMT_YUV444SP,
+};
+
+struct vop_rect {
+	int width;
+	int height;
+};
+
+struct vop_reg {
+	uint32_t mask;
+	uint16_t offset;
+	uint8_t shift;
+	bool write_mask;
+	bool relaxed;
+};
+
+struct vop_afbc {
+	struct vop_reg enable;
+	struct vop_reg win_sel;
+	struct vop_reg format;
+	struct vop_reg rb_swap;
+	struct vop_reg uv_swap;
+	struct vop_reg auto_gating_en;
+	struct vop_reg block_split_en;
+	struct vop_reg pic_vir_width;
+	struct vop_reg tile_num;
+	struct vop_reg hreg_block_split;
+	struct vop_reg pic_offset;
+	struct vop_reg pic_size;
+	struct vop_reg dsp_offset;
+	struct vop_reg transform_offset;
+	struct vop_reg hdr_ptr;
+	struct vop_reg half_block_en;
+	struct vop_reg xmirror;
+	struct vop_reg ymirror;
+	struct vop_reg rotate_270;
+	struct vop_reg rotate_90;
+	struct vop_reg rstn;
+};
+
+struct vop_modeset {
+	struct vop_reg htotal_pw;
+	struct vop_reg hact_st_end;
+	struct vop_reg hpost_st_end;
+	struct vop_reg vtotal_pw;
+	struct vop_reg vact_st_end;
+	struct vop_reg vpost_st_end;
+};
+
+struct vop_output {
+	struct vop_reg pin_pol;
+	struct vop_reg dp_pin_pol;
+	struct vop_reg dp_dclk_pol;
+	struct vop_reg edp_pin_pol;
+	struct vop_reg edp_dclk_pol;
+	struct vop_reg hdmi_pin_pol;
+	struct vop_reg hdmi_dclk_pol;
+	struct vop_reg mipi_pin_pol;
+	struct vop_reg mipi_dclk_pol;
+	struct vop_reg rgb_pin_pol;
+	struct vop_reg rgb_dclk_pol;
+	struct vop_reg dp_en;
+	struct vop_reg edp_en;
+	struct vop_reg hdmi_en;
+	struct vop_reg mipi_en;
+	struct vop_reg mipi_dual_channel_en;
+	struct vop_reg rgb_en;
+};
+
+struct vop_common {
+	struct vop_reg cfg_done;
+	struct vop_reg dsp_blank;
+	struct vop_reg data_blank;
+	struct vop_reg pre_dither_down;
+	struct vop_reg dither_down_sel;
+	struct vop_reg dither_down_mode;
+	struct vop_reg dither_down_en;
+	struct vop_reg dither_up;
+	struct vop_reg dsp_lut_en;
+	struct vop_reg update_gamma_lut;
+	struct vop_reg lut_buffer_index;
+	struct vop_reg gate_en;
+	struct vop_reg mmu_en;
+	struct vop_reg out_mode;
+	struct vop_reg standby;
+};
+
+struct vop_misc {
+	struct vop_reg global_regdone_en;
+};
+
+struct vop_intr {
+	const int *intrs;
+	uint32_t nintrs;
+
+	struct vop_reg line_flag_num[2];
+	struct vop_reg enable;
+	struct vop_reg clear;
+	struct vop_reg status;
+};
+
+struct vop_scl_extension {
+	struct vop_reg cbcr_vsd_mode;
+	struct vop_reg cbcr_vsu_mode;
+	struct vop_reg cbcr_hsd_mode;
+	struct vop_reg cbcr_ver_scl_mode;
+	struct vop_reg cbcr_hor_scl_mode;
+	struct vop_reg yrgb_vsd_mode;
+	struct vop_reg yrgb_vsu_mode;
+	struct vop_reg yrgb_hsd_mode;
+	struct vop_reg yrgb_ver_scl_mode;
+	struct vop_reg yrgb_hor_scl_mode;
+	struct vop_reg line_load_mode;
+	struct vop_reg cbcr_axi_gather_num;
+	struct vop_reg yrgb_axi_gather_num;
+	struct vop_reg vsd_cbcr_gt2;
+	struct vop_reg vsd_cbcr_gt4;
+	struct vop_reg vsd_yrgb_gt2;
+	struct vop_reg vsd_yrgb_gt4;
+	struct vop_reg bic_coe_sel;
+	struct vop_reg cbcr_axi_gather_en;
+	struct vop_reg yrgb_axi_gather_en;
+	struct vop_reg lb_mode;
+};
+
+struct vop_scl_regs {
+	const struct vop_scl_extension *ext;
+
+	struct vop_reg scale_yrgb_x;
+	struct vop_reg scale_yrgb_y;
+	struct vop_reg scale_cbcr_x;
+	struct vop_reg scale_cbcr_y;
+};
+
+struct vop_yuv2yuv_phy {
+	struct vop_reg y2r_coefficients[NUM_YUV2YUV_COEFFICIENTS];
+};
+
+struct vop_win_phy {
+	const struct vop_scl_regs *scl;
+	const uint32_t *data_formats;
+	uint32_t nformats;
+	const uint64_t *format_modifiers;
+
+	struct vop_reg enable;
+	struct vop_reg gate;
+	struct vop_reg format;
+	struct vop_reg fmt_10;
+	struct vop_reg rb_swap;
+	struct vop_reg uv_swap;
+	struct vop_reg act_info;
+	struct vop_reg dsp_info;
+	struct vop_reg dsp_st;
+	struct vop_reg yrgb_mst;
+	struct vop_reg uv_mst;
+	struct vop_reg yrgb_vir;
+	struct vop_reg uv_vir;
+	struct vop_reg y_mir_en;
+	struct vop_reg x_mir_en;
+
+	struct vop_reg dst_alpha_ctl;
+	struct vop_reg src_alpha_ctl;
+	struct vop_reg alpha_pre_mul;
+	struct vop_reg alpha_mode;
+	struct vop_reg alpha_en;
+	struct vop_reg channel;
+};
+
+struct vop_win_yuv2yuv_data {
+	uint32_t base;
+	const struct vop_yuv2yuv_phy *phy;
+	struct vop_reg y2r_en;
+};
+
+struct vop_win_data {
+	uint32_t base;
+	const struct vop_win_phy *phy;
+};
+
+struct vop_data {
+	uint32_t version;
+	const struct vop_intr *intr;
+	const struct vop_common *common;
+	const struct vop_misc *misc;
+	const struct vop_modeset *modeset;
+	const struct vop_output *output;
+	const struct vop_afbc *afbc;
+	const struct vop_win_yuv2yuv_data *win_yuv2yuv;
+	const struct vop_win_data *win;
+	unsigned int win_size;
+	unsigned int lut_size;
+	struct vop_rect max_output;
+
+#define VOP_FEATURE_OUTPUT_RGB10	BIT(0)
+#define VOP_FEATURE_INTERNAL_RGB	BIT(1)
+	u64 feature;
+};
+
+/* interrupt define */
+#define DSP_HOLD_VALID_INTR		(1 << 0)
+#define FS_INTR				(1 << 1)
+#define LINE_FLAG_INTR			(1 << 2)
+#define BUS_ERROR_INTR			(1 << 3)
+
+#define INTR_MASK			(DSP_HOLD_VALID_INTR | FS_INTR | \
+					 LINE_FLAG_INTR | BUS_ERROR_INTR)
+
+#define DSP_HOLD_VALID_INTR_EN(x)	((x) << 4)
+#define FS_INTR_EN(x)			((x) << 5)
+#define LINE_FLAG_INTR_EN(x)		((x) << 6)
+#define BUS_ERROR_INTR_EN(x)		((x) << 7)
+#define DSP_HOLD_VALID_INTR_MASK	(1 << 4)
+#define FS_INTR_MASK			(1 << 5)
+#define LINE_FLAG_INTR_MASK		(1 << 6)
+#define BUS_ERROR_INTR_MASK		(1 << 7)
+
+#define INTR_CLR_SHIFT			8
+#define DSP_HOLD_VALID_INTR_CLR		(1 << (INTR_CLR_SHIFT + 0))
+#define FS_INTR_CLR			(1 << (INTR_CLR_SHIFT + 1))
+#define LINE_FLAG_INTR_CLR		(1 << (INTR_CLR_SHIFT + 2))
+#define BUS_ERROR_INTR_CLR		(1 << (INTR_CLR_SHIFT + 3))
+
+#define DSP_LINE_NUM(x)			(((x) & 0x1fff) << 12)
+#define DSP_LINE_NUM_MASK		(0x1fff << 12)
+
+/* src alpha ctrl define */
+#define SRC_FADING_VALUE(x)		(((x) & 0xff) << 24)
+#define SRC_GLOBAL_ALPHA(x)		(((x) & 0xff) << 16)
+#define SRC_FACTOR_M0(x)		(((x) & 0x7) << 6)
+#define SRC_ALPHA_CAL_M0(x)		(((x) & 0x1) << 5)
+#define SRC_BLEND_M0(x)			(((x) & 0x3) << 3)
+#define SRC_ALPHA_M0(x)			(((x) & 0x1) << 2)
+#define SRC_COLOR_M0(x)			(((x) & 0x1) << 1)
+#define SRC_ALPHA_EN(x)			(((x) & 0x1) << 0)
+/* dst alpha ctrl define */
+#define DST_FACTOR_M0(x)		(((x) & 0x7) << 6)
+
+enum alpha_mode {
+	ALPHA_STRAIGHT,
+	ALPHA_INVERSE,
+};
+
+enum global_blend_mode {
+	ALPHA_GLOBAL,
+	ALPHA_PER_PIX,
+	ALPHA_PER_PIX_GLOBAL,
+};
+
+enum alpha_cal_mode {
+	ALPHA_SATURATION,
+	ALPHA_NO_SATURATION,
+};
+
+enum color_mode {
+	ALPHA_SRC_PRE_MUL,
+	ALPHA_SRC_NO_PRE_MUL,
+};
+
+enum factor_mode {
+	ALPHA_ZERO,
+	ALPHA_ONE,
+	ALPHA_SRC,
+	ALPHA_SRC_INVERSE,
+	ALPHA_SRC_GLOBAL,
+};
+
+enum scale_mode {
+	SCALE_NONE = 0x0,
+	SCALE_UP   = 0x1,
+	SCALE_DOWN = 0x2
+};
+
+enum lb_mode {
+	LB_YUV_3840X5 = 0x0,
+	LB_YUV_2560X8 = 0x1,
+	LB_RGB_3840X2 = 0x2,
+	LB_RGB_2560X4 = 0x3,
+	LB_RGB_1920X5 = 0x4,
+	LB_RGB_1280X8 = 0x5
+};
+
+enum sacle_up_mode {
+	SCALE_UP_BIL = 0x0,
+	SCALE_UP_BIC = 0x1
+};
+
+enum scale_down_mode {
+	SCALE_DOWN_BIL = 0x0,
+	SCALE_DOWN_AVG = 0x1
+};
+
+enum dither_down_mode {
+	RGB888_TO_RGB565 = 0x0,
+	RGB888_TO_RGB666 = 0x1
+};
+
+enum dither_down_mode_sel {
+	DITHER_DOWN_ALLEGRO = 0x0,
+	DITHER_DOWN_FRC = 0x1
+};
+
+enum vop_pol {
+	HSYNC_POSITIVE = 0,
+	VSYNC_POSITIVE = 1,
+	DEN_NEGATIVE   = 2
+};
+
+#define FRAC_16_16(mult, div)    (((mult) << 16) / (div))
+#define SCL_FT_DEFAULT_FIXPOINT_SHIFT	12
+#define SCL_MAX_VSKIPLINES		4
+#define MIN_SCL_FT_AFTER_VSKIP		1
+
+static inline uint16_t scl_cal_scale(int src, int dst, int shift)
+{
+	return ((src * 2 - 3) << (shift - 1)) / (dst - 1);
+}
+
+static inline uint16_t scl_cal_scale2(int src, int dst)
+{
+	return ((src - 1) << 12) / (dst - 1);
+}
+
+#define GET_SCL_FT_BILI_DN(src, dst)	scl_cal_scale(src, dst, 12)
+#define GET_SCL_FT_BILI_UP(src, dst)	scl_cal_scale(src, dst, 16)
+#define GET_SCL_FT_BIC(src, dst)	scl_cal_scale(src, dst, 16)
+
+static inline uint16_t scl_get_bili_dn_vskip(int src_h, int dst_h,
+					     int vskiplines)
+{
+	int act_height;
+
+	act_height = DIV_ROUND_UP(src_h, vskiplines);
+
+	if (act_height == dst_h)
+		return GET_SCL_FT_BILI_DN(src_h, dst_h) / vskiplines;
+
+	return GET_SCL_FT_BILI_DN(act_height, dst_h);
+}
+
+static inline enum scale_mode scl_get_scl_mode(int src, int dst)
+{
+	if (src < dst)
+		return SCALE_UP;
+	else if (src > dst)
+		return SCALE_DOWN;
+
+	return SCALE_NONE;
+}
+
+static inline int scl_get_vskiplines(uint32_t srch, uint32_t dsth)
+{
+	uint32_t vskiplines;
+
+	for (vskiplines = SCL_MAX_VSKIPLINES; vskiplines > 1; vskiplines /= 2)
+		if (srch >= vskiplines * dsth * MIN_SCL_FT_AFTER_VSKIP)
+			break;
+
+	return vskiplines;
+}
+
+static inline int scl_vop_cal_lb_mode(int width, bool is_yuv)
+{
+	int lb_mode;
+
+	if (is_yuv) {
+		if (width > 1280)
+			lb_mode = LB_YUV_3840X5;
+		else
+			lb_mode = LB_YUV_2560X8;
+	} else {
+		if (width > 2560)
+			lb_mode = LB_RGB_3840X2;
+		else if (width > 1920)
+			lb_mode = LB_RGB_2560X4;
+		else
+			lb_mode = LB_RGB_1920X5;
+	}
+
+	return lb_mode;
+}
+
+extern const struct component_ops vop_component_ops;
+#endif /* _ROCKCHIP_DRM_VOP_H */
diff --git a/drivers/video/rockchip/rockchip_drm_vop2.c b/drivers/video/rockchip/rockchip_drm_vop2.c
new file mode 100644
index 0000000000..7842a87865
--- /dev/null
+++ b/drivers/video/rockchip/rockchip_drm_vop2.c
@@ -0,0 +1,2041 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Rockchip Electronics Co., Ltd.
+ * Author: Andy Yan <andy.yan@rock-chips.com>
+ */
+
+#include <linux/bitfield.h>
+#include <linux/clk.h>
+#include <linux/iopoll.h>
+#include <linux/kernel.h>
+#include <of_graph.h>
+#include <linux/regmap.h>
+#include <linux/swab.h>
+#include <video/fourcc.h>
+#include <linux/printk.h>
+#include <video/media-bus-format.h>
+#include <fb.h>
+#include <dma.h>
+#include <linux/log2.h>
+#include <stdio.h>
+#include <mfd/syscon.h>
+#include <video/drm/drm_connector.h>
+#include <video/vpl.h>
+#include <video/videomode.h>
+
+#include "rockchip_drm_vop2.h"
+#include "rockchip_drm_drv.h"
+#include <dt-bindings/soc/rockchip,vop2.h>
+
+/*
+ * VOP2 architecture
+ *
+ +----------+   +-------------+                                                        +-----------+
+ |  Cluster |   | Sel 1 from 6|                                                        | 1 from 3  |
+ |  window0 |   |    Layer0   |                                                        |    RGB    |
+ +----------+   +-------------+              +---------------+    +-------------+      +-----------+
+ +----------+   +-------------+              |N from 6 layers|    |             |
+ |  Cluster |   | Sel 1 from 6|              |   Overlay0    +--->| Video Port0 |      +-----------+
+ |  window1 |   |    Layer1   |              |               |    |             |      | 1 from 3  |
+ +----------+   +-------------+              +---------------+    +-------------+      |   LVDS    |
+ +----------+   +-------------+                                                        +-----------+
+ |  Esmart  |   | Sel 1 from 6|
+ |  window0 |   |   Layer2    |              +---------------+    +-------------+      +-----------+
+ +----------+   +-------------+              |N from 6 Layers|    |             | +--> | 1 from 3  |
+ +----------+   +-------------+   -------->  |   Overlay1    +--->| Video Port1 |      |   MIPI    |
+ |  Esmart  |   | Sel 1 from 6|   -------->  |               |    |             |      +-----------+
+ |  Window1 |   |   Layer3    |              +---------------+    +-------------+
+ +----------+   +-------------+                                                        +-----------+
+ +----------+   +-------------+                                                        | 1 from 3  |
+ |  Smart   |   | Sel 1 from 6|              +---------------+    +-------------+      |   HDMI    |
+ |  Window0 |   |    Layer4   |              |N from 6 Layers|    |             |      +-----------+
+ +----------+   +-------------+              |   Overlay2    +--->| Video Port2 |
+ +----------+   +-------------+              |               |    |             |      +-----------+
+ |  Smart   |   | Sel 1 from 6|              +---------------+    +-------------+      |  1 from 3 |
+ |  Window1 |   |    Layer5   |                                                        |    eDP    |
+ +----------+   +-------------+                                                        +-----------+
+ *
+ */
+
+enum vop2_data_format {
+	VOP2_FMT_ARGB8888 = 0,
+	VOP2_FMT_RGB888,
+	VOP2_FMT_RGB565,
+	VOP2_FMT_XRGB101010,
+	VOP2_FMT_YUV420SP,
+	VOP2_FMT_YUV422SP,
+	VOP2_FMT_YUV444SP,
+	VOP2_FMT_YUYV422 = 8,
+	VOP2_FMT_YUYV420,
+	VOP2_FMT_VYUY422,
+	VOP2_FMT_VYUY420,
+	VOP2_FMT_YUV420SP_TILE_8x4 = 0x10,
+	VOP2_FMT_YUV420SP_TILE_16x2,
+	VOP2_FMT_YUV422SP_TILE_8x4,
+	VOP2_FMT_YUV422SP_TILE_16x2,
+	VOP2_FMT_YUV420SP_10,
+	VOP2_FMT_YUV422SP_10,
+	VOP2_FMT_YUV444SP_10,
+};
+
+enum vop2_afbc_format {
+	VOP2_AFBC_FMT_RGB565,
+	VOP2_AFBC_FMT_ARGB2101010 = 2,
+	VOP2_AFBC_FMT_YUV420_10BIT,
+	VOP2_AFBC_FMT_RGB888,
+	VOP2_AFBC_FMT_ARGB8888,
+	VOP2_AFBC_FMT_YUV420 = 9,
+	VOP2_AFBC_FMT_YUV422 = 0xb,
+	VOP2_AFBC_FMT_YUV422_10BIT = 0xe,
+	VOP2_AFBC_FMT_INVALID = -1,
+};
+
+union vop2_alpha_ctrl {
+	u32 val;
+	struct {
+		/* [0:1] */
+		u32 color_mode:1;
+		u32 alpha_mode:1;
+		/* [2:3] */
+		u32 blend_mode:2;
+		u32 alpha_cal_mode:1;
+		/* [5:7] */
+		u32 factor_mode:3;
+		/* [8:9] */
+		u32 alpha_en:1;
+		u32 src_dst_swap:1;
+		u32 reserved:6;
+		/* [16:23] */
+		u32 glb_alpha:8;
+	} bits;
+};
+
+struct vop2_alpha {
+	union vop2_alpha_ctrl src_color_ctrl;
+	union vop2_alpha_ctrl dst_color_ctrl;
+	union vop2_alpha_ctrl src_alpha_ctrl;
+	union vop2_alpha_ctrl dst_alpha_ctrl;
+};
+
+struct vop2_alpha_config {
+	bool src_premulti_en;
+	bool dst_premulti_en;
+	bool src_pixel_alpha_en;
+	bool dst_pixel_alpha_en;
+	u16 src_glb_alpha_value;
+	u16 dst_glb_alpha_value;
+};
+
+struct vop2_video_port;
+
+struct vop2_win {
+	struct vop2 *vop2;
+	struct vop2_video_port *vp;
+	const struct vop2_win_data *data;
+	struct regmap_field *reg[VOP2_WIN_MAX_REG];
+	struct regmap *map;
+	char *name;
+
+	struct reg_field *reg_field;
+	u32 regs[0x100 / sizeof(u32)];
+
+	u8 delay;
+	u32 offset;
+
+	enum drm_plane_type type;
+
+	struct list_head list;
+
+	int zpos;
+
+	struct fb_info info;
+	dma_addr_t dma;
+	u32 alpha;
+	u32 pixel_blend_mode;
+	bool enabled;
+	struct fb_rect src;
+	struct fb_rect dst;
+};
+
+struct vop2_video_port {
+	struct vop2 *vop2;
+	struct clk *dclk;
+	unsigned int id;
+	const struct vop2_video_port_data *data;
+
+	/**
+	 * @win_mask: Bitmask of windows attached to the video port;
+	 */
+	u32 win_mask;
+
+	struct vop2_win *primary_plane;
+	struct drm_pending_vblank_event *event;
+
+	unsigned int nlayers;
+
+	struct device_node *port;
+
+	struct fb_videomode *modes;
+	struct vpl vpl;
+
+	struct list_head windows;
+	u32 line_length;
+	u32 max_yres;
+	int crtc_endpoint_id;
+};
+
+struct vop2 {
+	struct device *dev;
+	struct vop2_video_port vps[4];
+
+	const struct vop2_data *data;
+	/*
+	 * Number of windows that are registered as plane, may be less than the
+	 * total number of hardware windows.
+	 */
+	u32 registered_num_wins;
+
+	void __iomem *regs;
+	struct regmap *map;
+
+	struct regmap *sys_grf;
+	struct regmap *vop_grf;
+	struct regmap *vo1_grf;
+	struct regmap *sys_pmu;
+
+	/* physical map length of vop2 register */
+	u32 len;
+
+	void __iomem *lut_regs;
+
+	int irq;
+
+	/*
+	 * Some global resources are shared between all video ports(crtcs), so
+	 * we need a ref counter here.
+	 */
+	unsigned int enable_count;
+	struct clk *hclk;
+	struct clk *aclk;
+	struct clk *pclk;
+
+	/* optional internal rgb encoder */
+	struct rockchip_rgb *rgb;
+
+	/* must be put at the end of the struct */
+	struct vop2_win win[];
+};
+
+#define vop2_output_if_is_hdmi(x)	((x) == ROCKCHIP_VOP2_EP_HDMI0 || \
+					 (x) == ROCKCHIP_VOP2_EP_HDMI1)
+
+#define vop2_output_if_is_dp(x)		((x) == ROCKCHIP_VOP2_EP_DP0 || \
+					 (x) == ROCKCHIP_VOP2_EP_DP1)
+
+#define vop2_output_if_is_edp(x)	((x) == ROCKCHIP_VOP2_EP_EDP0 || \
+					 (x) == ROCKCHIP_VOP2_EP_EDP1)
+
+#define vop2_output_if_is_mipi(x)	((x) == ROCKCHIP_VOP2_EP_MIPI0 || \
+					 (x) == ROCKCHIP_VOP2_EP_MIPI1)
+
+#define vop2_output_if_is_lvds(x)	((x) == ROCKCHIP_VOP2_EP_LVDS0 || \
+					 (x) == ROCKCHIP_VOP2_EP_LVDS1)
+
+#define vop2_output_if_is_dpi(x)	((x) == ROCKCHIP_VOP2_EP_RGB0)
+
+static const struct regmap_config vop2_regmap_config;
+
+static void vop2_writel(struct vop2 *vop2, u32 offset, u32 v)
+{
+	regmap_write(vop2->map, offset, v);
+}
+
+static void vop2_vp_write(struct vop2_video_port *vp, u32 offset, u32 v)
+{
+	regmap_write(vp->vop2->map, vp->data->offset + offset, v);
+}
+
+static u32 vop2_readl(struct vop2 *vop2, u32 offset)
+{
+	u32 val;
+
+	regmap_read(vop2->map, offset, &val);
+
+	return val;
+}
+
+static void vop2_win_write(const struct vop2_win *win, unsigned int reg, u32 v)
+{
+	u32 offset = win->reg_field[reg].reg;
+	u32 idx = offset / sizeof(u32);
+
+	regmap_field_write(win->reg[reg], v);
+
+	writel(win->regs[idx], win->vop2->regs + win->offset + offset);
+}
+
+/*
+ * Note:
+ * The write mask function is documented but missing on rk3566/8, writes
+ * to these bits have no effect. For newer soc(rk3588 and following) the
+ * write mask is needed for register writes.
+ *
+ * GLB_CFG_DONE_EN has no write mask bit.
+ *
+ */
+static void vop2_cfg_done(struct vop2_video_port *vp)
+{
+	struct vop2 *vop2 = vp->vop2;
+	u32 val = RK3568_REG_CFG_DONE__GLB_CFG_DONE_EN;
+
+	val |= BIT(vp->id) | (BIT(vp->id) << 16);
+
+	regmap_set_bits(vop2->map, RK3568_REG_CFG_DONE, val);
+}
+
+static void vop2_win_disable(struct vop2_win *win)
+{
+	vop2_win_write(win, VOP2_WIN_ENABLE, 0);
+}
+
+#if 0
+static enum vop2_data_format vop2_convert_format(u32 format)
+{
+	switch (format) {
+	case DRM_FORMAT_XRGB8888:
+	case DRM_FORMAT_ARGB8888:
+	case DRM_FORMAT_XBGR8888:
+	case DRM_FORMAT_ABGR8888:
+		return VOP2_FMT_ARGB8888;
+	case DRM_FORMAT_RGB888:
+	case DRM_FORMAT_BGR888:
+		return VOP2_FMT_RGB888;
+	case DRM_FORMAT_RGB565:
+	case DRM_FORMAT_BGR565:
+		return VOP2_FMT_RGB565;
+	default:
+		pr_err("unsupported format[%08x]\n", format);
+		return -EINVAL;
+	}
+}
+#endif
+
+static bool vop2_win_rb_swap(u32 format)
+{
+	switch (format) {
+	case DRM_FORMAT_XBGR2101010:
+	case DRM_FORMAT_ABGR2101010:
+	case DRM_FORMAT_XBGR8888:
+	case DRM_FORMAT_ABGR8888:
+	case DRM_FORMAT_BGR888:
+	case DRM_FORMAT_BGR565:
+		return true;
+	default:
+		return false;
+	}
+}
+
+static bool vop2_win_dither_up(u32 format)
+{
+	switch (format) {
+	case DRM_FORMAT_BGR565:
+	case DRM_FORMAT_RGB565:
+		return true;
+	default:
+		return false;
+	}
+}
+
+static bool vop2_output_rg_swap(struct vop2 *vop2, u32 bus_format)
+{
+	if (vop2->data->soc_id == 3588) {
+		if (bus_format == MEDIA_BUS_FMT_YUV8_1X24 ||
+		    bus_format == MEDIA_BUS_FMT_YUV10_1X30)
+			return true;
+	}
+
+	return false;
+}
+#if 0
+static u16 vop2_scale_factor(u32 src, u32 dst)
+{
+	u32 fac;
+	int shift;
+
+	if (src == dst)
+		return 0;
+
+	if (dst < 2)
+		return U16_MAX;
+
+	if (src < 2)
+		return 0;
+
+	if (src > dst)
+		shift = 12;
+	else
+		shift = 16;
+
+	src--;
+	dst--;
+
+	fac = DIV_ROUND_UP(src << shift, dst) - 1;
+
+	if (fac > U16_MAX)
+		return U16_MAX;
+
+	return fac;
+}
+#endif
+
+/*
+ * colorspace path:
+ *      Input        Win csc                     Output
+ * 1. YUV(2020)  --> Y2R->2020To709->R2Y   --> YUV_OUTPUT(601/709)
+ *    RGB        --> R2Y                  __/
+ *
+ * 2. YUV(2020)  --> bypasss               --> YUV_OUTPUT(2020)
+ *    RGB        --> 709To2020->R2Y       __/
+ *
+ * 3. YUV(2020)  --> Y2R->2020To709        --> RGB_OUTPUT(709)
+ *    RGB        --> R2Y                  __/
+ *
+ * 4. YUV(601/709)-> Y2R->709To2020->R2Y   --> YUV_OUTPUT(2020)
+ *    RGB        --> 709To2020->R2Y       __/
+ *
+ * 5. YUV(601/709)-> bypass                --> YUV_OUTPUT(709)
+ *    RGB        --> R2Y                  __/
+ *
+ * 6. YUV(601/709)-> bypass                --> YUV_OUTPUT(601)
+ *    RGB        --> R2Y(601)             __/
+ *
+ * 7. YUV        --> Y2R(709)              --> RGB_OUTPUT(709)
+ *    RGB        --> bypass               __/
+ *
+ * 8. RGB        --> 709To2020->R2Y        --> YUV_OUTPUT(2020)
+ *
+ * 9. RGB        --> R2Y(709)              --> YUV_OUTPUT(709)
+ *
+ * 10. RGB       --> R2Y(601)              --> YUV_OUTPUT(601)
+ *
+ * 11. RGB       --> bypass                --> RGB_OUTPUT(709)
+ */
+
+static void vop2_crtc_enable_irq(struct vop2_video_port *vp, u32 irq)
+{
+	struct vop2 *vop2 = vp->vop2;
+
+	vop2_writel(vop2, RK3568_VP_INT_CLR(vp->id), irq << 16 | irq);
+	vop2_writel(vop2, RK3568_VP_INT_EN(vp->id), irq << 16 | irq);
+}
+
+static void vop2_crtc_disable_irq(struct vop2_video_port *vp, u32 irq)
+{
+	struct vop2 *vop2 = vp->vop2;
+
+	vop2_writel(vop2, RK3568_VP_INT_EN(vp->id), irq << 16);
+}
+
+static int vop2_core_clks_prepare_enable(struct vop2 *vop2)
+{
+	int ret;
+
+	ret = clk_prepare_enable(vop2->hclk);
+	if (ret < 0) {
+		dev_err(vop2->dev, "failed to enable hclk - %d\n", ret);
+		return ret;
+	}
+
+	ret = clk_prepare_enable(vop2->aclk);
+	if (ret < 0) {
+		dev_err(vop2->dev, "failed to enable aclk - %d\n", ret);
+		goto err;
+	}
+
+	ret = clk_prepare_enable(vop2->pclk);
+	if (ret < 0) {
+		dev_err(vop2->dev, "failed to enable pclk - %d\n", ret);
+		goto err1;
+	}
+
+	return 0;
+err1:
+	clk_disable_unprepare(vop2->aclk);
+err:
+	clk_disable_unprepare(vop2->hclk);
+
+	return ret;
+}
+
+static void rk3588_vop2_power_domain_enable_all(struct vop2 *vop2)
+{
+	u32 pd;
+
+	pd = vop2_readl(vop2, RK3588_SYS_PD_CTRL);
+	pd &= ~(VOP2_PD_CLUSTER0 | VOP2_PD_CLUSTER1 | VOP2_PD_CLUSTER2 |
+		VOP2_PD_CLUSTER3 | VOP2_PD_ESMART);
+
+	vop2_writel(vop2, RK3588_SYS_PD_CTRL, pd);
+}
+
+static void vop2_enable(struct vop2 *vop2)
+{
+	int ret;
+
+	ret = vop2_core_clks_prepare_enable(vop2);
+	if (ret)
+		return;
+
+	if (vop2->data->soc_id == 3566)
+		vop2_writel(vop2, RK3568_OTP_WIN_EN, 1);
+
+	if (vop2->data->soc_id == 3588)
+		rk3588_vop2_power_domain_enable_all(vop2);
+
+	vop2_writel(vop2, RK3568_REG_CFG_DONE, RK3568_REG_CFG_DONE__GLB_CFG_DONE_EN);
+
+	/*
+	 * Disable auto gating, this is a workaround to
+	 * avoid display image shift when a window enabled.
+	 */
+	regmap_clear_bits(vop2->map, RK3568_SYS_AUTO_GATING_CTRL,
+			  RK3568_SYS_AUTO_GATING_CTRL__AUTO_GATING_EN);
+
+	vop2_writel(vop2, RK3568_SYS0_INT_CLR,
+		    VOP2_INT_BUS_ERRPR << 16 | VOP2_INT_BUS_ERRPR);
+	vop2_writel(vop2, RK3568_SYS0_INT_EN,
+		    VOP2_INT_BUS_ERRPR << 16 | VOP2_INT_BUS_ERRPR);
+	vop2_writel(vop2, RK3568_SYS1_INT_CLR,
+		    VOP2_INT_BUS_ERRPR << 16 | VOP2_INT_BUS_ERRPR);
+	vop2_writel(vop2, RK3568_SYS1_INT_EN,
+		    VOP2_INT_BUS_ERRPR << 16 | VOP2_INT_BUS_ERRPR);
+}
+
+static void vop2_disable(struct vop2 *vop2)
+{
+	clk_disable_unprepare(vop2->pclk);
+	clk_disable_unprepare(vop2->aclk);
+	clk_disable_unprepare(vop2->hclk);
+}
+
+static void vop2_crtc_atomic_disable(struct vop2_video_port *vp)
+{
+	struct vop2 *vop2 = vp->vop2;
+
+	vop2_crtc_enable_irq(vp, VP_INT_DSP_HOLD_VALID);
+
+	vop2_vp_write(vp, RK3568_VP_DSP_CTRL, RK3568_VP_DSP_CTRL__STANDBY);
+
+	vop2_crtc_disable_irq(vp, VP_INT_DSP_HOLD_VALID);
+
+	clk_disable_unprepare(vp->dclk);
+
+	vop2->enable_count--;
+
+	if (!vop2->enable_count)
+		vop2_disable(vop2);
+}
+
+static void vop2_plane_atomic_disable(struct vop2_win *win)
+{
+	struct vop2 *vop2 = win->vop2;
+
+	dev_dbg(vop2->dev, "%s disable\n", win->data->name);
+
+	vop2_win_disable(win);
+	vop2_win_write(win, VOP2_WIN_YUV_CLIP, 0);
+}
+
+static void vop2_plane_atomic_update(struct vop2_video_port *vp, struct vop2_win *win,
+				     dma_addr_t dma,
+				     struct fb_rect *src, struct fb_rect *dest)
+{
+	u32 actual_w, actual_h, dsp_w, dsp_h;
+	u32 act_info, dsp_info;
+	u32 format = VOP2_FMT_ARGB8888;
+	u32 rb_swap;
+	u32 pitch = win->info.line_length;
+	bool dither_up;
+
+	actual_w = fb_rect_width(src);
+	actual_h = fb_rect_height(src);
+	dsp_w = win->info.xres;
+	dsp_h = win->info.yres;
+
+	act_info = (actual_h - 1) << 16 | ((actual_w - 1) & 0xffff);
+	dsp_info = (dsp_h - 1) << 16 | ((dsp_w - 1) & 0xffff);
+
+	vop2_win_write(win, VOP2_WIN_YRGB_VIR, DIV_ROUND_UP(pitch, 4));
+
+	vop2_win_write(win, VOP2_WIN_YMIRROR, 0);
+
+	vop2_win_write(win, VOP2_WIN_FORMAT, format);
+	vop2_win_write(win, VOP2_WIN_YRGB_MST, dma);
+
+	rb_swap = vop2_win_rb_swap(format);
+	vop2_win_write(win, VOP2_WIN_RB_SWAP, rb_swap);
+	vop2_win_write(win, VOP2_WIN_UV_SWAP, 0);
+
+	vop2_win_write(win, VOP2_WIN_ACT_INFO, act_info);
+	vop2_win_write(win, VOP2_WIN_DSP_INFO, dsp_info);
+	vop2_win_write(win, VOP2_WIN_DSP_ST, dest->y1 << 16 | (dest->x1 & 0xffff));
+
+	vop2_win_write(win, VOP2_WIN_Y2R_EN, 0);
+	vop2_win_write(win, VOP2_WIN_R2Y_EN, 0);
+	vop2_win_write(win, VOP2_WIN_CSC_MODE, 0);
+
+	dither_up = vop2_win_dither_up(format);
+	vop2_win_write(win, VOP2_WIN_DITHER_UP, dither_up);
+
+	vop2_win_write(win, VOP2_WIN_ENABLE, 1);
+}
+
+static void vop2_dither_setup(u32 bus_format, u32 *dsp_ctrl)
+{
+	switch (bus_format) {
+	case MEDIA_BUS_FMT_RGB565_1X16:
+		*dsp_ctrl |= RK3568_VP_DSP_CTRL__DITHER_DOWN_EN;
+		break;
+	case MEDIA_BUS_FMT_RGB666_1X18:
+	case MEDIA_BUS_FMT_RGB666_1X24_CPADHI:
+	case MEDIA_BUS_FMT_RGB666_1X7X3_SPWG:
+		*dsp_ctrl |= RK3568_VP_DSP_CTRL__DITHER_DOWN_EN;
+		*dsp_ctrl |= RGB888_TO_RGB666;
+		break;
+	case MEDIA_BUS_FMT_YUV8_1X24:
+		*dsp_ctrl |= RK3568_VP_DSP_CTRL__PRE_DITHER_DOWN_EN;
+		break;
+	default:
+		break;
+	}
+
+	*dsp_ctrl |= FIELD_PREP(RK3568_VP_DSP_CTRL__DITHER_DOWN_SEL,
+				DITHER_DOWN_ALLEGRO);
+}
+
+static void vop2_post_config(struct vop2_video_port *vp, struct drm_display_mode *mode)
+{
+	u16 hdisplay = mode->hdisplay;
+	u16 hact_st = mode->htotal - mode->hsync_start;
+	u16 vdisplay = mode->vdisplay;
+	u16 vact_st = mode->vtotal - mode->vsync_start;
+	u32 left_margin = 100, right_margin = 100;
+	u32 top_margin = 100, bottom_margin = 100;
+	u16 hsize = hdisplay * (left_margin + right_margin) / 200;
+	u16 vsize = vdisplay * (top_margin + bottom_margin) / 200;
+	u16 hsync_len = mode->hsync_end - mode->hsync_start;
+	u16 hact_end, vact_end;
+	u32 val;
+	u32 bg_dly;
+	u32 pre_scan_dly;
+
+	bg_dly = vp->data->pre_scan_max_dly[3];
+	vop2_writel(vp->vop2, RK3568_VP_BG_MIX_CTRL(vp->id),
+		    FIELD_PREP(RK3568_VP_BG_MIX_CTRL__BG_DLY, bg_dly));
+
+	pre_scan_dly = ((bg_dly + (hdisplay >> 1) - 1) << 16) | hsync_len;
+	vop2_vp_write(vp, RK3568_VP_PRE_SCAN_HTIMING, pre_scan_dly);
+
+	vsize = rounddown(vsize, 2);
+	hsize = rounddown(hsize, 2);
+	hact_st += hdisplay * (100 - left_margin) / 200;
+	hact_end = hact_st + hsize;
+	val = hact_st << 16;
+	val |= hact_end;
+	vop2_vp_write(vp, RK3568_VP_POST_DSP_HACT_INFO, val);
+	vact_st += vdisplay * (100 - top_margin) / 200;
+	vact_end = vact_st + vsize;
+	val = vact_st << 16;
+	val |= vact_end;
+	vop2_vp_write(vp, RK3568_VP_POST_DSP_VACT_INFO, val);
+	val = scl_cal_scale2(vdisplay, vsize) << 16;
+	val |= scl_cal_scale2(hdisplay, hsize);
+	vop2_vp_write(vp, RK3568_VP_POST_SCL_FACTOR_YRGB, val);
+
+	val = 0;
+	if (hdisplay != hsize)
+		val |= RK3568_VP_POST_SCL_CTRL__HSCALEDOWN;
+	if (vdisplay != vsize)
+		val |= RK3568_VP_POST_SCL_CTRL__VSCALEDOWN;
+	vop2_vp_write(vp, RK3568_VP_POST_SCL_CTRL, val);
+
+	vop2_vp_write(vp, RK3568_VP_DSP_BG, 0);
+}
+
+static unsigned long rk3568_set_intf_mux(struct vop2_video_port *vp, int id, u32 polflags,
+					 unsigned int clock)
+{
+	struct vop2 *vop2 = vp->vop2;
+	u32 die, dip;
+
+	die = vop2_readl(vop2, RK3568_DSP_IF_EN);
+	dip = vop2_readl(vop2, RK3568_DSP_IF_POL);
+
+	switch (id) {
+	case ROCKCHIP_VOP2_EP_RGB0:
+		die &= ~RK3568_SYS_DSP_INFACE_EN_RGB_MUX;
+		die |= RK3568_SYS_DSP_INFACE_EN_RGB |
+			   FIELD_PREP(RK3568_SYS_DSP_INFACE_EN_RGB_MUX, vp->id);
+		dip &= ~RK3568_DSP_IF_POL__RGB_LVDS_PIN_POL;
+		dip |= FIELD_PREP(RK3568_DSP_IF_POL__RGB_LVDS_PIN_POL, polflags);
+		if (polflags & POLFLAG_DCLK_INV)
+			regmap_write(vop2->sys_grf, RK3568_GRF_VO_CON1, BIT(3 + 16) | BIT(3));
+		else
+			regmap_write(vop2->sys_grf, RK3568_GRF_VO_CON1, BIT(3 + 16));
+		break;
+	case ROCKCHIP_VOP2_EP_HDMI0:
+		die &= ~RK3568_SYS_DSP_INFACE_EN_HDMI_MUX;
+		die |= RK3568_SYS_DSP_INFACE_EN_HDMI |
+			   FIELD_PREP(RK3568_SYS_DSP_INFACE_EN_HDMI_MUX, vp->id);
+		dip &= ~RK3568_DSP_IF_POL__HDMI_PIN_POL;
+		dip |= FIELD_PREP(RK3568_DSP_IF_POL__HDMI_PIN_POL, polflags);
+		break;
+	case ROCKCHIP_VOP2_EP_EDP0:
+		die &= ~RK3568_SYS_DSP_INFACE_EN_EDP_MUX;
+		die |= RK3568_SYS_DSP_INFACE_EN_EDP |
+			   FIELD_PREP(RK3568_SYS_DSP_INFACE_EN_EDP_MUX, vp->id);
+		dip &= ~RK3568_DSP_IF_POL__EDP_PIN_POL;
+		dip |= FIELD_PREP(RK3568_DSP_IF_POL__EDP_PIN_POL, polflags);
+		break;
+	case ROCKCHIP_VOP2_EP_MIPI0:
+		die &= ~RK3568_SYS_DSP_INFACE_EN_MIPI0_MUX;
+		die |= RK3568_SYS_DSP_INFACE_EN_MIPI0 |
+			   FIELD_PREP(RK3568_SYS_DSP_INFACE_EN_MIPI0_MUX, vp->id);
+		dip &= ~RK3568_DSP_IF_POL__MIPI_PIN_POL;
+		dip |= FIELD_PREP(RK3568_DSP_IF_POL__MIPI_PIN_POL, polflags);
+		break;
+	case ROCKCHIP_VOP2_EP_MIPI1:
+		die &= ~RK3568_SYS_DSP_INFACE_EN_MIPI1_MUX;
+		die |= RK3568_SYS_DSP_INFACE_EN_MIPI1 |
+			   FIELD_PREP(RK3568_SYS_DSP_INFACE_EN_MIPI1_MUX, vp->id);
+		dip &= ~RK3568_DSP_IF_POL__MIPI_PIN_POL;
+		dip |= FIELD_PREP(RK3568_DSP_IF_POL__MIPI_PIN_POL, polflags);
+		break;
+	case ROCKCHIP_VOP2_EP_LVDS0:
+		die &= ~RK3568_SYS_DSP_INFACE_EN_LVDS0_MUX;
+		die |= RK3568_SYS_DSP_INFACE_EN_LVDS0 |
+			   FIELD_PREP(RK3568_SYS_DSP_INFACE_EN_LVDS0_MUX, vp->id);
+		dip &= ~RK3568_DSP_IF_POL__RGB_LVDS_PIN_POL;
+		dip |= FIELD_PREP(RK3568_DSP_IF_POL__RGB_LVDS_PIN_POL, polflags);
+		break;
+	case ROCKCHIP_VOP2_EP_LVDS1:
+		die &= ~RK3568_SYS_DSP_INFACE_EN_LVDS1_MUX;
+		die |= RK3568_SYS_DSP_INFACE_EN_LVDS1 |
+			   FIELD_PREP(RK3568_SYS_DSP_INFACE_EN_LVDS1_MUX, vp->id);
+		dip &= ~RK3568_DSP_IF_POL__RGB_LVDS_PIN_POL;
+		dip |= FIELD_PREP(RK3568_DSP_IF_POL__RGB_LVDS_PIN_POL, polflags);
+		break;
+	default:
+		dev_err(vop2->dev, "Invalid interface id %d on vp%d\n", id, vp->id);
+		return 0;
+	}
+
+	dip |= RK3568_DSP_IF_POL__CFG_DONE_IMD;
+
+	vop2_writel(vop2, RK3568_DSP_IF_EN, die);
+	vop2_writel(vop2, RK3568_DSP_IF_POL, dip);
+
+	return clock;
+}
+
+/*
+ * calc the dclk on rk3588
+ * the available div of dclk is 1, 2, 4
+ */
+static unsigned long rk3588_calc_dclk(unsigned long child_clk, unsigned long max_dclk)
+{
+	if (child_clk * 4 <= max_dclk)
+		return child_clk * 4;
+	else if (child_clk * 2 <= max_dclk)
+		return child_clk * 2;
+	else if (child_clk <= max_dclk)
+		return child_clk;
+	else
+		return 0;
+}
+
+/*
+ * 4 pixclk/cycle on rk3588
+ * RGB/eDP/HDMI: if_pixclk >= dclk_core
+ * DP: dp_pixclk = dclk_out <= dclk_core
+ * DSI: mipi_pixclk <= dclk_out <= dclk_core
+ */
+static unsigned long rk3588_calc_cru_cfg(struct vop2_video_port *vp, int id,
+					 int *dclk_core_div, int *dclk_out_div,
+					 int *if_pixclk_div, int *if_dclk_div)
+{
+	struct vop2 *vop2 = vp->vop2;
+	u32 crtc_clock = 0;
+	unsigned long v_pixclk = crtc_clock * 1000LL; /* video timing pixclk */
+	unsigned long dclk_core_rate = v_pixclk >> 2;
+	unsigned long dclk_rate = v_pixclk;
+	unsigned long dclk_out_rate;
+	unsigned long if_pixclk_rate;
+	int K = 1;
+
+	if (vop2_output_if_is_hdmi(id)) {
+		if_pixclk_rate = (dclk_core_rate << 1) / K;
+		/*
+		 * if_dclk_rate = dclk_core_rate / K;
+		 * *if_pixclk_div = dclk_rate / if_pixclk_rate;
+		 * *if_dclk_div = dclk_rate / if_dclk_rate;
+		 */
+		*if_pixclk_div = 2;
+		*if_dclk_div = 4;
+	} else if (vop2_output_if_is_edp(id)) {
+		/*
+		 * edp_pixclk = edp_dclk > dclk_core
+		 */
+		if_pixclk_rate = v_pixclk / K;
+		dclk_rate = if_pixclk_rate * K;
+		/*
+		 * *if_pixclk_div = dclk_rate / if_pixclk_rate;
+		 * *if_dclk_div = *if_pixclk_div;
+		 */
+		*if_pixclk_div = K;
+		*if_dclk_div = K;
+	} else if (vop2_output_if_is_dp(id)) {
+		dclk_out_rate = v_pixclk >> 2;
+
+		dclk_rate = rk3588_calc_dclk(dclk_out_rate, 600000);
+		if (!dclk_rate) {
+			dev_err(vop2->dev, "DP dclk_out_rate out of range, dclk_out_rate: %ld KHZ\n",
+				dclk_out_rate);
+			return 0;
+		}
+		*dclk_out_div = dclk_rate / dclk_out_rate;
+	} else if (vop2_output_if_is_mipi(id)) {
+		if_pixclk_rate = dclk_core_rate / K;
+		/*
+		 * dclk_core = dclk_out * K = if_pixclk * K = v_pixclk / 4
+		 */
+		dclk_out_rate = if_pixclk_rate;
+		/*
+		 * dclk_rate = N * dclk_core_rate N = (1,2,4 ),
+		 * we get a little factor here
+		 */
+		dclk_rate = rk3588_calc_dclk(dclk_out_rate, 600000);
+		if (!dclk_rate) {
+			dev_err(vop2->dev, "MIPI dclk out of range, dclk_out_rate: %ld KHZ\n",
+				dclk_out_rate);
+			return 0;
+		}
+		*dclk_out_div = dclk_rate / dclk_out_rate;
+		/*
+		 * mipi pixclk == dclk_out
+		 */
+		*if_pixclk_div = 1;
+	} else if (vop2_output_if_is_dpi(id)) {
+		dclk_rate = v_pixclk;
+	}
+
+	*dclk_core_div = dclk_rate / dclk_core_rate;
+	*if_pixclk_div = ilog2(*if_pixclk_div);
+	*if_dclk_div = ilog2(*if_dclk_div);
+	*dclk_core_div = ilog2(*dclk_core_div);
+	*dclk_out_div = ilog2(*dclk_out_div);
+
+	dev_dbg(vop2->dev, "dclk: %ld, pixclk_div: %d, dclk_div: %d\n",
+		dclk_rate, *if_pixclk_div, *if_dclk_div);
+
+	return dclk_rate;
+}
+
+/*
+ * MIPI port mux on rk3588:
+ * 0: Video Port2
+ * 1: Video Port3
+ * 3: Video Port 1(MIPI1 only)
+ */
+static u32 rk3588_get_mipi_port_mux(int vp_id)
+{
+	if (vp_id == 1)
+		return 3;
+	else if (vp_id == 3)
+		return 1;
+	else
+		return 0;
+}
+
+static u32 rk3588_get_hdmi_pol(u32 flags)
+{
+	u32 val;
+
+	val = (flags & FB_SYNC_HOR_HIGH_ACT) ? BIT(HSYNC_POSITIVE) : 0;
+	val |= (flags & FB_SYNC_VERT_HIGH_ACT) ? BIT(VSYNC_POSITIVE) : 0;
+
+	return val;
+}
+
+static unsigned long rk3588_set_intf_mux(struct vop2_video_port *vp, int id, u32 polflags,
+					 unsigned int clock)
+{
+	struct vop2 *vop2 = vp->vop2;
+	int dclk_core_div, dclk_out_div, if_pixclk_div, if_dclk_div;
+	u32 die, dip, div, vp_clk_div, val;
+
+	clock = rk3588_calc_cru_cfg(vp, id, &dclk_core_div, &dclk_out_div,
+				    &if_pixclk_div, &if_dclk_div);
+	if (!clock)
+		return 0;
+
+	vp_clk_div = FIELD_PREP(RK3588_VP_CLK_CTRL__DCLK_CORE_DIV, dclk_core_div);
+	vp_clk_div |= FIELD_PREP(RK3588_VP_CLK_CTRL__DCLK_OUT_DIV, dclk_out_div);
+
+	die = vop2_readl(vop2, RK3568_DSP_IF_EN);
+	dip = vop2_readl(vop2, RK3568_DSP_IF_POL);
+	div = vop2_readl(vop2, RK3568_DSP_IF_CTRL);
+
+	switch (id) {
+	case ROCKCHIP_VOP2_EP_HDMI0:
+		div &= ~RK3588_DSP_IF_EDP_HDMI0_DCLK_DIV;
+		div &= ~RK3588_DSP_IF_EDP_HDMI0_PCLK_DIV;
+		div |= FIELD_PREP(RK3588_DSP_IF_EDP_HDMI0_DCLK_DIV, if_dclk_div);
+		div |= FIELD_PREP(RK3588_DSP_IF_EDP_HDMI0_PCLK_DIV, if_pixclk_div);
+		die &= ~RK3588_SYS_DSP_INFACE_EN_EDP_HDMI0_MUX;
+		die |= RK3588_SYS_DSP_INFACE_EN_HDMI0 |
+			    FIELD_PREP(RK3588_SYS_DSP_INFACE_EN_EDP_HDMI0_MUX, vp->id);
+		val = rk3588_get_hdmi_pol(polflags);
+		regmap_write(vop2->vop_grf, RK3588_GRF_VOP_CON2, HIWORD_UPDATE(1, 1, 1));
+		regmap_write(vop2->vo1_grf, RK3588_GRF_VO1_CON0, HIWORD_UPDATE(val, 6, 5));
+		break;
+	case ROCKCHIP_VOP2_EP_HDMI1:
+		div &= ~RK3588_DSP_IF_EDP_HDMI1_DCLK_DIV;
+		div &= ~RK3588_DSP_IF_EDP_HDMI1_PCLK_DIV;
+		div |= FIELD_PREP(RK3588_DSP_IF_EDP_HDMI1_DCLK_DIV, if_dclk_div);
+		div |= FIELD_PREP(RK3588_DSP_IF_EDP_HDMI1_PCLK_DIV, if_pixclk_div);
+		die &= ~RK3588_SYS_DSP_INFACE_EN_EDP_HDMI1_MUX;
+		die |= RK3588_SYS_DSP_INFACE_EN_HDMI1 |
+			    FIELD_PREP(RK3588_SYS_DSP_INFACE_EN_EDP_HDMI1_MUX, vp->id);
+		val = rk3588_get_hdmi_pol(polflags);
+		regmap_write(vop2->vop_grf, RK3588_GRF_VOP_CON2, HIWORD_UPDATE(1, 4, 4));
+		regmap_write(vop2->vo1_grf, RK3588_GRF_VO1_CON0, HIWORD_UPDATE(val, 8, 7));
+		break;
+	case ROCKCHIP_VOP2_EP_EDP0:
+		div &= ~RK3588_DSP_IF_EDP_HDMI0_DCLK_DIV;
+		div &= ~RK3588_DSP_IF_EDP_HDMI0_PCLK_DIV;
+		div |= FIELD_PREP(RK3588_DSP_IF_EDP_HDMI0_DCLK_DIV, if_dclk_div);
+		div |= FIELD_PREP(RK3588_DSP_IF_EDP_HDMI0_PCLK_DIV, if_pixclk_div);
+		die &= ~RK3588_SYS_DSP_INFACE_EN_EDP_HDMI0_MUX;
+		die |= RK3588_SYS_DSP_INFACE_EN_EDP0 |
+			   FIELD_PREP(RK3588_SYS_DSP_INFACE_EN_EDP_HDMI0_MUX, vp->id);
+		regmap_write(vop2->vop_grf, RK3588_GRF_VOP_CON2, HIWORD_UPDATE(1, 0, 0));
+		break;
+	case ROCKCHIP_VOP2_EP_EDP1:
+		div &= ~RK3588_DSP_IF_EDP_HDMI1_DCLK_DIV;
+		div &= ~RK3588_DSP_IF_EDP_HDMI1_PCLK_DIV;
+		div |= FIELD_PREP(RK3588_DSP_IF_EDP_HDMI0_DCLK_DIV, if_dclk_div);
+		div |= FIELD_PREP(RK3588_DSP_IF_EDP_HDMI0_PCLK_DIV, if_pixclk_div);
+		die &= ~RK3588_SYS_DSP_INFACE_EN_EDP_HDMI1_MUX;
+		die |= RK3588_SYS_DSP_INFACE_EN_EDP1 |
+			   FIELD_PREP(RK3588_SYS_DSP_INFACE_EN_EDP_HDMI1_MUX, vp->id);
+		regmap_write(vop2->vop_grf, RK3588_GRF_VOP_CON2, HIWORD_UPDATE(1, 3, 3));
+		break;
+	case ROCKCHIP_VOP2_EP_MIPI0:
+		div &= ~RK3588_DSP_IF_MIPI0_PCLK_DIV;
+		div |= FIELD_PREP(RK3588_DSP_IF_MIPI0_PCLK_DIV, if_pixclk_div);
+		die &= ~RK3588_SYS_DSP_INFACE_EN_MIPI0_MUX;
+		val = rk3588_get_mipi_port_mux(vp->id);
+		die |= RK3588_SYS_DSP_INFACE_EN_MIPI0 |
+			   FIELD_PREP(RK3588_SYS_DSP_INFACE_EN_MIPI0_MUX, !!val);
+		break;
+	case ROCKCHIP_VOP2_EP_MIPI1:
+		div &= ~RK3588_DSP_IF_MIPI1_PCLK_DIV;
+		div |= FIELD_PREP(RK3588_DSP_IF_MIPI1_PCLK_DIV, if_pixclk_div);
+		die &= ~RK3588_SYS_DSP_INFACE_EN_MIPI1_MUX;
+		val = rk3588_get_mipi_port_mux(vp->id);
+		die |= RK3588_SYS_DSP_INFACE_EN_MIPI1 |
+			   FIELD_PREP(RK3588_SYS_DSP_INFACE_EN_MIPI1_MUX, val);
+		break;
+	case ROCKCHIP_VOP2_EP_DP0:
+		die &= ~RK3588_SYS_DSP_INFACE_EN_DP0_MUX;
+		die |= RK3588_SYS_DSP_INFACE_EN_DP0 |
+			   FIELD_PREP(RK3588_SYS_DSP_INFACE_EN_DP0_MUX, vp->id);
+		dip &= ~RK3588_DSP_IF_POL__DP0_PIN_POL;
+		dip |= FIELD_PREP(RK3588_DSP_IF_POL__DP0_PIN_POL, polflags);
+		break;
+	case ROCKCHIP_VOP2_EP_DP1:
+		die &= ~RK3588_SYS_DSP_INFACE_EN_MIPI1_MUX;
+		die |= RK3588_SYS_DSP_INFACE_EN_MIPI1 |
+			   FIELD_PREP(RK3588_SYS_DSP_INFACE_EN_MIPI1_MUX, vp->id);
+		dip &= ~RK3588_DSP_IF_POL__DP1_PIN_POL;
+		dip |= FIELD_PREP(RK3588_DSP_IF_POL__DP1_PIN_POL, polflags);
+		break;
+	default:
+		dev_err(vop2->dev, "Invalid interface id %d on vp%d\n", id, vp->id);
+		return 0;
+	}
+
+	dip |= RK3568_DSP_IF_POL__CFG_DONE_IMD;
+
+	vop2_vp_write(vp, RK3588_VP_CLK_CTRL, vp_clk_div);
+	vop2_writel(vop2, RK3568_DSP_IF_EN, die);
+	vop2_writel(vop2, RK3568_DSP_IF_CTRL, div);
+	vop2_writel(vop2, RK3568_DSP_IF_POL, dip);
+
+	return clock;
+}
+
+static unsigned long vop2_set_intf_mux(struct vop2_video_port *vp, int ep_id, u32 polflags,
+				       unsigned int clock)
+{
+	struct vop2 *vop2 = vp->vop2;
+
+	if (vop2->data->soc_id == 3566 || vop2->data->soc_id == 3568)
+		return rk3568_set_intf_mux(vp, ep_id, polflags, clock);
+	else if (vop2->data->soc_id == 3588)
+		return rk3588_set_intf_mux(vp, ep_id, polflags, clock);
+	else
+		return 0;
+}
+
+static int us_to_vertical_line(struct drm_display_mode *mode, int us)
+{
+	return us * mode->clock / mode->htotal / 1000;
+}
+
+static int drm_mode_vrefresh(const struct drm_display_mode *mode)
+{
+	unsigned int num, den;
+
+	if (mode->htotal == 0 || mode->vtotal == 0)
+		return 0;
+
+	num = mode->clock;
+	den = mode->htotal * mode->vtotal;
+
+	return DIV_ROUND_CLOSEST_ULL(mul_u32_u32(num, 1000), den);
+}
+
+static void vop2_crtc_atomic_enable(struct vop2_video_port *vp,
+				    struct drm_display_mode *mode,
+				    struct rockchip_crtc_state *vcstate)
+{
+	struct vop2 *vop2 = vp->vop2;
+	unsigned long clock;
+	u16 hsync_len = mode->hsync_end - mode->hsync_start;
+	u16 hdisplay = mode->hdisplay;
+	u16 htotal = mode->htotal;
+	u16 hact_st = mode->htotal - mode->hsync_start;
+	u16 hact_end = hact_st + hdisplay;
+	u16 vdisplay = mode->vdisplay;
+	u16 vtotal = mode->vtotal;
+	u16 vsync_len = mode->vsync_end - mode->vsync_start;
+	u16 vact_st = mode->vtotal - mode->vsync_start;
+	u16 vact_end = vact_st + vdisplay;
+	u8 out_mode;
+	u32 dsp_ctrl = 0;
+	int act_end;
+	u32 val, polflags;
+	int ret;
+
+	dev_dbg(vop2->dev, "Update mode to %dx%dp%d, type: %d for vp%d\n",
+		hdisplay, vdisplay,
+		drm_mode_vrefresh(mode), vcstate->output_type, vp->id);
+
+	ret = clk_prepare_enable(vp->dclk);
+	if (ret < 0) {
+		dev_err(vop2->dev, "failed to enable dclk for video port%d - %d\n",
+			vp->id, ret);
+		return;
+	}
+
+	if (!vop2->enable_count)
+		vop2_enable(vop2);
+
+	vop2->enable_count++;
+
+	vop2_crtc_enable_irq(vp, VP_INT_POST_BUF_EMPTY);
+
+	polflags = 0;
+	if (vcstate->bus_flags & DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE)
+		polflags |= POLFLAG_DCLK_INV;
+	if (mode->flags & DRM_MODE_FLAG_PHSYNC)
+		polflags |= BIT(HSYNC_POSITIVE);
+	if (mode->flags & DRM_MODE_FLAG_PVSYNC)
+		polflags |= BIT(VSYNC_POSITIVE);
+
+	/*
+	 * for drive a high resolution(4KP120, 8K), vop on rk3588/rk3576 need
+	 * process multi(1/2/4/8) pixels per cycle, so the dclk feed by the
+	 * system cru may be the 1/2 or 1/4 of mode->clock.
+	 */
+	clock = vop2_set_intf_mux(vp, vp->crtc_endpoint_id, polflags, mode->clock * 1000);
+	if (!clock)
+		return;
+
+	out_mode = vcstate->output_mode;
+
+	dsp_ctrl |= FIELD_PREP(RK3568_VP_DSP_CTRL__OUT_MODE, out_mode);
+
+	if (vop2_output_rg_swap(vop2, vcstate->bus_format))
+		dsp_ctrl |= RK3568_VP_DSP_CTRL__DSP_RG_SWAP;
+
+	if (vcstate->yuv_overlay)
+		dsp_ctrl |= RK3568_VP_DSP_CTRL__POST_DSP_OUT_R2Y;
+
+	vop2_dither_setup(vcstate->bus_format, &dsp_ctrl);
+
+	vop2_vp_write(vp, RK3568_VP_DSP_HTOTAL_HS_END, (htotal << 16) | hsync_len);
+	val = hact_st << 16;
+	val |= hact_end;
+	vop2_vp_write(vp, RK3568_VP_DSP_HACT_ST_END, val);
+
+	val = vact_st << 16;
+	val |= vact_end;
+	vop2_vp_write(vp, RK3568_VP_DSP_VACT_ST_END, val);
+
+	act_end = vact_end;
+
+	vop2_writel(vop2, RK3568_VP_LINE_FLAG(vp->id),
+		    (act_end - us_to_vertical_line(mode, 0)) << 16 | act_end);
+
+	vop2_vp_write(vp, RK3568_VP_DSP_VTOTAL_VS_END, vtotal << 16 | vsync_len);
+
+	vop2_vp_write(vp, RK3568_VP_MIPI_CTRL, 0);
+
+	clk_set_rate(vp->dclk, clock);
+
+	vop2_post_config(vp, mode);
+
+	vop2_cfg_done(vp);
+
+	vop2_vp_write(vp, RK3568_VP_DSP_CTRL, dsp_ctrl);
+}
+
+static bool is_opaque(u16 alpha)
+{
+	return (alpha >> 8) == 0xff;
+}
+
+static void vop2_parse_alpha(struct vop2_alpha_config *alpha_config,
+			     struct vop2_alpha *alpha)
+{
+	int src_glb_alpha_en = is_opaque(alpha_config->src_glb_alpha_value) ? 0 : 1;
+	int dst_glb_alpha_en = is_opaque(alpha_config->dst_glb_alpha_value) ? 0 : 1;
+	int src_color_mode = alpha_config->src_premulti_en ?
+				ALPHA_SRC_PRE_MUL : ALPHA_SRC_NO_PRE_MUL;
+	int dst_color_mode = alpha_config->dst_premulti_en ?
+				ALPHA_SRC_PRE_MUL : ALPHA_SRC_NO_PRE_MUL;
+
+	alpha->src_color_ctrl.val = 0;
+	alpha->dst_color_ctrl.val = 0;
+	alpha->src_alpha_ctrl.val = 0;
+	alpha->dst_alpha_ctrl.val = 0;
+
+	if (!alpha_config->src_pixel_alpha_en)
+		alpha->src_color_ctrl.bits.blend_mode = ALPHA_GLOBAL;
+	else if (alpha_config->src_pixel_alpha_en && !src_glb_alpha_en)
+		alpha->src_color_ctrl.bits.blend_mode = ALPHA_PER_PIX;
+	else
+		alpha->src_color_ctrl.bits.blend_mode = ALPHA_PER_PIX_GLOBAL;
+
+	alpha->src_color_ctrl.bits.alpha_en = 1;
+
+	if (alpha->src_color_ctrl.bits.blend_mode == ALPHA_GLOBAL) {
+		alpha->src_color_ctrl.bits.color_mode = src_color_mode;
+		alpha->src_color_ctrl.bits.factor_mode = SRC_FAC_ALPHA_SRC_GLOBAL;
+	} else if (alpha->src_color_ctrl.bits.blend_mode == ALPHA_PER_PIX) {
+		alpha->src_color_ctrl.bits.color_mode = src_color_mode;
+		alpha->src_color_ctrl.bits.factor_mode = SRC_FAC_ALPHA_ONE;
+	} else {
+		alpha->src_color_ctrl.bits.color_mode = ALPHA_SRC_PRE_MUL;
+		alpha->src_color_ctrl.bits.factor_mode = SRC_FAC_ALPHA_SRC_GLOBAL;
+	}
+	alpha->src_color_ctrl.bits.glb_alpha = alpha_config->src_glb_alpha_value >> 8;
+	alpha->src_color_ctrl.bits.alpha_mode = ALPHA_STRAIGHT;
+	alpha->src_color_ctrl.bits.alpha_cal_mode = ALPHA_SATURATION;
+
+	alpha->dst_color_ctrl.bits.alpha_mode = ALPHA_STRAIGHT;
+	alpha->dst_color_ctrl.bits.alpha_cal_mode = ALPHA_SATURATION;
+	alpha->dst_color_ctrl.bits.blend_mode = ALPHA_GLOBAL;
+	alpha->dst_color_ctrl.bits.glb_alpha = alpha_config->dst_glb_alpha_value >> 8;
+	alpha->dst_color_ctrl.bits.color_mode = dst_color_mode;
+	alpha->dst_color_ctrl.bits.factor_mode = ALPHA_SRC_INVERSE;
+
+	alpha->src_alpha_ctrl.bits.alpha_mode = ALPHA_STRAIGHT;
+	alpha->src_alpha_ctrl.bits.blend_mode = alpha->src_color_ctrl.bits.blend_mode;
+	alpha->src_alpha_ctrl.bits.alpha_cal_mode = ALPHA_SATURATION;
+	alpha->src_alpha_ctrl.bits.factor_mode = ALPHA_ONE;
+
+	alpha->dst_alpha_ctrl.bits.alpha_mode = ALPHA_STRAIGHT;
+	if (alpha_config->dst_pixel_alpha_en && !dst_glb_alpha_en)
+		alpha->dst_alpha_ctrl.bits.blend_mode = ALPHA_PER_PIX;
+	else
+		alpha->dst_alpha_ctrl.bits.blend_mode = ALPHA_PER_PIX_GLOBAL;
+	alpha->dst_alpha_ctrl.bits.alpha_cal_mode = ALPHA_NO_SATURATION;
+	alpha->dst_alpha_ctrl.bits.factor_mode = ALPHA_SRC_INVERSE;
+}
+
+static int vop2_find_start_mixer_id_for_vp(struct vop2 *vop2, u8 port_id)
+{
+	struct vop2_video_port *vp;
+	int used_layer = 0;
+	int i;
+
+	for (i = 0; i < port_id; i++) {
+		vp = &vop2->vps[i];
+		used_layer += hweight32(vp->win_mask);
+	}
+
+	return used_layer;
+}
+
+#define DRM_BLEND_ALPHA_OPAQUE               0xffff
+#define DRM_MODE_BLEND_PREMULTI              0
+
+static void vop2_setup_alpha(struct vop2_video_port *vp, u32 dst_global_alpha)
+{
+	struct vop2 *vop2 = vp->vop2;
+	struct vop2_alpha_config alpha_config;
+	struct vop2_alpha alpha;
+	struct vop2_win *win;
+	int pixel_alpha_en;
+	int premulti_en;
+	int mixer_id;
+	u32 offset;
+	int zpos = 0;
+
+	mixer_id = vop2_find_start_mixer_id_for_vp(vop2, vp->id);
+	alpha_config.dst_pixel_alpha_en = true; /* alpha value need transfer to next mix */
+
+	list_for_each_entry(win, &vp->windows, list) {
+		if (!win->enabled)
+			continue;
+
+		if (win->pixel_blend_mode == DRM_MODE_BLEND_PREMULTI)
+			premulti_en = 1;
+		else
+			premulti_en = 0;
+
+		pixel_alpha_en = win->info.transp.length != 0;
+
+		alpha_config.src_premulti_en = premulti_en;
+
+		/* Cd = Cs + (1 - As) * Cd */
+		alpha_config.dst_premulti_en = true;
+		alpha_config.src_pixel_alpha_en = pixel_alpha_en;
+		alpha_config.src_glb_alpha_value = win->alpha;
+		alpha_config.dst_glb_alpha_value = DRM_BLEND_ALPHA_OPAQUE;
+
+		vop2_parse_alpha(&alpha_config, &alpha);
+
+		offset = (mixer_id + zpos) * 0x10;
+		zpos++;
+		vop2_writel(vop2, RK3568_MIX0_SRC_COLOR_CTRL + offset,
+			    alpha.src_color_ctrl.val);
+		vop2_writel(vop2, RK3568_MIX0_DST_COLOR_CTRL + offset,
+			    alpha.dst_color_ctrl.val);
+		vop2_writel(vop2, RK3568_MIX0_SRC_ALPHA_CTRL + offset,
+			    alpha.src_alpha_ctrl.val);
+		vop2_writel(vop2, RK3568_MIX0_DST_ALPHA_CTRL + offset,
+			    alpha.dst_alpha_ctrl.val);
+	}
+
+	if (vp->id == 0)
+		vop2_writel(vop2, RK3568_HDR0_SRC_COLOR_CTRL, 0);
+
+}
+
+static void vop2_setup_layer_mixer(struct vop2_video_port *vp)
+{
+	struct vop2 *vop2 = vp->vop2;
+	u32 layer_sel = 0;
+	u32 port_sel;
+	unsigned int nlayer, ofs;
+	u32 ovl_ctrl;
+	int i;
+	struct vop2_video_port *vp0 = &vop2->vps[0];
+	struct vop2_video_port *vp1 = &vop2->vps[1];
+	struct vop2_video_port *vp2 = &vop2->vps[2];
+	struct vop2_win *win;
+
+	ovl_ctrl = vop2_readl(vop2, RK3568_OVL_CTRL);
+	ovl_ctrl |= RK3568_OVL_CTRL__LAYERSEL_REGDONE_IMD;
+	ovl_ctrl &= ~RK3568_OVL_CTRL__YUV_MODE(vp->id);
+
+	vop2_writel(vop2, RK3568_OVL_CTRL, ovl_ctrl);
+
+	port_sel = vop2_readl(vop2, RK3568_OVL_PORT_SEL);
+	port_sel &= RK3568_OVL_PORT_SEL__SEL_PORT;
+
+	if (vp0->nlayers)
+		port_sel |= FIELD_PREP(RK3568_OVL_PORT_SET__PORT0_MUX,
+				     vp0->nlayers - 1);
+	else
+		port_sel |= FIELD_PREP(RK3568_OVL_PORT_SET__PORT0_MUX, 8);
+
+	if (vp1->nlayers)
+		port_sel |= FIELD_PREP(RK3568_OVL_PORT_SET__PORT1_MUX,
+				     (vp0->nlayers + vp1->nlayers - 1));
+	else
+		port_sel |= FIELD_PREP(RK3568_OVL_PORT_SET__PORT1_MUX, 8);
+
+	if (vp2->nlayers)
+		port_sel |= FIELD_PREP(RK3568_OVL_PORT_SET__PORT2_MUX,
+			(vp2->nlayers + vp1->nlayers + vp0->nlayers - 1));
+	else
+		port_sel |= FIELD_PREP(RK3568_OVL_PORT_SET__PORT2_MUX, 8);
+
+	layer_sel = vop2_readl(vop2, RK3568_OVL_LAYER_SEL);
+
+	ofs = 0;
+	for (i = 0; i < vp->id; i++)
+		ofs += vop2->vps[i].nlayers;
+
+	nlayer = 0;
+
+	list_for_each_entry(win, &vp->windows, list) {
+		if (!win->enabled)
+			continue;
+
+		switch (win->data->phys_id) {
+		case ROCKCHIP_VOP2_CLUSTER0:
+			port_sel &= ~RK3568_OVL_PORT_SEL__CLUSTER0;
+			port_sel |= FIELD_PREP(RK3568_OVL_PORT_SEL__CLUSTER0, vp->id);
+			break;
+		case ROCKCHIP_VOP2_CLUSTER1:
+			port_sel &= ~RK3568_OVL_PORT_SEL__CLUSTER1;
+			port_sel |= FIELD_PREP(RK3568_OVL_PORT_SEL__CLUSTER1, vp->id);
+			break;
+		case ROCKCHIP_VOP2_CLUSTER2:
+			port_sel &= ~RK3588_OVL_PORT_SEL__CLUSTER2;
+			port_sel |= FIELD_PREP(RK3588_OVL_PORT_SEL__CLUSTER2, vp->id);
+			break;
+		case ROCKCHIP_VOP2_CLUSTER3:
+			port_sel &= ~RK3588_OVL_PORT_SEL__CLUSTER3;
+			port_sel |= FIELD_PREP(RK3588_OVL_PORT_SEL__CLUSTER3, vp->id);
+			break;
+		case ROCKCHIP_VOP2_ESMART0:
+			port_sel &= ~RK3568_OVL_PORT_SEL__ESMART0;
+			port_sel |= FIELD_PREP(RK3568_OVL_PORT_SEL__ESMART0, vp->id);
+			break;
+		case ROCKCHIP_VOP2_ESMART1:
+			port_sel &= ~RK3568_OVL_PORT_SEL__ESMART1;
+			port_sel |= FIELD_PREP(RK3568_OVL_PORT_SEL__ESMART1, vp->id);
+			break;
+		case ROCKCHIP_VOP2_ESMART2:
+			port_sel &= ~RK3588_OVL_PORT_SEL__ESMART2;
+			port_sel |= FIELD_PREP(RK3588_OVL_PORT_SEL__ESMART2, vp->id);
+			break;
+		case ROCKCHIP_VOP2_ESMART3:
+			port_sel &= ~RK3588_OVL_PORT_SEL__ESMART3;
+			port_sel |= FIELD_PREP(RK3588_OVL_PORT_SEL__ESMART3, vp->id);
+			break;
+		case ROCKCHIP_VOP2_SMART0:
+			port_sel &= ~RK3568_OVL_PORT_SEL__SMART0;
+			port_sel |= FIELD_PREP(RK3568_OVL_PORT_SEL__SMART0, vp->id);
+			break;
+		case ROCKCHIP_VOP2_SMART1:
+			port_sel &= ~RK3568_OVL_PORT_SEL__SMART1;
+			port_sel |= FIELD_PREP(RK3568_OVL_PORT_SEL__SMART1, vp->id);
+			break;
+		}
+
+		layer_sel &= ~RK3568_OVL_LAYER_SEL__LAYER(nlayer + ofs,
+							  0x7);
+		layer_sel |= RK3568_OVL_LAYER_SEL__LAYER(nlayer + ofs,
+							 win->data->layer_sel_id);
+		nlayer++;
+	}
+
+	/* configure unused layers to 0x5 (reserved) */
+	for (; nlayer < vp->nlayers + 2; nlayer++) {
+		layer_sel &= ~RK3568_OVL_LAYER_SEL__LAYER(nlayer + ofs, 0x7);
+		layer_sel |= RK3568_OVL_LAYER_SEL__LAYER(nlayer + ofs, 5);
+	}
+
+	vop2_writel(vop2, RK3568_OVL_LAYER_SEL, layer_sel);
+	vop2_writel(vop2, RK3568_OVL_PORT_SEL, port_sel);
+}
+
+static void vop2_setup_dly_for_windows(struct vop2 *vop2)
+{
+	struct vop2_win *win;
+	int i = 0;
+	u32 cdly = 0, sdly = 0;
+
+	for (i = 0; i < vop2->registered_num_wins; i++) {
+		u32 dly;
+
+		win = &vop2->win[i];
+		dly = win->data->dly[VOP2_DLY_MODE_DEFAULT];
+
+		switch (win->data->phys_id) {
+		case ROCKCHIP_VOP2_CLUSTER0:
+			cdly |= FIELD_PREP(RK3568_CLUSTER_DLY_NUM__CLUSTER0_0, dly);
+			cdly |= FIELD_PREP(RK3568_CLUSTER_DLY_NUM__CLUSTER0_1, dly);
+			break;
+		case ROCKCHIP_VOP2_CLUSTER1:
+			cdly |= FIELD_PREP(RK3568_CLUSTER_DLY_NUM__CLUSTER1_0, dly);
+			cdly |= FIELD_PREP(RK3568_CLUSTER_DLY_NUM__CLUSTER1_1, dly);
+			break;
+		case ROCKCHIP_VOP2_ESMART0:
+			sdly |= FIELD_PREP(RK3568_SMART_DLY_NUM__ESMART0, dly);
+			break;
+		case ROCKCHIP_VOP2_ESMART1:
+			sdly |= FIELD_PREP(RK3568_SMART_DLY_NUM__ESMART1, dly);
+			break;
+		case ROCKCHIP_VOP2_SMART0:
+			sdly |= FIELD_PREP(RK3568_SMART_DLY_NUM__SMART0, dly);
+			break;
+		case ROCKCHIP_VOP2_SMART1:
+			sdly |= FIELD_PREP(RK3568_SMART_DLY_NUM__SMART1, dly);
+			break;
+		}
+	}
+
+	vop2_writel(vop2, RK3568_CLUSTER_DLY_NUM, cdly);
+	vop2_writel(vop2, RK3568_SMART_DLY_NUM, sdly);
+}
+
+static void vop2_crtc_atomic_begin(struct vop2_video_port *vp)
+{
+	struct vop2 *vop2 = vp->vop2;
+	struct vop2_win *win;
+
+	vp->win_mask = 0;
+
+	list_for_each_entry(win, &vp->windows, list) {
+		if (!win->enabled)
+			continue;
+
+		vp->win_mask |= BIT(win->data->phys_id);
+	}
+
+	if (!vp->win_mask)
+		return;
+
+	vop2_setup_layer_mixer(vp);
+	vop2_setup_alpha(vp, DRM_BLEND_ALPHA_OPAQUE);
+	vop2_setup_dly_for_windows(vop2);
+}
+
+static void vop2_crtc_atomic_flush(struct vop2_video_port *vp, struct drm_display_mode *mode)
+{
+	vop2_post_config(vp, mode);
+
+	vop2_cfg_done(vp);
+}
+
+static struct vop2_video_port *find_vp_without_primary(struct vop2 *vop2)
+{
+	int i;
+
+	for (i = 0; i < vop2->data->nr_vps; i++) {
+		struct vop2_video_port *vp = &vop2->vps[i];
+
+		if (!vp->port)
+			continue;
+
+		if (vp->primary_plane)
+			continue;
+
+		return vp;
+	}
+
+	return NULL;
+}
+
+static int vop2_output_mode(u32 bus_format, int crtc_endpoint_id)
+{
+	if (vop2_output_if_is_hdmi(crtc_endpoint_id))
+		return ROCKCHIP_OUT_MODE_AAAA;
+
+	if (vop2_output_if_is_dpi(crtc_endpoint_id))
+		switch (bus_format) {
+		case MEDIA_BUS_FMT_RGB666_1X18:
+			return ROCKCHIP_OUT_MODE_P666;
+		case MEDIA_BUS_FMT_RGB565_1X16:
+			return ROCKCHIP_OUT_MODE_P565;
+		case MEDIA_BUS_FMT_RGB888_1X24:
+		case MEDIA_BUS_FMT_RGB666_1X24_CPADHI:
+		default:
+			return ROCKCHIP_OUT_MODE_P888;
+	}
+
+	return -EINVAL;
+}
+
+static void vop2_enable_controller(struct fb_info *info)
+{
+	struct vop2_win *win = container_of(info, struct vop2_win, info);
+	struct vop2_video_port *vp = win->vp;
+	struct drm_display_mode mode = {};
+	struct rockchip_crtc_state vcstate = {
+		.bus_format = 0,
+		.output_mode = ROCKCHIP_OUT_MODE_P666, //ROCKCHIP_OUT_MODE_AAAA,
+	};
+	struct drm_display_info display_info = {};
+	int ret;
+
+	if (!info->mode) {
+		dev_err(vp->vop2->dev, "no modes, cannot enable\n");
+		return;
+	}
+
+	fb_videomode_to_drm_display_mode(info->mode, &mode);
+
+	win->enabled = true;
+
+	ret = vpl_ioctl(&vp->vpl, vp->id, VPL_GET_BUS_FORMAT, &vcstate.bus_format);
+	if (ret < 0) {
+		dev_err(vp->vop2->dev, "Cannot determine bus format\n");
+		return;
+	}
+
+	ret = vpl_ioctl(&vp->vpl, vp->id, VPL_GET_DISPLAY_INFO, &display_info);
+	if (ret < 0) {
+		dev_err(vp->vop2->dev, "Cannot get display info\n");
+		return;
+	}
+
+	vcstate.bus_flags = display_info.bus_flags;
+	vcstate.output_mode = vop2_output_mode(vcstate.bus_format, vp->crtc_endpoint_id);
+	if (vcstate.output_mode < 0) {
+		dev_err(vp->vop2->dev, "Cannot determine output mode\n");
+		return;
+	}
+
+	dev_info(vp->vop2->dev, "vp%d: bus_format: 0x%08x bus_flags: 0x%08x\n",
+		 vp->id, vcstate.bus_format, display_info.bus_flags);
+
+	vpl_ioctl_prepare(&vp->vpl, vp->id, info->mode);
+
+	vop2_crtc_atomic_enable(vp, &mode, &vcstate);
+	vop2_crtc_atomic_begin(vp);
+
+	list_for_each_entry(win, &vp->windows, list) {
+		if (!win->enabled)
+			continue;
+		vop2_plane_atomic_update(vp, win, win->dma, &win->src, &win->dst);
+	}
+
+	vop2_crtc_atomic_flush(vp, &mode);
+
+	vpl_ioctl_enable(&vp->vpl, vp->id);
+}
+
+
+static void vop2_disable_controller(struct fb_info *info)
+{
+	struct vop2_win *win = container_of(info, struct vop2_win, info);
+	struct vop2_video_port *vp = win->vp;
+
+	vpl_ioctl_disable(&vp->vpl, vp->id);
+
+	list_for_each_entry(win, &vp->windows, list) {
+		if (!win->enabled)
+			continue;
+
+		vop2_plane_atomic_disable(win);
+	}
+
+	vop2_crtc_atomic_disable(vp);
+}
+
+static int vop2_activate_var(struct fb_info *info)
+{
+	struct vop2_win *win = container_of(info, struct vop2_win, info);
+	struct vop2_video_port *vp = win->vp;
+	struct vop2_win *w;
+
+	info->line_length = vp->line_length;
+	win->src.x2 = info->xres;
+	win->src.y2 = info->yres;
+	win->dst.x2 = info->xres;
+	win->dst.y2 = info->yres;
+
+	list_for_each_entry(w, &vp->windows, list) {
+		if (w == vp->primary_plane)
+			continue;
+		w->info.xres = info->xres;
+		w->info.yres = info->yres;
+
+		w->src.x2 = info->xres;
+		w->src.y2 = info->yres;
+		w->dst.x2 = info->xres;
+		w->dst.y2 = info->yres;
+	}
+
+	return 0;
+}
+
+static void vop2_enable_plane(struct fb_info *info)
+{
+	struct vop2_win *win = container_of(info, struct vop2_win, info);
+	struct vop2 *vop2 = win->vop2;
+
+	win->enabled = true;
+	vop2_crtc_atomic_begin(win->vp);
+	vop2_plane_atomic_update(&vop2->vps[0], win, win->dma, &win->src, &win->dst);
+	vop2_cfg_done(win->vp);
+}
+
+static struct fb_ops vop2_fb_ops = {
+	.fb_enable = vop2_enable_controller,
+	.fb_disable = vop2_disable_controller,
+	.fb_activate_var = vop2_activate_var,
+};
+
+static void vop2_disable_plane(struct fb_info *info)
+{
+	struct vop2_win *win = container_of(info, struct vop2_win, info);
+
+	win->enabled = false;
+	vop2_win_disable(win);
+	vop2_cfg_done(win->vp);
+}
+
+static struct fb_ops vop2_fb_plane_ops = {
+	.fb_enable = vop2_enable_plane,
+	.fb_disable = vop2_disable_plane,
+};
+
+static struct fb_bitfield red    = { .offset = 16, .length = 8, };
+static struct fb_bitfield green  = { .offset =  8, .length = 8, };
+static struct fb_bitfield blue   = { .offset =  0, .length = 8, };
+static struct fb_bitfield transp = { .offset = 24, .length = 8, };
+
+static int vop2_register_plane(struct vop2_video_port *vp, struct vop2_win *win)
+{
+	struct vop2 *vop2 = win->vop2;
+	struct fb_info *info = &win->info;
+	int i, ret;
+	static unsigned int zpos;
+	u32 xmax = 0, ymax = 0;
+
+	info->bits_per_pixel = 32;
+	info->red    = red;
+	info->green  = green;
+	info->blue   = blue;
+	info->transp = transp;
+	info->dev.parent = vop2->dev;
+
+	if (win->type == DRM_PLANE_TYPE_PRIMARY) {
+		ret = vpl_ioctl(&vp->vpl, vp->id, VPL_GET_VIDEOMODES, &info->modes);
+		if (ret) {
+			dev_err(vop2->dev, "failed to get modes: %s\n", strerror(-ret));
+			return ret;
+		}
+
+		if (info->modes.num_modes) {
+			for (i = 0; i < info->modes.num_modes; i++) {
+				xmax = max(xmax, info->modes.modes[i].xres);
+				ymax = max(ymax, info->modes.modes[i].yres);
+			}
+			info->xres = info->modes.modes[info->modes.native_mode].xres;
+			info->yres = info->modes.modes[info->modes.native_mode].yres;
+		} else {
+			dev_notice(vop2->dev, "no modes found on vp%d\n", vp->id);
+			xmax = info->xres = 640;
+			ymax = info->yres = 480;
+		}
+
+		vp->line_length = xmax * (info->bits_per_pixel >> 3);
+		vp->max_yres = ymax;
+		info->fbops = &vop2_fb_ops;
+	} else {
+		info->fbops = &vop2_fb_plane_ops;
+		info->xres = vp->primary_plane->info.xres;
+		info->yres = vp->primary_plane->info.yres;
+		info->base_plane = &vp->primary_plane->info;
+	}
+
+	win->vp = vp;
+
+	win->alpha = 0xffff;
+	win->src.x1 = 0;
+	win->src.y1 = 0;
+	win->src.x2 = info->xres;
+	win->src.y2 = info->yres;
+	win->dst.x1 = 0;
+	win->dst.y1 = 0;
+	win->dst.x2 = info->xres;
+	win->dst.y2 = info->yres;
+
+	info->line_length = vp->line_length;
+	info->screen_base = dma_alloc_writecombine(vp->line_length * vp->max_yres,
+							&win->dma);
+	if (!info->screen_base)
+		return -ENOMEM;
+
+	win->zpos = zpos++;
+
+	list_add_tail(&win->list, &vp->windows);
+
+	ret = register_framebuffer(&win->info);
+	if (ret)
+		return ret;
+
+	win->name = xasprintf("vp%d-%s-%s", vp->id,
+				win->type == DRM_PLANE_TYPE_PRIMARY ? "primary" : "overlay",
+				win->data->name);
+	dev_add_param_string_ro(&win->info.dev, "name", &win->name);
+
+	dev_info(vop2->dev, "Registered %s on VP%d, window %s, type %s\n",
+		 info->cdev.name, vp->id, win->data->name,
+		 win->type == DRM_PLANE_TYPE_PRIMARY ? "primary" : "overlay");
+
+	return 0;
+}
+
+static struct vop2_win *vop2_find_unused_win(struct vop2 *vop2)
+{
+	int i;
+
+	for (i = 0; i < vop2->registered_num_wins; i++) {
+		struct vop2_win *win = &vop2->win[i];
+
+		if (!win->vp)
+			return win;
+	}
+
+	return NULL;
+}
+
+static int vop2_create_crtcs(struct vop2 *vop2)
+{
+	const struct vop2_data *vop2_data = vop2->data;
+	struct device *dev = vop2->dev;
+	struct device_node *port;
+	struct vop2_video_port *vp;
+	int i, nvp, nvps = 0, ret, overlay_per_vp;
+
+	for (i = 0; i < vop2_data->nr_vps; i++) {
+		const struct vop2_video_port_data *vp_data;
+		struct device_node *np, *ep;
+		char dclk_name[9];
+		struct of_endpoint endpoint;
+
+		vp_data = &vop2_data->vp[i];
+		vp = &vop2->vps[i];
+		vp->vop2 = vop2;
+		vp->id = vp_data->id;
+		vp->data = vp_data;
+
+		INIT_LIST_HEAD(&vp->windows);
+
+		snprintf(dclk_name, sizeof(dclk_name), "dclk_vp%d", vp->id);
+		vp->dclk = clk_get(vop2->dev, dclk_name);
+		if (IS_ERR(vp->dclk)) {
+			dev_err(vop2->dev, "failed to get %s\n", dclk_name);
+			return PTR_ERR(vp->dclk);
+		}
+
+		np = of_graph_get_remote_node(dev->of_node, i, -1);
+		if (!np) {
+			dev_dbg(vop2->dev, "%s: No remote for vp%d\n", __func__, i);
+			continue;
+		}
+		of_node_put(np);
+
+		port = of_graph_get_port_by_id(dev->of_node, i);
+		if (!port) {
+			dev_err(vop2->dev, "no port node found for video_port%d\n", i);
+			return -ENOENT;
+		}
+
+		for_each_child_of_node(port, ep) {
+			of_graph_parse_endpoint(ep, &endpoint);
+			vp->crtc_endpoint_id = endpoint.id;
+			break;
+		}
+
+		vp->port = port;
+
+		vp->vpl.node = dev->of_node;
+                ret = vpl_register(&vp->vpl);
+                if (ret)
+                        return ret;
+
+		nvps++;
+	}
+
+	if (!nvps) {
+		/*
+		 * Not exactly an error, but also no point in continuing when this
+		 * happens
+		 */
+		dev_notice(vop2->dev, "No configured ports found\n");
+		return 0;
+	}
+
+	nvp = 0;
+	for (i = 0; i < vop2->registered_num_wins; i++) {
+		struct vop2_win *win = &vop2->win[i];
+
+		if (win->type == DRM_PLANE_TYPE_PRIMARY) {
+			vp = find_vp_without_primary(vop2);
+			if (vp) {
+				vp->primary_plane = win;
+				win->vp = vp;
+
+				nvp++;
+			} else {
+				/* change the unused primary window to overlay window */
+				win->type = DRM_PLANE_TYPE_OVERLAY;
+			}
+		}
+	}
+
+	overlay_per_vp = vop2->registered_num_wins / nvps - 1;
+
+	dev_dbg(vop2->dev, "have %d ports and %d windows, register %d overlay(s) per vp\n",
+		nvps, vop2->registered_num_wins, overlay_per_vp);
+
+	for (i = 0; i < vop2->registered_num_wins; i++) {
+		struct vop2_win *win = &vop2->win[i];
+		struct vop2_video_port *vp = win->vp;
+		int j;
+
+		if (!vp)
+			continue;
+
+		if (win->type != DRM_PLANE_TYPE_PRIMARY)
+			continue;
+
+		ret = vop2_register_plane(vp, win);
+		if (ret)
+			continue;
+
+		for (j = 0; j < overlay_per_vp; j++) {
+			win = vop2_find_unused_win(vop2);
+			if (!win)
+				break;
+
+			win->vp = vp;
+
+			ret = vop2_register_plane(vp, win);
+			if (ret)
+				return ret;
+		}
+		vp->nlayers = j + 1;
+	}
+
+	return 0;
+}
+
+static struct reg_field vop2_esmart_regs[VOP2_WIN_MAX_REG] = {
+	[VOP2_WIN_ENABLE] = REG_FIELD(RK3568_SMART_REGION0_CTRL, 0, 0),
+	[VOP2_WIN_FORMAT] = REG_FIELD(RK3568_SMART_REGION0_CTRL, 1, 5),
+	[VOP2_WIN_DITHER_UP] = REG_FIELD(RK3568_SMART_REGION0_CTRL, 12, 12),
+	[VOP2_WIN_RB_SWAP] = REG_FIELD(RK3568_SMART_REGION0_CTRL, 14, 14),
+	[VOP2_WIN_UV_SWAP] = REG_FIELD(RK3568_SMART_REGION0_CTRL, 16, 16),
+	[VOP2_WIN_ACT_INFO] = REG_FIELD(RK3568_SMART_REGION0_ACT_INFO, 0, 31),
+	[VOP2_WIN_DSP_INFO] = REG_FIELD(RK3568_SMART_REGION0_DSP_INFO, 0, 31),
+	[VOP2_WIN_DSP_ST] = REG_FIELD(RK3568_SMART_REGION0_DSP_ST, 0, 28),
+	[VOP2_WIN_YRGB_MST] = REG_FIELD(RK3568_SMART_REGION0_YRGB_MST, 0, 31),
+	[VOP2_WIN_UV_MST] = REG_FIELD(RK3568_SMART_REGION0_CBR_MST, 0, 31),
+	[VOP2_WIN_YUV_CLIP] = REG_FIELD(RK3568_SMART_REGION0_CTRL, 17, 17),
+	[VOP2_WIN_YRGB_VIR] = REG_FIELD(RK3568_SMART_REGION0_VIR, 0, 15),
+	[VOP2_WIN_UV_VIR] = REG_FIELD(RK3568_SMART_REGION0_VIR, 16, 31),
+	[VOP2_WIN_Y2R_EN] = REG_FIELD(RK3568_SMART_CTRL0, 0, 0),
+	[VOP2_WIN_R2Y_EN] = REG_FIELD(RK3568_SMART_CTRL0, 1, 1),
+	[VOP2_WIN_CSC_MODE] = REG_FIELD(RK3568_SMART_CTRL0, 2, 3),
+	[VOP2_WIN_YMIRROR] = REG_FIELD(RK3568_SMART_CTRL1, 31, 31),
+	[VOP2_WIN_COLOR_KEY] = REG_FIELD(RK3568_SMART_COLOR_KEY_CTRL, 0, 29),
+	[VOP2_WIN_COLOR_KEY_EN] = REG_FIELD(RK3568_SMART_COLOR_KEY_CTRL, 31, 31),
+
+	/* Scale */
+	[VOP2_WIN_SCALE_YRGB_X] = REG_FIELD(RK3568_SMART_REGION0_SCL_FACTOR_YRGB, 0, 15),
+	[VOP2_WIN_SCALE_YRGB_Y] = REG_FIELD(RK3568_SMART_REGION0_SCL_FACTOR_YRGB, 16, 31),
+	[VOP2_WIN_SCALE_CBCR_X] = REG_FIELD(RK3568_SMART_REGION0_SCL_FACTOR_CBR, 0, 15),
+	[VOP2_WIN_SCALE_CBCR_Y] = REG_FIELD(RK3568_SMART_REGION0_SCL_FACTOR_CBR, 16, 31),
+	[VOP2_WIN_YRGB_HOR_SCL_MODE] = REG_FIELD(RK3568_SMART_REGION0_SCL_CTRL, 0, 1),
+	[VOP2_WIN_YRGB_HSCL_FILTER_MODE] = REG_FIELD(RK3568_SMART_REGION0_SCL_CTRL, 2, 3),
+	[VOP2_WIN_YRGB_VER_SCL_MODE] = REG_FIELD(RK3568_SMART_REGION0_SCL_CTRL, 4, 5),
+	[VOP2_WIN_YRGB_VSCL_FILTER_MODE] = REG_FIELD(RK3568_SMART_REGION0_SCL_CTRL, 6, 7),
+	[VOP2_WIN_CBCR_HOR_SCL_MODE] = REG_FIELD(RK3568_SMART_REGION0_SCL_CTRL, 8, 9),
+	[VOP2_WIN_CBCR_HSCL_FILTER_MODE] = REG_FIELD(RK3568_SMART_REGION0_SCL_CTRL, 10, 11),
+	[VOP2_WIN_CBCR_VER_SCL_MODE] = REG_FIELD(RK3568_SMART_REGION0_SCL_CTRL, 12, 13),
+	[VOP2_WIN_CBCR_VSCL_FILTER_MODE] = REG_FIELD(RK3568_SMART_REGION0_SCL_CTRL, 14, 15),
+	[VOP2_WIN_BIC_COE_SEL] = REG_FIELD(RK3568_SMART_REGION0_SCL_CTRL, 16, 17),
+	[VOP2_WIN_VSD_YRGB_GT2] = REG_FIELD(RK3568_SMART_REGION0_CTRL, 8, 8),
+	[VOP2_WIN_VSD_YRGB_GT4] = REG_FIELD(RK3568_SMART_REGION0_CTRL, 9, 9),
+	[VOP2_WIN_VSD_CBCR_GT2] = REG_FIELD(RK3568_SMART_REGION0_CTRL, 10, 10),
+	[VOP2_WIN_VSD_CBCR_GT4] = REG_FIELD(RK3568_SMART_REGION0_CTRL, 11, 11),
+	[VOP2_WIN_XMIRROR] = { .reg = 0xffffffff },
+	[VOP2_WIN_CLUSTER_ENABLE] = { .reg = 0xffffffff },
+	[VOP2_WIN_AFBC_ENABLE] = { .reg = 0xffffffff },
+	[VOP2_WIN_CLUSTER_LB_MODE] = { .reg = 0xffffffff },
+	[VOP2_WIN_AFBC_FORMAT] = { .reg = 0xffffffff },
+	[VOP2_WIN_AFBC_RB_SWAP] = { .reg = 0xffffffff },
+	[VOP2_WIN_AFBC_UV_SWAP] = { .reg = 0xffffffff },
+	[VOP2_WIN_AFBC_AUTO_GATING_EN] = { .reg = 0xffffffff },
+	[VOP2_WIN_AFBC_BLOCK_SPLIT_EN] = { .reg = 0xffffffff },
+	[VOP2_WIN_AFBC_PIC_VIR_WIDTH] = { .reg = 0xffffffff },
+	[VOP2_WIN_AFBC_TILE_NUM] = { .reg = 0xffffffff },
+	[VOP2_WIN_AFBC_PIC_OFFSET] = { .reg = 0xffffffff },
+	[VOP2_WIN_AFBC_PIC_SIZE] = { .reg = 0xffffffff },
+	[VOP2_WIN_AFBC_DSP_OFFSET] = { .reg = 0xffffffff },
+	[VOP2_WIN_AFBC_TRANSFORM_OFFSET] = { .reg = 0xffffffff },
+	[VOP2_WIN_AFBC_HDR_PTR] = { .reg = 0xffffffff },
+	[VOP2_WIN_AFBC_HALF_BLOCK_EN] = { .reg = 0xffffffff },
+	[VOP2_WIN_AFBC_ROTATE_270] = { .reg = 0xffffffff },
+	[VOP2_WIN_AFBC_ROTATE_90] = { .reg = 0xffffffff },
+};
+
+static const struct regmap_config vop2_win_regmap_config = {
+	.reg_bits	= 32,
+	.val_bits	= 32,
+	.reg_stride	= 4,
+	.max_register	= 0x100,
+	.name		= "vop2-win",
+};
+
+static int vop2_esmart_init(struct vop2_win *win)
+{
+	struct vop2 *vop2 = win->vop2;
+	struct reg_field *esmart_regs;
+	int i, ret;
+
+	esmart_regs = kmemdup(vop2_esmart_regs, sizeof(vop2_esmart_regs),
+			      GFP_KERNEL);
+	if (!esmart_regs)
+		return -ENOMEM;
+
+	for (i = 0; i < 0x100 / sizeof(u32); i++)
+		win->regs[i] = readl(vop2->regs + win->offset + i * sizeof(u32));
+
+	win->reg_field = esmart_regs;
+	win->map = regmap_init_mmio(vop2->dev, win->regs, &vop2_win_regmap_config);
+	if (IS_ERR(vop2->map))
+		return PTR_ERR(vop2->map);
+
+	ret = regmap_field_bulk_alloc(win->map, win->reg,
+				      esmart_regs,
+				      ARRAY_SIZE(vop2_esmart_regs));
+
+	return ret;
+};
+
+static int vop2_win_init(struct vop2 *vop2)
+{
+	const struct vop2_data *vop2_data = vop2->data;
+	struct vop2_win *win;
+	int i, ret, n = 0;
+
+	for (i = 0; i < vop2_data->win_size; i++) {
+		const struct vop2_win_data *win_data = &vop2_data->win[i];
+
+		if (vop2->data->soc_id == 3566) {
+			/*
+			 * On RK3566 these windows don't have an independent
+			 * framebuffer. They share the framebuffer with smart0,
+			 * esmart0 and cluster0 respectively.
+			 */
+			switch (win_data->phys_id) {
+			case ROCKCHIP_VOP2_SMART1:
+			case ROCKCHIP_VOP2_ESMART1:
+			case ROCKCHIP_VOP2_CLUSTER1:
+				continue;
+			}
+		}
+
+		win = &vop2->win[n];
+		win->data = win_data;
+		win->type = win_data->type;
+		win->offset = win_data->base;
+		win->vop2 = vop2;
+
+		ret = vop2_esmart_init(win);
+		if (ret)
+			return ret;
+		n++;
+	}
+
+	vop2->registered_num_wins = n;
+
+	return 0;
+}
+
+static const struct regmap_config vop2_regmap_config = {
+	.reg_bits	= 32,
+	.val_bits	= 32,
+	.reg_stride	= 4,
+	.max_register	= 0x3000,
+	.name		= "vop2",
+};
+
+int vop2_bind(struct device *dev)
+{
+	const struct vop2_data *vop2_data;
+	struct vop2 *vop2;
+	struct resource *res;
+	size_t alloc_size;
+	int ret;
+
+	vop2_data = device_get_match_data(dev);
+	if (!vop2_data)
+		return dev_err_probe(dev, -EINVAL, "No match data\n");
+
+	/* Allocate vop2 struct and its vop2_win array */
+	alloc_size = struct_size(vop2, win, vop2_data->win_size);
+	vop2 = xzalloc(alloc_size);
+
+	vop2->dev = dev;
+	vop2->data = vop2_data;
+
+	res = dev_get_resource_by_name(dev, IORESOURCE_MEM, "vop");
+	if (!res)
+		return dev_err_probe(vop2->dev, -EINVAL, "failed to get vop2 register byname\n");
+
+	vop2->regs = IOMEM(res->start);
+	if (IS_ERR(vop2->regs))
+		return PTR_ERR(vop2->regs);
+	vop2->len = resource_size(res);
+
+	vop2->map = regmap_init_mmio(dev, vop2->regs, &vop2_regmap_config);
+	if (IS_ERR(vop2->map))
+		return PTR_ERR(vop2->map);
+
+	ret = vop2_win_init(vop2);
+	if (ret)
+		return ret;
+
+	if (vop2_data->feature & VOP2_FEATURE_HAS_SYS_GRF) {
+		vop2->sys_grf = syscon_regmap_lookup_by_phandle(dev->of_node, "rockchip,grf");
+		if (IS_ERR(vop2->sys_grf))
+			return dev_err_probe(dev, PTR_ERR(vop2->sys_grf), "cannot get sys_grf");
+	}
+
+	if (vop2_data->feature & VOP2_FEATURE_HAS_VOP_GRF) {
+		vop2->vop_grf = syscon_regmap_lookup_by_phandle(dev->of_node, "rockchip,vop-grf");
+		if (IS_ERR(vop2->vop_grf))
+			return dev_err_probe(dev, PTR_ERR(vop2->vop_grf), "cannot get vop_grf");
+	}
+
+	if (vop2_data->feature & VOP2_FEATURE_HAS_VO1_GRF) {
+		vop2->vo1_grf = syscon_regmap_lookup_by_phandle(dev->of_node, "rockchip,vo1-grf");
+		if (IS_ERR(vop2->vo1_grf))
+			return dev_err_probe(dev, PTR_ERR(vop2->vo1_grf), "cannot get vo1_grf");
+	}
+
+	if (vop2_data->feature & VOP2_FEATURE_HAS_SYS_PMU) {
+		vop2->sys_pmu = syscon_regmap_lookup_by_phandle(dev->of_node, "rockchip,pmu");
+		if (IS_ERR(vop2->sys_pmu))
+			return dev_err_probe(dev, PTR_ERR(vop2->sys_pmu), "cannot get sys_pmu");
+	}
+
+	vop2->hclk = clk_get(vop2->dev, "hclk");
+	if (IS_ERR(vop2->hclk))
+		return dev_err_probe(vop2->dev, PTR_ERR(vop2->hclk),
+				     "failed to get hclk source\n");
+
+	vop2->aclk = clk_get(vop2->dev, "aclk");
+	if (IS_ERR(vop2->aclk))
+		return dev_err_probe(vop2->dev, PTR_ERR(vop2->aclk),
+				     "failed to get aclk source\n");
+
+	vop2->pclk = clk_get_optional(vop2->dev, "pclk_vop");
+	if (IS_ERR(vop2->pclk))
+		return dev_err_probe(vop2->dev, PTR_ERR(vop2->pclk),
+				     "failed to get pclk source\n");
+
+	ret = vop2_create_crtcs(vop2);
+	if (ret)
+		return ret;
+
+	return 0;
+}
diff --git a/drivers/video/rockchip/rockchip_drm_vop2.h b/drivers/video/rockchip/rockchip_drm_vop2.h
new file mode 100644
index 0000000000..877530ddbc
--- /dev/null
+++ b/drivers/video/rockchip/rockchip_drm_vop2.h
@@ -0,0 +1,541 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
+ * Author:Mark Yao <mark.yao@rock-chips.com>
+ */
+
+#ifndef _ROCKCHIP_DRM_VOP2_H
+#define _ROCKCHIP_DRM_VOP2_H
+
+#include <linux/regmap.h>
+#include "rockchip_drm_vop.h"
+
+#define VOP2_VP_FEATURE_OUTPUT_10BIT        BIT(0)
+
+#define VOP2_FEATURE_HAS_SYS_GRF	BIT(0)
+#define VOP2_FEATURE_HAS_VO0_GRF	BIT(1)
+#define VOP2_FEATURE_HAS_VO1_GRF	BIT(2)
+#define VOP2_FEATURE_HAS_VOP_GRF	BIT(3)
+#define VOP2_FEATURE_HAS_SYS_PMU	BIT(4)
+
+#define WIN_FEATURE_AFBDC		BIT(0)
+#define WIN_FEATURE_CLUSTER		BIT(1)
+
+#define HIWORD_UPDATE(v, h, l)  ((GENMASK(h, l) << 16) | ((v) << (l)))
+/*
+ *  the delay number of a window in different mode.
+ */
+enum win_dly_mode {
+	VOP2_DLY_MODE_DEFAULT,   /**< default mode */
+	VOP2_DLY_MODE_HISO_S,    /** HDR in SDR out mode, as a SDR window */
+	VOP2_DLY_MODE_HIHO_H,    /** HDR in HDR out mode, as a HDR window */
+	VOP2_DLY_MODE_MAX,
+};
+
+enum vop2_scale_up_mode {
+	VOP2_SCALE_UP_NRST_NBOR,
+	VOP2_SCALE_UP_BIL,
+	VOP2_SCALE_UP_BIC,
+};
+
+enum vop2_scale_down_mode {
+	VOP2_SCALE_DOWN_NRST_NBOR,
+	VOP2_SCALE_DOWN_BIL,
+	VOP2_SCALE_DOWN_AVG,
+};
+
+/*
+ * vop2 internal power domain id,
+ * should be all none zero, 0 will be treat as invalid;
+ */
+#define VOP2_PD_CLUSTER0	BIT(0)
+#define VOP2_PD_CLUSTER1	BIT(1)
+#define VOP2_PD_CLUSTER2	BIT(2)
+#define VOP2_PD_CLUSTER3	BIT(3)
+#define VOP2_PD_DSC_8K		BIT(5)
+#define VOP2_PD_DSC_4K		BIT(6)
+#define VOP2_PD_ESMART		BIT(7)
+
+enum vop2_win_regs {
+	VOP2_WIN_ENABLE,
+	VOP2_WIN_FORMAT,
+	VOP2_WIN_CSC_MODE,
+	VOP2_WIN_XMIRROR,
+	VOP2_WIN_YMIRROR,
+	VOP2_WIN_RB_SWAP,
+	VOP2_WIN_UV_SWAP,
+	VOP2_WIN_ACT_INFO,
+	VOP2_WIN_DSP_INFO,
+	VOP2_WIN_DSP_ST,
+	VOP2_WIN_YRGB_MST,
+	VOP2_WIN_UV_MST,
+	VOP2_WIN_YRGB_VIR,
+	VOP2_WIN_UV_VIR,
+	VOP2_WIN_YUV_CLIP,
+	VOP2_WIN_Y2R_EN,
+	VOP2_WIN_R2Y_EN,
+	VOP2_WIN_COLOR_KEY,
+	VOP2_WIN_COLOR_KEY_EN,
+	VOP2_WIN_DITHER_UP,
+
+	/* scale regs */
+	VOP2_WIN_SCALE_YRGB_X,
+	VOP2_WIN_SCALE_YRGB_Y,
+	VOP2_WIN_SCALE_CBCR_X,
+	VOP2_WIN_SCALE_CBCR_Y,
+	VOP2_WIN_YRGB_HOR_SCL_MODE,
+	VOP2_WIN_YRGB_HSCL_FILTER_MODE,
+	VOP2_WIN_YRGB_VER_SCL_MODE,
+	VOP2_WIN_YRGB_VSCL_FILTER_MODE,
+	VOP2_WIN_CBCR_VER_SCL_MODE,
+	VOP2_WIN_CBCR_HSCL_FILTER_MODE,
+	VOP2_WIN_CBCR_HOR_SCL_MODE,
+	VOP2_WIN_CBCR_VSCL_FILTER_MODE,
+	VOP2_WIN_VSD_CBCR_GT2,
+	VOP2_WIN_VSD_CBCR_GT4,
+	VOP2_WIN_VSD_YRGB_GT2,
+	VOP2_WIN_VSD_YRGB_GT4,
+	VOP2_WIN_BIC_COE_SEL,
+
+	/* cluster regs */
+	VOP2_WIN_CLUSTER_ENABLE,
+	VOP2_WIN_AFBC_ENABLE,
+	VOP2_WIN_CLUSTER_LB_MODE,
+
+	/* afbc regs */
+	VOP2_WIN_AFBC_FORMAT,
+	VOP2_WIN_AFBC_RB_SWAP,
+	VOP2_WIN_AFBC_UV_SWAP,
+	VOP2_WIN_AFBC_AUTO_GATING_EN,
+	VOP2_WIN_AFBC_BLOCK_SPLIT_EN,
+	VOP2_WIN_AFBC_PIC_VIR_WIDTH,
+	VOP2_WIN_AFBC_TILE_NUM,
+	VOP2_WIN_AFBC_PIC_OFFSET,
+	VOP2_WIN_AFBC_PIC_SIZE,
+	VOP2_WIN_AFBC_DSP_OFFSET,
+	VOP2_WIN_AFBC_TRANSFORM_OFFSET,
+	VOP2_WIN_AFBC_HDR_PTR,
+	VOP2_WIN_AFBC_HALF_BLOCK_EN,
+	VOP2_WIN_AFBC_ROTATE_270,
+	VOP2_WIN_AFBC_ROTATE_90,
+	VOP2_WIN_MAX_REG,
+};
+
+enum drm_plane_type {
+	DRM_PLANE_TYPE_OVERLAY,
+	DRM_PLANE_TYPE_PRIMARY,
+};
+
+struct vop2_win_data {
+	const char *name;
+	unsigned int phys_id;
+
+	u32 base;
+	enum drm_plane_type type;
+
+	u32 nformats;
+	const u32 *formats;
+	const uint64_t *format_modifiers;
+	const unsigned int supported_rotations;
+
+	/**
+	 * @layer_sel_id: defined by register OVERLAY_LAYER_SEL of VOP2
+	 */
+	unsigned int layer_sel_id;
+	uint64_t feature;
+
+	unsigned int max_upscale_factor;
+	unsigned int max_downscale_factor;
+	const u8 dly[VOP2_DLY_MODE_MAX];
+};
+
+struct vop2_video_port_data {
+	unsigned int id;
+	u32 feature;
+	u16 gamma_lut_len;
+	u16 cubic_lut_len;
+	struct vop_rect max_output;
+	const u8 pre_scan_max_dly[4];
+	unsigned int offset;
+};
+
+struct vop2_data {
+	u8 nr_vps;
+	u64 feature;
+	const struct vop2_win_data *win;
+	const struct vop2_video_port_data *vp;
+	struct vop_rect max_input;
+	struct vop_rect max_output;
+
+	unsigned int win_size;
+	unsigned int soc_id;
+};
+
+/* interrupt define */
+#define FS_NEW_INTR			BIT(4)
+#define ADDR_SAME_INTR			BIT(5)
+#define LINE_FLAG1_INTR			BIT(6)
+#define WIN0_EMPTY_INTR			BIT(7)
+#define WIN1_EMPTY_INTR			BIT(8)
+#define WIN2_EMPTY_INTR			BIT(9)
+#define WIN3_EMPTY_INTR			BIT(10)
+#define HWC_EMPTY_INTR			BIT(11)
+#define POST_BUF_EMPTY_INTR		BIT(12)
+#define PWM_GEN_INTR			BIT(13)
+#define DMA_FINISH_INTR			BIT(14)
+#define FS_FIELD_INTR			BIT(15)
+#define FE_INTR				BIT(16)
+#define WB_UV_FIFO_FULL_INTR		BIT(17)
+#define WB_YRGB_FIFO_FULL_INTR		BIT(18)
+#define WB_COMPLETE_INTR		BIT(19)
+
+
+enum vop_csc_format {
+	CSC_BT601L,
+	CSC_BT709L,
+	CSC_BT601F,
+	CSC_BT2020,
+};
+
+enum src_factor_mode {
+	SRC_FAC_ALPHA_ZERO,
+	SRC_FAC_ALPHA_ONE,
+	SRC_FAC_ALPHA_DST,
+	SRC_FAC_ALPHA_DST_INVERSE,
+	SRC_FAC_ALPHA_SRC,
+	SRC_FAC_ALPHA_SRC_GLOBAL,
+};
+
+enum dst_factor_mode {
+	DST_FAC_ALPHA_ZERO,
+	DST_FAC_ALPHA_ONE,
+	DST_FAC_ALPHA_SRC,
+	DST_FAC_ALPHA_SRC_INVERSE,
+	DST_FAC_ALPHA_DST,
+	DST_FAC_ALPHA_DST_GLOBAL,
+};
+
+#define RK3568_GRF_VO_CON1			0x0364
+
+#define RK3588_GRF_SOC_CON1			0x0304
+#define RK3588_GRF_VOP_CON2			0x08
+#define RK3588_GRF_VO1_CON0			0x00
+
+/* System registers definition */
+#define RK3568_REG_CFG_DONE			0x000
+#define RK3568_VERSION_INFO			0x004
+#define RK3568_SYS_AUTO_GATING_CTRL		0x008
+#define RK3568_SYS_AXI_LUT_CTRL			0x024
+#define RK3568_DSP_IF_EN			0x028
+#define RK3568_DSP_IF_CTRL			0x02c
+#define RK3568_DSP_IF_POL			0x030
+#define RK3588_SYS_PD_CTRL			0x034
+#define RK3568_WB_CTRL				0x40
+#define RK3568_WB_XSCAL_FACTOR			0x44
+#define RK3568_WB_YRGB_MST			0x48
+#define RK3568_WB_CBR_MST			0x4C
+#define RK3568_OTP_WIN_EN			0x050
+#define RK3568_LUT_PORT_SEL			0x058
+#define RK3568_SYS_STATUS0			0x060
+#define RK3568_VP_LINE_FLAG(vp)			(0x70 + (vp) * 0x4)
+#define RK3568_SYS0_INT_EN			0x80
+#define RK3568_SYS0_INT_CLR			0x84
+#define RK3568_SYS0_INT_STATUS			0x88
+#define RK3568_SYS1_INT_EN			0x90
+#define RK3568_SYS1_INT_CLR			0x94
+#define RK3568_SYS1_INT_STATUS			0x98
+#define RK3568_VP_INT_EN(vp)			(0xA0 + (vp) * 0x10)
+#define RK3568_VP_INT_CLR(vp)			(0xA4 + (vp) * 0x10)
+#define RK3568_VP_INT_STATUS(vp)		(0xA8 + (vp) * 0x10)
+#define RK3568_VP_INT_RAW_STATUS(vp)		(0xAC + (vp) * 0x10)
+
+/* Video Port registers definition */
+#define RK3568_VP0_CTRL_BASE			0x0C00
+#define RK3568_VP1_CTRL_BASE			0x0D00
+#define RK3568_VP2_CTRL_BASE			0x0E00
+#define RK3588_VP3_CTRL_BASE			0x0F00
+#define RK3568_VP_DSP_CTRL			0x00
+#define RK3568_VP_MIPI_CTRL			0x04
+#define RK3568_VP_COLOR_BAR_CTRL		0x08
+#define RK3588_VP_CLK_CTRL			0x0C
+#define RK3568_VP_3D_LUT_CTRL			0x10
+#define RK3568_VP_3D_LUT_MST			0x20
+#define RK3568_VP_DSP_BG			0x2C
+#define RK3568_VP_PRE_SCAN_HTIMING		0x30
+#define RK3568_VP_POST_DSP_HACT_INFO		0x34
+#define RK3568_VP_POST_DSP_VACT_INFO		0x38
+#define RK3568_VP_POST_SCL_FACTOR_YRGB		0x3C
+#define RK3568_VP_POST_SCL_CTRL			0x40
+#define RK3568_VP_POST_DSP_VACT_INFO_F1		0x44
+#define RK3568_VP_DSP_HTOTAL_HS_END		0x48
+#define RK3568_VP_DSP_HACT_ST_END		0x4C
+#define RK3568_VP_DSP_VTOTAL_VS_END		0x50
+#define RK3568_VP_DSP_VACT_ST_END		0x54
+#define RK3568_VP_DSP_VS_ST_END_F1		0x58
+#define RK3568_VP_DSP_VACT_ST_END_F1		0x5C
+#define RK3568_VP_BCSH_CTRL			0x60
+#define RK3568_VP_BCSH_BCS			0x64
+#define RK3568_VP_BCSH_H			0x68
+#define RK3568_VP_BCSH_COLOR_BAR		0x6C
+
+/* Overlay registers definition    */
+#define RK3568_OVL_CTRL				0x600
+#define RK3568_OVL_LAYER_SEL			0x604
+#define RK3568_OVL_PORT_SEL			0x608
+#define RK3568_CLUSTER0_MIX_SRC_COLOR_CTRL	0x610
+#define RK3568_CLUSTER0_MIX_DST_COLOR_CTRL	0x614
+#define RK3568_CLUSTER0_MIX_SRC_ALPHA_CTRL	0x618
+#define RK3568_CLUSTER0_MIX_DST_ALPHA_CTRL	0x61C
+#define RK3568_MIX0_SRC_COLOR_CTRL		0x650
+#define RK3568_MIX0_DST_COLOR_CTRL		0x654
+#define RK3568_MIX0_SRC_ALPHA_CTRL		0x658
+#define RK3568_MIX0_DST_ALPHA_CTRL		0x65C
+#define RK3568_HDR0_SRC_COLOR_CTRL		0x6C0
+#define RK3568_HDR0_DST_COLOR_CTRL		0x6C4
+#define RK3568_HDR0_SRC_ALPHA_CTRL		0x6C8
+#define RK3568_HDR0_DST_ALPHA_CTRL		0x6CC
+#define RK3568_VP_BG_MIX_CTRL(vp)		(0x6E0 + (vp) * 4)
+#define RK3568_CLUSTER_DLY_NUM			0x6F0
+#define RK3568_SMART_DLY_NUM			0x6F8
+
+/* Cluster register definition, offset relative to window base */
+#define RK3568_CLUSTER0_CTRL_BASE		0x1000
+#define RK3568_CLUSTER1_CTRL_BASE		0x1200
+#define RK3588_CLUSTER2_CTRL_BASE		0x1400
+#define RK3588_CLUSTER3_CTRL_BASE		0x1600
+#define RK3568_ESMART0_CTRL_BASE		0x1800
+#define RK3568_ESMART1_CTRL_BASE		0x1A00
+#define RK3568_SMART0_CTRL_BASE			0x1C00
+#define RK3568_SMART1_CTRL_BASE			0x1E00
+#define RK3588_ESMART2_CTRL_BASE		0x1C00
+#define RK3588_ESMART3_CTRL_BASE		0x1E00
+
+#define RK3568_CLUSTER_WIN_CTRL0		0x00
+#define RK3568_CLUSTER_WIN_CTRL1		0x04
+#define RK3568_CLUSTER_WIN_YRGB_MST		0x10
+#define RK3568_CLUSTER_WIN_CBR_MST		0x14
+#define RK3568_CLUSTER_WIN_VIR			0x18
+#define RK3568_CLUSTER_WIN_ACT_INFO		0x20
+#define RK3568_CLUSTER_WIN_DSP_INFO		0x24
+#define RK3568_CLUSTER_WIN_DSP_ST		0x28
+#define RK3568_CLUSTER_WIN_SCL_FACTOR_YRGB	0x30
+#define RK3568_CLUSTER_WIN_AFBCD_TRANSFORM_OFFSET	0x3C
+#define RK3568_CLUSTER_WIN_AFBCD_OUTPUT_CTRL	0x50
+#define RK3568_CLUSTER_WIN_AFBCD_ROTATE_MODE	0x54
+#define RK3568_CLUSTER_WIN_AFBCD_HDR_PTR	0x58
+#define RK3568_CLUSTER_WIN_AFBCD_VIR_WIDTH	0x5C
+#define RK3568_CLUSTER_WIN_AFBCD_PIC_SIZE	0x60
+#define RK3568_CLUSTER_WIN_AFBCD_PIC_OFFSET	0x64
+#define RK3568_CLUSTER_WIN_AFBCD_DSP_OFFSET	0x68
+#define RK3568_CLUSTER_WIN_AFBCD_CTRL		0x6C
+
+#define RK3568_CLUSTER_CTRL			0x100
+
+/* (E)smart register definition, offset relative to window base */
+#define RK3568_SMART_CTRL0			0x00
+#define RK3568_SMART_CTRL1			0x04
+#define RK3568_SMART_REGION0_CTRL		0x10
+#define RK3568_SMART_REGION0_YRGB_MST		0x14
+#define RK3568_SMART_REGION0_CBR_MST		0x18
+#define RK3568_SMART_REGION0_VIR		0x1C
+#define RK3568_SMART_REGION0_ACT_INFO		0x20
+#define RK3568_SMART_REGION0_DSP_INFO		0x24
+#define RK3568_SMART_REGION0_DSP_ST		0x28
+#define RK3568_SMART_REGION0_SCL_CTRL		0x30
+#define RK3568_SMART_REGION0_SCL_FACTOR_YRGB	0x34
+#define RK3568_SMART_REGION0_SCL_FACTOR_CBR	0x38
+#define RK3568_SMART_REGION0_SCL_OFFSET		0x3C
+#define RK3568_SMART_REGION1_CTRL		0x40
+#define RK3568_SMART_REGION1_YRGB_MST		0x44
+#define RK3568_SMART_REGION1_CBR_MST		0x48
+#define RK3568_SMART_REGION1_VIR		0x4C
+#define RK3568_SMART_REGION1_ACT_INFO		0x50
+#define RK3568_SMART_REGION1_DSP_INFO		0x54
+#define RK3568_SMART_REGION1_DSP_ST		0x58
+#define RK3568_SMART_REGION1_SCL_CTRL		0x60
+#define RK3568_SMART_REGION1_SCL_FACTOR_YRGB	0x64
+#define RK3568_SMART_REGION1_SCL_FACTOR_CBR	0x68
+#define RK3568_SMART_REGION1_SCL_OFFSET		0x6C
+#define RK3568_SMART_REGION2_CTRL		0x70
+#define RK3568_SMART_REGION2_YRGB_MST		0x74
+#define RK3568_SMART_REGION2_CBR_MST		0x78
+#define RK3568_SMART_REGION2_VIR		0x7C
+#define RK3568_SMART_REGION2_ACT_INFO		0x80
+#define RK3568_SMART_REGION2_DSP_INFO		0x84
+#define RK3568_SMART_REGION2_DSP_ST		0x88
+#define RK3568_SMART_REGION2_SCL_CTRL		0x90
+#define RK3568_SMART_REGION2_SCL_FACTOR_YRGB	0x94
+#define RK3568_SMART_REGION2_SCL_FACTOR_CBR	0x98
+#define RK3568_SMART_REGION2_SCL_OFFSET		0x9C
+#define RK3568_SMART_REGION3_CTRL		0xA0
+#define RK3568_SMART_REGION3_YRGB_MST		0xA4
+#define RK3568_SMART_REGION3_CBR_MST		0xA8
+#define RK3568_SMART_REGION3_VIR		0xAC
+#define RK3568_SMART_REGION3_ACT_INFO		0xB0
+#define RK3568_SMART_REGION3_DSP_INFO		0xB4
+#define RK3568_SMART_REGION3_DSP_ST		0xB8
+#define RK3568_SMART_REGION3_SCL_CTRL		0xC0
+#define RK3568_SMART_REGION3_SCL_FACTOR_YRGB	0xC4
+#define RK3568_SMART_REGION3_SCL_FACTOR_CBR	0xC8
+#define RK3568_SMART_REGION3_SCL_OFFSET		0xCC
+#define RK3568_SMART_COLOR_KEY_CTRL		0xD0
+
+/* HDR register definition */
+#define RK3568_HDR_LUT_CTRL			0x2000
+#define RK3568_HDR_LUT_MST			0x2004
+#define RK3568_SDR2HDR_CTRL			0x2010
+#define RK3568_HDR2SDR_CTRL			0x2020
+#define RK3568_HDR2SDR_SRC_RANGE		0x2024
+#define RK3568_HDR2SDR_NORMFACEETF		0x2028
+#define RK3568_HDR2SDR_DST_RANGE		0x202C
+#define RK3568_HDR2SDR_NORMFACCGAMMA		0x2030
+#define RK3568_HDR_EETF_OETF_Y0			0x203C
+#define RK3568_HDR_SAT_Y0			0x20C0
+#define RK3568_HDR_EOTF_OETF_Y0			0x20F0
+#define RK3568_HDR_OETF_DX_POW1			0x2200
+#define RK3568_HDR_OETF_XN1			0x2300
+
+#define RK3568_REG_CFG_DONE__GLB_CFG_DONE_EN		BIT(15)
+
+#define RK3568_VP_DSP_CTRL__STANDBY			BIT(31)
+#define RK3568_VP_DSP_CTRL__DITHER_DOWN_MODE		BIT(20)
+#define RK3568_VP_DSP_CTRL__DITHER_DOWN_SEL		GENMASK(19, 18)
+#define RK3568_VP_DSP_CTRL__DITHER_DOWN_EN		BIT(17)
+#define RK3568_VP_DSP_CTRL__PRE_DITHER_DOWN_EN		BIT(16)
+#define RK3568_VP_DSP_CTRL__POST_DSP_OUT_R2Y		BIT(15)
+#define RK3568_VP_DSP_CTRL__DSP_RG_SWAP			BIT(10)
+#define RK3568_VP_DSP_CTRL__DSP_RB_SWAP			BIT(9)
+#define RK3568_VP_DSP_CTRL__DSP_BG_SWAP			BIT(8)
+#define RK3568_VP_DSP_CTRL__DSP_INTERLACE		BIT(7)
+#define RK3568_VP_DSP_CTRL__DSP_FILED_POL		BIT(6)
+#define RK3568_VP_DSP_CTRL__P2I_EN			BIT(5)
+#define RK3568_VP_DSP_CTRL__CORE_DCLK_DIV		BIT(4)
+#define RK3568_VP_DSP_CTRL__OUT_MODE			GENMASK(3, 0)
+
+#define RK3588_VP_CLK_CTRL__DCLK_OUT_DIV		GENMASK(3, 2)
+#define RK3588_VP_CLK_CTRL__DCLK_CORE_DIV		GENMASK(1, 0)
+
+#define RK3568_VP_POST_SCL_CTRL__VSCALEDOWN		BIT(1)
+#define RK3568_VP_POST_SCL_CTRL__HSCALEDOWN		BIT(0)
+
+#define RK3568_SYS_DSP_INFACE_EN_LVDS1_MUX		GENMASK(26, 25)
+#define RK3568_SYS_DSP_INFACE_EN_LVDS1			BIT(24)
+#define RK3568_SYS_DSP_INFACE_EN_MIPI1_MUX		GENMASK(22, 21)
+#define RK3568_SYS_DSP_INFACE_EN_MIPI1			BIT(20)
+#define RK3568_SYS_DSP_INFACE_EN_LVDS0_MUX		GENMASK(19, 18)
+#define RK3568_SYS_DSP_INFACE_EN_MIPI0_MUX		GENMASK(17, 16)
+#define RK3568_SYS_DSP_INFACE_EN_EDP_MUX		GENMASK(15, 14)
+#define RK3568_SYS_DSP_INFACE_EN_HDMI_MUX		GENMASK(11, 10)
+#define RK3568_SYS_DSP_INFACE_EN_RGB_MUX		GENMASK(9, 8)
+#define RK3568_SYS_DSP_INFACE_EN_LVDS0			BIT(5)
+#define RK3568_SYS_DSP_INFACE_EN_MIPI0			BIT(4)
+#define RK3568_SYS_DSP_INFACE_EN_EDP			BIT(3)
+#define RK3568_SYS_DSP_INFACE_EN_HDMI			BIT(1)
+#define RK3568_SYS_DSP_INFACE_EN_RGB			BIT(0)
+
+#define RK3588_SYS_DSP_INFACE_EN_MIPI1_MUX		GENMASK(22, 21)
+#define RK3588_SYS_DSP_INFACE_EN_MIPI0_MUX		GENMASK(20, 20)
+#define RK3588_SYS_DSP_INFACE_EN_EDP_HDMI1_MUX		GENMASK(19, 18)
+#define RK3588_SYS_DSP_INFACE_EN_EDP_HDMI0_MUX		GENMASK(17, 16)
+#define RK3588_SYS_DSP_INFACE_EN_DP1_MUX		GENMASK(15, 14)
+#define RK3588_SYS_DSP_INFACE_EN_DP0_MUX		GENMASK(13, 12)
+#define RK3588_SYS_DSP_INFACE_EN_DPI			GENMASK(9, 8)
+#define RK3588_SYS_DSP_INFACE_EN_MIPI1			BIT(7)
+#define RK3588_SYS_DSP_INFACE_EN_MIPI0			BIT(6)
+#define RK3588_SYS_DSP_INFACE_EN_HDMI1			BIT(5)
+#define RK3588_SYS_DSP_INFACE_EN_EDP1			BIT(4)
+#define RK3588_SYS_DSP_INFACE_EN_HDMI0			BIT(3)
+#define RK3588_SYS_DSP_INFACE_EN_EDP0			BIT(2)
+#define RK3588_SYS_DSP_INFACE_EN_DP1			BIT(1)
+#define RK3588_SYS_DSP_INFACE_EN_DP0			BIT(0)
+
+#define RK3588_DSP_IF_MIPI1_PCLK_DIV			GENMASK(27, 26)
+#define RK3588_DSP_IF_MIPI0_PCLK_DIV			GENMASK(25, 24)
+#define RK3588_DSP_IF_EDP_HDMI1_PCLK_DIV		GENMASK(22, 22)
+#define RK3588_DSP_IF_EDP_HDMI1_DCLK_DIV		GENMASK(21, 20)
+#define RK3588_DSP_IF_EDP_HDMI0_PCLK_DIV		GENMASK(18, 18)
+#define RK3588_DSP_IF_EDP_HDMI0_DCLK_DIV		GENMASK(17, 16)
+
+#define RK3568_DSP_IF_POL__MIPI_PIN_POL			GENMASK(19, 16)
+#define RK3568_DSP_IF_POL__EDP_PIN_POL			GENMASK(15, 12)
+#define RK3568_DSP_IF_POL__HDMI_PIN_POL			GENMASK(7, 4)
+#define RK3568_DSP_IF_POL__RGB_LVDS_PIN_POL		GENMASK(3, 0)
+
+#define RK3588_DSP_IF_POL__DP1_PIN_POL			GENMASK(14, 12)
+#define RK3588_DSP_IF_POL__DP0_PIN_POL			GENMASK(10, 8)
+
+#define RK3568_VP0_MIPI_CTRL__DCLK_DIV2_PHASE_LOCK	BIT(5)
+#define RK3568_VP0_MIPI_CTRL__DCLK_DIV2			BIT(4)
+
+#define RK3568_SYS_AUTO_GATING_CTRL__AUTO_GATING_EN	BIT(31)
+
+#define RK3568_DSP_IF_POL__CFG_DONE_IMD			BIT(28)
+
+#define VOP2_SYS_AXI_BUS_NUM				2
+
+#define VOP2_CLUSTER_YUV444_10				0x12
+
+#define VOP2_COLOR_KEY_MASK				BIT(31)
+
+#define RK3568_OVL_CTRL__LAYERSEL_REGDONE_IMD		BIT(28)
+#define RK3568_OVL_CTRL__YUV_MODE(vp)			BIT(vp)
+
+#define RK3568_VP_BG_MIX_CTRL__BG_DLY			GENMASK(31, 24)
+
+#define RK3568_OVL_PORT_SEL__SEL_PORT			GENMASK(31, 16)
+#define RK3568_OVL_PORT_SEL__SMART1			GENMASK(31, 30)
+#define RK3568_OVL_PORT_SEL__SMART0			GENMASK(29, 28)
+#define RK3588_OVL_PORT_SEL__ESMART3			GENMASK(31, 30)
+#define RK3588_OVL_PORT_SEL__ESMART2			GENMASK(29, 28)
+#define RK3568_OVL_PORT_SEL__ESMART1			GENMASK(27, 26)
+#define RK3568_OVL_PORT_SEL__ESMART0			GENMASK(25, 24)
+#define RK3588_OVL_PORT_SEL__CLUSTER3			GENMASK(23, 22)
+#define RK3588_OVL_PORT_SEL__CLUSTER2			GENMASK(21, 20)
+#define RK3568_OVL_PORT_SEL__CLUSTER1			GENMASK(19, 18)
+#define RK3568_OVL_PORT_SEL__CLUSTER0			GENMASK(17, 16)
+#define RK3568_OVL_PORT_SET__PORT2_MUX			GENMASK(11, 8)
+#define RK3568_OVL_PORT_SET__PORT1_MUX			GENMASK(7, 4)
+#define RK3568_OVL_PORT_SET__PORT0_MUX			GENMASK(3, 0)
+#define RK3568_OVL_LAYER_SEL__LAYER(layer, x)		((x) << ((layer) * 4))
+
+#define RK3568_CLUSTER_DLY_NUM__CLUSTER1_1		GENMASK(31, 24)
+#define RK3568_CLUSTER_DLY_NUM__CLUSTER1_0		GENMASK(23, 16)
+#define RK3568_CLUSTER_DLY_NUM__CLUSTER0_1		GENMASK(15, 8)
+#define RK3568_CLUSTER_DLY_NUM__CLUSTER0_0		GENMASK(7, 0)
+
+#define RK3568_CLUSTER_WIN_CTRL0__WIN0_EN		BIT(0)
+
+#define RK3568_SMART_REGION0_CTRL__WIN0_EN		BIT(0)
+
+#define RK3568_SMART_DLY_NUM__SMART1			GENMASK(31, 24)
+#define RK3568_SMART_DLY_NUM__SMART0			GENMASK(23, 16)
+#define RK3568_SMART_DLY_NUM__ESMART1			GENMASK(15, 8)
+#define RK3568_SMART_DLY_NUM__ESMART0			GENMASK(7, 0)
+
+#define VP_INT_DSP_HOLD_VALID	BIT(6)
+#define VP_INT_FS_FIELD		BIT(5)
+#define VP_INT_POST_BUF_EMPTY	BIT(4)
+#define VP_INT_LINE_FLAG1	BIT(3)
+#define VP_INT_LINE_FLAG0	BIT(2)
+#define VOP2_INT_BUS_ERRPR	BIT(1)
+#define VP_INT_FS		BIT(0)
+
+#define POLFLAG_DCLK_INV	BIT(3)
+
+enum vop2_layer_phy_id {
+	ROCKCHIP_VOP2_CLUSTER0 = 0,
+	ROCKCHIP_VOP2_CLUSTER1,
+	ROCKCHIP_VOP2_ESMART0,
+	ROCKCHIP_VOP2_ESMART1,
+	ROCKCHIP_VOP2_SMART0,
+	ROCKCHIP_VOP2_SMART1,
+	ROCKCHIP_VOP2_CLUSTER2,
+	ROCKCHIP_VOP2_CLUSTER3,
+	ROCKCHIP_VOP2_ESMART2,
+	ROCKCHIP_VOP2_ESMART3,
+	ROCKCHIP_VOP2_PHY_ID_INVALID = -1,
+};
+
+int vop2_bind(struct device *dev);
+
+#endif /* _ROCKCHIP_DRM_VOP2_H */
diff --git a/drivers/video/rockchip/rockchip_vop2_reg.c b/drivers/video/rockchip/rockchip_vop2_reg.c
new file mode 100644
index 0000000000..1ce71c227c
--- /dev/null
+++ b/drivers/video/rockchip/rockchip_vop2_reg.c
@@ -0,0 +1,280 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) Rockchip Electronics Co.Ltd
+ * Author: Andy Yan <andy.yan@rock-chips.com>
+ */
+
+#include <linux/kernel.h>
+#include <of.h>
+#include <driver.h>
+#include <video/fourcc.h>
+
+#include "rockchip_drm_vop2.h"
+
+static const uint32_t formats_smart[] = {
+	DRM_FORMAT_XRGB8888,
+	DRM_FORMAT_ARGB8888,
+	DRM_FORMAT_XBGR8888,
+	DRM_FORMAT_ABGR8888,
+	DRM_FORMAT_RGB888,
+	DRM_FORMAT_BGR888,
+	DRM_FORMAT_RGB565,
+	DRM_FORMAT_BGR565,
+};
+
+static const struct vop2_video_port_data rk3568_vop_video_ports[] = {
+	{
+		.id = 0,
+		.feature = VOP2_VP_FEATURE_OUTPUT_10BIT,
+		.gamma_lut_len = 1024,
+		.cubic_lut_len = 9 * 9 * 9,
+		.max_output = { 4096, 2304 },
+		.pre_scan_max_dly = { 69, 53, 53, 42 },
+		.offset = 0xc00,
+	}, {
+		.id = 1,
+		.gamma_lut_len = 1024,
+		.max_output = { 2048, 1536 },
+		.pre_scan_max_dly = { 40, 40, 40, 40 },
+		.offset = 0xd00,
+	}, {
+		.id = 2,
+		.gamma_lut_len = 1024,
+		.max_output = { 1920, 1080 },
+		.pre_scan_max_dly = { 40, 40, 40, 40 },
+		.offset = 0xe00,
+	},
+};
+
+/*
+ * rk3568 vop with 2 cluster, 2 esmart win, 2 smart win.
+ * Every cluster can work as 4K win or split into two win.
+ * All win in cluster support AFBCD.
+ *
+ * Every esmart win and smart win support 4 Multi-region.
+ *
+ * Scale filter mode:
+ *
+ * * Cluster:  bicubic for horizontal scale up, others use bilinear
+ * * ESmart:
+ *    * nearest-neighbor/bilinear/bicubic for scale up
+ *    * nearest-neighbor/bilinear/average for scale down
+ *
+ *
+ * @TODO describe the wind like cpu-map dt nodes;
+ */
+static const struct vop2_win_data rk3568_vop_win_data[] = {
+	{
+		.name = "Smart0-win0",
+		.phys_id = ROCKCHIP_VOP2_SMART0,
+		.base = 0x1c00,
+		.formats = formats_smart,
+		.nformats = ARRAY_SIZE(formats_smart),
+		.layer_sel_id = 3,
+		.type = DRM_PLANE_TYPE_PRIMARY,
+		.max_upscale_factor = 8,
+		.max_downscale_factor = 8,
+		.dly = { 20, 47, 41 },
+	}, {
+		.name = "Smart1-win0",
+		.phys_id = ROCKCHIP_VOP2_SMART1,
+		.formats = formats_smart,
+		.nformats = ARRAY_SIZE(formats_smart),
+		.base = 0x1e00,
+		.layer_sel_id = 7,
+		.type = DRM_PLANE_TYPE_PRIMARY,
+		.max_upscale_factor = 8,
+		.max_downscale_factor = 8,
+		.dly = { 20, 47, 41 },
+	}, {
+		.name = "Esmart1-win0",
+		.phys_id = ROCKCHIP_VOP2_ESMART1,
+		.formats = formats_smart,
+		.nformats = ARRAY_SIZE(formats_smart),
+		.base = 0x1a00,
+		.layer_sel_id = 6,
+		.type = DRM_PLANE_TYPE_PRIMARY,
+		.max_upscale_factor = 8,
+		.max_downscale_factor = 8,
+		.dly = { 20, 47, 41 },
+	}, {
+		.name = "Esmart0-win0",
+		.phys_id = ROCKCHIP_VOP2_ESMART0,
+		.formats = formats_smart,
+		.nformats = ARRAY_SIZE(formats_smart),
+		.base = 0x1800,
+		.layer_sel_id = 2,
+		.type = DRM_PLANE_TYPE_PRIMARY,
+		.max_upscale_factor = 8,
+		.max_downscale_factor = 8,
+		.dly = { 20, 47, 41 },
+	},
+};
+
+static const struct vop2_video_port_data rk3588_vop_video_ports[] = {
+	{
+		.id = 0,
+		.feature = VOP2_VP_FEATURE_OUTPUT_10BIT,
+		.gamma_lut_len = 1024,
+		.cubic_lut_len = 9 * 9 * 9, /* 9x9x9 */
+		.max_output = { 4096, 2304 },
+		/* hdr2sdr sdr2hdr hdr2hdr sdr2sdr */
+		.pre_scan_max_dly = { 76, 65, 65, 54 },
+		.offset = 0xc00,
+	}, {
+		.id = 1,
+		.feature = VOP2_VP_FEATURE_OUTPUT_10BIT,
+		.gamma_lut_len = 1024,
+		.cubic_lut_len = 729, /* 9x9x9 */
+		.max_output = { 4096, 2304 },
+		.pre_scan_max_dly = { 76, 65, 65, 54 },
+		.offset = 0xd00,
+	}, {
+		.id = 2,
+		.feature = VOP2_VP_FEATURE_OUTPUT_10BIT,
+		.gamma_lut_len = 1024,
+		.cubic_lut_len = 17 * 17 * 17, /* 17x17x17 */
+		.max_output = { 4096, 2304 },
+		.pre_scan_max_dly = { 52, 52, 52, 52 },
+		.offset = 0xe00,
+	}, {
+		.id = 3,
+		.gamma_lut_len = 1024,
+		.max_output = { 2048, 1536 },
+		.pre_scan_max_dly = { 52, 52, 52, 52 },
+		.offset = 0xf00,
+	},
+};
+
+/*
+ * rk3588 vop with 4 cluster, 4 esmart win.
+ * Every cluster can work as 4K win or split into two win.
+ * All win in cluster support AFBCD.
+ *
+ * Every esmart win and smart win support 4 Multi-region.
+ *
+ * Scale filter mode:
+ *
+ * * Cluster:  bicubic for horizontal scale up, others use bilinear
+ * * ESmart:
+ *    * nearest-neighbor/bilinear/bicubic for scale up
+ *    * nearest-neighbor/bilinear/average for scale down
+ *
+ * AXI Read ID assignment:
+ * Two AXI bus:
+ * AXI0 is a read/write bus with a higher performance.
+ * AXI1 is a read only bus.
+ *
+ * Every window on a AXI bus must assigned two unique
+ * read id(yrgb_id/uv_id, valid id are 0x1~0xe).
+ *
+ * AXI0:
+ * Cluster0/1, Esmart0/1, WriteBack
+ *
+ * AXI 1:
+ * Cluster2/3, Esmart2/3
+ *
+ */
+static const struct vop2_win_data rk3588_vop_win_data[] = {
+	{
+		.name = "Esmart0-win0",
+		.phys_id = ROCKCHIP_VOP2_ESMART0,
+		.formats = formats_smart,
+		.nformats = ARRAY_SIZE(formats_smart),
+		.base = 0x1800,
+		.layer_sel_id = 2,
+		.type = DRM_PLANE_TYPE_OVERLAY,
+		.max_upscale_factor = 8,
+		.max_downscale_factor = 8,
+		.dly = { 23, 45, 48 },
+	}, {
+		.name = "Esmart1-win0",
+		.phys_id = ROCKCHIP_VOP2_ESMART1,
+		.formats = formats_smart,
+		.nformats = ARRAY_SIZE(formats_smart),
+		.base = 0x1a00,
+		.layer_sel_id = 3,
+		.type = DRM_PLANE_TYPE_OVERLAY,
+		.max_upscale_factor = 8,
+		.max_downscale_factor = 8,
+		.dly = { 23, 45, 48 },
+	}, {
+		.name = "Esmart2-win0",
+		.phys_id = ROCKCHIP_VOP2_ESMART2,
+		.base = 0x1c00,
+		.formats = formats_smart,
+		.nformats = ARRAY_SIZE(formats_smart),
+		.layer_sel_id = 6,
+		.type = DRM_PLANE_TYPE_OVERLAY,
+		.max_upscale_factor = 8,
+		.max_downscale_factor = 8,
+		.dly = { 23, 45, 48 },
+	}, {
+		.name = "Esmart3-win0",
+		.phys_id = ROCKCHIP_VOP2_ESMART3,
+		.formats = formats_smart,
+		.nformats = ARRAY_SIZE(formats_smart),
+		.base = 0x1e00,
+		.layer_sel_id = 7,
+		.type = DRM_PLANE_TYPE_OVERLAY,
+		.max_upscale_factor = 8,
+		.max_downscale_factor = 8,
+		.dly = { 23, 45, 48 },
+	},
+};
+
+static const struct vop2_data rk3566_vop = {
+	.feature = VOP2_FEATURE_HAS_SYS_GRF,
+	.nr_vps = 3,
+	.max_input = { 4096, 2304 },
+	.max_output = { 4096, 2304 },
+	.vp = rk3568_vop_video_ports,
+	.win = rk3568_vop_win_data,
+	.win_size = ARRAY_SIZE(rk3568_vop_win_data),
+	.soc_id = 3566,
+};
+
+static const struct vop2_data rk3568_vop = {
+	.feature = VOP2_FEATURE_HAS_SYS_GRF,
+	.nr_vps = 3,
+	.max_input = { 4096, 2304 },
+	.max_output = { 4096, 2304 },
+	.vp = rk3568_vop_video_ports,
+	.win = rk3568_vop_win_data,
+	.win_size = ARRAY_SIZE(rk3568_vop_win_data),
+	.soc_id = 3568,
+};
+
+static const struct vop2_data rk3588_vop = {
+	.feature = VOP2_FEATURE_HAS_SYS_GRF | VOP2_FEATURE_HAS_VO1_GRF |
+		   VOP2_FEATURE_HAS_VOP_GRF | VOP2_FEATURE_HAS_SYS_PMU,
+	.nr_vps = 4,
+	.max_input = { 4096, 4320 },
+	.max_output = { 4096, 4320 },
+	.vp = rk3588_vop_video_ports,
+	.win = rk3588_vop_win_data,
+	.win_size = ARRAY_SIZE(rk3588_vop_win_data),
+	.soc_id = 3588,
+};
+
+static const struct of_device_id vop2_dt_match[] = {
+	{
+		.compatible = "rockchip,rk3566-vop",
+		.data = &rk3566_vop,
+	}, {
+		.compatible = "rockchip,rk3568-vop",
+		.data = &rk3568_vop,
+	}, {
+		.compatible = "rockchip,rk3588-vop",
+		.data = &rk3588_vop
+	}, {
+	},
+};
+MODULE_DEVICE_TABLE(of, vop2_dt_match);
+
+struct driver vop2_driver = {
+	.probe = vop2_bind,
+	.name = "rockchip-vop2",
+	.of_compatible = vop2_dt_match,
+};
+device_platform_driver(vop2_driver);

-- 
2.39.5



