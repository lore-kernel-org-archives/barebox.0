Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gpOcS-0004wK-LU
 for barebox@lists.infradead.org; Fri, 01 Feb 2019 02:31:55 +0000
Received: by mail-pf1-x444.google.com with SMTP id w73so2395413pfk.10
 for <barebox@lists.infradead.org>; Thu, 31 Jan 2019 18:31:52 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 31 Jan 2019 18:31:24 -0800
Message-Id: <20190201023133.1078-7-andrew.smirnov@gmail.com>
In-Reply-To: <20190201023133.1078-1-andrew.smirnov@gmail.com>
References: <20190201023133.1078-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 06/15] soc: imx: gpcv2: prefix i.MX7 specific defines
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit a800f418420d37f60fa471665a156c45d2702437

  So we can add i.MX8M support without introducing name clashes.

  Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
  Signed-off-by: Shawn Guo <shawnguo@kernel.org>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/soc/imx/gpcv2.c | 44 ++++++++++++++++++++---------------------
 1 file changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
index 7bf45d42b..24a6b96c1 100644
--- a/drivers/soc/imx/gpcv2.c
+++ b/drivers/soc/imx/gpcv2.c
@@ -24,19 +24,19 @@
 #define GPC_LPCR_A_BSC			0x000
 
 #define GPC_PGC_CPU_MAPPING		0x0ec
-#define USB_HSIC_PHY_A_DOMAIN		BIT(6)
-#define USB_OTG2_PHY_A_DOMAIN		BIT(5)
-#define USB_OTG1_PHY_A_DOMAIN		BIT(4)
-#define PCIE_PHY_A_DOMAIN		BIT(3)
-#define MIPI_PHY_A_DOMAIN		BIT(2)
+#define IMX7_USB_HSIC_PHY_A_DOMAIN	BIT(6)
+#define IMX7_USB_OTG2_PHY_A_DOMAIN	BIT(5)
+#define IMX7_USB_OTG1_PHY_A_DOMAIN	BIT(4)
+#define IMX7_PCIE_PHY_A_DOMAIN		BIT(3)
+#define IMX7_MIPI_PHY_A_DOMAIN		BIT(2)
 
 #define GPC_PU_PGC_SW_PUP_REQ		0x0f8
 #define GPC_PU_PGC_SW_PDN_REQ		0x104
-#define USB_HSIC_PHY_SW_Pxx_REQ		BIT(4)
-#define USB_OTG2_PHY_SW_Pxx_REQ		BIT(3)
-#define USB_OTG1_PHY_SW_Pxx_REQ		BIT(2)
-#define PCIE_PHY_SW_Pxx_REQ		BIT(1)
-#define MIPI_PHY_SW_Pxx_REQ		BIT(0)
+#define IMX7_USB_HSIC_PHY_SW_Pxx_REQ	BIT(4)
+#define IMX7_USB_OTG2_PHY_SW_Pxx_REQ	BIT(3)
+#define IMX7_USB_OTG1_PHY_SW_Pxx_REQ	BIT(2)
+#define IMX7_PCIE_PHY_SW_Pxx_REQ	BIT(1)
+#define IMX7_MIPI_PHY_SW_Pxx_REQ	BIT(0)
 
 #define GPC_M4_PU_PDN_FLG		0x1bc
 
@@ -46,9 +46,9 @@
  * GPC_PGC memory map are incorrect, below offset
  * values are from design RTL.
  */
-#define PGC_MIPI                       16
-#define PGC_PCIE                       17
-#define PGC_USB_HSIC                   20
+#define IMX7_PGC_MIPI                       16
+#define IMX7_PGC_PCIE                       17
+#define IMX7_PGC_USB_HSIC                   20
 #define GPC_PGC_CTRL(n)			(0x800 + (n) * 0x40)
 #define GPC_PGC_SR(n)			(GPC_PGC_CTRL(n) + 0xc)
 
@@ -166,11 +166,11 @@ static const struct imx_pgc_domain imx7_pgc_domains[] = {
 			.name      = "mipi-phy",
 		},
 		.bits  = {
-			.pxx = MIPI_PHY_SW_Pxx_REQ,
-			.map = MIPI_PHY_A_DOMAIN,
+			.pxx = IMX7_MIPI_PHY_SW_Pxx_REQ,
+			.map = IMX7_MIPI_PHY_A_DOMAIN,
 		},
 		.voltage   = 1000000,
-		.pgc	   = PGC_MIPI,
+		.pgc	   = IMX7_PGC_MIPI,
 	},
 
 	[IMX7_POWER_DOMAIN_PCIE_PHY] = {
@@ -178,11 +178,11 @@ static const struct imx_pgc_domain imx7_pgc_domains[] = {
 			.name      = "pcie-phy",
 		},
 		.bits  = {
-			.pxx = PCIE_PHY_SW_Pxx_REQ,
-			.map = PCIE_PHY_A_DOMAIN,
+			.pxx = IMX7_PCIE_PHY_SW_Pxx_REQ,
+			.map = IMX7_PCIE_PHY_A_DOMAIN,
 		},
 		.voltage   = 1000000,
-		.pgc	   = PGC_PCIE,
+		.pgc	   = IMX7_PGC_PCIE,
 	},
 
 	[IMX7_POWER_DOMAIN_USB_HSIC_PHY] = {
@@ -190,11 +190,11 @@ static const struct imx_pgc_domain imx7_pgc_domains[] = {
 			.name      = "usb-hsic-phy",
 		},
 		.bits  = {
-			.pxx = USB_HSIC_PHY_SW_Pxx_REQ,
-			.map = USB_HSIC_PHY_A_DOMAIN,
+			.pxx = IMX7_USB_HSIC_PHY_SW_Pxx_REQ,
+			.map = IMX7_USB_HSIC_PHY_A_DOMAIN,
 	},
 		.voltage   = 1200000,
-		.pgc	   = PGC_USB_HSIC,
+		.pgc	   = IMX7_PGC_USB_HSIC,
 	},
 };
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
