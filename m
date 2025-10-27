Delivery-date: Mon, 27 Oct 2025 08:02:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDHFm-00CFm1-0o
	for lore@lore.pengutronix.de;
	Mon, 27 Oct 2025 08:02:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDHFl-0003pD-1a
	for lore@pengutronix.de; Mon, 27 Oct 2025 08:02:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fnNIMQHgGTwK8+1UVU2RPF1wNdlzBXOP3a/E6ETjUa4=; b=ucC3uH9+2BM6RYNEixcXigRRvA
	fZ2aGenwQ7X47F+PIgwsUWFRogwe9/4azlWf5zKlvwsWUyHiD1Zqfu5SEFP9zKuFIm1qJlcfd0pRB
	5fXFFhfvvuVw0Yegpucp5SQ0NuG33MvZ0TFY1VNRVOlHGdqJsx/Re3gfTIAvn/z9oUBQspk/UI4JN
	pt1DvboHRVcejJTf5Ua1jP1p6QYgoGZTdHqHFq4d0zai8BJnylvgl99EsOFhu61Oma+7aD8kTTsPB
	flmALMtVVI9+WORTBu5iLxSL0qe1drn70wf/30x8EQQODWmBIB7/OKFv35nqmFLI7kiMXtxyVvU4a
	yL9/xQoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDHFG-0000000DFAE-2lAq;
	Mon, 27 Oct 2025 07:02:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDHFC-0000000DF7t-2lkw
	for barebox@lists.infradead.org;
	Mon, 27 Oct 2025 07:02:20 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vDHFA-0003Rs-Vu; Mon, 27 Oct 2025 08:02:17 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 27 Oct 2025 08:00:53 +0100
Message-ID: <20251027070214.2425834-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251027070214.2425834-1-a.fatoum@barebox.org>
References: <20251027070214.2425834-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_000219_007855_6A1CFB63 
X-CRM114-Status: GOOD (  25.72  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] phy: add support for generic MIPI D-PHY
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

These function will be required for the Rockchip MIPI-DSI support.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/phy/Kconfig               |   8 +
 drivers/phy/Makefile              |   1 +
 drivers/phy/phy-core-mipi-dphy.c  | 187 +++++++++++++++++++
 include/linux/phy/phy-mipi-dphy.h | 287 ++++++++++++++++++++++++++++++
 include/linux/phy/phy.h           |   1 +
 include/linux/time64.h            |  17 ++
 6 files changed, 501 insertions(+)
 create mode 100644 drivers/phy/phy-core-mipi-dphy.c
 create mode 100644 include/linux/phy/phy-mipi-dphy.h
 create mode 100644 include/linux/time64.h

diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
index 52c792914909..6b3364808825 100644
--- a/drivers/phy/Kconfig
+++ b/drivers/phy/Kconfig
@@ -16,6 +16,14 @@ menuconfig GENERIC_PHY
 
 if GENERIC_PHY
 
+config GENERIC_PHY_MIPI_DPHY
+	bool
+	help
+	  Generic MIPI D-PHY support.
+
+	  Provides a number of helpers a core functions for MIPI D-PHY
+	  drivers to us.
+
 config USB_NOP_XCEIV
 	bool "Generic USB nop phy"
 	help
diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
index 37e5f32d6a15..0f903c28f4da 100644
--- a/drivers/phy/Makefile
+++ b/drivers/phy/Makefile
@@ -8,3 +8,4 @@ obj-$(CONFIG_USB_NOP_XCEIV)		+= usb-nop-xceiv.o
 obj-y					+= freescale/
 obj-$(CONFIG_PHY_STM32_USBPHYC) 	+= phy-stm32-usbphyc.o
 obj-y					+= rockchip/
+obj-$(CONFIG_GENERIC_PHY_MIPI_DPHY)	+= phy-core-mipi-dphy.o
diff --git a/drivers/phy/phy-core-mipi-dphy.c b/drivers/phy/phy-core-mipi-dphy.c
new file mode 100644
index 000000000000..f4956a417a47
--- /dev/null
+++ b/drivers/phy/phy-core-mipi-dphy.c
@@ -0,0 +1,187 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2013 NVIDIA Corporation
+ * Copyright (C) 2018 Cadence Design Systems Inc.
+ */
+
+#include <linux/errno.h>
+#include <linux/export.h>
+#include <linux/kernel.h>
+#include <linux/time64.h>
+
+#include <linux/phy/phy.h>
+#include <linux/phy/phy-mipi-dphy.h>
+
+/*
+ * Minimum D-PHY timings based on MIPI D-PHY specification. Derived
+ * from the valid ranges specified in Section 6.9, Table 14, Page 41
+ * of the D-PHY specification (v1.2).
+ */
+static int phy_mipi_dphy_calc_config(unsigned long pixel_clock,
+				     unsigned int bpp,
+				     unsigned int lanes,
+				     unsigned long long hs_clk_rate,
+				     struct phy_configure_opts_mipi_dphy *cfg)
+{
+	unsigned long long ui;
+
+	if (!cfg)
+		return -EINVAL;
+
+	if (!hs_clk_rate) {
+		hs_clk_rate = pixel_clock * bpp;
+		do_div(hs_clk_rate, lanes);
+	}
+
+	ui = ALIGN(PSEC_PER_SEC, hs_clk_rate);
+	do_div(ui, hs_clk_rate);
+
+	cfg->clk_miss = 0;
+	cfg->clk_post = 60000 + 52 * ui;
+	cfg->clk_pre = 8;
+	cfg->clk_prepare = 38000;
+	cfg->clk_settle = 95000;
+	cfg->clk_term_en = 0;
+	cfg->clk_trail = 60000;
+	cfg->clk_zero = 262000;
+	cfg->d_term_en = 0;
+	cfg->eot = 0;
+	cfg->hs_exit = 100000;
+	cfg->hs_prepare = 40000 + 4 * ui;
+	cfg->hs_zero = 105000 + 6 * ui;
+	cfg->hs_settle = 85000 + 6 * ui;
+	cfg->hs_skip = 40000;
+
+	/*
+	 * The MIPI D-PHY specification (Section 6.9, v1.2, Table 14, Page 40)
+	 * contains this formula as:
+	 *
+	 *     T_HS-TRAIL = max(n * 8 * ui, 60 + n * 4 * ui)
+	 *
+	 * where n = 1 for forward-direction HS mode and n = 4 for reverse-
+	 * direction HS mode. There's only one setting and this function does
+	 * not parameterize on anything other that ui, so this code will
+	 * assumes that reverse-direction HS mode is supported and uses n = 4.
+	 */
+	cfg->hs_trail = max(4 * 8 * ui, 60000 + 4 * 4 * ui);
+
+	cfg->init = 100;
+	cfg->lpx = 50000;
+	cfg->ta_get = 5 * cfg->lpx;
+	cfg->ta_go = 4 * cfg->lpx;
+	cfg->ta_sure = cfg->lpx;
+	cfg->wakeup = 1000;
+
+	cfg->hs_clk_rate = hs_clk_rate;
+	cfg->lanes = lanes;
+
+	return 0;
+}
+
+int phy_mipi_dphy_get_default_config(unsigned long pixel_clock,
+				     unsigned int bpp,
+				     unsigned int lanes,
+				     struct phy_configure_opts_mipi_dphy *cfg)
+{
+	return phy_mipi_dphy_calc_config(pixel_clock, bpp, lanes, 0, cfg);
+
+}
+EXPORT_SYMBOL(phy_mipi_dphy_get_default_config);
+
+int phy_mipi_dphy_get_default_config_for_hsclk(unsigned long long hs_clk_rate,
+					       unsigned int lanes,
+					       struct phy_configure_opts_mipi_dphy *cfg)
+{
+	if (!hs_clk_rate)
+		return -EINVAL;
+
+	return phy_mipi_dphy_calc_config(0, 0, lanes, hs_clk_rate, cfg);
+
+}
+EXPORT_SYMBOL(phy_mipi_dphy_get_default_config_for_hsclk);
+
+/*
+ * Validate D-PHY configuration according to MIPI D-PHY specification
+ * (v1.2, Section Section 6.9 "Global Operation Timing Parameters").
+ */
+int phy_mipi_dphy_config_validate(struct phy_configure_opts_mipi_dphy *cfg)
+{
+	unsigned long long ui;
+
+	if (!cfg)
+		return -EINVAL;
+
+	ui = ALIGN(PSEC_PER_SEC, cfg->hs_clk_rate);
+	do_div(ui, cfg->hs_clk_rate);
+
+	if (cfg->clk_miss > 60000)
+		return -EINVAL;
+
+	if (cfg->clk_post < (60000 + 52 * ui))
+		return -EINVAL;
+
+	if (cfg->clk_pre < 8)
+		return -EINVAL;
+
+	if (cfg->clk_prepare < 38000 || cfg->clk_prepare > 95000)
+		return -EINVAL;
+
+	if (cfg->clk_settle < 95000 || cfg->clk_settle > 300000)
+		return -EINVAL;
+
+	if (cfg->clk_term_en > 38000)
+		return -EINVAL;
+
+	if (cfg->clk_trail < 60000)
+		return -EINVAL;
+
+	if ((cfg->clk_prepare + cfg->clk_zero) < 300000)
+		return -EINVAL;
+
+	if (cfg->d_term_en > (35000 + 4 * ui))
+		return -EINVAL;
+
+	if (cfg->eot > (105000 + 12 * ui))
+		return -EINVAL;
+
+	if (cfg->hs_exit < 100000)
+		return -EINVAL;
+
+	if (cfg->hs_prepare < (40000 + 4 * ui) ||
+	    cfg->hs_prepare > (85000 + 6 * ui))
+		return -EINVAL;
+
+	if ((cfg->hs_prepare + cfg->hs_zero) < (145000 + 10 * ui))
+		return -EINVAL;
+
+	if ((cfg->hs_settle < (85000 + 6 * ui)) ||
+	    (cfg->hs_settle > (145000 + 10 * ui)))
+		return -EINVAL;
+
+	if (cfg->hs_skip < 40000 || cfg->hs_skip > (55000 + 4 * ui))
+		return -EINVAL;
+
+	if (cfg->hs_trail < max(8 * ui, 60000 + 4 * ui))
+		return -EINVAL;
+
+	if (cfg->init < 100)
+		return -EINVAL;
+
+	if (cfg->lpx < 50000)
+		return -EINVAL;
+
+	if (cfg->ta_get != (5 * cfg->lpx))
+		return -EINVAL;
+
+	if (cfg->ta_go != (4 * cfg->lpx))
+		return -EINVAL;
+
+	if (cfg->ta_sure < cfg->lpx || cfg->ta_sure > (2 * cfg->lpx))
+		return -EINVAL;
+
+	if (cfg->wakeup < 1000)
+		return -EINVAL;
+
+	return 0;
+}
+EXPORT_SYMBOL(phy_mipi_dphy_config_validate);
diff --git a/include/linux/phy/phy-mipi-dphy.h b/include/linux/phy/phy-mipi-dphy.h
new file mode 100644
index 000000000000..1ac128d78dfe
--- /dev/null
+++ b/include/linux/phy/phy-mipi-dphy.h
@@ -0,0 +1,287 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2018 Cadence Design Systems Inc.
+ */
+
+#ifndef __PHY_MIPI_DPHY_H_
+#define __PHY_MIPI_DPHY_H_
+
+/**
+ * struct phy_configure_opts_mipi_dphy - MIPI D-PHY configuration set
+ *
+ * This structure is used to represent the configuration state of a
+ * MIPI D-PHY phy.
+ */
+struct phy_configure_opts_mipi_dphy {
+	/**
+	 * @clk_miss:
+	 *
+	 * Timeout, in picoseconds, for receiver to detect absence of
+	 * Clock transitions and disable the Clock Lane HS-RX.
+	 *
+	 * Maximum value: 60000 ps
+	 */
+	unsigned int		clk_miss;
+
+	/**
+	 * @clk_post:
+	 *
+	 * Time, in picoseconds, that the transmitter continues to
+	 * send HS clock after the last associated Data Lane has
+	 * transitioned to LP Mode. Interval is defined as the period
+	 * from the end of @hs_trail to the beginning of @clk_trail.
+	 *
+	 * Minimum value: 60000 ps + 52 * @hs_clk_rate period in ps
+	 */
+	unsigned int		clk_post;
+
+	/**
+	 * @clk_pre:
+	 *
+	 * Time, in UI, that the HS clock shall be driven by
+	 * the transmitter prior to any associated Data Lane beginning
+	 * the transition from LP to HS mode.
+	 *
+	 * Minimum value: 8 UI
+	 */
+	unsigned int		clk_pre;
+
+	/**
+	 * @clk_prepare:
+	 *
+	 * Time, in picoseconds, that the transmitter drives the Clock
+	 * Lane LP-00 Line state immediately before the HS-0 Line
+	 * state starting the HS transmission.
+	 *
+	 * Minimum value: 38000 ps
+	 * Maximum value: 95000 ps
+	 */
+	unsigned int		clk_prepare;
+
+	/**
+	 * @clk_settle:
+	 *
+	 * Time interval, in picoseconds, during which the HS receiver
+	 * should ignore any Clock Lane HS transitions, starting from
+	 * the beginning of @clk_prepare.
+	 *
+	 * Minimum value: 95000 ps
+	 * Maximum value: 300000 ps
+	 */
+	unsigned int		clk_settle;
+
+	/**
+	 * @clk_term_en:
+	 *
+	 * Time, in picoseconds, for the Clock Lane receiver to enable
+	 * the HS line termination.
+	 *
+	 * Maximum value: 38000 ps
+	 */
+	unsigned int		clk_term_en;
+
+	/**
+	 * @clk_trail:
+	 *
+	 * Time, in picoseconds, that the transmitter drives the HS-0
+	 * state after the last payload clock bit of a HS transmission
+	 * burst.
+	 *
+	 * Minimum value: 60000 ps
+	 */
+	unsigned int		clk_trail;
+
+	/**
+	 * @clk_zero:
+	 *
+	 * Time, in picoseconds, that the transmitter drives the HS-0
+	 * state prior to starting the Clock.
+	 */
+	unsigned int		clk_zero;
+
+	/**
+	 * @d_term_en:
+	 *
+	 * Time, in picoseconds, for the Data Lane receiver to enable
+	 * the HS line termination.
+	 *
+	 * Maximum value: 35000 ps + 4 * @hs_clk_rate period in ps
+	 */
+	unsigned int		d_term_en;
+
+	/**
+	 * @eot:
+	 *
+	 * Transmitted time interval, in picoseconds, from the start
+	 * of @hs_trail or @clk_trail, to the start of the LP- 11
+	 * state following a HS burst.
+	 *
+	 * Maximum value: 105000 ps + 12 * @hs_clk_rate period in ps
+	 */
+	unsigned int		eot;
+
+	/**
+	 * @hs_exit:
+	 *
+	 * Time, in picoseconds, that the transmitter drives LP-11
+	 * following a HS burst.
+	 *
+	 * Minimum value: 100000 ps
+	 */
+	unsigned int		hs_exit;
+
+	/**
+	 * @hs_prepare:
+	 *
+	 * Time, in picoseconds, that the transmitter drives the Data
+	 * Lane LP-00 Line state immediately before the HS-0 Line
+	 * state starting the HS transmission.
+	 *
+	 * Minimum value: 40000 ps + 4 * @hs_clk_rate period in ps
+	 * Maximum value: 85000 ps + 6 * @hs_clk_rate period in ps
+	 */
+	unsigned int		hs_prepare;
+
+	/**
+	 * @hs_settle:
+	 *
+	 * Time interval, in picoseconds, during which the HS receiver
+	 * shall ignore any Data Lane HS transitions, starting from
+	 * the beginning of @hs_prepare.
+	 *
+	 * Minimum value: 85000 ps + 6 * @hs_clk_rate period in ps
+	 * Maximum value: 145000 ps + 10 * @hs_clk_rate period in ps
+	 */
+	unsigned int		hs_settle;
+
+	/**
+	 * @hs_skip:
+	 *
+	 * Time interval, in picoseconds, during which the HS-RX
+	 * should ignore any transitions on the Data Lane, following a
+	 * HS burst. The end point of the interval is defined as the
+	 * beginning of the LP-11 state following the HS burst.
+	 *
+	 * Minimum value: 40000 ps
+	 * Maximum value: 55000 ps + 4 * @hs_clk_rate period in ps
+	 */
+	unsigned int		hs_skip;
+
+	/**
+	 * @hs_trail:
+	 *
+	 * Time, in picoseconds, that the transmitter drives the
+	 * flipped differential state after last payload data bit of a
+	 * HS transmission burst
+	 *
+	 * Minimum value: max(8 * @hs_clk_rate period in ps,
+	 *		      60000 ps + 4 * @hs_clk_rate period in ps)
+	 */
+	unsigned int		hs_trail;
+
+	/**
+	 * @hs_zero:
+	 *
+	 * Time, in picoseconds, that the transmitter drives the HS-0
+	 * state prior to transmitting the Sync sequence.
+	 */
+	unsigned int		hs_zero;
+
+	/**
+	 * @init:
+	 *
+	 * Time, in microseconds for the initialization period to
+	 * complete.
+	 *
+	 * Minimum value: 100 us
+	 */
+	unsigned int		init;
+
+	/**
+	 * @lpx:
+	 *
+	 * Transmitted length, in picoseconds, of any Low-Power state
+	 * period.
+	 *
+	 * Minimum value: 50000 ps
+	 */
+	unsigned int		lpx;
+
+	/**
+	 * @ta_get:
+	 *
+	 * Time, in picoseconds, that the new transmitter drives the
+	 * Bridge state (LP-00) after accepting control during a Link
+	 * Turnaround.
+	 *
+	 * Value: 5 * @lpx
+	 */
+	unsigned int		ta_get;
+
+	/**
+	 * @ta_go:
+	 *
+	 * Time, in picoseconds, that the transmitter drives the
+	 * Bridge state (LP-00) before releasing control during a Link
+	 * Turnaround.
+	 *
+	 * Value: 4 * @lpx
+	 */
+	unsigned int		ta_go;
+
+	/**
+	 * @ta_sure:
+	 *
+	 * Time, in picoseconds, that the new transmitter waits after
+	 * the LP-10 state before transmitting the Bridge state
+	 * (LP-00) during a Link Turnaround.
+	 *
+	 * Minimum value: @lpx
+	 * Maximum value: 2 * @lpx
+	 */
+	unsigned int		ta_sure;
+
+	/**
+	 * @wakeup:
+	 *
+	 * Time, in microseconds, that a transmitter drives a Mark-1
+	 * state prior to a Stop state in order to initiate an exit
+	 * from ULPS.
+	 *
+	 * Minimum value: 1000 us
+	 */
+	unsigned int		wakeup;
+
+	/**
+	 * @hs_clk_rate:
+	 *
+	 * Clock rate, in Hertz, of the high-speed clock.
+	 */
+	unsigned long		hs_clk_rate;
+
+	/**
+	 * @lp_clk_rate:
+	 *
+	 * Clock rate, in Hertz, of the low-power clock.
+	 */
+	unsigned long		lp_clk_rate;
+
+	/**
+	 * @lanes:
+	 *
+	 * Number of active, consecutive, data lanes, starting from
+	 * lane 0, used for the transmissions.
+	 */
+	unsigned char		lanes;
+};
+
+int phy_mipi_dphy_get_default_config(unsigned long pixel_clock,
+				     unsigned int bpp,
+				     unsigned int lanes,
+				     struct phy_configure_opts_mipi_dphy *cfg);
+int phy_mipi_dphy_get_default_config_for_hsclk(unsigned long long hs_clk_rate,
+					       unsigned int lanes,
+					       struct phy_configure_opts_mipi_dphy *cfg);
+int phy_mipi_dphy_config_validate(struct phy_configure_opts_mipi_dphy *cfg);
+
+#endif /* __PHY_MIPI_DPHY_H_ */
diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
index dd28c6eeefc1..b4a99c9c7037 100644
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -17,6 +17,7 @@
 #include <linux/err.h>
 #include <of.h>
 #include <regulator.h>
+#include <linux/phy/phy-mipi-dphy.h>
 
 struct phy;
 
diff --git a/include/linux/time64.h b/include/linux/time64.h
new file mode 100644
index 000000000000..720a7eb9d761
--- /dev/null
+++ b/include/linux/time64.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __LINUX_TIME64_H
+#define __LINUX_TIME64_H
+
+#define PSEC_PER_NSEC	1000L
+
+/* Parameters used to convert the timespec values: */
+#define MSEC_PER_SEC	1000L
+#define USEC_PER_MSEC	1000L
+#define NSEC_PER_USEC	1000L
+#define NSEC_PER_MSEC	1000000L
+#define USEC_PER_SEC	1000000L
+#define NSEC_PER_SEC	1000000000L
+#define PSEC_PER_SEC	1000000000000LL
+#define FSEC_PER_SEC	1000000000000000LL
+
+#endif /* __LINUX_TIME64_H */
-- 
2.47.3



