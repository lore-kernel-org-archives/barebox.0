Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x230.google.com ([2607:f8b0:400e:c03::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1auvh1-0001s9-RN
 for barebox@lists.infradead.org; Tue, 26 Apr 2016 05:37:52 +0000
Received: by mail-pa0-x230.google.com with SMTP id bt5so2215145pac.3
 for <barebox@lists.infradead.org>; Mon, 25 Apr 2016 22:37:31 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 25 Apr 2016 22:37:01 -0700
Message-Id: <1461649027-5046-4-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/9] PCI: imx6: Add proper i.MX6+ reset sequence
To: barebox@lists.infradead.org
Cc: Fabio Estevam <fabio.estevam@freescale.com>, Andrey Smirnov <andrew.smirnov@gmail.com>

I.MX6+ version of the silicon exposed PCIe core's reset signal as a bit
in one of the control registers. As a result using old, pre-i.MX6+,
reset sequence on i.MX6+ leads to Barebox hanging during startup. Using
exposed reset bit instead solves the problem.

This commit is based on portions of commit

c34068d48273e24d392d9a49a38be807954420ed

in http://git.freescale.com/git/cgit.cgi/imx/linux-2.6-imx.git

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci-imx6.c         | 94 +++++++++++++++++++++++++++++-------------
 include/mfd/imx6q-iomuxc-gpr.h |  1 +
 2 files changed, 66 insertions(+), 29 deletions(-)

diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index 241df3f..13a8b22 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -20,6 +20,7 @@
 #include <gpio.h>
 #include <asm/mmu.h>
 #include <of_gpio.h>
+#include <of_device.h>
 #include <linux/clk.h>
 #include <linux/kernel.h>
 #include <of_address.h>
@@ -36,6 +37,11 @@
 
 #define to_imx6_pcie(x)	container_of(x, struct imx6_pcie, pp)
 
+enum imx6_pcie_variants {
+	IMX6Q,
+	IMX6QP,
+};
+
 struct imx6_pcie {
 	int			reset_gpio;
 	struct clk		*pcie_bus;
@@ -43,6 +49,7 @@ struct imx6_pcie {
 	struct clk		*pcie;
 	struct pcie_port	pp;
 	void __iomem		*iomuxc_gpr;
+	enum imx6_pcie_variants variant;
 	void __iomem		*mem_base;
 };
 
@@ -219,39 +226,48 @@ static int imx6_pcie_assert_core_reset(struct pcie_port *pp)
 	struct imx6_pcie *imx6_pcie = to_imx6_pcie(pp);
 	u32 val, gpr1, gpr12;
 
-	/*
-	 * If the bootloader already enabled the link we need some special
-	 * handling to get the core back into a state where it is safe to
-	 * touch it for configuration.  As there is no dedicated reset signal
-	 * wired up for MX6QDL, we need to manually force LTSSM into "detect"
-	 * state before completely disabling LTSSM, which is a prerequisite
-	 * for core configuration.
-	 *
-	 * If both LTSSM_ENABLE and REF_SSP_ENABLE are active we have a strong
-	 * indication that the bootloader activated the link.
-	 */
-	gpr1 = readl(imx6_pcie->iomuxc_gpr + IOMUXC_GPR1);
-	gpr12 = readl(imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
+	switch (imx6_pcie->variant) {
+	case IMX6QP:
+		gpr1 = readl(imx6_pcie->iomuxc_gpr + IOMUXC_GPR1);
+		gpr1 |= IMX6Q_GPR1_PCIE_SW_RST;
+		writel(gpr1, imx6_pcie->iomuxc_gpr + IOMUXC_GPR1);
+		break;
+	case IMX6Q:
+		/*
+		 * If the bootloader already enabled the link we need some special
+		 * handling to get the core back into a state where it is safe to
+		 * touch it for configuration.  As there is no dedicated reset signal
+		 * wired up for MX6QDL, we need to manually force LTSSM into "detect"
+		 * state before completely disabling LTSSM, which is a prerequisite
+		 * for core configuration.
+		 *
+		 * If both LTSSM_ENABLE and REF_SSP_ENABLE are active we have a strong
+		 * indication that the bootloader activated the link.
+		 */
+		gpr1 = readl(imx6_pcie->iomuxc_gpr + IOMUXC_GPR1);
+		gpr12 = readl(imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
 
-	if ((gpr1 & IMX6Q_GPR1_PCIE_REF_CLK_EN) &&
-	    (gpr12 & IMX6Q_GPR12_PCIE_CTL_2)) {
-		val = readl(pp->dbi_base + PCIE_PL_PFLR);
-		val &= ~PCIE_PL_PFLR_LINK_STATE_MASK;
-		val |= PCIE_PL_PFLR_FORCE_LINK;
+		if ((gpr1 & IMX6Q_GPR1_PCIE_REF_CLK_EN) &&
+		    (gpr12 & IMX6Q_GPR12_PCIE_CTL_2)) {
+			val = readl(pp->dbi_base + PCIE_PL_PFLR);
+			val &= ~PCIE_PL_PFLR_LINK_STATE_MASK;
+			val |= PCIE_PL_PFLR_FORCE_LINK;
 
-		data_abort_mask();
-		writel(val, pp->dbi_base + PCIE_PL_PFLR);
-		data_abort_unmask();
+			data_abort_mask();
+			writel(val, pp->dbi_base + PCIE_PL_PFLR);
+			data_abort_unmask();
 
-		gpr12 &= ~IMX6Q_GPR12_PCIE_CTL_2;
-		writel(gpr12, imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
-	}
+			gpr12 &= ~IMX6Q_GPR12_PCIE_CTL_2;
+			writel(gpr12, imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
+		}
 
-	gpr1 |= IMX6Q_GPR1_PCIE_TEST_PD;
-	writel(gpr1, imx6_pcie->iomuxc_gpr + IOMUXC_GPR1);
+		gpr1 |= IMX6Q_GPR1_PCIE_TEST_PD;
+		writel(gpr1, imx6_pcie->iomuxc_gpr + IOMUXC_GPR1);
 
-	gpr1 &= ~IMX6Q_GPR1_PCIE_REF_CLK_EN;
-	writel(gpr1, imx6_pcie->iomuxc_gpr + IOMUXC_GPR1);
+		gpr1 &= ~IMX6Q_GPR1_PCIE_REF_CLK_EN;
+		writel(gpr1, imx6_pcie->iomuxc_gpr + IOMUXC_GPR1);
+		break;
+	}
 
 	return 0;
 }
@@ -298,6 +314,22 @@ static int imx6_pcie_deassert_core_reset(struct pcie_port *pp)
 		mdelay(100);
 		gpio_set_value(imx6_pcie->reset_gpio, 1);
 	}
+
+	/*
+	 * Release the PCIe PHY reset here
+	 */
+	switch (imx6_pcie->variant) {
+	case IMX6QP:
+		gpr1 = readl(imx6_pcie->iomuxc_gpr + IOMUXC_GPR1);
+		gpr1 &= ~IMX6Q_GPR1_PCIE_SW_RST;
+		writel(gpr1, imx6_pcie->iomuxc_gpr + IOMUXC_GPR1);
+
+		udelay(200);
+		break;
+	case IMX6Q:		/* Nothing to do */
+		break;
+	}
+
 	return 0;
 
 err_pcie:
@@ -568,6 +600,9 @@ static int __init imx6_pcie_probe(struct device_d *dev)
 	pp = &imx6_pcie->pp;
 	pp->dev = dev;
 
+	imx6_pcie->variant =
+		(enum imx6_pcie_variants)of_device_get_match_data(dev);
+
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
@@ -623,7 +658,8 @@ static void imx6_pcie_remove(struct device_d *dev)
 }
 
 static struct of_device_id imx6_pcie_of_match[] = {
-	{ .compatible = "fsl,imx6q-pcie", },
+	{ .compatible = "fsl,imx6q-pcie",  .data = (void *)IMX6Q,  },
+	{ .compatible = "fsl,imx6qp-pcie", .data = (void *)IMX6QP, },
 	{},
 };
 
diff --git a/include/mfd/imx6q-iomuxc-gpr.h b/include/mfd/imx6q-iomuxc-gpr.h
index a7ef1c8..b2c9da6 100644
--- a/include/mfd/imx6q-iomuxc-gpr.h
+++ b/include/mfd/imx6q-iomuxc-gpr.h
@@ -95,6 +95,7 @@
 #define IMX6Q_GPR0_DMAREQ_MUX_SEL0_IOMUX	BIT(0)
 
 #define IMX6Q_GPR1_PCIE_REQ_MASK		(0x3 << 30)
+#define IMX6Q_GPR1_PCIE_SW_RST			BIT(29)
 #define IMX6Q_GPR1_PCIE_EXIT_L1			BIT(28)
 #define IMX6Q_GPR1_PCIE_RDY_L23			BIT(27)
 #define IMX6Q_GPR1_PCIE_ENTER_L1		BIT(26)
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
