Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFLGN-0006vS-Qk
 for barebox@lists.infradead.org; Fri, 20 Mar 2020 17:16:54 +0000
Received: from astat.fritz.box (a89-183-16-35.net-htp.de [89.183.16.35])
 by lynxeye.de (Postfix) with ESMTPA id E4BA8E7414D
 for <barebox@lists.infradead.org>; Fri, 20 Mar 2020 18:16:16 +0100 (CET)
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 20 Mar 2020 18:16:13 +0100
Message-Id: <20200320171613.2713143-1-l.stach@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] reset: remove duplicate imx8mq-reset.h and use correct defines
To: barebox@lists.infradead.org

The defines in the Barebox copy of imx8mq-reset.h had a type, which has been fixed
in the upstream Linux version of this file. So depending on include ordering the
reset driver using those defines would fail to compile. Use the typo fixed versions
of the define in the driver and remove the duplicate include file, as we also have
the proper upstream version now.

Reported-by: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/reset/reset-imx7.c               | 12 ++---
 include/dt-bindings/reset/imx8mq-reset.h | 64 ------------------------
 2 files changed, 6 insertions(+), 70 deletions(-)
 delete mode 100644 include/dt-bindings/reset/imx8mq-reset.h

diff --git a/drivers/reset/reset-imx7.c b/drivers/reset/reset-imx7.c
index 9d4344a94cc4..c8c8fa98e068 100644
--- a/drivers/reset/reset-imx7.c
+++ b/drivers/reset/reset-imx7.c
@@ -177,9 +177,9 @@ static const struct imx7_src_signal imx8mq_src_signals[IMX8MQ_RESET_NUM] = {
 	[IMX8MQ_RESET_OTG2_PHY_RESET]		= { SRC_USBOPHY2_RCR, BIT(0) },
 	[IMX8MQ_RESET_MIPI_DSI_RESET_BYTE_N]	= { SRC_MIPIPHY_RCR, BIT(1) },
 	[IMX8MQ_RESET_MIPI_DSI_RESET_N]		= { SRC_MIPIPHY_RCR, BIT(2) },
-	[IMX8MQ_RESET_MIPI_DIS_DPI_RESET_N]	= { SRC_MIPIPHY_RCR, BIT(3) },
-	[IMX8MQ_RESET_MIPI_DIS_ESC_RESET_N]	= { SRC_MIPIPHY_RCR, BIT(4) },
-	[IMX8MQ_RESET_MIPI_DIS_PCLK_RESET_N]	= { SRC_MIPIPHY_RCR, BIT(5) },
+	[IMX8MQ_RESET_MIPI_DSI_DPI_RESET_N]	= { SRC_MIPIPHY_RCR, BIT(3) },
+	[IMX8MQ_RESET_MIPI_DSI_ESC_RESET_N]	= { SRC_MIPIPHY_RCR, BIT(4) },
+	[IMX8MQ_RESET_MIPI_DSI_PCLK_RESET_N]	= { SRC_MIPIPHY_RCR, BIT(5) },
 	[IMX8MQ_RESET_PCIEPHY]			= { SRC_PCIEPHY_RCR,
 						    BIT(2) | BIT(1) },
 	[IMX8MQ_RESET_PCIEPHY_PERST]		= { SRC_PCIEPHY_RCR, BIT(3) },
@@ -228,9 +228,9 @@ static int imx8mq_reset_set(struct reset_controller_dev *rcdev,
 
 	case IMX8MQ_RESET_PCIE_CTRL_APPS_EN:
 	case IMX8MQ_RESET_PCIE2_CTRL_APPS_EN:	/* fallthrough */
-	case IMX8MQ_RESET_MIPI_DIS_PCLK_RESET_N:	/* fallthrough */
-	case IMX8MQ_RESET_MIPI_DIS_ESC_RESET_N:	/* fallthrough */
-	case IMX8MQ_RESET_MIPI_DIS_DPI_RESET_N:	/* fallthrough */
+	case IMX8MQ_RESET_MIPI_DSI_PCLK_RESET_N:	/* fallthrough */
+	case IMX8MQ_RESET_MIPI_DSI_ESC_RESET_N:	/* fallthrough */
+	case IMX8MQ_RESET_MIPI_DSI_DPI_RESET_N:	/* fallthrough */
 	case IMX8MQ_RESET_MIPI_DSI_RESET_N:	/* fallthrough */
 	case IMX8MQ_RESET_MIPI_DSI_RESET_BYTE_N:	/* fallthrough */
 		value = assert ? 0 : bit;
diff --git a/include/dt-bindings/reset/imx8mq-reset.h b/include/dt-bindings/reset/imx8mq-reset.h
deleted file mode 100644
index 57c592498aa0..000000000000
--- a/include/dt-bindings/reset/imx8mq-reset.h
+++ /dev/null
@@ -1,64 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/*
- * Copyright (C) 2018 Zodiac Inflight Innovations
- *
- * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
- */
-
-#ifndef DT_BINDING_RESET_IMX8MQ_H
-#define DT_BINDING_RESET_IMX8MQ_H
-
-#define IMX8MQ_RESET_A53_CORE_POR_RESET0	0
-#define IMX8MQ_RESET_A53_CORE_POR_RESET1	1
-#define IMX8MQ_RESET_A53_CORE_POR_RESET2	2
-#define IMX8MQ_RESET_A53_CORE_POR_RESET3	3
-#define IMX8MQ_RESET_A53_CORE_RESET0		4
-#define IMX8MQ_RESET_A53_CORE_RESET1		5
-#define IMX8MQ_RESET_A53_CORE_RESET2		6
-#define IMX8MQ_RESET_A53_CORE_RESET3		7
-#define IMX8MQ_RESET_A53_DBG_RESET0		8
-#define IMX8MQ_RESET_A53_DBG_RESET1		9
-#define IMX8MQ_RESET_A53_DBG_RESET2		10
-#define IMX8MQ_RESET_A53_DBG_RESET3		11
-#define IMX8MQ_RESET_A53_ETM_RESET0		12
-#define IMX8MQ_RESET_A53_ETM_RESET1		13
-#define IMX8MQ_RESET_A53_ETM_RESET2		14
-#define IMX8MQ_RESET_A53_ETM_RESET3		15
-#define IMX8MQ_RESET_A53_SOC_DBG_RESET		16
-#define IMX8MQ_RESET_A53_L2RESET		17
-#define IMX8MQ_RESET_SW_NON_SCLR_M4C_RST	18
-#define IMX8MQ_RESET_OTG1_PHY_RESET		19
-#define IMX8MQ_RESET_OTG2_PHY_RESET		20
-#define IMX8MQ_RESET_MIPI_DSI_RESET_BYTE_N	21
-#define IMX8MQ_RESET_MIPI_DSI_RESET_N		22
-#define IMX8MQ_RESET_MIPI_DIS_DPI_RESET_N	23
-#define IMX8MQ_RESET_MIPI_DIS_ESC_RESET_N	24
-#define IMX8MQ_RESET_MIPI_DIS_PCLK_RESET_N	25
-#define IMX8MQ_RESET_PCIEPHY			26
-#define IMX8MQ_RESET_PCIEPHY_PERST		27
-#define IMX8MQ_RESET_PCIE_CTRL_APPS_EN		28
-#define IMX8MQ_RESET_PCIE_CTRL_APPS_TURNOFF	29
-#define IMX8MQ_RESET_HDMI_PHY_APB_RESET		30
-#define IMX8MQ_RESET_DISP_RESET			31
-#define IMX8MQ_RESET_GPU_RESET			32
-#define IMX8MQ_RESET_VPU_RESET			33
-#define IMX8MQ_RESET_PCIEPHY2			34
-#define IMX8MQ_RESET_PCIEPHY2_PERST		35
-#define IMX8MQ_RESET_PCIE2_CTRL_APPS_EN		36
-#define IMX8MQ_RESET_PCIE2_CTRL_APPS_TURNOFF	37
-#define IMX8MQ_RESET_MIPI_CSI1_CORE_RESET	38
-#define IMX8MQ_RESET_MIPI_CSI1_PHY_REF_RESET	39
-#define IMX8MQ_RESET_MIPI_CSI1_ESC_RESET	40
-#define IMX8MQ_RESET_MIPI_CSI2_CORE_RESET	41
-#define IMX8MQ_RESET_MIPI_CSI2_PHY_REF_RESET	42
-#define IMX8MQ_RESET_MIPI_CSI2_ESC_RESET	43
-#define IMX8MQ_RESET_DDRC1_PRST			44
-#define IMX8MQ_RESET_DDRC1_CORE_RESET		45
-#define IMX8MQ_RESET_DDRC1_PHY_RESET		46
-#define IMX8MQ_RESET_DDRC2_PRST			47
-#define IMX8MQ_RESET_DDRC2_CORE_RESET		48
-#define IMX8MQ_RESET_DDRC2_PHY_RESET		49
-
-#define IMX8MQ_RESET_NUM			50
-
-#endif
-- 
2.24.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
