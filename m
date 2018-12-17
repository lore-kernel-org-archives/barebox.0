Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYlKc-0005H4-Jm
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 05:20:44 +0000
Received: by mail-pf1-x441.google.com with SMTP id y126so5766213pfb.4
 for <barebox@lists.infradead.org>; Sun, 16 Dec 2018 21:20:38 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 16 Dec 2018 21:19:03 -0800
Message-Id: <20181217051925.17582-44-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 43/65] PCI: imx6: Remove unused return values
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit 9ab021b6cf8b5bfc40ea9333c9b64b554fe01cd4

  Remove unused return values.  No functional change intended.

  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci-imx6.c | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index 8e7bae258..fa62aa3a4 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -236,7 +236,7 @@ static void imx6_pcie_reset_phy(struct imx6_pcie *imx6_pcie)
 	pcie_phy_write(imx6_pcie, PHY_RX_OVRD_IN_LO, temp);
 }
 
-static int imx6_pcie_assert_core_reset(struct imx6_pcie *imx6_pcie)
+static void imx6_pcie_assert_core_reset(struct imx6_pcie *imx6_pcie)
 {
 	struct pcie_port *pp = &imx6_pcie->pp;
 	u32 val, gpr1, gpr12;
@@ -283,11 +283,9 @@ static int imx6_pcie_assert_core_reset(struct imx6_pcie *imx6_pcie)
 		writel(gpr1, imx6_pcie->iomuxc_gpr + IOMUXC_GPR1);
 		break;
 	}
-
-	return 0;
 }
 
-static int imx6_pcie_deassert_core_reset(struct imx6_pcie *imx6_pcie)
+static void imx6_pcie_deassert_core_reset(struct imx6_pcie *imx6_pcie)
 {
 	struct device_d *dev = imx6_pcie->pp.dev;
 	int ret;
@@ -296,7 +294,7 @@ static int imx6_pcie_deassert_core_reset(struct imx6_pcie *imx6_pcie)
 	ret = clk_enable(imx6_pcie->pcie_phy);
 	if (ret) {
 		dev_err(dev, "unable to enable pcie_phy clock\n");
-		goto err_pcie_phy;
+		return;
 	}
 
 	ret = clk_enable(imx6_pcie->pcie_bus);
@@ -351,15 +349,12 @@ static int imx6_pcie_deassert_core_reset(struct imx6_pcie *imx6_pcie)
 		break;
 	}
 
-	return 0;
+	return;
 
 err_pcie:
 	clk_disable(imx6_pcie->pcie_bus);
 err_pcie_bus:
 	clk_disable(imx6_pcie->pcie_phy);
-err_pcie_phy:
-	return ret;
-
 }
 
 static void imx6_pcie_init_phy(struct imx6_pcie *imx6_pcie)
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
