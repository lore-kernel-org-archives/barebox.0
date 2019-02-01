Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gpOcT-0004xI-L8
 for barebox@lists.infradead.org; Fri, 01 Feb 2019 02:31:55 +0000
Received: by mail-pl1-x641.google.com with SMTP id z23so2422573plo.0
 for <barebox@lists.infradead.org>; Thu, 31 Jan 2019 18:31:53 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 31 Jan 2019 18:31:25 -0800
Message-Id: <20190201023133.1078-8-andrew.smirnov@gmail.com>
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
Subject: [PATCH 07/15] soc: imx: gpcv2: add support for i.MX8MQ SoC
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit 685efffe37c921cf1d56dd3c8617dc67bc343a99

  The GPCv2 on the Freescale i.MX8MQ SoC works in the same way as the
  GPCv2 on the i.MX7, but only controls more power domains with a
  different mapping.

  Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
  Acked-by: Rob Herring <robh@kernel.org>
  Signed-off-by: Shawn Guo <shawnguo@kernel.org>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/soc/imx/Kconfig  |   8 +-
 drivers/soc/imx/Makefile |   2 +-
 drivers/soc/imx/gpcv2.c  | 175 +++++++++++++++++++++++++++++++++++++++
 3 files changed, 180 insertions(+), 5 deletions(-)

diff --git a/drivers/soc/imx/Kconfig b/drivers/soc/imx/Kconfig
index a78a9e396..32ec76fea 100644
--- a/drivers/soc/imx/Kconfig
+++ b/drivers/soc/imx/Kconfig
@@ -1,9 +1,9 @@
 menu "i.MX SoC drivers"
 
-config IMX7_PM_DOMAINS
-	bool "i.MX7 PM domains"
-	depends on ARCH_IMX7
+config IMX_GPCV2_PM_DOMAINS
+        bool "i.MX GPCv2 PM domains"
+	depends on ARCH_IMX7 || ARCH_IMX8MQ
 	select PM_GENERIC_DOMAINS
-	default y if ARCH_IMX7
+	default y if ARCH_IMX7 || ARCH_IMX8MQ
 
 endmenu
diff --git a/drivers/soc/imx/Makefile b/drivers/soc/imx/Makefile
index b039f77dc..d60056c7b 100644
--- a/drivers/soc/imx/Makefile
+++ b/drivers/soc/imx/Makefile
@@ -1 +1 @@
-obj-$(CONFIG_IMX7_PM_DOMAINS) += gpcv2.o
+obj-$(CONFIG_IMX_GPCV2_PM_DOMAINS) += gpcv2.o
diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
index 24a6b96c1..bc373ecf4 100644
--- a/drivers/soc/imx/gpcv2.c
+++ b/drivers/soc/imx/gpcv2.c
@@ -21,23 +21,55 @@
 #include <regulator.h>
 #include <dt-bindings/power/imx7-power.h>
 
+#include <dt-bindings/power/imx8mq-power.h>
+
 #define GPC_LPCR_A_BSC			0x000
 
 #define GPC_PGC_CPU_MAPPING		0x0ec
+
 #define IMX7_USB_HSIC_PHY_A_DOMAIN	BIT(6)
 #define IMX7_USB_OTG2_PHY_A_DOMAIN	BIT(5)
 #define IMX7_USB_OTG1_PHY_A_DOMAIN	BIT(4)
 #define IMX7_PCIE_PHY_A_DOMAIN		BIT(3)
 #define IMX7_MIPI_PHY_A_DOMAIN		BIT(2)
 
+#define IMX8M_PCIE2_A53_DOMAIN		BIT(15)
+#define IMX8M_MIPI_CSI2_A53_DOMAIN	BIT(14)
+#define IMX8M_MIPI_CSI1_A53_DOMAIN	BIT(13)
+#define IMX8M_DISP_A53_DOMAIN		BIT(12)
+#define IMX8M_HDMI_A53_DOMAIN		BIT(11)
+#define IMX8M_VPU_A53_DOMAIN		BIT(10)
+#define IMX8M_GPU_A53_DOMAIN		BIT(9)
+#define IMX8M_DDR2_A53_DOMAIN		BIT(8)
+#define IMX8M_DDR1_A53_DOMAIN		BIT(7)
+#define IMX8M_OTG2_A53_DOMAIN		BIT(5)
+#define IMX8M_OTG1_A53_DOMAIN		BIT(4)
+#define IMX8M_PCIE1_A53_DOMAIN		BIT(3)
+#define IMX8M_MIPI_A53_DOMAIN		BIT(2)
+
 #define GPC_PU_PGC_SW_PUP_REQ		0x0f8
 #define GPC_PU_PGC_SW_PDN_REQ		0x104
+
 #define IMX7_USB_HSIC_PHY_SW_Pxx_REQ	BIT(4)
 #define IMX7_USB_OTG2_PHY_SW_Pxx_REQ	BIT(3)
 #define IMX7_USB_OTG1_PHY_SW_Pxx_REQ	BIT(2)
 #define IMX7_PCIE_PHY_SW_Pxx_REQ	BIT(1)
 #define IMX7_MIPI_PHY_SW_Pxx_REQ	BIT(0)
 
+#define IMX8M_PCIE2_SW_Pxx_REQ		BIT(13)
+#define IMX8M_MIPI_CSI2_SW_Pxx_REQ	BIT(12)
+#define IMX8M_MIPI_CSI1_SW_Pxx_REQ	BIT(11)
+#define IMX8M_DISP_SW_Pxx_REQ		BIT(10)
+#define IMX8M_HDMI_SW_Pxx_REQ		BIT(9)
+#define IMX8M_VPU_SW_Pxx_REQ		BIT(8)
+#define IMX8M_GPU_SW_Pxx_REQ		BIT(7)
+#define IMX8M_DDR2_SW_Pxx_REQ		BIT(6)
+#define IMX8M_DDR1_SW_Pxx_REQ		BIT(5)
+#define IMX8M_OTG2_SW_Pxx_REQ		BIT(3)
+#define IMX8M_OTG1_SW_Pxx_REQ		BIT(2)
+#define IMX8M_PCIE1_SW_Pxx_REQ		BIT(1)
+#define IMX8M_MIPI_SW_Pxx_REQ		BIT(0)
+
 #define GPC_M4_PU_PDN_FLG		0x1bc
 
 /*
@@ -49,6 +81,20 @@
 #define IMX7_PGC_MIPI                       16
 #define IMX7_PGC_PCIE                       17
 #define IMX7_PGC_USB_HSIC                   20
+
+
+#define IMX8M_PGC_MIPI			16
+#define IMX8M_PGC_PCIE1		17
+#define IMX8M_PGC_OTG1			18
+#define IMX8M_PGC_OTG2			19
+#define IMX8M_PGC_DDR1			21
+#define IMX8M_PGC_GPU			23
+#define IMX8M_PGC_VPU			24
+#define IMX8M_PGC_DISP			26
+#define IMX8M_PGC_MIPI_CSI1		27
+#define IMX8M_PGC_MIPI_CSI2		28
+#define IMX8M_PGC_PCIE2		29
+
 #define GPC_PGC_CTRL(n)			(0x800 + (n) * 0x40)
 #define GPC_PGC_SR(n)			(GPC_PGC_CTRL(n) + 0xc)
 
@@ -203,6 +249,134 @@ static const struct imx_pgc_domain_data imx7_pgc_domain_data = {
        .domains_num = ARRAY_SIZE(imx7_pgc_domains),
 };
 
+static const struct imx_pgc_domain imx8m_pgc_domains[] = {
+	[IMX8M_POWER_DOMAIN_MIPI] = {
+		.genpd = {
+			.name      = "mipi",
+		},
+		.bits  = {
+			.pxx = IMX8M_MIPI_SW_Pxx_REQ,
+			.map = IMX8M_MIPI_A53_DOMAIN,
+		},
+		.pgc	   = IMX8M_PGC_MIPI,
+	},
+
+	[IMX8M_POWER_DOMAIN_PCIE1] = {
+		.genpd = {
+			.name = "pcie1",
+		},
+		.bits  = {
+			.pxx = IMX8M_PCIE1_SW_Pxx_REQ,
+			.map = IMX8M_PCIE1_A53_DOMAIN,
+		},
+		.pgc   = IMX8M_PGC_PCIE1,
+	},
+
+	[IMX8M_POWER_DOMAIN_USB_OTG1] = {
+		.genpd = {
+			.name = "usb-otg1",
+		},
+		.bits  = {
+			.pxx = IMX8M_OTG1_SW_Pxx_REQ,
+			.map = IMX8M_OTG1_A53_DOMAIN,
+		},
+		.pgc   = IMX8M_PGC_OTG1,
+	},
+
+	[IMX8M_POWER_DOMAIN_USB_OTG2] = {
+		.genpd = {
+			.name = "usb-otg2",
+		},
+		.bits  = {
+			.pxx = IMX8M_OTG2_SW_Pxx_REQ,
+			.map = IMX8M_OTG2_A53_DOMAIN,
+		},
+		.pgc   = IMX8M_PGC_OTG2,
+	},
+
+	[IMX8M_POWER_DOMAIN_DDR1] = {
+		.genpd = {
+			.name = "ddr1",
+		},
+		.bits  = {
+			.pxx = IMX8M_DDR1_SW_Pxx_REQ,
+			.map = IMX8M_DDR2_A53_DOMAIN,
+		},
+		.pgc   = IMX8M_PGC_DDR1,
+	},
+
+	[IMX8M_POWER_DOMAIN_GPU] = {
+		.genpd = {
+			.name = "gpu",
+		},
+		.bits  = {
+			.pxx = IMX8M_GPU_SW_Pxx_REQ,
+			.map = IMX8M_GPU_A53_DOMAIN,
+		},
+		.pgc   = IMX8M_PGC_GPU,
+	},
+
+	[IMX8M_POWER_DOMAIN_VPU] = {
+		.genpd = {
+			.name = "vpu",
+		},
+		.bits  = {
+			.pxx = IMX8M_VPU_SW_Pxx_REQ,
+			.map = IMX8M_VPU_A53_DOMAIN,
+		},
+		.pgc   = IMX8M_PGC_VPU,
+	},
+
+	[IMX8M_POWER_DOMAIN_DISP] = {
+		.genpd = {
+			.name = "disp",
+		},
+		.bits  = {
+			.pxx = IMX8M_DISP_SW_Pxx_REQ,
+			.map = IMX8M_DISP_A53_DOMAIN,
+		},
+		.pgc   = IMX8M_PGC_DISP,
+	},
+
+	[IMX8M_POWER_DOMAIN_MIPI_CSI1] = {
+		.genpd = {
+			.name = "mipi-csi1",
+		},
+		.bits  = {
+			.pxx = IMX8M_MIPI_CSI1_SW_Pxx_REQ,
+			.map = IMX8M_MIPI_CSI1_A53_DOMAIN,
+		},
+		.pgc   = IMX8M_PGC_MIPI_CSI1,
+	},
+
+	[IMX8M_POWER_DOMAIN_MIPI_CSI2] = {
+		.genpd = {
+			.name = "mipi-csi2",
+		},
+		.bits  = {
+			.pxx = IMX8M_MIPI_CSI2_SW_Pxx_REQ,
+			.map = IMX8M_MIPI_CSI2_A53_DOMAIN,
+		},
+		.pgc   = IMX8M_PGC_MIPI_CSI2,
+	},
+
+	[IMX8M_POWER_DOMAIN_PCIE2] = {
+		.genpd = {
+			.name = "pcie2",
+		},
+		.bits  = {
+			.pxx = IMX8M_PCIE2_SW_Pxx_REQ,
+			.map = IMX8M_PCIE2_A53_DOMAIN,
+		},
+		.pgc   = IMX8M_PGC_PCIE2,
+	},
+};
+
+static const struct imx_pgc_domain_data imx8m_pgc_domain_data = {
+	.domains = imx8m_pgc_domains,
+	.domains_num = ARRAY_SIZE(imx8m_pgc_domains),
+};
+
 static int imx_pgc_domain_probe(struct device_d *dev)
 {
 	struct imx_pgc_domain *domain = dev->priv;
@@ -312,6 +486,7 @@ static int imx_gpcv2_probe(struct device_d *dev)
 
 static const struct of_device_id imx_gpcv2_dt_ids[] = {
 	{ .compatible = "fsl,imx7d-gpc", .data = &imx7_pgc_domain_data },
+	{ .compatible = "fsl,imx8mq-gpc", .data = &imx8m_pgc_domain_data, },
 	{ }
 };
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
