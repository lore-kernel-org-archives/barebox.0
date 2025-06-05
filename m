Delivery-date: Thu, 05 Jun 2025 23:14:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNHvC-0049Sr-2h
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 23:14:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNHv6-0006C4-9I
	for lore@pengutronix.de; Thu, 05 Jun 2025 23:14:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fh2ckDpQMVQQn/fG7ZSWM0xSU3f7GTOwzl3VllHIZlk=; b=XtSA/9Ebn053gMULmpwkpUrhEE
	8ZO+qkUk/xCH8KFsX8uRGraInXK/rfuE+eBJvuyvbGSOOgiaOYXdFibW9etY5kYEVlbFRIsuXrHz+
	H4+unwqPvNQGWZoaRDVthS9V+ADwh4VfguxOo/lrdw80fkIvKXLGXu9pNFAVvCAv8DRfwYoAio4gf
	Mx7Xwlzrw1BG/tGWkFzNcz+im8x9NSUSpAPFkYTkLVI5vd4ra1NyQ9zFdJRVvXB/ILiYI+6ZSPZij
	4o8ZupUfg1xrBfOjKvqsLDJR2LuwZObf4wwPA57Tr+TSwxIegPGc5KnJ5+inS588vWl5H5K4reOKt
	a69mmGDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNHuI-0000000Gex9-2XW7;
	Thu, 05 Jun 2025 21:13:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNHoC-0000000GeHB-0Vgn
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 21:07:34 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uNHoA-00079B-R8; Thu, 05 Jun 2025 23:07:30 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu,  5 Jun 2025 23:07:24 +0200
Message-Id: <20250605210726.1916656-15-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250605210726.1916656-1-a.fatoum@barebox.org>
References: <20250605210726.1916656-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_140732_539235_11122678 
X-CRM114-Status: GOOD (  31.87  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 14/16] video: add STM32 MIPI DSI video driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now with the common Designware MIPI DSI support added, let's add STM32
glue driver to make use of it.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/Kconfig     |   9 +
 drivers/video/Makefile    |   1 +
 drivers/video/stm32_dsi.c | 457 ++++++++++++++++++++++++++++++++++++++
 3 files changed, 467 insertions(+)
 create mode 100644 drivers/video/stm32_dsi.c

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index 818ff4a0f1c8..c4b244fa5a98 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -68,6 +68,15 @@ config DRIVER_VIDEO_STM32_LTDC
 	  Say 'Y' here to enable framebuffer and splash screen support for
 	  STM32 and STM32MP1.
 
+config DRIVER_VIDEO_STM32_DSI
+	bool "Enable STM32 DSI video support"
+	select VIDEO_VPL
+	select DRIVER_VIDEO_DW_MIPI_DSI
+	depends on ARCH_STM32 || COMPILE_TEST
+	help
+	  This option enables support DSI internal bridge which can be used on
+	  devices which have DSI devices connected.
+
 config DRIVER_VIDEO_SDL
 	bool "SDL framebuffer driver"
 	depends on HAVE_LIBSDL2
diff --git a/drivers/video/Makefile b/drivers/video/Makefile
index 73d135776102..f6c309ead23b 100644
--- a/drivers/video/Makefile
+++ b/drivers/video/Makefile
@@ -20,6 +20,7 @@ obj-$(CONFIG_DRIVER_VIDEO_ATMEL) += atmel_lcdfb.o atmel_lcdfb_core.o
 obj-$(CONFIG_DRIVER_VIDEO_ATMEL_HLCD) += atmel_hlcdfb.o atmel_lcdfb_core.o
 obj-$(CONFIG_DRIVER_VIDEO_STM) += stm.o
 obj-$(CONFIG_DRIVER_VIDEO_STM32_LTDC) += stm32_ltdc.o
+obj-$(CONFIG_DRIVER_VIDEO_STM32_DSI) += stm32_dsi.o
 obj-$(CONFIG_DRIVER_VIDEO_IMX) += imx.o
 obj-$(CONFIG_DRIVER_VIDEO_IMX_IPU) += imx-ipu-fb.o
 obj-$(CONFIG_DRIVER_VIDEO_PXA) += pxa.o
diff --git a/drivers/video/stm32_dsi.c b/drivers/video/stm32_dsi.c
new file mode 100644
index 000000000000..757e0a7081ed
--- /dev/null
+++ b/drivers/video/stm32_dsi.c
@@ -0,0 +1,457 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2019 STMicroelectronics - All Rights Reserved
+ * Author(s): Philippe Cornu <philippe.cornu@st.com> for STMicroelectronics.
+ *	      Yannick Fertre <yannick.fertre@st.com> for STMicroelectronics.
+ *
+ * This MIPI DSI controller driver is based on the Linux Kernel driver from
+ * drivers/gpu/drm/stm/dw_mipi_dsi-stm.c.
+ */
+
+#define pr_fmt(fmt) "stm32_dsi: " fmt
+
+#include <linux/clk.h>
+#include <linux/reset.h>
+#include <of.h>
+#include <of_graph.h>
+#include <linux/bitops.h>
+#include <linux/iopoll.h>
+#include <linux/printk.h>
+#include <regulator.h>
+
+#include <video/mipi_display.h>
+#include <video/mipi_dsi.h>
+#include <video/dw_mipi_dsi.h>
+#include <video/drm/drm_modes.h>
+
+#define HWVER_130			0x31333000	/* IP version 1.30 */
+#define HWVER_131			0x31333100	/* IP version 1.31 */
+
+/* DSI digital registers & bit definitions */
+#define DSI_VERSION			0x00
+#define VERSION				GENMASK(31, 8)
+
+/*
+ * DSI wrapper registers & bit definitions
+ * Note: registers are named as in the Reference Manual
+ */
+#define DSI_WCFGR	0x0400		/* Wrapper ConFiGuration Reg */
+#define WCFGR_DSIM	BIT(0)		/* DSI Mode */
+#define WCFGR_COLMUX	GENMASK(3, 1)	/* COLor MUltipleXing */
+
+#define DSI_WCR		0x0404		/* Wrapper Control Reg */
+#define WCR_DSIEN	BIT(3)		/* DSI ENable */
+
+#define DSI_WISR	0x040C		/* Wrapper Interrupt and Status Reg */
+#define WISR_PLLLS	BIT(8)		/* PLL Lock Status */
+#define WISR_RRS	BIT(12)		/* Regulator Ready Status */
+
+#define DSI_WPCR0	0x0418		/* Wrapper Phy Conf Reg 0 */
+#define WPCR0_UIX4	GENMASK(5, 0)	/* Unit Interval X 4 */
+#define WPCR0_TDDL	BIT(16)		/* Turn Disable Data Lanes */
+
+#define DSI_WRPCR	0x0430		/* Wrapper Regulator & Pll Ctrl Reg */
+#define WRPCR_PLLEN	BIT(0)		/* PLL ENable */
+#define WRPCR_NDIV	GENMASK(8, 2)	/* pll loop DIVision Factor */
+#define WRPCR_IDF	GENMASK(14, 11)	/* pll Input Division Factor */
+#define WRPCR_ODF	GENMASK(17, 16)	/* pll Output Division Factor */
+#define WRPCR_REGEN	BIT(24)		/* REGulator ENable */
+#define WRPCR_BGREN	BIT(28)		/* BandGap Reference ENable */
+#define IDF_MIN		1
+#define IDF_MAX		7
+#define NDIV_MIN	10
+#define NDIV_MAX	125
+#define ODF_MIN		1
+#define ODF_MAX		8
+
+/* dsi color format coding according to the datasheet */
+enum dsi_color {
+	DSI_RGB565_CONF1,
+	DSI_RGB565_CONF2,
+	DSI_RGB565_CONF3,
+	DSI_RGB666_CONF1,
+	DSI_RGB666_CONF2,
+	DSI_RGB888,
+};
+
+#define LANE_MIN_KBPS	31250
+#define LANE_MAX_KBPS	500000
+
+/* Timeout for regulator on/off, pll lock/unlock & fifo empty */
+#define TIMEOUT_US	200000
+
+struct stm32_dsi_priv {
+	struct device *dev;
+	struct dw_mipi_dsi_plat_data pdata;
+	u32 pllref_clk;
+	u32 hw_version;
+	int lane_min_kbps;
+	int lane_max_kbps;
+	struct regulator *vdd_reg;
+};
+
+static inline void dsi_write(struct stm32_dsi_priv *dsi, u32 reg, u32 val)
+{
+	writel(val, dsi->pdata.base + reg);
+}
+
+static inline u32 dsi_read(struct stm32_dsi_priv *dsi, u32 reg)
+{
+	return readl(dsi->pdata.base + reg);
+}
+
+static inline void dsi_set(struct stm32_dsi_priv *dsi, u32 reg, u32 mask)
+{
+	dsi_write(dsi, reg, dsi_read(dsi, reg) | mask);
+}
+
+static inline void dsi_clear(struct stm32_dsi_priv *dsi, u32 reg, u32 mask)
+{
+	dsi_write(dsi, reg, dsi_read(dsi, reg) & ~mask);
+}
+
+static inline void dsi_update_bits(struct stm32_dsi_priv *dsi, u32 reg,
+				   u32 mask, u32 val)
+{
+	dsi_write(dsi, reg, (dsi_read(dsi, reg) & ~mask) | val);
+}
+
+static enum dsi_color dsi_color_from_mipi(u32 fmt)
+{
+	switch (fmt) {
+	case MIPI_DSI_FMT_RGB888:
+		return DSI_RGB888;
+	case MIPI_DSI_FMT_RGB666:
+		return DSI_RGB666_CONF2;
+	case MIPI_DSI_FMT_RGB666_PACKED:
+		return DSI_RGB666_CONF1;
+	case MIPI_DSI_FMT_RGB565:
+		return DSI_RGB565_CONF1;
+	default:
+		pr_err("MIPI color invalid, so we use rgb888\n");
+	}
+	return DSI_RGB888;
+}
+
+static int dsi_pll_get_clkout_khz(int clkin_khz, int idf, int ndiv, int odf)
+{
+	int divisor = idf * odf;
+
+	/* prevent from division by 0 */
+	if (!divisor)
+		return 0;
+
+	return DIV_ROUND_CLOSEST(clkin_khz * ndiv, divisor);
+}
+
+static int dsi_pll_get_params(struct stm32_dsi_priv *dsi,
+			      int clkin_khz, int clkout_khz,
+			      int *idf, int *ndiv, int *odf)
+{
+	int i, o, n, n_min, n_max;
+	int fvco_min, fvco_max, delta, best_delta; /* all in khz */
+
+	/* Early checks preventing division by 0 & odd results */
+	if (clkin_khz <= 0 || clkout_khz <= 0)
+		return -EINVAL;
+
+	fvco_min = dsi->lane_min_kbps * 2 * ODF_MAX;
+	fvco_max = dsi->lane_max_kbps * 2 * ODF_MIN;
+
+	best_delta = 1000000; /* big started value (1000000khz) */
+
+	for (i = IDF_MIN; i <= IDF_MAX; i++) {
+		/* Compute ndiv range according to Fvco */
+		n_min = ((fvco_min * i) / (2 * clkin_khz)) + 1;
+		n_max = (fvco_max * i) / (2 * clkin_khz);
+
+		/* No need to continue idf loop if we reach ndiv max */
+		if (n_min >= NDIV_MAX)
+			break;
+
+		/* Clamp ndiv to valid values */
+		if (n_min < NDIV_MIN)
+			n_min = NDIV_MIN;
+		if (n_max > NDIV_MAX)
+			n_max = NDIV_MAX;
+
+		for (o = ODF_MIN; o <= ODF_MAX; o *= 2) {
+			n = DIV_ROUND_CLOSEST(i * o * clkout_khz, clkin_khz);
+			/* Check ndiv according to vco range */
+			if (n < n_min || n > n_max)
+				continue;
+			/* Check if new delta is better & saves parameters */
+			delta = dsi_pll_get_clkout_khz(clkin_khz, i, n, o) -
+				clkout_khz;
+			if (delta < 0)
+				delta = -delta;
+			if (delta < best_delta) {
+				*idf = i;
+				*ndiv = n;
+				*odf = o;
+				best_delta = delta;
+			}
+			/* fast return in case of "perfect result" */
+			if (!delta)
+				return 0;
+		}
+	}
+
+	return 0;
+}
+
+static int dsi_phy_init(void *priv_data)
+{
+	struct stm32_dsi_priv *dsi = priv_data;
+	struct device *dev = dsi->dev;
+	u32 val;
+	int ret;
+
+	dev_dbg(dev, "Initialize DSI physical layer\n");
+
+	/* Enable the regulator */
+	dsi_set(dsi, DSI_WRPCR, WRPCR_REGEN | WRPCR_BGREN);
+	ret = readl_poll_timeout(dsi->pdata.base + DSI_WISR, val, val & WISR_RRS,
+				 TIMEOUT_US);
+	if (ret) {
+		dev_dbg(dev, "!TIMEOUT! waiting REGU\n");
+		return ret;
+	}
+
+	/* Enable the DSI PLL & wait for its lock */
+	dsi_set(dsi, DSI_WRPCR, WRPCR_PLLEN);
+	ret = readl_poll_timeout(dsi->pdata.base + DSI_WISR, val, val & WISR_PLLLS,
+				 TIMEOUT_US);
+	if (ret) {
+		dev_dbg(dev, "!TIMEOUT! waiting PLL\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+static void dsi_phy_post_set_mode(void *priv_data, unsigned long mode_flags)
+{
+	struct stm32_dsi_priv *dsi = priv_data;
+	struct device *dev = dsi->dev;
+
+	dev_dbg(dev, "Set mode %p enable %ld\n", dsi,
+		mode_flags & MIPI_DSI_MODE_VIDEO);
+
+	if (!dsi)
+		return;
+
+	/*
+	 * DSI wrapper must be enabled in video mode & disabled in command mode.
+	 * If wrapper is enabled in command mode, the display controller
+	 * register access will hang.
+	 */
+
+	if (mode_flags & MIPI_DSI_MODE_VIDEO)
+		dsi_set(dsi, DSI_WCR, WCR_DSIEN);
+	else
+		dsi_clear(dsi, DSI_WCR, WCR_DSIEN);
+}
+
+static void dsi_phy_post_power_on(void *priv_data)
+{
+	dsi_phy_post_set_mode(priv_data, MIPI_DSI_MODE_VIDEO);
+}
+
+static void dsi_phy_post_power_off(void *priv_data)
+{
+	dsi_phy_post_set_mode(priv_data, 0);
+}
+
+static int dsi_get_lane_mbps(void *priv_data, const struct drm_display_mode *mode,
+			     unsigned long mode_flags, u32 lanes, u32 format,
+			     unsigned int *lane_mbps)
+{
+	struct stm32_dsi_priv *dsi = priv_data;
+	struct device *dev = dsi->dev;
+	int idf, ndiv, odf, pll_in_khz, pll_out_khz;
+	int ret, bpp;
+	u32 val;
+
+	/* Update lane capabilities according to hw version */
+	dsi->lane_min_kbps = LANE_MIN_KBPS;
+	dsi->lane_max_kbps = LANE_MAX_KBPS;
+	if (dsi->hw_version == HWVER_131) {
+		dsi->lane_min_kbps *= 2;
+		dsi->lane_max_kbps *= 2;
+	}
+
+	pll_in_khz = dsi->pllref_clk / 1000;
+
+	/* Compute requested pll out */
+	bpp = mipi_dsi_pixel_format_to_bpp(format);
+	pll_out_khz = mode->clock * bpp / lanes;
+	/* Add 20% to pll out to be higher than pixel bw (burst mode only) */
+	pll_out_khz = (pll_out_khz * 12) / 10;
+	if (pll_out_khz > dsi->lane_max_kbps) {
+		pll_out_khz = dsi->lane_max_kbps;
+		dev_warn(dev, "Warning max phy mbps is used\n");
+	}
+	if (pll_out_khz < dsi->lane_min_kbps) {
+		pll_out_khz = dsi->lane_min_kbps;
+		dev_warn(dev, "Warning min phy mbps is used\n");
+	}
+
+	/* Compute best pll parameters */
+	idf = 0;
+	ndiv = 0;
+	odf = 0;
+	ret = dsi_pll_get_params(dsi, pll_in_khz, pll_out_khz,
+				 &idf, &ndiv, &odf);
+	if (ret) {
+		dev_err(dev, "Warning dsi_pll_get_params(): bad params\n");
+		return ret;
+	}
+
+	/* Get the adjusted pll out value */
+	pll_out_khz = dsi_pll_get_clkout_khz(pll_in_khz, idf, ndiv, odf);
+
+	/* Set the PLL division factors */
+	dsi_update_bits(dsi, DSI_WRPCR,	WRPCR_NDIV | WRPCR_IDF | WRPCR_ODF,
+			(ndiv << 2) | (idf << 11) | ((ffs(odf) - 1) << 16));
+
+	/* Compute uix4 & set the bit period in high-speed mode */
+	val = 4000000 / pll_out_khz;
+	dsi_update_bits(dsi, DSI_WPCR0, WPCR0_UIX4, val);
+
+	/* Select video mode by resetting DSIM bit */
+	dsi_clear(dsi, DSI_WCFGR, WCFGR_DSIM);
+
+	/* Select the color coding */
+	dsi_update_bits(dsi, DSI_WCFGR, WCFGR_COLMUX,
+			dsi_color_from_mipi(format) << 1);
+
+	*lane_mbps = pll_out_khz / 1000;
+
+	dev_dbg(dev, "pll_in %ukHz pll_out %ukHz lane_mbps %uMHz\n",
+		pll_in_khz, pll_out_khz, *lane_mbps);
+
+	return 0;
+}
+
+#define DSI_PHY_DELAY(fp, vp, mbps) DIV_ROUND_UP((fp) * (mbps) + 1000 * (vp), 8000)
+
+static int
+dsi_phy_get_timing(void *priv_data, unsigned int lane_mbps,
+		   struct dw_mipi_dsi_dphy_timing *timing)
+{
+	/*
+	 * From STM32MP157 datasheet, valid for STM32F469, STM32F7x9, STM32H747
+	 * phy_clkhs2lp_time = (272+136*UI)/(8*UI)
+	 * phy_clklp2hs_time = (512+40*UI)/(8*UI)
+	 * phy_hs2lp_time = (192+64*UI)/(8*UI)
+	 * phy_lp2hs_time = (256+32*UI)/(8*UI)
+	 */
+	timing->clk_hs2lp = DSI_PHY_DELAY(272, 136, lane_mbps);
+	timing->clk_lp2hs = DSI_PHY_DELAY(512, 40, lane_mbps);
+	timing->data_hs2lp = DSI_PHY_DELAY(192, 64, lane_mbps);
+	timing->data_lp2hs = DSI_PHY_DELAY(256, 32, lane_mbps);
+
+	return 0;
+}
+
+static const struct dw_mipi_dsi_phy_ops dsi_stm_phy_ops = {
+	.init = dsi_phy_init,
+	.get_lane_mbps = dsi_get_lane_mbps,
+	.power_on = dsi_phy_post_power_on,
+	.power_off = dsi_phy_post_power_off,
+	.get_timing = dsi_phy_get_timing,
+};
+
+static int stm32_dsi_probe(struct device *dev)
+{
+	struct stm32_dsi_priv *priv;
+	struct dw_mipi_dsi *dmd;
+	struct resource *res;
+	struct reset_control *rst;
+	struct clk *clk;
+	int ret;
+
+	priv = xzalloc(sizeof(*priv));
+
+	res = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(res))
+		return PTR_ERR(res);
+
+	priv->vdd_reg = regulator_get(dev, "phy-dsi");
+	if (IS_ERR(priv->vdd_reg))
+		return dev_errp_probe(dev, priv->vdd_reg,
+				      "getting phy dsi supply\n");
+
+	ret = regulator_enable(priv->vdd_reg);
+	if (ret)
+		return ret;
+
+	clk = clk_get_enabled(dev, "pclk");
+	if (IS_ERR(clk)) {
+		ret = dev_errp_probe(dev, clk,
+				     "getting peripheral clock get\n");
+		goto err_reg;
+	}
+
+	clk = clk_get(dev, "ref");
+	if (IS_ERR(clk)) {
+		ret = dev_errp_probe(dev, clk,
+				     "getting pll reference clock get\n");
+		goto err_reg;
+	}
+
+	priv->pllref_clk = clk_get_rate(clk);
+
+	rst = reset_control_get(dev, NULL);
+	if (IS_ERR(rst)) {
+		dev_err(dev, "missing dsi hardware reset\n");
+		goto err_clk;
+	}
+
+	/* Reset */
+	reset_control_deassert(rst);
+
+	priv->dev = dev;
+	priv->pdata.base = IOMEM(res->start);
+	priv->pdata.max_data_lanes = 2;
+	priv->pdata.phy_ops = &dsi_stm_phy_ops;
+	priv->pdata.priv_data = priv;
+	dev_set_drvdata(dev, priv);
+
+	dmd = dw_mipi_dsi_bind(dev, &priv->pdata);
+	if (IS_ERR(dmd)) {
+		ret = dev_errp_probe(dev, dmd, "failed to bind\n");
+		goto err_clk;
+	}
+
+	/* check hardware version */
+	priv->hw_version = dsi_read(priv, DSI_VERSION) & VERSION;
+	if (priv->hw_version != HWVER_130 &&
+	    priv->hw_version != HWVER_131) {
+		dev_err(dev, "DSI version 0x%x not supported\n", priv->hw_version);
+		ret = -ENODEV;
+		goto err_clk;
+	}
+
+	return 0;
+err_clk:
+	clk_disable(clk);
+err_reg:
+	regulator_disable(priv->vdd_reg);
+
+	return ret;
+}
+
+static const struct of_device_id stm32_dsi_dt_ids[] = {
+	{ .compatible = "st,stm32-dsi" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, stm32_dsi_dt_ids);
+
+struct driver stm32_dsi_driver = {
+	.name		= "stm32-display-dsi",
+	.probe		= stm32_dsi_probe,
+	.of_match_table = stm32_dsi_dt_ids,
+};
+device_platform_driver(stm32_dsi_driver);
-- 
2.39.5



