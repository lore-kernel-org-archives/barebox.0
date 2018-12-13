Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXLAp-00063t-Bg
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 07:13:02 +0000
Received: by mail-pl1-x641.google.com with SMTP id t13so594730ply.13
 for <barebox@lists.infradead.org>; Wed, 12 Dec 2018 23:12:33 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 12 Dec 2018 23:11:19 -0800
Message-Id: <20181213071144.31691-34-andrew.smirnov@gmail.com>
In-Reply-To: <20181213071144.31691-1-andrew.smirnov@gmail.com>
References: <20181213071144.31691-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 33/58] PCI: imx6: Pass struct imx6_pcie to PHY accessors
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit 8bad7f2fc3006d1752c426343ca77f1fbe61cf00

  Pass the struct imx6_pcie pointer, not dbi_base address, to PHY accessors.
  This enables future simplifications.  No functional change intended.

  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci-imx6.c | 41 +++++++++++++++++++++++------------------
 1 file changed, 23 insertions(+), 18 deletions(-)

diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index a3658844c..8b78f3ec1 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -94,8 +94,9 @@ struct imx6_pcie {
 #define PHY_RX_OVRD_IN_LO_RX_DATA_EN (1 << 5)
 #define PHY_RX_OVRD_IN_LO_RX_PLL_EN (1 << 3)
 
-static int pcie_phy_poll_ack(void __iomem *dbi_base, int exp_val)
+static int pcie_phy_poll_ack(struct imx6_pcie *imx6_pcie, int exp_val)
 {
+	void __iomem *dbi_base = imx6_pcie->pp.dbi_base;
 	u32 val;
 	u32 max_iterations = 10;
 	u32 wait_counter = 0;
@@ -114,8 +115,9 @@ static int pcie_phy_poll_ack(void __iomem *dbi_base, int exp_val)
 	return -ETIMEDOUT;
 }
 
-static int pcie_phy_wait_ack(void __iomem *dbi_base, int addr)
+static int pcie_phy_wait_ack(struct imx6_pcie *imx6_pcie, int addr)
 {
+	void __iomem *dbi_base = imx6_pcie->pp.dbi_base;
 	u32 val;
 	int ret;
 
@@ -125,23 +127,24 @@ static int pcie_phy_wait_ack(void __iomem *dbi_base, int addr)
 	val |= (0x1 << PCIE_PHY_CTRL_CAP_ADR_LOC);
 	writel(val, dbi_base + PCIE_PHY_CTRL);
 
-	ret = pcie_phy_poll_ack(dbi_base, 1);
+	ret = pcie_phy_poll_ack(imx6_pcie, 1);
 	if (ret)
 		return ret;
 
 	val = addr << PCIE_PHY_CTRL_DATA_LOC;
 	writel(val, dbi_base + PCIE_PHY_CTRL);
 
-	return pcie_phy_poll_ack(dbi_base, 0);
+	return pcie_phy_poll_ack(imx6_pcie, 0);
 }
 
 /* Read from the 16-bit PCIe PHY control registers (not memory-mapped) */
-static int pcie_phy_read(void __iomem *dbi_base, int addr , int *data)
+static int pcie_phy_read(struct imx6_pcie *imx6_pcie, int addr , int *data)
 {
+	void __iomem *dbi_base = imx6_pcie->pp.dbi_base;
 	u32 val, phy_ctl;
 	int ret;
 
-	ret = pcie_phy_wait_ack(dbi_base, addr);
+	ret = pcie_phy_wait_ack(imx6_pcie, addr);
 	if (ret)
 		return ret;
 
@@ -149,7 +152,7 @@ static int pcie_phy_read(void __iomem *dbi_base, int addr , int *data)
 	phy_ctl = 0x1 << PCIE_PHY_CTRL_RD_LOC;
 	writel(phy_ctl, dbi_base + PCIE_PHY_CTRL);
 
-	ret = pcie_phy_poll_ack(dbi_base, 1);
+	ret = pcie_phy_poll_ack(imx6_pcie, 1);
 	if (ret)
 		return ret;
 
@@ -159,17 +162,18 @@ static int pcie_phy_read(void __iomem *dbi_base, int addr , int *data)
 	/* deassert Read signal */
 	writel(0x00, dbi_base + PCIE_PHY_CTRL);
 
-	return pcie_phy_poll_ack(dbi_base, 0);
+	return pcie_phy_poll_ack(imx6_pcie, 0);
 }
 
-static int pcie_phy_write(void __iomem *dbi_base, int addr, int data)
+static int pcie_phy_write(struct imx6_pcie *imx6_pcie, int addr, int data)
 {
+	void __iomem *dbi_base = imx6_pcie->pp.dbi_base;
 	u32 var;
 	int ret;
 
 	/* write addr */
 	/* cap addr */
-	ret = pcie_phy_wait_ack(dbi_base, addr);
+	ret = pcie_phy_wait_ack(imx6_pcie, addr);
 	if (ret)
 		return ret;
 
@@ -180,7 +184,7 @@ static int pcie_phy_write(void __iomem *dbi_base, int addr, int data)
 	var |= (0x1 << PCIE_PHY_CTRL_CAP_DAT_LOC);
 	writel(var, dbi_base + PCIE_PHY_CTRL);
 
-	ret = pcie_phy_poll_ack(dbi_base, 1);
+	ret = pcie_phy_poll_ack(imx6_pcie, 1);
 	if (ret)
 		return ret;
 
@@ -189,7 +193,7 @@ static int pcie_phy_write(void __iomem *dbi_base, int addr, int data)
 	writel(var, dbi_base + PCIE_PHY_CTRL);
 
 	/* wait for ack de-assertion */
-	ret = pcie_phy_poll_ack(dbi_base, 0);
+	ret = pcie_phy_poll_ack(imx6_pcie, 0);
 	if (ret)
 		return ret;
 
@@ -198,7 +202,7 @@ static int pcie_phy_write(void __iomem *dbi_base, int addr, int data)
 	writel(var, dbi_base + PCIE_PHY_CTRL);
 
 	/* wait for ack */
-	ret = pcie_phy_poll_ack(dbi_base, 1);
+	ret = pcie_phy_poll_ack(imx6_pcie, 1);
 	if (ret)
 		return ret;
 
@@ -207,7 +211,7 @@ static int pcie_phy_write(void __iomem *dbi_base, int addr, int data)
 	writel(var, dbi_base + PCIE_PHY_CTRL);
 
 	/* wait for ack de-assertion */
-	ret = pcie_phy_poll_ack(dbi_base, 0);
+	ret = pcie_phy_poll_ack(imx6_pcie, 0);
 	if (ret)
 		return ret;
 
@@ -218,19 +222,20 @@ static int pcie_phy_write(void __iomem *dbi_base, int addr, int data)
 
 static void imx6_pcie_reset_phy(struct pcie_port *pp)
 {
+	struct imx6_pcie *imx6_pcie = to_imx6_pcie(pp);
 	uint32_t temp;
 
-	pcie_phy_read(pp->dbi_base, PHY_RX_OVRD_IN_LO, &temp);
+	pcie_phy_read(imx6_pcie, PHY_RX_OVRD_IN_LO, &temp);
 	temp |= (PHY_RX_OVRD_IN_LO_RX_DATA_EN |
 		 PHY_RX_OVRD_IN_LO_RX_PLL_EN);
-	pcie_phy_write(pp->dbi_base, PHY_RX_OVRD_IN_LO, temp);
+	pcie_phy_write(imx6_pcie, PHY_RX_OVRD_IN_LO, temp);
 
 	udelay(2000);
 
-	pcie_phy_read(pp->dbi_base, PHY_RX_OVRD_IN_LO, &temp);
+	pcie_phy_read(imx6_pcie, PHY_RX_OVRD_IN_LO, &temp);
 	temp &= ~(PHY_RX_OVRD_IN_LO_RX_DATA_EN |
 		  PHY_RX_OVRD_IN_LO_RX_PLL_EN);
-	pcie_phy_write(pp->dbi_base, PHY_RX_OVRD_IN_LO, temp);
+	pcie_phy_write(imx6_pcie, PHY_RX_OVRD_IN_LO, temp);
 }
 
 static int imx6_pcie_assert_core_reset(struct pcie_port *pp)
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
