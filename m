Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXLAy-0001Lr-SN
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 07:12:53 +0000
Received: by mail-pl1-x641.google.com with SMTP id 101so612937pld.6
 for <barebox@lists.infradead.org>; Wed, 12 Dec 2018 23:12:42 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 12 Dec 2018 23:11:25 -0800
Message-Id: <20181213071144.31691-40-andrew.smirnov@gmail.com>
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
Subject: [PATCH 39/58] PCI: imx6: Factor out ref clock enable
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit 4d1821e729b5d2060ef8c9825af1dacc2182da38

  Factor out ref clock enable to make it cleaner to add imx6sx support.  No
  functional change intended.

  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
  Tested-by: Christoph Fritz <chf.fritz@googlemail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci-imx6.c | 43 ++++++++++++++++++++++++++++--------------
 1 file changed, 29 insertions(+), 14 deletions(-)

diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index fa62aa3a4..447bb72ad 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -285,6 +285,28 @@ static void imx6_pcie_assert_core_reset(struct imx6_pcie *imx6_pcie)
 	}
 }
 
+static int imx6_pcie_enable_ref_clk(struct imx6_pcie *imx6_pcie)
+{
+	u32 gpr1;
+
+	/* power up core phy and enable ref clock */
+	gpr1 = readl(imx6_pcie->iomuxc_gpr + IOMUXC_GPR1);
+	gpr1 &= ~IMX6Q_GPR1_PCIE_TEST_PD;
+	writel(gpr1, imx6_pcie->iomuxc_gpr + IOMUXC_GPR1);
+	/*
+	 * the async reset input need ref clock to sync internally,
+	 * when the ref clock comes after reset, internal synced
+	 * reset time is too short, cannot meet the requirement.
+	 * add one ~10us delay here.
+	 */
+	udelay(10);
+	gpr1 = readl(imx6_pcie->iomuxc_gpr + IOMUXC_GPR1);
+	gpr1 |= IMX6Q_GPR1_PCIE_REF_CLK_EN;
+	writel(gpr1, imx6_pcie->iomuxc_gpr + IOMUXC_GPR1);
+
+	return 0;
+}
+
 static void imx6_pcie_deassert_core_reset(struct imx6_pcie *imx6_pcie)
 {
 	struct device_d *dev = imx6_pcie->pp.dev;
@@ -309,20 +331,11 @@ static void imx6_pcie_deassert_core_reset(struct imx6_pcie *imx6_pcie)
 		goto err_pcie;
 	}
 
-	/* power up core phy and enable ref clock */
-	gpr1 = readl(imx6_pcie->iomuxc_gpr + IOMUXC_GPR1);
-	gpr1 &= ~IMX6Q_GPR1_PCIE_TEST_PD;
-	writel(gpr1, imx6_pcie->iomuxc_gpr + IOMUXC_GPR1);
-	/*
-	 * the async reset input need ref clock to sync internally,
-	 * when the ref clock comes after reset, internal synced
-	 * reset time is too short, cannot meet the requirement.
-	 * add one ~10us delay here.
-	 */
-	udelay(10);
-	gpr1 = readl(imx6_pcie->iomuxc_gpr + IOMUXC_GPR1);
-	gpr1 |= IMX6Q_GPR1_PCIE_REF_CLK_EN;
-	writel(gpr1, imx6_pcie->iomuxc_gpr + IOMUXC_GPR1);
+	ret = imx6_pcie_enable_ref_clk(imx6_pcie);
+	if (ret) {
+		dev_err(dev, "unable to enable pcie ref clock\n");
+		goto err_ref_clk;
+	}
 
 	/* allow the clocks to stabilize */
 	udelay(200);
@@ -351,6 +364,8 @@ static void imx6_pcie_deassert_core_reset(struct imx6_pcie *imx6_pcie)
 
 	return;
 
+err_ref_clk:
+	clk_disable(imx6_pcie->pcie);
 err_pcie:
 	clk_disable(imx6_pcie->pcie_bus);
 err_pcie_bus:
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
