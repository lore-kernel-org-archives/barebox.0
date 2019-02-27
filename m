Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gypiX-0002aw-U1
 for barebox@lists.infradead.org; Wed, 27 Feb 2019 03:17:11 +0000
Received: by mail-pl1-x643.google.com with SMTP id d15so7272208plr.1
 for <barebox@lists.infradead.org>; Tue, 26 Feb 2019 19:17:09 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 26 Feb 2019 19:16:51 -0800
Message-Id: <20190227031657.19896-2-andrew.smirnov@gmail.com>
In-Reply-To: <20190227031657.19896-1-andrew.smirnov@gmail.com>
References: <20190227031657.19896-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/7] PCI: imx6: Add code to request/control "pcie_aux" clock
 for i.MX8MQ
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit 29d6b80bc36be62ae38ed8ac3f7a426975fe7dfa

  The PCIe IP block has an additional clock, "pcie_aux", that needs to
  be controlled by the driver. Add code to support it.

  Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
  Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
  Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
  Cc: Bjorn Helgaas <bhelgaas@google.com>
  Cc: Fabio Estevam <fabio.estevam@nxp.com>
  Cc: Chris Healy <cphealy@gmail.com>
  Cc: Lucas Stach <l.stach@pengutronix.de>
  Cc: Leonard Crestez <leonard.crestez@nxp.com>
  Cc: "A.s. Dong" <aisheng.dong@nxp.com>
  Cc: Richard Zhu <hongxing.zhu@nxp.com>
  Cc: linux-imx@nxp.com
  Cc: linux-arm-kernel@lists.infradead.org
  Cc: linux-kernel@vger.kernel.org
  Cc: linux-pci@vger.kernel.org
  Cc: Rob Herring <robh@kernel.org>
  Cc: devicetree@vger.kernel.org

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci-imx6.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index 138b4ca8b..85307bad3 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -65,6 +65,7 @@ struct imx6_pcie {
 	struct clk		*pcie_bus;
 	struct clk		*pcie_phy;
 	struct clk		*pcie;
+	struct clk              *pcie_aux;
 	void __iomem		*iomuxc_gpr;
 	u32			controller_id;
 	struct reset_control	*pciephy_reset;
@@ -299,8 +300,10 @@ static unsigned int imx6_pcie_grp_offset(const struct imx6_pcie *imx6_pcie)
 
 static int imx6_pcie_enable_ref_clk(struct imx6_pcie *imx6_pcie)
 {
+	struct device_d *dev = imx6_pcie->pci->dev;
 	u32 gpr1, gpr1x;
 	unsigned int offset;
+	int ret;
 
 	switch (imx6_pcie->drvdata->variant) {
 	case IMX6QP:
@@ -323,6 +326,12 @@ static int imx6_pcie_enable_ref_clk(struct imx6_pcie *imx6_pcie)
 	case IMX7D:
 		break;
 	case IMX8MQ:
+		ret = clk_enable(imx6_pcie->pcie_aux);
+		if (ret) {
+			dev_err(dev, "unable to enable pcie_aux clock\n");
+			return ret;
+		}
+
 		offset = imx6_pcie_grp_offset(imx6_pcie);
 		/*
 		 * Set the over ride low and enabled
@@ -742,6 +751,13 @@ static int imx6_pcie_probe(struct device_d *dev)
 		if (iores->start == IMX8MQ_PCIE2_BASE_ADDR)
 			imx6_pcie->controller_id = 1;
 
+		imx6_pcie->pcie_aux = clk_get(dev, "pcie_aux");
+		if (IS_ERR(imx6_pcie->pcie_aux)) {
+			dev_err(dev,
+				"pcie_aux clock source missing or invalid\n");
+			return PTR_ERR(imx6_pcie->pcie_aux);
+		}
+
 		goto imx7d_init;
 	case IMX7D:
 		imx6_pcie->iomuxc_gpr = IOMEM(MX7_IOMUXC_GPR_BASE_ADDR);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
