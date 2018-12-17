Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYlKc-0003ZB-NF
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 05:20:44 +0000
Received: by mail-pf1-x443.google.com with SMTP id w73so5750329pfk.10
 for <barebox@lists.infradead.org>; Sun, 16 Dec 2018 21:20:32 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 16 Dec 2018 21:18:59 -0800
Message-Id: <20181217051925.17582-40-andrew.smirnov@gmail.com>
In-Reply-To: <20181217051925.17582-1-andrew.smirnov@gmail.com>
References: <20181217051925.17582-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 39/65] PCI: imx6: Pass device-specific struct to internal
 functions
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit e7d7705ace9494949863848ec77536d5a3287b0a

   Only interfaces used from outside the driver, e.g., those called by
   the DesignWare core, need to accept pointers to the generic struct
   pcie_port.  Internal interfaces can accept pointers to the
   device-specific struct, which makes them more straightforward.  No
   functional change intended.

   Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci-imx6.c | 53 ++++++++++++++++++++----------------------
 1 file changed, 25 insertions(+), 28 deletions(-)

diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index 8b78f3ec1..4692dab5b 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -220,9 +220,8 @@ static int pcie_phy_write(struct imx6_pcie *imx6_pcie, int addr, int data)
 	return 0;
 }
 
-static void imx6_pcie_reset_phy(struct pcie_port *pp)
+static void imx6_pcie_reset_phy(struct imx6_pcie *imx6_pcie)
 {
-	struct imx6_pcie *imx6_pcie = to_imx6_pcie(pp);
 	uint32_t temp;
 
 	pcie_phy_read(imx6_pcie, PHY_RX_OVRD_IN_LO, &temp);
@@ -238,9 +237,9 @@ static void imx6_pcie_reset_phy(struct pcie_port *pp)
 	pcie_phy_write(imx6_pcie, PHY_RX_OVRD_IN_LO, temp);
 }
 
-static int imx6_pcie_assert_core_reset(struct pcie_port *pp)
+static int imx6_pcie_assert_core_reset(struct imx6_pcie *imx6_pcie)
 {
-	struct imx6_pcie *imx6_pcie = to_imx6_pcie(pp);
+	struct pcie_port *pp = &imx6_pcie->pp;
 	u32 val, gpr1, gpr12;
 
 	switch (imx6_pcie->variant) {
@@ -289,9 +288,8 @@ static int imx6_pcie_assert_core_reset(struct pcie_port *pp)
 	return 0;
 }
 
-static int imx6_pcie_deassert_core_reset(struct pcie_port *pp)
+static int imx6_pcie_deassert_core_reset(struct imx6_pcie *imx6_pcie)
 {
-	struct imx6_pcie *imx6_pcie = to_imx6_pcie(pp);
 	int ret;
 	u32 gpr1;
 
@@ -358,9 +356,8 @@ err_pcie_phy:
 
 }
 
-static void imx6_pcie_init_phy(struct pcie_port *pp)
+static void imx6_pcie_init_phy(struct imx6_pcie *imx6_pcie)
 {
-	struct imx6_pcie *imx6_pcie = to_imx6_pcie(pp);
 	u32 gpr12, gpr8;
 
 	gpr12 = readl(imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
@@ -398,13 +395,14 @@ static void imx6_pcie_init_phy(struct pcie_port *pp)
 	writel(gpr8, imx6_pcie->iomuxc_gpr + IOMUXC_GPR8);
 }
 
-static int imx6_pcie_wait_for_link(struct pcie_port *pp)
+static int imx6_pcie_wait_for_link(struct imx6_pcie *imx6_pcie)
 {
-	return dw_pcie_wait_for_link(pp);
+	return dw_pcie_wait_for_link(&imx6_pcie->pp);
 }
 
-static int imx6_pcie_wait_for_speed_change(struct pcie_port *pp)
+static int imx6_pcie_wait_for_speed_change(struct imx6_pcie *imx6_pcie)
 {
+	struct pcie_port *pp = &imx6_pcie->pp;
 	struct device_d *dev = pp->dev;
 	uint32_t tmp;
 	uint64_t start = get_time_ns();
@@ -421,9 +419,9 @@ static int imx6_pcie_wait_for_speed_change(struct pcie_port *pp)
 }
 
 
-static int imx6_pcie_establish_link(struct pcie_port *pp)
+static int imx6_pcie_establish_link(struct imx6_pcie *imx6_pcie)
 {
-	struct imx6_pcie *imx6_pcie = to_imx6_pcie(pp);
+	struct pcie_port *pp = &imx6_pcie->pp;
 	struct device_d *dev = pp->dev;
 	uint32_t tmp;
 	int ret;
@@ -444,7 +442,7 @@ static int imx6_pcie_establish_link(struct pcie_port *pp)
 	gpr12 |= IMX6Q_GPR12_PCIE_CTL_2;
 	writel(gpr12, imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
 
-	ret = imx6_pcie_wait_for_link(pp);
+	ret = imx6_pcie_wait_for_link(imx6_pcie);
 	if (ret) {
 		dev_info(dev, "Link never came up\n");
 		goto err_reset_phy;
@@ -464,14 +462,14 @@ static int imx6_pcie_establish_link(struct pcie_port *pp)
 	tmp |= PORT_LOGIC_SPEED_CHANGE;
 	writel(tmp, pp->dbi_base + PCIE_LINK_WIDTH_SPEED_CONTROL);
 
-	ret = imx6_pcie_wait_for_speed_change(pp);
+	ret = imx6_pcie_wait_for_speed_change(imx6_pcie);
 	if (ret) {
 		dev_err(dev, "Failed to bring link up!\n");
 		goto err_reset_phy;
 	}
 
 	/* Make sure link training is finished as well! */
-	ret = imx6_pcie_wait_for_link(pp);
+	ret = imx6_pcie_wait_for_link(imx6_pcie);
 	if (ret) {
 		dev_err(dev, "Failed to bring link up!\n");
 		goto err_reset_phy;
@@ -486,22 +484,20 @@ err_reset_phy:
        dev_dbg(dev, "PHY DEBUG_R0=0x%08x DEBUG_R1=0x%08x\n",
                readl(pp->dbi_base + PCIE_PHY_DEBUG_R0),
                readl(pp->dbi_base + PCIE_PHY_DEBUG_R1));
-       imx6_pcie_reset_phy(pp);
+       imx6_pcie_reset_phy(imx6_pcie);
 
        return ret;
 }
 
 static void imx6_pcie_host_init(struct pcie_port *pp)
 {
-	imx6_pcie_assert_core_reset(pp);
-
-	imx6_pcie_init_phy(pp);
-
-	imx6_pcie_deassert_core_reset(pp);
+	struct imx6_pcie *imx6_pcie = to_imx6_pcie(pp);
 
+	imx6_pcie_assert_core_reset(imx6_pcie);
+	imx6_pcie_init_phy(imx6_pcie);
+	imx6_pcie_deassert_core_reset(imx6_pcie);
 	dw_pcie_setup_rc(pp);
-
-	imx6_pcie_establish_link(pp);
+	imx6_pcie_establish_link(imx6_pcie);
 }
 
 static int imx6_pcie_link_up(struct pcie_port *pp)
@@ -550,9 +546,10 @@ static struct pcie_host_ops imx6_pcie_host_ops = {
 	.host_init = imx6_pcie_host_init,
 };
 
-static int __init imx6_add_pcie_port(struct pcie_port *pp,
-			struct device_d *dev)
+static int __init imx6_add_pcie_port(struct imx6_pcie *imx6_pcie,
+				     struct device_d *dev)
 {
+	struct pcie_port *pp = &imx6_pcie->pp;
 	int ret;
 
 	pp->root_bus_nr = -1;
@@ -642,7 +639,7 @@ static int __init imx6_pcie_probe(struct device_d *dev)
 				 &imx6_pcie->tx_swing_low))
 		imx6_pcie->tx_swing_low = 127;
 
-	ret = imx6_add_pcie_port(pp, dev);
+	ret = imx6_add_pcie_port(imx6_pcie, dev);
 	if (ret < 0)
 		return ret;
 
@@ -655,7 +652,7 @@ static void imx6_pcie_remove(struct device_d *dev)
 {
 	struct imx6_pcie *imx6_pcie = dev->priv;
 
-	imx6_pcie_assert_core_reset(&imx6_pcie->pp);
+	imx6_pcie_assert_core_reset(imx6_pcie);
 }
 
 static struct of_device_id imx6_pcie_of_match[] = {
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
