Delivery-date: Mon, 28 Oct 2024 15:41:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5Qvm-001tlL-2z
	for lore@lore.pengutronix.de;
	Mon, 28 Oct 2024 15:41:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5Qvk-00057N-Lo
	for lore@pengutronix.de; Mon, 28 Oct 2024 15:41:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=66oee5YbjLESWd8kv9BBCSgdPd/aEQ+whisRHKJ6r4I=; b=GPIZdw987oSlif1/cbxhGKD6KE
	mK5/jBajW5I55Pmfvc9PnRbL/tFPfkTXQUYwfq294QauArkhtPJ9jGdja5tVbGQ/sIC6/YxtGZTY1
	rMywj4cyqpdhXUcal6y2vzmfxZWug1ledGAYFpyVQdJKuPR+gP3YnchokmqAexhh3cijAoYElghOJ
	abObsW60SzcM1sJOUhLsE6ur3swp/D84yd/KRTIGVCVt1m1y1rxguU+zGVhwmflkGwQhSAEJmA25U
	oaEM3MqAlX9R8XpYBLUOl0aLzp4932Ovd4xvaaqkMxnylTS0RdABXK4KU4jtYqTQVn7doD+V3Hk5Z
	0bON2V9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5Qv1-0000000B9l9-38f8;
	Mon, 28 Oct 2024 14:40:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5QbM-0000000B5ti-147a
	for barebox@lists.infradead.org;
	Mon, 28 Oct 2024 14:20:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t5Qax-0002nm-2P; Mon, 28 Oct 2024 15:19:47 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t5Qaw-000s7N-2A;
	Mon, 28 Oct 2024 15:19:46 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t5Qaw-00EMX2-1u;
	Mon, 28 Oct 2024 15:19:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Oct 2024 15:19:51 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241028-vop2-rk3588-v1-6-a54bf7c28adc@pengutronix.de>
References: <20241028-vop2-rk3588-v1-0-a54bf7c28adc@pengutronix.de>
In-Reply-To: <20241028-vop2-rk3588-v1-0-a54bf7c28adc@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1730125186; l=9488;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=SwpgEJw9rsm2NRV3GG8UdeVPu/f+nV4muor64gjcErc=;
 b=y0GocYRGVNAXmY6Aw3H2+HRpB9UGjgjyVgSHhvML7Fkgldq3vY9yt+wlt0EmEw4mzQ7EfUmKH
 kU7ZdHPxCFRDZLx9Ae2CClBkd8qwa9FeJhEdCUFuwjK+v/+SODwI5e6
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241028_072012_496760_634F2C51 
X-CRM114-Status: GOOD (  20.93  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 06/12] video: rockchip: add support for RK3588 HDMI
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds support for the RK3588 HDMI controller based on Linux commit:

| commit d687f549688832b6d91ec7244355b966a105f569
| Author: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
| Date:   Sat Jul 6 03:22:35 2024 +0300
|
|     drm/rockchip: Add basic RK3588 HDMI output support
|
|     The RK3588 SoC family integrates the newer Synopsys DesignWare HDMI 2.1
|     Quad-Pixel (QP) TX controller IP and a HDMI/eDP TX Combo PHY based on a
|     Samsung IP block.
|
|     Add just the basic support for now, i.e. RGB output up to 4K@60Hz,
|     without audio, CEC or any of the HDMI 2.1 specific features.
|
|     Co-developed-by: Algea Cao <algea.cao@rock-chips.com>
|     Signed-off-by: Algea Cao <algea.cao@rock-chips.com>
|     Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/rockchip/Kconfig               |  11 ++
 drivers/video/rockchip/Makefile              |   1 +
 drivers/video/rockchip/dw_hdmi_qp-rockchip.c | 231 +++++++++++++++++++++++++++
 3 files changed, 243 insertions(+)

diff --git a/drivers/video/rockchip/Kconfig b/drivers/video/rockchip/Kconfig
index b91c6fc398..16e41d8db9 100644
--- a/drivers/video/rockchip/Kconfig
+++ b/drivers/video/rockchip/Kconfig
@@ -14,5 +14,16 @@ config DRIVER_VIDEO_ROCKCHIP_HDMI
         select OFTREE
         select DRIVER_VIDEO_EDID
         select DRIVER_VIDEO_DW_HDMI
+        help
+          Say y here if you want to use HDMI on RK356x based SoCs
+
+config DRIVER_VIDEO_ROCKCHIP_HDMI_QP
+        bool "Rockchip HDMI QP driver"
+        select VIDEO_VPL
+        select OFTREE
+        select DRIVER_VIDEO_EDID
+        select DRIVER_VIDEO_DW_HDMI
+        help
+          Say y here if you want to use HDMI on RK3588 based SoCs
 
 endif
diff --git a/drivers/video/rockchip/Makefile b/drivers/video/rockchip/Makefile
index 278ce1302d..86a7f39602 100644
--- a/drivers/video/rockchip/Makefile
+++ b/drivers/video/rockchip/Makefile
@@ -1,2 +1,3 @@
 obj-$(CONFIG_DRIVER_VIDEO_ROCKCHIP_VOP2) += rockchip_drm_vop2.o rockchip_vop2_reg.o
 obj-$(CONFIG_DRIVER_VIDEO_ROCKCHIP_HDMI) += dw_hdmi-rockchip.o
+obj-$(CONFIG_DRIVER_VIDEO_ROCKCHIP_HDMI_QP) += dw_hdmi_qp-rockchip.o
diff --git a/drivers/video/rockchip/dw_hdmi_qp-rockchip.c b/drivers/video/rockchip/dw_hdmi_qp-rockchip.c
new file mode 100644
index 0000000000..1c337c30c1
--- /dev/null
+++ b/drivers/video/rockchip/dw_hdmi_qp-rockchip.c
@@ -0,0 +1,231 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (c) 2021-2022 Rockchip Electronics Co., Ltd.
+ * Copyright (c) 2024 Collabora Ltd.
+ *
+ * Author: Algea Cao <algea.cao@rock-chips.com>
+ * Author: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
+ */
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
+#include <linux/kernel.h>
+#include <video/dw_hdmi_qp.h>
+#include <linux/gpio/consumer.h>
+
+#include "rockchip_drm_drv.h"
+
+#define RK3588_GRF_SOC_CON2		0x0308
+#define RK3588_HDMI0_HPD_INT_MSK	BIT(13)
+#define RK3588_HDMI0_HPD_INT_CLR	BIT(12)
+#define RK3588_GRF_SOC_CON7		0x031c
+#define RK3588_SET_HPD_PATH_MASK	GENMASK(13, 12)
+#define RK3588_GRF_SOC_STATUS1		0x0384
+#define RK3588_HDMI0_LEVEL_INT		BIT(16)
+#define RK3588_GRF_VO1_CON3		0x000c
+#define RK3588_SCLIN_MASK		BIT(9)
+#define RK3588_SDAIN_MASK		BIT(10)
+#define RK3588_MODE_MASK		BIT(11)
+#define RK3588_I2S_SEL_MASK		BIT(13)
+#define RK3588_GRF_VO1_CON9		0x0024
+#define RK3588_HDMI0_GRANT_SEL		BIT(10)
+
+#define HIWORD_UPDATE(val, mask)	((val) | (mask) << 16)
+#define HOTPLUG_DEBOUNCE_MS		150
+
+struct rockchip_hdmi_qp {
+	struct device *dev;
+	struct regmap *regmap;
+	struct regmap *vo_regmap;
+	struct clk *ref_clk;
+	struct dw_hdmi_qp *hdmi;
+	struct phy *phy;
+	struct gpio_desc *enable_gpio;
+};
+
+static int dw_hdmi_qp_rk3588_mode_set(struct dw_hdmi_qp *dw_hdmi, void *data,
+				      const struct drm_display_mode *mode)
+{
+	struct rockchip_hdmi_qp *hdmi = data;
+	long rate;
+
+	/* Unconditionally switch to TMDS as FRL is not yet supported */
+	gpiod_set_value(hdmi->enable_gpio, 1);
+
+	rate = clk_round_rate(hdmi->ref_clk, mode->clock * 1000);
+
+	clk_set_rate(hdmi->ref_clk, rate);
+
+	/*
+	 * FIXME: Temporary workaround to pass pixel clock rate
+	 * to the PHY driver until phy_configure_opts_hdmi
+	 * becomes available in the PHY API. See also the related
+	 * comment in rk_hdptx_phy_power_on() from
+	 * drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
+	 */
+	phy_set_bus_width(hdmi->phy, rate / 100);
+
+	return 0;
+}
+
+static int dw_hdmi_qp_rk3588_phy_init(struct dw_hdmi_qp *dw_hdmi, void *data)
+{
+	struct rockchip_hdmi_qp *hdmi = (struct rockchip_hdmi_qp *)data;
+
+	return phy_power_on(hdmi->phy);
+}
+
+static void dw_hdmi_qp_rk3588_phy_disable(struct dw_hdmi_qp *dw_hdmi,
+					  void *data)
+{
+	struct rockchip_hdmi_qp *hdmi = (struct rockchip_hdmi_qp *)data;
+
+	phy_power_off(hdmi->phy);
+}
+
+static enum drm_connector_status
+dw_hdmi_qp_rk3588_read_hpd(struct dw_hdmi_qp *dw_hdmi, void *data)
+{
+	struct rockchip_hdmi_qp *hdmi = (struct rockchip_hdmi_qp *)data;
+	u32 val;
+
+	regmap_read(hdmi->regmap, RK3588_GRF_SOC_STATUS1, &val);
+
+	return val & RK3588_HDMI0_LEVEL_INT ?
+		connector_status_connected : connector_status_disconnected;
+}
+
+static void dw_hdmi_qp_rk3588_setup_hpd(struct dw_hdmi_qp *dw_hdmi, void *data)
+{
+	struct rockchip_hdmi_qp *hdmi = (struct rockchip_hdmi_qp *)data;
+
+	regmap_write(hdmi->regmap,
+		     RK3588_GRF_SOC_CON2,
+		     HIWORD_UPDATE(RK3588_HDMI0_HPD_INT_CLR,
+				   RK3588_HDMI0_HPD_INT_CLR |
+				   RK3588_HDMI0_HPD_INT_MSK));
+}
+
+static const struct dw_hdmi_qp_phy_ops rk3588_hdmi_phy_ops = {
+	.mode_set	= dw_hdmi_qp_rk3588_mode_set,
+	.init		= dw_hdmi_qp_rk3588_phy_init,
+	.disable	= dw_hdmi_qp_rk3588_phy_disable,
+	.read_hpd	= dw_hdmi_qp_rk3588_read_hpd,
+	.setup_hpd	= dw_hdmi_qp_rk3588_setup_hpd,
+};
+
+static const struct of_device_id dw_hdmi_qp_rockchip_dt_ids[] = {
+	{ .compatible = "rockchip,rk3588-dw-hdmi-qp",
+	  .data = &rk3588_hdmi_phy_ops },
+	{},
+};
+MODULE_DEVICE_TABLE(of, dw_hdmi_qp_rockchip_dt_ids);
+
+static int dw_hdmi_qp_rockchip_probe(struct device *dev)
+{
+	static const char * const clk_names[] = {
+		"pclk", "earc", "aud", "hdp", "hclk_vo1",
+		"ref" /* keep "ref" last */
+	};
+	struct dw_hdmi_qp_plat_data plat_data;
+	struct rockchip_hdmi_qp *hdmi;
+	struct clk *clk;
+	int ret, i;
+	u32 val;
+
+	if (!dev->of_node)
+		return -ENODEV;
+
+	hdmi = xzalloc(sizeof(*hdmi));
+
+	plat_data.phy_ops = device_get_match_data(dev);
+	if (!plat_data.phy_ops)
+		return dev_err_probe(dev, -EINVAL, "No match data\n");
+
+	plat_data.phy_data = hdmi;
+	hdmi->dev = dev;
+
+	hdmi->regmap = syscon_regmap_lookup_by_phandle(dev->of_node,
+						       "rockchip,grf");
+	if (IS_ERR(hdmi->regmap)) {
+		dev_err(dev, "Unable to get rockchip,grf\n");
+		return PTR_ERR(hdmi->regmap);
+	}
+
+	hdmi->vo_regmap = syscon_regmap_lookup_by_phandle(dev->of_node,
+							  "rockchip,vo-grf");
+	if (IS_ERR(hdmi->vo_regmap)) {
+		dev_err(dev, "Unable to get rockchip,vo-grf\n");
+		return PTR_ERR(hdmi->vo_regmap);
+	}
+
+	for (i = 0; i < ARRAY_SIZE(clk_names); i++) {
+		clk = clk_get_enabled(hdmi->dev, clk_names[i]);
+
+		if (IS_ERR(clk)) {
+			ret = PTR_ERR(clk);
+			if (ret != -EPROBE_DEFER)
+				dev_err(dev, "Failed to get %s clock: %d\n",
+					clk_names[i], ret);
+			return ret;
+		}
+	}
+	hdmi->ref_clk = clk;
+
+	hdmi->enable_gpio = gpiod_get_optional(hdmi->dev, "enable",
+						    GPIOD_OUT_HIGH);
+	if (IS_ERR(hdmi->enable_gpio)) {
+		ret = PTR_ERR(hdmi->enable_gpio);
+		dev_err(dev, "Failed to request enable GPIO: %d\n", ret);
+		return ret;
+	}
+
+	hdmi->phy = of_phy_get(dev->of_node, NULL);
+	if (IS_ERR(hdmi->phy)) {
+		ret = PTR_ERR(hdmi->phy);
+		if (ret != -EPROBE_DEFER)
+			dev_err(dev, "failed to get phy: %d\n", ret);
+		return ret;
+	}
+
+	val = HIWORD_UPDATE(RK3588_SCLIN_MASK, RK3588_SCLIN_MASK) |
+	      HIWORD_UPDATE(RK3588_SDAIN_MASK, RK3588_SDAIN_MASK) |
+	      HIWORD_UPDATE(RK3588_MODE_MASK, RK3588_MODE_MASK) |
+	      HIWORD_UPDATE(RK3588_I2S_SEL_MASK, RK3588_I2S_SEL_MASK);
+	regmap_write(hdmi->vo_regmap, RK3588_GRF_VO1_CON3, val);
+
+	val = HIWORD_UPDATE(RK3588_SET_HPD_PATH_MASK,
+			    RK3588_SET_HPD_PATH_MASK);
+	regmap_write(hdmi->regmap, RK3588_GRF_SOC_CON7, val);
+
+	val = HIWORD_UPDATE(RK3588_HDMI0_GRANT_SEL,
+			    RK3588_HDMI0_GRANT_SEL);
+	regmap_write(hdmi->vo_regmap, RK3588_GRF_VO1_CON9, val);
+
+	val = HIWORD_UPDATE(RK3588_HDMI0_HPD_INT_MSK, RK3588_HDMI0_HPD_INT_MSK);
+	regmap_write(hdmi->regmap, RK3588_GRF_SOC_CON2, val);
+
+	hdmi->hdmi = dw_hdmi_qp_bind(dev, &plat_data);
+	if (IS_ERR(hdmi->hdmi)) {
+		ret = PTR_ERR(hdmi->hdmi);
+		return ret;
+	}
+
+	return 0;
+}
+
+struct driver dw_hdmi_qp_rockchip_driver = {
+	.probe  = dw_hdmi_qp_rockchip_probe,
+	.name = "dwhdmiqp-rockchip",
+	.of_compatible = dw_hdmi_qp_rockchip_dt_ids,
+};
+device_platform_driver(dw_hdmi_qp_rockchip_driver);

-- 
2.39.5



