Delivery-date: Tue, 11 Nov 2025 10:13:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIkR4-0006EQ-2n
	for lore@lore.pengutronix.de;
	Tue, 11 Nov 2025 10:13:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIkR3-0006sC-Pj
	for lore@pengutronix.de; Tue, 11 Nov 2025 10:13:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sjv3M5zcIZyAQQLgNTbTpTd58j/dryqyAGc+8iBrpOg=; b=XFOzmwTMrZvUoH
	v60YnGtDYN34BBOtQcn5KY7i0mK7ava2g6hJUyh/oRIZMLqbxGHPEXaMCoWg57dABLZBXos5doX5i
	aZWw6KSsa/GF1zUJG1O1BOucr9VZXjMxLS6YWFGQ0zWHxD+jQ4Cc3LZ66v50Qm65Qe8eYhcTzI/uC
	H+vOYOCQQf9UY9XzOS1qc0qWrBq4SjxXPOxbBqtHdygH+BcYa4XIAACFQqwCe3hUqNO/gWHLO5Gk1
	UTbbdd6Sjrpp4gg2SMeH63CrWCBc9BhBU75MiuyKnrZPnPbk2ajdJHgFVFkhLgiYedt7ETUDz+oZY
	xk1VmI9+911DVYoIvDjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIkQS-00000006pFd-2TkH;
	Tue, 11 Nov 2025 09:12:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIkQQ-00000006pFE-1d0v
	for barebox@lists.infradead.org;
	Tue, 11 Nov 2025 09:12:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vIkQN-0006ks-35; Tue, 11 Nov 2025 10:12:27 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vIkQM-008AsV-0R;
	Tue, 11 Nov 2025 10:12:26 +0100
Received: from localhost ([::1] helo=dude04.red.stw.pengutronix.de)
	by dude04.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vIkQM-0000000BDdp-0K80;
	Tue, 11 Nov 2025 10:12:26 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Tue, 11 Nov 2025 10:12:21 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251111-imx-ldb-v1-1-30820fc5649b@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAPX9EmkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDINDNzK3QzUlJ0jUyMk1OM062TDRJMlcCqi4oSk3LrACbFB1bWwsAOPE
 LpVkAAAA=
X-Change-ID: 20251111-imx-ldb-225cf3c9a4b7
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=11314;
 i=m.grzeschik@pengutronix.de; h=from:subject:message-id;
 bh=6bG/veIeaGoX1irDrdPAYPWJefu4OA2wo60qCXMvyhg=;
 b=owEBbQKS/ZANAwAKAb9pWET5cfSrAcsmYgBpEv32gZv6RLXOiZIKmtQgH01+wn+orytfLRa3Z
 Xn0TkCZWeaJAjMEAAEKAB0WIQQV2+2Fpbqd6fvv0Gi/aVhE+XH0qwUCaRL99gAKCRC/aVhE+XH0
 qzc3D/oDsEUBVKe5UZ9bbNFiS5jdAUrXa/tVm3tqJX6hGAUufBBYoRVzNwEebG/oGIQf8ed2Exa
 Jqeng0Bn+l10Nx/xeemi5qhQNRJEHB4yN3qZkvCU4Dtgg4QLsMFfgjU0WaV0yzIC26aITVYh3bM
 Bdy5l0qpBEc/RB1/mFozk+LmCtZlM2Cy8IRSJuXYduoICKRReyJh9Y212XZ3o2dgAGMzl4f5iLf
 EBTDDC3xc9orcuipIHwcyaWDuQynr5yD/Dy19mDkXalTuzdIN4HNdfYMM8ZdEC+s9/Y+EgMyZzU
 6ET/VWfGv05h0SGtggh+VCs+ahsh8y25v4cDTcC1C5BaXfF2J84TVbS78Q3IeYpB1kx/1kMoc6s
 9VrF6CshTk0iztCGg4pRo20d2OGWGhCZcJp/FXEGq41qn9YUConDUxpHwGQAz9wlj89xhT9iAGe
 qMFh3Ic7eM1s7fYfAnwU4Moz58rdl0IJFY3ptkYFZpfiLnbLDI5F0P2YvyHXvaCX2sswlBaqRXk
 jP/umG6F7J4Ji4XfJKKDVfVtc/cjPBe6a0h9CFE/DFwdRx6lnwDjvkIuRMLKp+wuEqwoqSZs7us
 sth2PTvFgC1gx14siFO1o24uuGy9Xv0DqwZt5oskhqLi2CXZgYVcir+UebXJZPuP0FVv1LJZ47O
 iAKmluRFKz9+HuA==
X-Developer-Key: i=m.grzeschik@pengutronix.de; a=openpgp;
 fpr=957BC452CE953D7EA60CF4FC0BE9E3157A1E2C64
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251111_011230_591245_3254117F 
X-CRM114-Status: GOOD (  25.04  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] video: fsl-ldb: add ported driver from linux kernel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Import the driver from Linux and change the interface from drm to vpl.

This has been tested on the IMX93.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/video/Kconfig   |   8 ++
 drivers/video/Makefile  |   1 +
 drivers/video/fsl-ldb.c | 311 ++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 320 insertions(+)

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index b2eccd5db7fe05999f3fe64db214fb569b3fb1df..e1b5d862234d6489a02cdb51fe7f68b52a146d6d 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -242,4 +242,12 @@ config DRIVER_VIDEO_DW_MIPI_DSI
 	  controller. To make use of this driver you need platform specific
 	  glue code to be selected as well.
 
+config DRIVER_VIDEO_FSL_LDB
+	tristate "DRM support for FSL_LDB DPI-to-LVDS controller"
+	depends on OFTREE
+	select VIDEO_VPL
+	help
+	  Say Y here if you want to enable support for the i.MX6SX/8MP/93
+	  DPI-to-LVDS on-SoC encoder.
+
 endif
diff --git a/drivers/video/Makefile b/drivers/video/Makefile
index 470a5abaa450b6477b7cf5a78b2a747f9a3ec743..e27aad87f98842411484a690a0e5f75fe2867278 100644
--- a/drivers/video/Makefile
+++ b/drivers/video/Makefile
@@ -38,3 +38,4 @@ obj-$(CONFIG_DRIVER_VIDEO_DW_HDMI) += dw-hdmi.o
 obj-$(CONFIG_DRIVER_VIDEO_DW_MIPI_DSI) += dw_mipi_dsi.o
 obj-$(CONFIG_DRIVER_VIDEO_BOCHS) += bochs/
 obj-$(CONFIG_DRIVER_VIDEO_ROCKCHIP) += rockchip/
+obj-$(CONFIG_DRIVER_VIDEO_FSL_LDB) += fsl-ldb.o
diff --git a/drivers/video/fsl-ldb.c b/drivers/video/fsl-ldb.c
new file mode 100644
index 0000000000000000000000000000000000000000..3fca7867a2a3d6f4649d4bfb3f453feaba9fad61
--- /dev/null
+++ b/drivers/video/fsl-ldb.c
@@ -0,0 +1,311 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2022 Marek Vasut <marex@denx.de>
+ *
+ * Limitations:
+ * - ldb is currently hardcoded to MEDIA_BUS_FMT_RGB888_1X7X4_SPWG
+ */
+
+#include <linux/clk.h>
+#include <video/media-bus-format.h>
+#include <mfd/syscon.h>
+#include <linux/module.h>
+#include <of.h>
+#include <of_graph.h>
+#include <regmap.h>
+
+#include <video/vpl.h>
+
+#define LDB_CTRL_CH0_ENABLE			BIT(0)
+#define LDB_CTRL_CH0_DI_SELECT			BIT(1)
+#define LDB_CTRL_CH1_ENABLE			BIT(2)
+#define LDB_CTRL_CH1_DI_SELECT			BIT(3)
+#define LDB_CTRL_SPLIT_MODE			BIT(4)
+#define LDB_CTRL_CH0_DATA_WIDTH			BIT(5)
+#define LDB_CTRL_CH0_BIT_MAPPING		BIT(6)
+#define LDB_CTRL_CH1_DATA_WIDTH			BIT(7)
+#define LDB_CTRL_CH1_BIT_MAPPING		BIT(8)
+#define LDB_CTRL_DI0_VSYNC_POLARITY		BIT(9)
+#define LDB_CTRL_DI1_VSYNC_POLARITY		BIT(10)
+#define LDB_CTRL_REG_CH0_FIFO_RESET		BIT(11)
+#define LDB_CTRL_REG_CH1_FIFO_RESET		BIT(12)
+#define LDB_CTRL_ASYNC_FIFO_ENABLE		BIT(24)
+#define LDB_CTRL_ASYNC_FIFO_THRESHOLD_MASK	GENMASK(27, 25)
+
+#define LVDS_CTRL_CH0_EN			BIT(0)
+#define LVDS_CTRL_CH1_EN			BIT(1)
+/*
+ * LVDS_CTRL_LVDS_EN bit is poorly named in i.MX93 reference manual.
+ * Clear it to enable LVDS and set it to disable LVDS.
+ */
+#define LVDS_CTRL_LVDS_EN			BIT(1)
+#define LVDS_CTRL_VBG_EN			BIT(2)
+#define LVDS_CTRL_HS_EN				BIT(3)
+#define LVDS_CTRL_PRE_EMPH_EN			BIT(4)
+#define LVDS_CTRL_PRE_EMPH_ADJ(n)		(((n) & 0x7) << 5)
+#define LVDS_CTRL_PRE_EMPH_ADJ_MASK		GENMASK(7, 5)
+#define LVDS_CTRL_CM_ADJ(n)			(((n) & 0x7) << 8)
+#define LVDS_CTRL_CM_ADJ_MASK			GENMASK(10, 8)
+#define LVDS_CTRL_CC_ADJ(n)			(((n) & 0x7) << 11)
+#define LVDS_CTRL_CC_ADJ_MASK			GENMASK(13, 11)
+#define LVDS_CTRL_SLEW_ADJ(n)			(((n) & 0x7) << 14)
+#define LVDS_CTRL_SLEW_ADJ_MASK			GENMASK(16, 14)
+#define LVDS_CTRL_VBG_ADJ(n)			(((n) & 0x7) << 17)
+#define LVDS_CTRL_VBG_ADJ_MASK			GENMASK(19, 17)
+
+enum fsl_ldb_devtype {
+	IMX6SX_LDB,
+	IMX8MP_LDB,
+	IMX93_LDB,
+};
+
+struct fsl_ldb_devdata {
+	u32 ldb_ctrl;
+	u32 lvds_ctrl;
+	bool lvds_en_bit;
+	bool single_ctrl_reg;
+};
+
+static const struct fsl_ldb_devdata fsl_ldb_devdata[] = {
+	[IMX6SX_LDB] = {
+		.ldb_ctrl = 0x18,
+		.single_ctrl_reg = true,
+	},
+	[IMX8MP_LDB] = {
+		.ldb_ctrl = 0x5c,
+		.lvds_ctrl = 0x128,
+	},
+	[IMX93_LDB] = {
+		.ldb_ctrl = 0x20,
+		.lvds_ctrl = 0x24,
+		.lvds_en_bit = true,
+	},
+};
+
+struct fsl_ldb {
+	struct device *dev;
+	struct clk *clk;
+	struct vpl vpl;
+	struct regmap *regmap;
+	u32 bus_format;
+	const struct fsl_ldb_devdata *devdata;
+	struct display_timings *modes;
+	int output_port;
+	bool ch0_enabled;
+	bool ch1_enabled;
+};
+
+static bool fsl_ldb_is_dual(const struct fsl_ldb *fsl_ldb)
+{
+	return (fsl_ldb->ch0_enabled && fsl_ldb->ch1_enabled);
+}
+
+static unsigned long fsl_ldb_link_frequency(struct fsl_ldb *fsl_ldb, int clock)
+{
+	if (fsl_ldb_is_dual(fsl_ldb))
+		return clock * 3500;
+	else
+		return clock * 7000;
+}
+
+static void fsl_ldb_atomic_enable(struct fsl_ldb *fsl_ldb,
+				  struct fb_videomode *mode)
+{
+	unsigned long configured_link_freq;
+	unsigned long requested_link_freq;
+	bool lvds_format_24bpp;
+	bool lvds_format_jeida;
+	u32 reg;
+
+	switch (fsl_ldb->bus_format) {
+	case MEDIA_BUS_FMT_RGB666_1X7X3_SPWG:
+		lvds_format_24bpp = false;
+		lvds_format_jeida = true;
+		break;
+	case MEDIA_BUS_FMT_RGB888_1X7X4_JEIDA:
+		lvds_format_24bpp = true;
+		lvds_format_jeida = true;
+		break;
+	case MEDIA_BUS_FMT_RGB888_1X7X4_SPWG:
+		lvds_format_24bpp = true;
+		lvds_format_jeida = false;
+		break;
+	default:
+		/*
+		 * Some bridges still don't set the correct LVDS bus pixel
+		 * format, use SPWG24 default format until those are fixed.
+		 */
+		lvds_format_24bpp = true;
+		lvds_format_jeida = false;
+		dev_warn(fsl_ldb->dev,
+			 "Unsupported LVDS bus format 0x%04x, please check output bridge driver. Falling back to SPWG24.\n",
+			 fsl_ldb->bus_format);
+		break;
+	}
+
+	if (mode->pixclock.ps > (fsl_ldb_is_dual(fsl_ldb) ? 160000 : 80000))
+		return;
+
+	requested_link_freq = fsl_ldb_link_frequency(fsl_ldb, PICOS2KHZ(mode->pixclock));
+	clk_set_rate(fsl_ldb->clk, requested_link_freq);
+
+	configured_link_freq = clk_get_rate(fsl_ldb->clk);
+	if (configured_link_freq != requested_link_freq)
+		dev_warn(fsl_ldb->dev, "Configured LDB clock (%lu Hz) does not match requested LVDS clock: %lu Hz\n",
+			 configured_link_freq,
+			 requested_link_freq);
+
+	clk_prepare_enable(fsl_ldb->clk);
+
+	/* Program LDB_CTRL */
+	reg =	(fsl_ldb->ch0_enabled ? LDB_CTRL_CH0_ENABLE : 0) |
+		(fsl_ldb->ch1_enabled ? LDB_CTRL_CH1_ENABLE : 0) |
+		(fsl_ldb_is_dual(fsl_ldb) ? LDB_CTRL_SPLIT_MODE : 0);
+
+	if (lvds_format_24bpp)
+		reg |=	(fsl_ldb->ch0_enabled ? LDB_CTRL_CH0_DATA_WIDTH : 0) |
+			(fsl_ldb->ch1_enabled ? LDB_CTRL_CH1_DATA_WIDTH : 0);
+
+	if (lvds_format_jeida)
+		reg |=	(fsl_ldb->ch0_enabled ? LDB_CTRL_CH0_BIT_MAPPING : 0) |
+			(fsl_ldb->ch1_enabled ? LDB_CTRL_CH1_BIT_MAPPING : 0);
+
+	if (mode->sync & FB_SYNC_VERT_HIGH_ACT)
+		reg |=	(fsl_ldb->ch0_enabled ? LDB_CTRL_DI0_VSYNC_POLARITY : 0) |
+			(fsl_ldb->ch1_enabled ? LDB_CTRL_DI1_VSYNC_POLARITY : 0);
+
+	regmap_write(fsl_ldb->regmap, fsl_ldb->devdata->ldb_ctrl, reg);
+
+	if (fsl_ldb->devdata->single_ctrl_reg)
+		return;
+
+	/* Program LVDS_CTRL */
+	reg = LVDS_CTRL_CC_ADJ(2) | LVDS_CTRL_PRE_EMPH_EN |
+	      LVDS_CTRL_PRE_EMPH_ADJ(3) | LVDS_CTRL_VBG_EN;
+	regmap_write(fsl_ldb->regmap, fsl_ldb->devdata->lvds_ctrl, reg);
+
+	/* Wait for VBG to stabilize. */
+	udelay(20);
+
+	reg |=	(fsl_ldb->ch0_enabled ? LVDS_CTRL_CH0_EN : 0) |
+		(fsl_ldb->ch1_enabled ? LVDS_CTRL_CH1_EN : 0);
+
+	regmap_write(fsl_ldb->regmap, fsl_ldb->devdata->lvds_ctrl, reg);
+}
+
+static void fsl_ldb_atomic_disable(struct fsl_ldb *fsl_ldb)
+{
+	/* Stop channel(s). */
+	if (fsl_ldb->devdata->lvds_en_bit)
+		/* Set LVDS_CTRL_LVDS_EN bit to disable. */
+		regmap_write(fsl_ldb->regmap, fsl_ldb->devdata->lvds_ctrl,
+			     LVDS_CTRL_LVDS_EN);
+	else
+		if (!fsl_ldb->devdata->single_ctrl_reg)
+			regmap_write(fsl_ldb->regmap, fsl_ldb->devdata->lvds_ctrl, 0);
+	regmap_write(fsl_ldb->regmap, fsl_ldb->devdata->ldb_ctrl, 0);
+
+	clk_disable_unprepare(fsl_ldb->clk);
+}
+
+static int fsl_ldb_ioctl(struct vpl *vpl, unsigned int port,
+		unsigned int cmd, void *data)
+{
+	struct fsl_ldb *fsl_ldb = container_of(vpl, struct fsl_ldb, vpl);
+
+	switch (cmd) {
+	case VPL_ENABLE:
+		break;
+	case VPL_DISABLE:
+		break;
+	case VPL_UNPREPARE:
+		fsl_ldb_atomic_disable(fsl_ldb);
+	case VPL_PREPARE:
+		fsl_ldb_atomic_enable(fsl_ldb, data);
+	case VPL_GET_VIDEOMODES:
+		if (fsl_ldb->modes) {
+			struct display_timings *timings = data;
+
+			timings->num_modes = fsl_ldb->modes->num_modes;
+			timings->modes = fsl_ldb->modes->modes;
+			dev_info(fsl_ldb->dev, "Using ldb provided timings\n");
+			return 0;
+		}
+	}
+
+	if (fsl_ldb->output_port > 0)
+		return vpl_ioctl(vpl, fsl_ldb->output_port, cmd, data);
+
+	return 0;
+}
+
+static int fsl_ldb_probe(struct device *dev)
+{
+	struct device_node *remote1, *remote2;
+	struct device_node *panel_node;
+	struct fsl_ldb *fsl_ldb;
+
+	fsl_ldb = xzalloc(sizeof(*fsl_ldb));
+	if (!fsl_ldb)
+		return -ENOMEM;
+
+	fsl_ldb->devdata = device_get_match_data(dev);
+	if (!fsl_ldb->devdata)
+		return -EINVAL;
+
+	fsl_ldb->dev = dev;
+
+	fsl_ldb->clk = clk_get(dev, "ldb");
+	if (IS_ERR(fsl_ldb->clk))
+		return PTR_ERR(fsl_ldb->clk);
+
+	fsl_ldb->regmap = syscon_node_to_regmap(dev->of_node->parent);
+	if (IS_ERR(fsl_ldb->regmap))
+		return PTR_ERR(fsl_ldb->regmap);
+
+	/* Locate the remote ports and the panel node */
+	remote1 = of_graph_get_remote_node(dev->of_node, 1, 0);
+	remote2 = of_graph_get_remote_node(dev->of_node, 2, 0);
+	panel_node = of_node_get(remote1 ? remote1 : remote2);
+	fsl_ldb->ch0_enabled = (remote1 != NULL);
+	fsl_ldb->ch1_enabled = (remote2 != NULL);
+
+	if (!fsl_ldb->ch0_enabled && !fsl_ldb->ch1_enabled)
+		return dev_err_probe(dev, -ENXIO, "No panel node found");
+
+	fsl_ldb->modes = of_get_display_timings(dev->of_node);
+
+	/* Only MEDIA_BUS_FMT_RGB888_1X7X4_SPWG is supported for now */
+	fsl_ldb->bus_format = MEDIA_BUS_FMT_RGB888_1X7X4_SPWG;
+	fsl_ldb->output_port = remote1 ? 1 : remote2 ? 2 : 0;
+
+	dev_dbg(dev, "Using %s\n",
+		fsl_ldb_is_dual(fsl_ldb) ? "dual-link mode" :
+		fsl_ldb->ch0_enabled ? "channel 0" : "channel 1");
+
+	/* Only DRM_LVDS_DUAL_LINK_ODD_EVEN_PIXELS is supported */
+
+	dev_info(dev, "LVDS channel pixel swap not supported.\n");
+
+	fsl_ldb->vpl.node = dev->of_node;
+	fsl_ldb->vpl.ioctl = &fsl_ldb_ioctl;
+	return vpl_register(&fsl_ldb->vpl);
+}
+
+static const struct of_device_id fsl_ldb_match[] = {
+	{ .compatible = "fsl,imx6sx-ldb",
+	  .data = &fsl_ldb_devdata[IMX6SX_LDB], },
+	{ .compatible = "fsl,imx8mp-ldb",
+	  .data = &fsl_ldb_devdata[IMX8MP_LDB], },
+	{ .compatible = "fsl,imx93-ldb",
+	  .data = &fsl_ldb_devdata[IMX93_LDB], },
+	{ /* sentinel */ },
+};
+MODULE_DEVICE_TABLE(of, fsl_ldb_match);
+
+static struct driver fsl_ldb_driver = {
+	.probe	= fsl_ldb_probe,
+	.name		= "fsl-ldb",
+	.of_compatible	= fsl_ldb_match,
+};
+device_platform_driver(fsl_ldb_driver);

---
base-commit: 0633a4db9d2351234b565b55978ce068b387eb2d
change-id: 20251111-imx-ldb-225cf3c9a4b7

Best regards,
-- 
Michael Grzeschik <m.grzeschik@pengutronix.de>



