Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gr8g1-0003Dc-Kh
 for barebox@lists.infradead.org; Tue, 05 Feb 2019 21:54:51 +0000
Received: by mail-pl1-x641.google.com with SMTP id k15so2118273pls.8
 for <barebox@lists.infradead.org>; Tue, 05 Feb 2019 13:54:45 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue,  5 Feb 2019 13:54:10 -0800
Message-Id: <20190205215411.589-15-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 14/15] PCI: imx6: Convert DIRECT_SPEED_CHANGE quirk code to
 use a flag
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit 4c458bb347ae016e75f6c61dab95ce530f4ff6fc

  Both i.MX7D and i.MX8MQ have the same behaviour when it comes to
  clearing DIRECT_SPEED_CHANGE bit when no speed change occurs, so to
  handle variants correctly add a flag instead of checking the IP block
  variant.

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
 drivers/pci/pci-imx6.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index 2911a019c..d77c24990 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -43,6 +43,7 @@ enum imx6_pcie_variants {
 };
 
 #define IMX6_PCIE_FLAG_IMX6_PHY			BIT(0)
+#define IMX6_PCIE_FLAG_IMX6_SPEED_CHANGE	BIT(1)
 
 struct imx6_pcie_drvdata {
 	enum imx6_pcie_variants variant;
@@ -524,7 +525,8 @@ static int imx6_pcie_establish_link(struct imx6_pcie *imx6_pcie)
 		tmp |= PORT_LOGIC_SPEED_CHANGE;
 		dw_pcie_writel_dbi(pci, PCIE_LINK_WIDTH_SPEED_CONTROL, tmp);
 
-		if (imx6_pcie->drvdata->variant != IMX7D) {
+		if (imx6_pcie->drvdata->flags &
+		    IMX6_PCIE_FLAG_IMX6_SPEED_CHANGE) {
 			/*
 			 * On i.MX7, DIRECT_SPEED_CHANGE behaves
 			 * differently from i.MX6 family when no link
@@ -762,11 +764,13 @@ static void imx6_pcie_remove(struct device_d *dev)
 static const struct imx6_pcie_drvdata drvdata[] = {
 	[IMX6Q] = {
 		.variant = IMX6Q,
-		.flags = IMX6_PCIE_FLAG_IMX6_PHY,
+		.flags = IMX6_PCIE_FLAG_IMX6_PHY |
+			 IMX6_PCIE_FLAG_IMX6_SPEED_CHANGE,
 	},
 	[IMX6QP] = {
 		.variant = IMX6QP,
-		.flags = IMX6_PCIE_FLAG_IMX6_PHY,
+		.flags = IMX6_PCIE_FLAG_IMX6_PHY |
+			 IMX6_PCIE_FLAG_IMX6_SPEED_CHANGE,
 	},
 	[IMX7D] = {
 		.variant = IMX7D,
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
