Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gpOcO-0004t2-He
 for barebox@lists.infradead.org; Fri, 01 Feb 2019 02:31:50 +0000
Received: by mail-pl1-x644.google.com with SMTP id u18so2400635plq.7
 for <barebox@lists.infradead.org>; Thu, 31 Jan 2019 18:31:48 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 31 Jan 2019 18:31:21 -0800
Message-Id: <20190201023133.1078-4-andrew.smirnov@gmail.com>
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
Subject: [PATCH 03/15] soc: imx: gpcv2: use A_CORE instread of A7 for more
 i.MX platforms
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit fea88b2b80ab7a01982a6494ea8e8099cddc7b38

  gpcv2 driver is NOT just used on i.MX7D which has Cortex-A7
  cores, but also on i.MX8MQ/i.MX8MM platforms which use Cortex-A53
  cores, so let's use A_CORE instread of A7 to avoid confusion.

  Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
  Acked-by: Andrey Smirnov <andrew.smirnov@gmail.com>
  Signed-off-by: Shawn Guo <shawnguo@kernel.org>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/soc/imx/gpcv2.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
index 158bfc02d..a48f6d9a7 100644
--- a/drivers/soc/imx/gpcv2.c
+++ b/drivers/soc/imx/gpcv2.c
@@ -26,14 +26,14 @@
 #include <regulator.h>
 #include <dt-bindings/power/imx7-power.h>
 
-#define GPC_LPCR_A7_BSC			0x000
+#define GPC_LPCR_A_BSC			0x000
 
 #define GPC_PGC_CPU_MAPPING		0x0ec
-#define USB_HSIC_PHY_A7_DOMAIN		BIT(6)
-#define USB_OTG2_PHY_A7_DOMAIN		BIT(5)
-#define USB_OTG1_PHY_A7_DOMAIN		BIT(4)
-#define PCIE_PHY_A7_DOMAIN		BIT(3)
-#define MIPI_PHY_A7_DOMAIN		BIT(2)
+#define USB_HSIC_PHY_A_DOMAIN		BIT(6)
+#define USB_OTG2_PHY_A_DOMAIN		BIT(5)
+#define USB_OTG1_PHY_A_DOMAIN		BIT(4)
+#define PCIE_PHY_A_DOMAIN		BIT(3)
+#define MIPI_PHY_A_DOMAIN		BIT(2)
 
 #define GPC_PU_PGC_SW_PUP_REQ		0x0f8
 #define GPC_PU_PGC_SW_PDN_REQ		0x104
@@ -167,7 +167,7 @@ static const struct imx7_pgc_domain imx7_pgc_domains[] = {
 		},
 		.bits  = {
 			.pxx = MIPI_PHY_SW_Pxx_REQ,
-			.map = MIPI_PHY_A7_DOMAIN,
+			.map = MIPI_PHY_A_DOMAIN,
 		},
 		.voltage   = 1000000,
 		.pgc	   = PGC_MIPI,
@@ -179,7 +179,7 @@ static const struct imx7_pgc_domain imx7_pgc_domains[] = {
 		},
 		.bits  = {
 			.pxx = PCIE_PHY_SW_Pxx_REQ,
-			.map = PCIE_PHY_A7_DOMAIN,
+			.map = PCIE_PHY_A_DOMAIN,
 		},
 		.voltage   = 1000000,
 		.pgc	   = PGC_PCIE,
@@ -191,7 +191,7 @@ static const struct imx7_pgc_domain imx7_pgc_domains[] = {
 		},
 		.bits  = {
 			.pxx = USB_HSIC_PHY_SW_Pxx_REQ,
-			.map = USB_HSIC_PHY_A7_DOMAIN,
+			.map = USB_HSIC_PHY_A_DOMAIN,
 	},
 		.voltage   = 1200000,
 		.pgc	   = PGC_USB_HSIC,
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
