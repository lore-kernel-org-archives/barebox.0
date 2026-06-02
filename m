Delivery-date: Tue, 02 Jun 2026 06:11:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUGTN-001SWX-2W
	for lore@lore.pengutronix.de;
	Tue, 02 Jun 2026 06:11:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUGTM-0000uR-An
	for lore@pengutronix.de; Tue, 02 Jun 2026 06:11:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pf2J2XoppXWO5Sp0YK5U9mk4NkZytHIh3NR9oDAMMLc=; b=rj9jXe1e+oa/9SjaK3oiiSJvGN
	xpSfVUJFDfUyF0gaSSEZf0qxOKlkhNo7DfH5kyZEk90I+e7DyVA3yxuuJFTaa1K0T4Zs1ZJ5cPyJW
	BWU4gp8TgoHSAoVIDSNsQickP3k0NOUU/OchRbv8Fbp/+MSOm90PoWqmRnPdjJ2Rsnu1gyXjhV0Th
	Dpn8lDafS61abubrKQRsxoqnjnZz7mNV0N7NX6qisVshPOeGfCs9wFL4bYLrax9Zk6JV1mIe43aNB
	4fNfBaxjZ7xvOytVCbpEkOMXICicEIILUVo5YYGY1kjDDlFx03aqHTOGaVf51DqhrVn+c+Gp3KN5+
	54hTewUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUGSA-0000000CGIX-1xrm;
	Tue, 02 Jun 2026 04:10:10 +0000
Received: from mail-francesouthazon11011000.outbound.protection.outlook.com ([40.107.130.0] helo=MRWPR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUGS6-0000000CGEb-0zYE
	for barebox@lists.infradead.org;
	Tue, 02 Jun 2026 04:10:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hqYt5tknR7y1QVwytyA/XRsFtpEEkXmvctdidnhXS/iSLiAjuklixqt1lxB3zhZVm78LNqN9b2AZhqvyi5pbyAFHcj76M6Lw3PBymBEJkBg72sX2qs/0L02LN/EsISBSqe/gpkQN76ebJ+1h/mGpxIXlIBNc0Tx7xibHH0hM1HMrc2RuVv1ch7Yzx2+nypNdBEDKCl8L4uBrNpF6K03NJLSCfZYPqpIEXMxSyr/UiNexdvaHX45l3RBHAeOxX+SNl0R32sEagI2NaNLQBAGAFvaiPnal8jXeU0vGhT8nRcfnCdlIkAyup/vTntIXVk+32rQwrckm5IJDvVflxkD1Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pf2J2XoppXWO5Sp0YK5U9mk4NkZytHIh3NR9oDAMMLc=;
 b=AgNKn9QIgodNWavqWK8P4Nj3vbPp0ovYVENbONGzuuTZ5kGIQT5eCu4Kcoeq82nrO8L/dTLWmOPxiwRzPwbEspY9CJD4x1baNodGfT6uRZJ81hpue5Zhqo9HJ9ED6tqWAsn2PIIdktXkGpbqFGsmqoQs46SMTnVmJd3nzFSuGm1LQRAiq5NGVmuoZ8WJd8CjzY8GGM8HpAtHAKhK6iFm5qO8ja/cnYUs7y+WMVoxeuJ6UV8MAgrGFsMnovX1V3R9KvbdYls4+K/CjXKj//RvV0ZrKYXZp7yh0sIpXW3U9Ed1DLYs6mNPDzg/jTVqSbtWHx8PBSS9EcmrokGXjCZojg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pf2J2XoppXWO5Sp0YK5U9mk4NkZytHIh3NR9oDAMMLc=;
 b=acw+pphP2B2/2QRBWmDm/G343Y64Wx6nwAv39pkykF9PYTEDGuYGFrfd6kMvupe+jSzKMdiXswFGOu/PT1qNrYc7g7YnBxSLcWGECzPnnKGNoX1eI3tOftE+WoDqktiKZonsCtV/3/rjJniFQC2iDvusyyzBmhW8scnYbySkuys=
Received: from DU7P195CA0006.EURP195.PROD.OUTLOOK.COM (2603:10a6:10:54d::29)
 by VI0PR06MB9980.eurprd06.prod.outlook.com (2603:10a6:800:2a6::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Tue, 2 Jun 2026
 04:09:59 +0000
Received: from DB5PEPF00014B92.eurprd02.prod.outlook.com
 (2603:10a6:10:54d:cafe::6a) by DU7P195CA0006.outlook.office365.com
 (2603:10a6:10:54d::29) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.71.16 via Frontend Transport; Tue, 2
 Jun 2026 04:09:58 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.99)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 DB5PEPF00014B92.mail.protection.outlook.com (10.167.8.230) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.92.5 via Frontend Transport; Tue, 2 Jun 2026 04:09:58 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Tue, 2 Jun 2026 06:09:58 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: thomas.haemmerle@leica-geosystems.com
Date: Tue,  2 Jun 2026 04:09:51 +0000
Message-ID: <20260602040953.1060278-6-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260602040953.1060278-1-johannes.schneider@leica-geosystems.com>
References: <20260602040953.1060278-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 02 Jun 2026 04:09:58.0586 (UTC) FILETIME=[AD2599A0:01DCF245]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB5PEPF00014B92:EE_|VI0PR06MB9980:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: c9a8e621-9eb4-43f2-ae9b-08dec05ccfbc
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|36860700016|82310400026|1800799024|376014|3023799007|56012099006|22082099003|18002099003|11063799006;
X-Microsoft-Antispam-Message-Info: 3vtN4Q1Qxy6fqTk6PDYK3R0XZz3Am7F6+5AVyUupNo9DllQ3Ze8UNanC3DImOKujeXPWPAe8maPU0FhiQTWXQ0oju1+EQpPYlSE9D5pJSTyNiU6A1SHt9fObE+ySrgCRPjVWrpvqvKuPq18lW8wv4V0QFvHrm/yVNlMIb6cHaoZx+0shSrb3kkHDfWa3wyf3VJqvOpG9YD+p9jgbT/0TS0VW5s4Z9fw0gdpDJllSeoMe5Qws/gQJeg+3QvpSZhOgyc209yXwzFeUI7IVrlGe2bKv12aALTgyj+vR3acFMQC9Ii3aRAXvA+YECswnkeOlq4YHVYfckRXLpQ2Erfy0Zfl04hublJOZ/VO7WI0B/sFgKbiZRlnLZPUlphLF4WOLqiyNKTfAu8Q9P4WnAYv5UVxBm92+xYUcpQwp2+iaympNe9LQqRtvE9cWX6QROWzYOwuvTaYdUztBkvlxRRxnD8ajZrv90EoBAOriEPQr9qB8WNfnVVOdx4AkWHhQBgrJWF5FY7bMC6d1QqyqU+zYurTStZJqWSHfaJdx5FQFgxbbiiCQr5htnPavez3pknEywP8qdebx79/WTdPnpwyZugZVkGFk+DFgkoQtRf4CVlqmpL6gy1vjxMcLNwqSRp1XkGm/nwOMdqiQ2gmZAtf1LRT3iHS57nxe+i9kOosaMxp6ikqm8SlTIPb34te9kWETdoODZez4SQg+oQmnsUHX2w==
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(36860700016)(82310400026)(1800799024)(376014)(3023799007)(56012099006)(22082099003)(18002099003)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: ji01NhA6hBWVU6eEGPbguBJagsEyanHbmKuuTJ2VYDDoRomT6FOADfUJrBoSA00QHWLmG/Sm8M7WU/ieGu63rbyJNclZfQFpkXxbIuwWnrZbVhGws+jCdTHimz7XIp0VOS7tMMVvOjH9tfaZDPcq/V6SYGClY9rviWfb7/HPMAwCIWLcdNM5gm+4jEgikzoREUKDVwS5XY2qP6Egj8bH5GDp5qWaPiFCsok51T2jr1Kzr70J4PC/jyzmakwXr2lnQOcFwW8NxOVu2/2Pn6+j6lfr9Zz03dgOGFOC+10G4FywDGRmGT+FD8xVSbwdzhUfwp6So55BjguTEncY3n99XwaTD16ZmtsafoToYAidP8xrXw8H6KZ9cEEbp7t9heKUMbChBLtNWWfYeFlnMi5bHEB2BVjncd/TfvW4qmO3MCg2OMlXEpoEuI0CJ1/t7nv1
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2026 04:09:58.7335
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c9a8e621-9eb4-43f2-ae9b-08dec05ccfbc
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: DB5PEPF00014B92.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR06MB9980
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_211006_657870_C8D2B7BF 
X-CRM114-Status: GOOD (  23.15  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/6] video: add generic panel-lvds driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>

Barebox has no driver for "panel-lvds" compatible DT nodes, which are used by
all i.MX8M board display pipelines to describe LVDS panels with a panel-timing
subnode. Without this driver the VPL chain in fsl-ldb terminates before it can
query video modes, and the LCDIF2 framebuffer driver cannot determine the active
display resolution, so no framebuffer is allocated and no splash is shown.

The driver reads one video mode from the panel-timing subnode, enables
an optional power-supply regulator and enable GPIO on VPL_ENABLE, and
controls an optional backlight device.  Closely follows the Linux
drivers/gpu/drm/panel/panel-lvds.c behavior.

Assisted-by: Claude:claude-sonnet-4-6
Signed-of-by: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>
---
 drivers/video/Kconfig      |   9 ++
 drivers/video/Makefile     |   1 +
 drivers/video/panel-lvds.c | 175 +++++++++++++++++++++++++++++++++++++
 3 files changed, 185 insertions(+)
 create mode 100644 drivers/video/panel-lvds.c

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index fbcec6fd67..964c2c8a29 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -204,6 +204,15 @@ config DRIVER_VIDEO_IMX_LCDIF
 	  Supports the "fsl,imx8mp-lcdif" compatible. Creates a simple-framebuffer
 	  device tree node for kernel handoff via DRM_SIMPLEDRM.
 
+config DRIVER_VIDEO_PANEL_LVDS
+	bool "Generic LVDS panel support"
+	select VIDEO_VPL
+	depends on OFTREE && OFDEVICE
+	help
+	  Driver for "panel-lvds" compatible display panels. Reads the video
+	  mode from a "panel-timing" subnode and controls the panel power
+	  supply regulator.
+
 config DRIVER_VIDEO_SIMPLE_PANEL
 	bool "Simple panel support"
 	select VIDEO_VPL
diff --git a/drivers/video/Makefile b/drivers/video/Makefile
index 9957ff5ad2..9d073fdf75 100644
--- a/drivers/video/Makefile
+++ b/drivers/video/Makefile
@@ -10,6 +10,7 @@ obj-$(CONFIG_VIDEO_VPL) += vpl.o
 obj-$(CONFIG_DRIVER_VIDEO_MTL017) += mtl017.o
 obj-$(CONFIG_DRIVER_VIDEO_TC358767) += tc358767.o
 obj-$(CONFIG_DRIVER_VIDEO_IMX_LCDIF) += imx-lcdif.o
+obj-$(CONFIG_DRIVER_VIDEO_PANEL_LVDS) += panel-lvds.o
 obj-$(CONFIG_DRIVER_VIDEO_SIMPLE_PANEL) += simple-panel.o
 obj-$(CONFIG_DRIVER_VIDEO_MIPI_DBI) += mipi_dbi.o
 obj-$(CONFIG_DRIVER_VIDEO_MIPI_DSI) += mipi_dsi.o
diff --git a/drivers/video/panel-lvds.c b/drivers/video/panel-lvds.c
new file mode 100644
index 0000000000..80d0b105ba
--- /dev/null
+++ b/drivers/video/panel-lvds.c
@@ -0,0 +1,175 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * LVDS panel driver for barebox
+ *
+ * Supports "panel-lvds" compatible panels with a "panel-timing" subnode.
+ *
+ * Based on Linux drivers/gpu/drm/panel/panel-lvds.c
+ * Copyright (C) 2017 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
+ *
+ * Copyright Leica Geosystems AG
+ */
+
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <linux/err.h>
+#include <of.h>
+#include <fb.h>
+#include <regulator.h>
+#include <gpio.h>
+#include <of_gpio.h>
+#include <video/vpl.h>
+#include <video/backlight.h>
+
+struct panel_lvds {
+	struct device *dev;
+	struct vpl vpl;
+	struct regulator *power;
+	int enable_gpio;
+	enum of_gpio_flags enable_gpio_flags;
+	struct device_node *backlight_node;
+	struct backlight_device *backlight;
+	struct fb_videomode mode;
+	bool mode_valid;
+};
+
+static int panel_lvds_enable(struct panel_lvds *panel)
+{
+	int ret;
+
+	if (panel->power) {
+		ret = regulator_enable(panel->power);
+		if (ret) {
+			dev_err(panel->dev, "power-supply enable failed: %pe\n",
+				ERR_PTR(ret));
+			return ret;
+		}
+	}
+
+	if (gpio_is_valid(panel->enable_gpio)) {
+		int val = !(panel->enable_gpio_flags & OF_GPIO_ACTIVE_LOW);
+
+		gpio_direction_output(panel->enable_gpio, val);
+	}
+
+	/* Lazily resolve backlight on first enable (may probe after panel) */
+	if (panel->backlight_node && !panel->backlight)
+		panel->backlight = of_backlight_find(panel->backlight_node);
+
+	if (panel->backlight)
+		backlight_set_brightness_default(panel->backlight);
+
+	return 0;
+}
+
+static void panel_lvds_disable(struct panel_lvds *panel)
+{
+	if (panel->backlight)
+		backlight_set_brightness(panel->backlight, 0);
+
+	if (gpio_is_valid(panel->enable_gpio))
+		gpio_direction_output(panel->enable_gpio,
+				      !!(panel->enable_gpio_flags & OF_GPIO_ACTIVE_LOW));
+
+	if (panel->power)
+		regulator_disable(panel->power);
+}
+
+static int panel_lvds_ioctl(struct vpl *vpl, unsigned int port,
+			    unsigned int cmd, void *ptr)
+{
+	struct panel_lvds *panel = container_of(vpl, struct panel_lvds, vpl);
+	struct display_timings *timings;
+
+	switch (cmd) {
+	case VPL_ENABLE:
+		return panel_lvds_enable(panel);
+
+	case VPL_DISABLE:
+		panel_lvds_disable(panel);
+		return 0;
+
+	case VPL_PREPARE:
+	case VPL_UNPREPARE:
+		return 0;
+
+	case VPL_GET_VIDEOMODES:
+		timings = ptr;
+		if (!panel->mode_valid)
+			return -ENOENT;
+		timings->modes = &panel->mode;
+		timings->num_modes = 1;
+		return 0;
+
+	default:
+		return 0;
+	}
+}
+
+static int panel_lvds_probe(struct device *dev)
+{
+	struct panel_lvds *panel;
+	int ret;
+
+	panel = xzalloc(sizeof(*panel));
+	panel->dev = dev;
+
+	/* Parse panel-timing subnode */
+	ret = of_get_display_timing(dev->of_node, "panel-timing", &panel->mode);
+	if (ret) {
+		dev_err(dev, "failed to parse panel-timing: %d\n", ret);
+		return ret;
+	}
+	panel->mode_valid = true;
+
+	panel->power = regulator_get(dev, "power");
+	if (IS_ERR(panel->power)) {
+		/*
+		 * power-supply is optional; if not present continue without it.
+		 * This matches the Linux driver behavior.
+		 */
+		if (PTR_ERR(panel->power) == -ENODEV)
+			panel->power = NULL;
+		else
+			return dev_errp_probe(dev, panel->power, "power supply\n");
+	}
+
+	panel->enable_gpio = of_get_named_gpio_flags(dev->of_node, "enable-gpios",
+						     0, &panel->enable_gpio_flags);
+	if (gpio_is_valid(panel->enable_gpio)) {
+		int initial = (panel->enable_gpio_flags & OF_GPIO_ACTIVE_LOW) ? 1 : 0;
+
+		ret = gpio_request(panel->enable_gpio, "panel-enable");
+		if (ret)
+			dev_warn(dev, "failed to request enable-gpio: %d\n", ret);
+		else
+			gpio_direction_output(panel->enable_gpio, initial);
+	}
+
+	panel->backlight_node = of_parse_phandle(dev->of_node, "backlight", 0);
+
+	panel->vpl.node = dev->of_node;
+	panel->vpl.ioctl = panel_lvds_ioctl;
+
+	ret = vpl_register(&panel->vpl);
+	if (ret)
+		return ret;
+
+	dev_dbg(dev, "LVDS panel %dx%d registered\n",
+		panel->mode.xres, panel->mode.yres);
+	return 0;
+}
+
+static const struct of_device_id panel_lvds_dt_ids[] = {
+	{ .compatible = "panel-lvds" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, panel_lvds_dt_ids);
+
+static struct driver panel_lvds_driver = {
+	.name		= "panel-lvds",
+	.probe		= panel_lvds_probe,
+	.of_compatible	= DRV_OF_COMPAT(panel_lvds_dt_ids),
+};
+device_platform_driver(panel_lvds_driver);
-- 
2.43.0



