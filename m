Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x22f.google.com ([2607:f8b0:400e:c00::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1auvh6-0001sl-Jv
 for barebox@lists.infradead.org; Tue, 26 Apr 2016 05:37:57 +0000
Received: by mail-pf0-x22f.google.com with SMTP id 206so2476406pfu.0
 for <barebox@lists.infradead.org>; Mon, 25 Apr 2016 22:37:36 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 25 Apr 2016 22:37:07 -0700
Message-Id: <1461649027-5046-10-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1461649027-5046-1-git-send-email-andrew.smirnov@gmail.com>
References: <1461649027-5046-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 9/9] PCI: imx6: Add DT bindings to configure PHY Tx driver
 settings
To: barebox@lists.infradead.org
Cc: Fabio Estevam <fabio.estevam@freescale.com>, Andrey Smirnov <andrew.smirnov@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>, Justin Waters <justin.waters@timesys.com>

The settings in GPR8 are dependent upon the particular layout of the
hardware platform.  As such, they should be configurable via the device
tree.

Look up PHY Tx driver settings from the device tree.  Fall back to the
original hard-coded values if they are not specified in the device tree.

[Andrey Smirnov: port to Barebox codebase]

Signed-off-by: Justin Waters <justin.waters@timesys.com>
Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci-imx6.c | 34 +++++++++++++++++++++++++++++++---
 1 file changed, 31 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index ee1a0c5..e25a956 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -51,6 +51,11 @@ struct imx6_pcie {
 	void __iomem		*iomuxc_gpr;
 	enum imx6_pcie_variants variant;
 	void __iomem		*mem_base;
+	u32                     tx_deemph_gen1;
+	u32                     tx_deemph_gen2_3p5db;
+	u32                     tx_deemph_gen2_6db;
+	u32                     tx_swing_full;
+	u32                     tx_swing_low;
 };
 
 /* PCIe Root Complex registers (memory-mapped) */
@@ -370,21 +375,23 @@ static void imx6_pcie_init_phy(struct pcie_port *pp)
 
 	gpr8 = readl(imx6_pcie->iomuxc_gpr + IOMUXC_GPR8);
 	gpr8 &= ~IMX6Q_GPR8_TX_DEEMPH_GEN1;
+	gpr8 |= imx6_pcie->tx_deemph_gen1 << 0;
 	writel(gpr8, imx6_pcie->iomuxc_gpr + IOMUXC_GPR8);
 
 	gpr8 &= ~IMX6Q_GPR8_TX_DEEMPH_GEN2_3P5DB;
+	gpr8 |= imx6_pcie->tx_deemph_gen2_3p5db << 6;
 	writel(gpr8, imx6_pcie->iomuxc_gpr + IOMUXC_GPR8);
 
 	gpr8 &= ~IMX6Q_GPR8_TX_DEEMPH_GEN2_6DB;
-	gpr8 |= 20 << 12;
+	gpr8 |= imx6_pcie->tx_deemph_gen2_6db << 12;
 	writel(gpr8, imx6_pcie->iomuxc_gpr + IOMUXC_GPR8);
 
 	gpr8 &= ~IMX6Q_GPR8_TX_SWING_FULL;
-	gpr8 |= 127 << 18;
+	gpr8 |= imx6_pcie->tx_swing_full << 18;
 	writel(gpr8, imx6_pcie->iomuxc_gpr + IOMUXC_GPR8);
 
 	gpr8 &= ~IMX6Q_GPR8_TX_SWING_LOW;
-	gpr8 |= 127 << 25;
+	gpr8 |= imx6_pcie->tx_swing_low << 25;
 	writel(gpr8, imx6_pcie->iomuxc_gpr + IOMUXC_GPR8);
 }
 
@@ -620,6 +627,27 @@ static int __init imx6_pcie_probe(struct device_d *dev)
 	/* Grab GPR config register range */
 	imx6_pcie->iomuxc_gpr = IOMEM(MX6_IOMUXC_BASE_ADDR);
 
+	/* Grab PCIe PHY Tx Settings */
+	if (of_property_read_u32(np, "fsl,tx-deemph-gen1",
+				 &imx6_pcie->tx_deemph_gen1))
+		imx6_pcie->tx_deemph_gen1 = 0;
+
+	if (of_property_read_u32(np, "fsl,tx-deemph-gen2-3p5db",
+				 &imx6_pcie->tx_deemph_gen2_3p5db))
+		imx6_pcie->tx_deemph_gen2_3p5db = 0;
+
+	if (of_property_read_u32(np, "fsl,tx-deemph-gen2-6db",
+				 &imx6_pcie->tx_deemph_gen2_6db))
+		imx6_pcie->tx_deemph_gen2_6db = 20;
+
+	if (of_property_read_u32(np, "fsl,tx-swing-full",
+				 &imx6_pcie->tx_swing_full))
+		imx6_pcie->tx_swing_full = 127;
+
+	if (of_property_read_u32(np, "fsl,tx-swing-low",
+				 &imx6_pcie->tx_swing_low))
+		imx6_pcie->tx_swing_low = 127;
+
 	ret = imx6_add_pcie_port(pp, dev);
 	if (ret < 0)
 		return ret;
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
