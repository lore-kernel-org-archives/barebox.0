Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYlKl-0005HD-1Y
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 05:20:51 +0000
Received: by mail-pl1-x641.google.com with SMTP id u18so5549860plq.7
 for <barebox@lists.infradead.org>; Sun, 16 Dec 2018 21:20:40 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 16 Dec 2018 21:19:05 -0800
Message-Id: <20181217051925.17582-46-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 45/65] PCI: imx6: Add DT property for link gen,
 default to Gen1
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit a5fcec480f25eb5444c0b71ecdf9b18b09236b95

  Freescale has stated [1] that the LVDS clock source of the IMX6 does not
  pass the PCI Gen2 clock jitter test, therefore unless an external Gen2
  compliant external clock source is present and supplied back to the IMX6
  PCIe core via LVDS CLK1/CLK2 you can not claim Gen2 compliance.

  Add a DT property to specify Gen1 vs Gen2 and check this before allowing a
  Gen2 link.

  We default to Gen1 if the property is not present because at this time
  there are no IMX6 boards in mainline that 'input' a clock on LVDS
  CLK1/CLK2.

  In order to be Gen2 compliant on IMX6 you need to:

   - Have a Gen2 compliant external clock generator and route that clock back
     to either LVDS CLK1 or LVDS CLK2 as an input (see IMX6SX-SabreSD
     reference design).

   - Specify this clock in the PCIe node in the DT (i.e.,
     IMX6QDL_CLK_LVDS1_IN or IMX6QDL_CLK_LVDS2_IN instead of
     IMX6QDL_CLK_LVDS1_GATE which configures it as a CLK output).

  [1] https://community.freescale.com/message/453209

  Signed-off-by: Tim Harvey <tharvey@gateworks.com>
  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
  Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
  CC: Fabio Estevam <fabio.estevam@freescale.com>
  CC: Zhu Richard <Richard.Zhu@freescale.com>
  CC: Akshay Bhat <akshay.bhat@timesys.com>
  CC: Rob Herring <robh+dt@kernel.org>
  CC: Shawn Guo <shawnguo@kernel.org>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci-imx6.c | 25 ++++++++++++++++++-------
 1 file changed, 18 insertions(+), 7 deletions(-)

diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index 447bb72ad..d72abe3a3 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -55,6 +55,7 @@ struct imx6_pcie {
 	u32                     tx_deemph_gen2_6db;
 	u32                     tx_swing_full;
 	u32                     tx_swing_low;
+	int			link_gen;
 };
 
 /* PCIe Root Complex registers (memory-mapped) */
@@ -464,11 +465,16 @@ static int imx6_pcie_establish_link(struct imx6_pcie *imx6_pcie)
 		goto err_reset_phy;
 	}
 
-	/* Allow Gen2 mode after the link is up. */
-	tmp = dw_pcie_readl_rc(pp, PCIE_RC_LCR);
-	tmp &= ~PCIE_RC_LCR_MAX_LINK_SPEEDS_MASK;
-	tmp |= PCIE_RC_LCR_MAX_LINK_SPEEDS_GEN2;
-	dw_pcie_writel_rc(pp, PCIE_RC_LCR, tmp);
+
+	if (imx6_pcie->link_gen == 2) {
+		/* Allow Gen2 mode after the link is up. */
+		tmp = dw_pcie_readl_rc(pp, PCIE_RC_LCR);
+		tmp &= ~PCIE_RC_LCR_MAX_LINK_SPEEDS_MASK;
+		tmp |= PCIE_RC_LCR_MAX_LINK_SPEEDS_GEN2;
+		dw_pcie_writel_rc(pp, PCIE_RC_LCR, tmp);
+	} else {
+		dev_info(dev, "Link: Gen2 disabled\n");
+	}
 
 	/*
 	 * Start Directed Speed Change so the best possible speed both link
@@ -492,8 +498,7 @@ static int imx6_pcie_establish_link(struct imx6_pcie *imx6_pcie)
 	}
 
 	tmp = dw_pcie_readl_rc(pp, PCIE_RC_LCSR);
-	dev_dbg(dev, "Link up, Gen=%i\n", (tmp >> 16) & 0xf);
-
+	dev_info(dev, "Link up, Gen%i\n", (tmp >> 16) & 0xf);
 	return 0;
 
 err_reset_phy:
@@ -620,6 +625,12 @@ static int __init imx6_pcie_probe(struct device_d *dev)
 				 &imx6_pcie->tx_swing_low))
 		imx6_pcie->tx_swing_low = 127;
 
+       /* Limit link speed */
+       ret = of_property_read_u32(np, "fsl,max-link-speed",
+                                  &imx6_pcie->link_gen);
+       if (ret)
+               imx6_pcie->link_gen = 1;
+
 	ret = imx6_add_pcie_port(imx6_pcie, dev);
 	if (ret < 0)
 		return ret;
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
