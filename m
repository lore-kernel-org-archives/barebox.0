Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gr8g0-0003CB-Cs
 for barebox@lists.infradead.org; Tue, 05 Feb 2019 21:54:53 +0000
Received: by mail-pl1-x643.google.com with SMTP id gn14so2113691plb.10
 for <barebox@lists.infradead.org>; Tue, 05 Feb 2019 13:54:44 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue,  5 Feb 2019 13:54:09 -0800
Message-Id: <20190205215411.589-14-andrew.smirnov@gmail.com>
In-Reply-To: <20190205215411.589-1-andrew.smirnov@gmail.com>
References: <20190205215411.589-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 13/15] PCI: imx6: Mark PHY functions as i.MX6 specific
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit 2f532d07f0cce72f88a4a0532ae11be6a2745697

  PCIe PHY IP block on i.MX7D differs from the one used on i.MX6 family,
  so none of the code in the current implementation of
  imx6_setup_phy_mpll() or imx6_pcie_reset_phy() is applicable.

  Introduce IMX6_PCIE_FLAG_IMX6_PHY and check for it in the aforementioned
  functions to make sure they are only executed on appropriate PCIe IP
  variants.

  Tested-by: Trent Piepho <tpiepho@impinj.com>
  Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
  [lorenzo.pieralisi@arm.com: updated log]
  Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
  Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
  Cc: Bjorn Helgaas <bhelgaas@google.com>
  Cc: Fabio Estevam <fabio.estevam@nxp.com>
  Cc: Chris Healy <cphealy@gmail.com>
  Cc: Lucas Stach <l.stach@pengutronix.de>
  Cc: Leonard Crestez <leonard.crestez@nxp.com>
  Cc: "A.s. Dong" <aisheng.dong@nxp.com>
  Cc: Richard Zhu <hongxing.zhu@nxp.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci-imx6.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index dcebd7658..2911a019c 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -42,8 +42,11 @@ enum imx6_pcie_variants {
 	IMX7D,
 };
 
+#define IMX6_PCIE_FLAG_IMX6_PHY			BIT(0)
+
 struct imx6_pcie_drvdata {
 	enum imx6_pcie_variants variant;
+	u32 flags;
 };
 
 struct imx6_pcie {
@@ -235,6 +238,9 @@ static void imx6_pcie_reset_phy(struct imx6_pcie *imx6_pcie)
 {
 	uint32_t temp;
 
+	if (!(imx6_pcie->drvdata->flags & IMX6_PCIE_FLAG_IMX6_PHY))
+		return;
+
 	pcie_phy_read(imx6_pcie, PHY_RX_OVRD_IN_LO, &temp);
 	temp |= (PHY_RX_OVRD_IN_LO_RX_DATA_EN |
 		 PHY_RX_OVRD_IN_LO_RX_PLL_EN);
@@ -756,9 +762,11 @@ static void imx6_pcie_remove(struct device_d *dev)
 static const struct imx6_pcie_drvdata drvdata[] = {
 	[IMX6Q] = {
 		.variant = IMX6Q,
+		.flags = IMX6_PCIE_FLAG_IMX6_PHY,
 	},
 	[IMX6QP] = {
 		.variant = IMX6QP,
+		.flags = IMX6_PCIE_FLAG_IMX6_PHY,
 	},
 	[IMX7D] = {
 		.variant = IMX7D,
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
