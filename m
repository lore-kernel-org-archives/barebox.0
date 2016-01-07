Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aH73l-0002x6-94
 for barebox@lists.infradead.ORg; Thu, 07 Jan 2016 09:40:46 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1aH73P-0002kg-Op
 for barebox@lists.infradead.org; Thu, 07 Jan 2016 10:40:23 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu,  7 Jan 2016 10:40:23 +0100
Message-Id: <1452159623-24327-1-git-send-email-l.stach@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] PCI: imx6: properly shut down core when leaving barebox
To: barebox@lists.infradead.org

As the i.MX6 PCIe core doesn't have a software reachable reset
wired up, it's hard for any driver to get the core into a known
good state.

To make it easier for whatever software follows barebox, bring
back the core into a safe state before leaving barebox.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
This patch is on top of Andrey Smirnovs changes to the
imx6 pcie driver.
---
 drivers/pci/pci-imx6.c | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index 3a3edd8e218e..d32bd2b4cefa 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -608,9 +608,35 @@ static int __init imx6_pcie_probe(struct device_d *dev)
 	if (ret < 0)
 		return ret;
 
+	dev->priv = imx6_pcie;
+
 	return 0;
 }
 
+static void imx6_pcie_remove(struct device_d *dev)
+{
+	struct imx6_pcie *imx6_pcie = dev->priv;
+	u32 val;
+
+	val = readl(imx6_pcie->pp.dbi_base + PCIE_PL_PFLR);
+	val &= ~PCIE_PL_PFLR_LINK_STATE_MASK;
+	val |= PCIE_PL_PFLR_FORCE_LINK;
+	data_abort_mask();
+	writel(val, imx6_pcie->pp.dbi_base + PCIE_PL_PFLR);
+	data_abort_unmask();
+
+	val = readl(imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
+	val &= ~IMX6Q_GPR12_PCIE_CTL_2;
+	writel(val, imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
+
+	val = readl(imx6_pcie->iomuxc_gpr + IOMUXC_GPR1);
+	val |= IMX6Q_GPR1_PCIE_TEST_PD;
+	writel(val, imx6_pcie->iomuxc_gpr + IOMUXC_GPR1);
+
+	val &= ~IMX6Q_GPR1_PCIE_REF_CLK_EN;
+	writel(val, imx6_pcie->iomuxc_gpr + IOMUXC_GPR1);
+}
+
 static struct of_device_id imx6_pcie_of_match[] = {
 	{ .compatible = "fsl,imx6q-pcie", },
 	{},
@@ -620,6 +646,7 @@ static struct driver_d imx6_pcie_driver = {
 	.name = "imx6-pcie",
 	.of_compatible = DRV_OF_COMPAT(imx6_pcie_of_match),
 	.probe = imx6_pcie_probe,
+	.remove = imx6_pcie_remove,
 };
 device_platform_driver(imx6_pcie_driver);
 
-- 
2.6.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
