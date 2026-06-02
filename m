Delivery-date: Tue, 02 Jun 2026 06:11:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUGTN-001SWi-3B
	for lore@lore.pengutronix.de;
	Tue, 02 Jun 2026 06:11:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUGTM-0000uO-6E
	for lore@pengutronix.de; Tue, 02 Jun 2026 06:11:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=L+kSqJU8V7yc1N/3Rvdu7xfo0B1rNzhf1kmdP70ym4I=; b=eYZYdfe0wBjkoL9E8tHPsDQtWE
	0ldg0lW3mlMrbDL3DicLIpAn+CsZRVjZbOdscawx66/VRRfUEiIyTAyvN9ho2AUx8JwJR+LidUAg6
	sb4JV3crEXftjmJn2zMwFEhi+wSw+QvQZWsIlLR+sbiigyN7IzmOMbPVyGfmYOjD37fDVy43kmRY5
	lvK37ecwW4a+zi6yBU3+4M45My+JM21UGEZYj1o8I3r0wevUnoRSqwuWFqjN0JMsZyGALTrKORYuZ
	OndllOrViLFOGSpaXfK+kaBycIU88l+prA8uYG0+MAM3R9GBTXq3RwMcCnuHIzb7hDdkKhOakemfr
	5b5dE+3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUGS7-0000000CGGu-2zOv;
	Tue, 02 Jun 2026 04:10:07 +0000
Received: from mail-westeuropeazon11011055.outbound.protection.outlook.com ([52.101.70.55] helo=AS8PR04CU009.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUGS2-0000000CGDy-3OYC
	for barebox@lists.infradead.org;
	Tue, 02 Jun 2026 04:10:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AAKcNancGB5c4gBzjN4IfxCmZjxToOkKbIsj7scddUiPSrbKgDvrZPNflv8mZJVkxD1q4WIzbnrMj1Ffdx7vNPfW+HIQNKQrcRfw2VjaFFsbl2QguQypABMa8WiPqPNphsSB7XEGgKcP298v2Krg6ExrzK3m5k6k44acxZTYtFe+oSdLxmcrYYiQ8t/GhoGyJi6ly0KgpCl0gVuRXadp/tvHEk/HONRUbJzU5Ig3SzEbc8GSmq08iSlXGdF+m49DH/fJulB1zUQIqb5p1EH+ZBsWhVLh5iy7JOg89IKRZuOaXl8pPiWng6O/NuAEG3h6sfc/woDVDIXAK7aq9A8vDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L+kSqJU8V7yc1N/3Rvdu7xfo0B1rNzhf1kmdP70ym4I=;
 b=w0TlpDhvbqwTHAklVdcyYCdOotNcJClONynIdhBTo2Pylvj4THMMq8l8ZvUbUwlNXLBV79SmgWEJji+2mt8KRd6UUA6gZANCP2LKJIOYdC9JghYW3lO9FRI+WINpl6sOAFBfQaD2/7KfPpLAgP6QjVc4+1jWGEJTlQyOtm5bs1kliQHyiyPG/Ox16F29ghLsY80tic1NRUFTuBSLRV6W577hlccelmj6jupJLFXlG4xYcGE7RDitxtEmafwpHpRT3eqwQEhTWMyau11oFBFqoMx96Y9K3x52xvr310edbMgC22+gcdRE7mndrW/soXfQFDcB0ZOpJmZxU4ns4OtksA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L+kSqJU8V7yc1N/3Rvdu7xfo0B1rNzhf1kmdP70ym4I=;
 b=hqswFhZJ/RI46yD40KR1xhpcwUy+eES4lsMGYOKfQp08GY33XXfmvT3LKYdOMF2h/Z1rmE/1IUqJKE9Wj/eCmViLX7RcsdNWaHi/RZ14AOMOsy3vG4e1Y1lDfi4dxe8OXyEi84HiaR2cE0Wneo6Q0ut1MnQzRo8vCONZIvfYfD0=
Received: from DU7P195CA0014.EURP195.PROD.OUTLOOK.COM (2603:10a6:10:54d::25)
 by PR3PR06MB7049.eurprd06.prod.outlook.com (2603:10a6:102:84::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.16; Tue, 2 Jun 2026
 04:09:58 +0000
Received: from DB5PEPF00014B92.eurprd02.prod.outlook.com
 (2603:10a6:10:54d:cafe::1) by DU7P195CA0014.outlook.office365.com
 (2603:10a6:10:54d::25) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.71.17 via Frontend Transport; Tue, 2
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
 15.21.92.5 via Frontend Transport; Tue, 2 Jun 2026 04:09:57 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Tue, 2 Jun 2026 06:09:57 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: thomas.haemmerle@leica-geosystems.com
Date: Tue,  2 Jun 2026 04:09:50 +0000
Message-ID: <20260602040953.1060278-5-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260602040953.1060278-1-johannes.schneider@leica-geosystems.com>
References: <20260602040953.1060278-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 02 Jun 2026 04:09:57.0586 (UTC) FILETIME=[AC8D0320:01DCF245]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB5PEPF00014B92:EE_|PR3PR06MB7049:EE_
X-MS-Office365-Filtering-Correlation-Id: cb28750c-6bb7-4f4a-7b9a-08dec05ccf3c
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|82310400026|1800799024|36860700016|376014|22082099003|18002099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: xZfzUiGVPQL/m5OuGFUeo8KO/VBki1o+W0e33NjjZqqVDf40aQOHPzGGby7eCNRMZJht05pVAZuWneGf0mrNztCXBCfP0J0zwcem0AcYL1ijJ4YSnDK7keZx8pJbEsa1dF3qzYrMtRwLUq7hTFB/IYZ6JWDq0T4+cWGFGsLYVXZNJGj/qi34yWLAj5pS9Or5uK5byz+K0UoA7W5hKXbvQBz0dCDPFx2Vp3nEtkYImTxuF6UurNfINL42PlQ4Sk7EMYoXB4ut3BY74pEQvxqzN+9osYXNmdOyp1yKSc1Oysbkf4IMK3/X9qSmBW4+lrrNfL2zsunF0YkNFOqGMZuk5ZFPYgxKab3gm00r4BEuyhvx9PZZzlGP1qutoLagekqYuwSyRjtsLlxOtdFwvN1m23aFDFR+j2y9n5kgOV5WhAV0wUkw0ITs3uv6apWYg2Uh3jHApX6kLuLHEQ7CN3EozrQ9Bpox07EAQvq5fpYAMbkOT0A+lE1nubi3YLWtgp0yjU8jBok+zg2/4RucvoRpvxlsZ9yMI+rm8i/V9gmZNWImYowJk2pliwT8qEgMhhQzQ8stCRBlInNeJzaSiVG3YyPdtGw+eev6GcHMJH2hu+QWS+Ew9xN9De1PzEjqI9nsohT/EFQ6alz1S30VaW5P9KgnVTzLPwxlE9BLTFSrxTVTV+JyVvqWXjwqNzm3nvX54XqDuoWSIFqeTTt9vtWLa5aYXriuQZFhIbheMuP7lNU=
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(82310400026)(1800799024)(36860700016)(376014)(22082099003)(18002099003)(11063799006)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: Oh+g+KIEEQyI+Iw4Kk4ADVRwH/9jUhQ18OOcS+FxdYUFPgYkRh6Js7pgNeNplcdclu/DF0fWCUI3btpwd9ucfmVRNevv3+zMDCk1TINS+lpyiaUwnu6KCxDHZisdrnmnbTxl5FLZ7ZLQ2dvJnLT+FJLNXrEHMQy7g91D4d1+JSGTIkJt1vF9kit66OmXw7m5PVRsZ0YxLaxGXSwpx57uACKoWX8LAwWzrp5oVd5/+zYq677Ne72hHdvleJKWQhBhFDiLj+Q1DIJYbq5PdENEdQJDOx7BtnP+zpnFxaO1Ldt7v19en6R2Jx6Ds+OMlS1NPA/D7ubicUw41gXxnWTTHnDi8izx/e9OER+kaUWNv4FariUmk4xGIH1TVPKTM7pxs1hresMvC4nWh14oRHCMdXkF7QJuu8Fm8a8poQjwt1KxLvEWp38XIYzLJDMDDQrL
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2026 04:09:57.8611
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: cb28750c-6bb7-4f4a-7b9a-08dec05ccf3c
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: DB5PEPF00014B92.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR06MB7049
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_211003_035375_0FFCFD03 
X-CRM114-Status: GOOD (  23.81  )
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
Subject: [PATCH 4/6] video: add i.MX8MP LCDIF2 V8 framebuffer driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>

The i.MX8MP has a new LCDIF V8 display controller with a different
register layout from the older mxsfb-based LCDIF found on i.MX6/7/8MM.
The existing DRIVER_VIDEO_LCDIF driver does not support this variant,
leaving the i.MX8MP without a barebox framebuffer and no way to show a
boot splash.

The driver:
- Programs LCDIF V8 timing registers for the configured video mode.
- Uses 128B DMA burst size (P_SIZE=1, T_SIZE=1) so that 800-pixel rows
  (3200 bytes) divide into exactly 25 complete bursts; 256B bursts leave
  a partial burst and produce a ~32px black strip at the right edge.
- Sets correct CTRL polarity bit positions (INV_HS=bit0, INV_VS=bit1,
  INV_DE=bit2, INV_PXCK=bit3); the i.MX8MP TRM places these at bits 0-3,
  not 2-5 as a naive port from mxsfb would suggest.
- Allocates a write-combine DMA framebuffer and registers a simplefb DT
  fixup for Linux DRM_SIMPLEDRM to inherit the boot image.
- Enables the framebuffer at probe time so the splash command only needs
  to blit pixels; fb_enable() is not called per-splash.

Assisted-by: Claude:claude-sonnet-4-6
Signed-of-by: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>
---
 drivers/video/Kconfig     |  10 +
 drivers/video/Makefile    |   1 +
 drivers/video/imx-lcdif.c | 378 ++++++++++++++++++++++++++++++++++++++
 3 files changed, 389 insertions(+)
 create mode 100644 drivers/video/imx-lcdif.c

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index ce10237221..fbcec6fd67 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -194,6 +194,16 @@ config DRIVER_VIDEO_TC358767
 	help
 	  The TC358767A is a DSI/DPI to eDP video encoder chip
 
+config DRIVER_VIDEO_IMX_LCDIF
+	bool "i.MX8MP LCDIF V8 framebuffer driver"
+	select VIDEO_VPL
+	select DRIVER_VIDEO_SIMPLEFB
+	depends on OFTREE && OFDEVICE
+	help
+	  Framebuffer driver for the i.MX8MP/i.MX93 LCDIF V8 display controller.
+	  Supports the "fsl,imx8mp-lcdif" compatible. Creates a simple-framebuffer
+	  device tree node for kernel handoff via DRM_SIMPLEDRM.
+
 config DRIVER_VIDEO_SIMPLE_PANEL
 	bool "Simple panel support"
 	select VIDEO_VPL
diff --git a/drivers/video/Makefile b/drivers/video/Makefile
index 7b10eda0d8..9957ff5ad2 100644
--- a/drivers/video/Makefile
+++ b/drivers/video/Makefile
@@ -9,6 +9,7 @@ obj-$(CONFIG_FRAMEBUFFER_CONSOLE) += fbconsole.o
 obj-$(CONFIG_VIDEO_VPL) += vpl.o
 obj-$(CONFIG_DRIVER_VIDEO_MTL017) += mtl017.o
 obj-$(CONFIG_DRIVER_VIDEO_TC358767) += tc358767.o
+obj-$(CONFIG_DRIVER_VIDEO_IMX_LCDIF) += imx-lcdif.o
 obj-$(CONFIG_DRIVER_VIDEO_SIMPLE_PANEL) += simple-panel.o
 obj-$(CONFIG_DRIVER_VIDEO_MIPI_DBI) += mipi_dbi.o
 obj-$(CONFIG_DRIVER_VIDEO_MIPI_DSI) += mipi_dsi.o
diff --git a/drivers/video/imx-lcdif.c b/drivers/video/imx-lcdif.c
new file mode 100644
index 0000000000..ae5976c771
--- /dev/null
+++ b/drivers/video/imx-lcdif.c
@@ -0,0 +1,378 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * i.MX8MP LCDIF V8 framebuffer driver for barebox
+ *
+ * Based on Linux drivers/gpu/drm/mxsfb/lcdif_drv.c and lcdif_kms.c
+ * Copyright (C) 2022 Marek Vasut <marex@denx.de>
+ *
+ * Copyright Leica Geosystems AG
+ */
+
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <io.h>
+#include <dma.h>
+#include <fb.h>
+#include <linux/bitfield.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+#include <of_graph.h>
+#include <video/media-bus-format.h>
+#include <video/vpl.h>
+
+/* LCDIF V8 register map */
+#define LCDC_V8_CTRL			0x00
+#define LCDC_V8_DISP_PARA		0x10
+#define LCDC_V8_DISP_SIZE		0x14
+#define LCDC_V8_HSYN_PARA		0x18
+#define LCDC_V8_VSYN_PARA		0x1c
+#define LCDC_V8_VSYN_HSYN_WIDTH		0x20
+#define LCDC_V8_INT_STATUS_D0		0x24
+#define LCDC_V8_INT_ENABLE_D0		0x28
+#define LCDC_V8_INT_STATUS_D1		0x30
+#define LCDC_V8_INT_ENABLE_D1		0x34
+#define LCDC_V8_CTRLDESCL0_1		0x200
+#define LCDC_V8_CTRLDESCL0_3		0x208
+#define LCDC_V8_CTRLDESCL_LOW0_4	0x20c
+#define LCDC_V8_CTRLDESCL_HIGH0_4	0x210
+#define LCDC_V8_CTRLDESCL0_5		0x214
+#define LCDC_V8_CSC0_CTRL		0x21c
+#define LCDC_V8_PANIC0_THRES		0x238
+
+/* CTRL bits */
+#define CTRL_SW_RESET			BIT(31)
+#define CTRL_FETCH_START_OPTION_FPV	0
+#define CTRL_INV_HS			BIT(0)
+#define CTRL_INV_VS			BIT(1)
+#define CTRL_INV_DE			BIT(2)
+#define CTRL_INV_PXCK			BIT(3)
+
+/* DISP_PARA bits */
+#define DISP_PARA_DISP_ON		BIT(31)
+#define DISP_PARA_LINE_PATTERN_RGB888	(0x0 << 26)
+#define DISP_PARA_LINE_PATTERN_UYVY	(0x3 << 26)
+#define DISP_PARA_LINE_PATTERN_MASK	GENMASK(29, 26)
+
+/* DISP_SIZE: Y[31:16] X[15:0] */
+#define DISP_SIZE_DELTA_Y(y)		(((y) & 0xffff) << 16)
+#define DISP_SIZE_DELTA_X(x)		((x) & 0xffff)
+
+/* HSYN_PARA: back_porch[31:16] front_porch[15:0] */
+#define HSYN_PARA_BP_H(bp)		(((bp) & 0xffff) << 16)
+#define HSYN_PARA_FP_H(fp)		((fp) & 0xffff)
+
+/* VSYN_PARA: back_porch[31:16] front_porch[15:0] */
+#define VSYN_PARA_BP_V(bp)		(((bp) & 0xffff) << 16)
+#define VSYN_PARA_FP_V(fp)		((fp) & 0xffff)
+
+/* VSYN_HSYN_WIDTH: vsync[31:16] hsync[15:0] */
+#define VSYN_HSYN_WIDTH_PW_V(v)		(((v) & 0xffff) << 16)
+#define VSYN_HSYN_WIDTH_PW_H(h)		((h) & 0xffff)
+
+/* CTRLDESCL0_1: height[31:16] width[15:0] */
+#define CTRLDESCL0_1_HEIGHT(h)		(((h) & 0xffff) << 16)
+#define CTRLDESCL0_1_WIDTH(w)		((w) & 0xffff)
+
+/* CTRLDESCL0_3: P_SIZE[22:20] T_SIZE[17:16] PITCH[15:0] */
+#define CTRLDESCL0_3_P_SIZE(s)		(((s) & 0x7) << 20)
+#define CTRLDESCL0_3_T_SIZE(s)		(((s) & 0x3) << 16)
+#define CTRLDESCL0_3_PITCH(p)		((p) & 0xffff)
+
+/* CTRLDESCL0_5 */
+#define CTRLDESCL0_5_EN			BIT(31)
+#define CTRLDESCL0_5_SHADOW_LOAD_EN	BIT(30)
+#define CTRLDESCL0_5_BPP_16_RGB565	(0x4 << 24)
+#define CTRLDESCL0_5_BPP_24_RGB888	(0x8 << 24)
+#define CTRLDESCL0_5_BPP_32_ARGB8888	(0x9 << 24)
+#define CTRLDESCL0_5_BPP_MASK		GENMASK(27, 24)
+
+/* CSC0_CTRL */
+#define CSC0_CTRL_BYPASS		BIT(0)
+
+/* INT_ENABLE_D1 */
+#define INT_ENABLE_D1_PLANE_PANIC_EN	BIT(0)
+
+/* PANIC0_THRES */
+#define PANIC0_THRES_LOW_MASK		GENMASK(8, 0)
+#define PANIC0_THRES_HIGH_MASK		GENMASK(24, 16)
+#define PANIC0_THRES_MAX		511
+
+struct lcdif_priv {
+	void __iomem *base;
+	struct clk *clk_pix;
+	struct clk *clk_axi;
+	struct clk *clk_disp_axi;
+	struct fb_info info;
+	struct vpl vpl;
+	int port_id;
+};
+
+static void lcdif_reset(struct lcdif_priv *priv)
+{
+	writel(CTRL_SW_RESET, priv->base + LCDC_V8_CTRL);
+	udelay(10);
+	writel(0, priv->base + LCDC_V8_CTRL);
+}
+
+static void lcdif_set_mode(struct lcdif_priv *priv, struct fb_videomode *mode)
+{
+	u32 ctrl = 0;
+
+	if (mode->sync & FB_SYNC_HOR_HIGH_ACT)
+		; /* HSYNC active high = no invert */
+	else
+		ctrl |= CTRL_INV_HS;
+
+	if (mode->sync & FB_SYNC_VERT_HIGH_ACT)
+		; /* VSYNC active high = no invert */
+	else
+		ctrl |= CTRL_INV_VS;
+
+	if (mode->display_flags & DISPLAY_FLAGS_DE_LOW)
+		ctrl |= CTRL_INV_DE;
+	if (mode->display_flags & DISPLAY_FLAGS_PIXDATA_NEGEDGE)
+		ctrl |= CTRL_INV_PXCK;
+
+	writel(ctrl, priv->base + LCDC_V8_CTRL);
+
+	writel(DISP_SIZE_DELTA_Y(mode->yres) | DISP_SIZE_DELTA_X(mode->xres),
+	       priv->base + LCDC_V8_DISP_SIZE);
+
+	/* hback_porch = htotal - hsync_end, hfront_porch = hsync_start - hactive */
+	writel(HSYN_PARA_BP_H(mode->left_margin) | HSYN_PARA_FP_H(mode->right_margin),
+	       priv->base + LCDC_V8_HSYN_PARA);
+
+	writel(VSYN_PARA_BP_V(mode->upper_margin) | VSYN_PARA_FP_V(mode->lower_margin),
+	       priv->base + LCDC_V8_VSYN_PARA);
+
+	writel(VSYN_HSYN_WIDTH_PW_V(mode->vsync_len) | VSYN_HSYN_WIDTH_PW_H(mode->hsync_len),
+	       priv->base + LCDC_V8_VSYN_HSYN_WIDTH);
+
+	writel(CTRLDESCL0_1_HEIGHT(mode->yres) | CTRLDESCL0_1_WIDTH(mode->xres),
+	       priv->base + LCDC_V8_CTRLDESCL0_1);
+}
+
+static void lcdif_set_plane(struct lcdif_priv *priv)
+{
+	struct fb_info *info = &priv->info;
+	phys_addr_t paddr = virt_to_phys(info->screen_base);
+	u32 ctrl;
+	u32 stride = info->line_length;
+
+	/*
+	 * AXI burst size: P_SIZE=1 = 128B, T_SIZE=1 = 128B threshold.
+	 * Use 128B (32-pixel @ 32bpp) bursts so that 800-pixel rows
+	 * (3200 bytes) divide evenly: 3200 / 128 = 25 complete bursts.
+	 * P_SIZE=2 (256B) would leave a partial burst (3200/256 = 12.5)
+	 * causing a ~32-pixel dark gap at the right edge of the display.
+	 */
+	ctrl = CTRLDESCL0_3_P_SIZE(1) | CTRLDESCL0_3_T_SIZE(1) |
+	       CTRLDESCL0_3_PITCH(stride);
+	writel(ctrl, priv->base + LCDC_V8_CTRLDESCL0_3);
+
+	writel(lower_32_bits(paddr), priv->base + LCDC_V8_CTRLDESCL_LOW0_4);
+	writel(upper_32_bits(paddr), priv->base + LCDC_V8_CTRLDESCL_HIGH0_4);
+
+	/* 32bpp XRGB8888 → ARGB8888 pixel format.
+	 * SHADOW_LOAD_EN causes the descriptor registers (address, format, pitch)
+	 * to be latched into the active registers on the next VSYNC, which is
+	 * required for the initial descriptor load in barebox's single-enable
+	 * sequence (no DRM page-flip mechanism).  EN is ORed in later by
+	 * lcdif_enable() after DISP_ON. */
+	writel(CTRLDESCL0_5_BPP_32_ARGB8888 | CTRLDESCL0_5_SHADOW_LOAD_EN,
+	       priv->base + LCDC_V8_CTRLDESCL0_5);
+}
+
+static void lcdif_enable(struct lcdif_priv *priv)
+{
+	u32 reg;
+
+	/* Set FIFO Panic watermarks: low=1/3, high=2/3 */
+	writel(FIELD_PREP(PANIC0_THRES_LOW_MASK,  1 * PANIC0_THRES_MAX / 3) |
+	       FIELD_PREP(PANIC0_THRES_HIGH_MASK, 2 * PANIC0_THRES_MAX / 3),
+	       priv->base + LCDC_V8_PANIC0_THRES);
+
+	writel(INT_ENABLE_D1_PLANE_PANIC_EN, priv->base + LCDC_V8_INT_ENABLE_D1);
+
+	/* Write LINE_PATTERN_RGB888 (= 0) first to clear all DISP_PARA bits,
+	 * including BGND_R/G/B (bits [23:0]) — ensures background is black. */
+	writel(DISP_PARA_LINE_PATTERN_RGB888, priv->base + LCDC_V8_DISP_PARA);
+	reg = readl(priv->base + LCDC_V8_DISP_PARA);
+	reg |= DISP_PARA_DISP_ON;
+	writel(reg, priv->base + LCDC_V8_DISP_PARA);
+
+	reg = readl(priv->base + LCDC_V8_CTRLDESCL0_5);
+	reg |= CTRLDESCL0_5_EN;
+	writel(reg, priv->base + LCDC_V8_CTRLDESCL0_5);
+}
+
+static int lcdif_fb_enable(struct fb_info *info)
+{
+	struct lcdif_priv *priv = info->priv;
+	struct fb_videomode *mode = info->mode;
+	int ret;
+
+	clk_set_rate(priv->clk_pix, PICOS2KHZ(mode->pixclock) * 1000UL);
+	clk_prepare_enable(priv->clk_axi);
+	clk_prepare_enable(priv->clk_disp_axi);
+	clk_prepare_enable(priv->clk_pix);
+
+	/* Notify downstream bridge about mode and enable it */
+	ret = vpl_ioctl_prepare(&priv->vpl, priv->port_id, mode);
+	if (ret) {
+		dev_err(info->dev.parent, "vpl_prepare failed: %pe\n", ERR_PTR(ret));
+		return ret;
+	}
+	lcdif_reset(priv);
+	lcdif_set_mode(priv, mode);
+	lcdif_set_plane(priv);
+
+	/* Bypass CSC for RGB input */
+	writel(CSC0_CTRL_BYPASS, priv->base + LCDC_V8_CSC0_CTRL);
+
+	lcdif_enable(priv);
+
+	ret = vpl_ioctl_enable(&priv->vpl, priv->port_id);
+	if (ret)
+		dev_warn(info->dev.parent, "vpl_enable failed: %pe\n", ERR_PTR(ret));
+
+	return 0;
+}
+
+static void lcdif_fb_disable(struct fb_info *info)
+{
+	struct lcdif_priv *priv = info->priv;
+	u32 reg;
+
+	vpl_ioctl_disable(&priv->vpl, priv->port_id);
+
+	reg = readl(priv->base + LCDC_V8_CTRLDESCL0_5);
+	reg &= ~CTRLDESCL0_5_EN;
+	writel(reg, priv->base + LCDC_V8_CTRLDESCL0_5);
+
+	reg = readl(priv->base + LCDC_V8_DISP_PARA);
+	reg &= ~DISP_PARA_DISP_ON;
+	writel(reg, priv->base + LCDC_V8_DISP_PARA);
+
+	vpl_ioctl_unprepare(&priv->vpl, priv->port_id);
+
+	clk_disable_unprepare(priv->clk_pix);
+	clk_disable_unprepare(priv->clk_disp_axi);
+	clk_disable_unprepare(priv->clk_axi);
+}
+
+static struct fb_ops lcdif_fb_ops = {
+	.fb_enable  = lcdif_fb_enable,
+	.fb_disable = lcdif_fb_disable,
+};
+
+static int lcdif_probe(struct device *dev)
+{
+	struct resource *iores;
+	struct lcdif_priv *priv;
+	struct fb_info *info;
+	int ret;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+
+	priv = xzalloc(sizeof(*priv));
+	priv->base = IOMEM(iores->start);
+
+	priv->clk_pix = clk_get(dev, "pix");
+	if (IS_ERR(priv->clk_pix))
+		return dev_errp_probe(dev, priv->clk_pix, "pixel clock\n");
+
+	priv->clk_axi = clk_get(dev, "axi");
+	if (IS_ERR(priv->clk_axi))
+		return dev_errp_probe(dev, priv->clk_axi, "axi clock\n");
+
+	priv->clk_disp_axi = clk_get(dev, "disp_axi");
+	if (IS_ERR(priv->clk_disp_axi))
+		return dev_errp_probe(dev, priv->clk_disp_axi, "disp_axi clock\n");
+
+	/* Register VPL node - endpoint is port@0 */
+	priv->port_id = 0;
+	priv->vpl.node = dev->of_node;
+	ret = vpl_register(&priv->vpl);
+	if (ret)
+		return ret;
+
+	info = &priv->info;
+	info->priv  = priv;
+	info->fbops = &lcdif_fb_ops;
+
+	/* Fixed 32bpp XRGB8888 format */
+	info->bits_per_pixel = 32;
+	info->red   = (struct fb_bitfield){ .offset = 16, .length = 8 };
+	info->green = (struct fb_bitfield){ .offset =  8, .length = 8 };
+	info->blue  = (struct fb_bitfield){ .offset =  0, .length = 8 };
+	info->transp = (struct fb_bitfield){ .offset = 24, .length = 8 };
+
+	/* Get display modes from downstream panel via VPL */
+	ret = vpl_ioctl(&priv->vpl, priv->port_id, VPL_GET_VIDEOMODES, &info->modes);
+	if (ret) {
+		dev_dbg(dev, "no modes from VPL: %pe\n", ERR_PTR(ret));
+		return ret;
+	}
+
+	/* Allocate DMA-coherent framebuffer */
+	if (info->modes.num_modes > 0) {
+		struct fb_videomode *m = &info->modes.modes[0];
+		size_t fb_size = m->xres * m->yres * (info->bits_per_pixel / 8);
+
+		info->screen_base = dma_alloc_writecombine(DMA_DEVICE_BROKEN,
+							   fb_size,
+							   DMA_ADDRESS_BROKEN);
+		if (!info->screen_base) {
+			dev_err(dev, "failed to allocate framebuffer\n");
+			return -ENOMEM;
+		}
+		info->screen_size = fb_size;
+		memset(info->screen_base, 0, fb_size);
+	}
+
+	info->dev.parent = dev;
+	ret = register_framebuffer(info);
+	if (ret) {
+		dev_err(dev, "failed to register framebuffer: %d\n", ret);
+		return ret;
+	}
+
+	/*
+	 * Create simple-framebuffer DT node for Linux kernel handoff.
+	 * With CONFIG_DRM_SIMPLEDRM, Linux will inherit the barebox
+	 * framebuffer and keep the boot splash visible until platsch
+	 * renders via the LCDIF DRM driver.
+	 */
+	info->register_simplefb = 1;
+	fb_register_simplefb(info);
+
+	/*
+	 * Enable the display immediately so the framebuffer is live.
+	 * The splash command only blits pixels to the buffer - it does not
+	 * call fb_enable itself - so we must enable here during probe.
+	 */
+	ret = fb_enable(info);
+	if (ret)
+		dev_warn(dev, "failed to enable framebuffer: %d\n", ret);
+
+	dev_info(dev, "i.MX8MP LCDIF registered\n");
+	return 0;
+}
+
+static const struct of_device_id lcdif_dt_ids[] = {
+	{ .compatible = "fsl,imx8mp-lcdif" },
+	{ .compatible = "fsl,imx93-lcdif" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, lcdif_dt_ids);
+
+static struct driver lcdif_driver = {
+	.name		= "imx-lcdif",
+	.probe		= lcdif_probe,
+	.of_compatible	= DRV_OF_COMPAT(lcdif_dt_ids),
+};
+device_platform_driver(lcdif_driver);
-- 
2.43.0



