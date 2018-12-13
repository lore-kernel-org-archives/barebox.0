Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXLAu-0006Fb-Q7
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 07:13:10 +0000
Received: by mail-pf1-x443.google.com with SMTP id c73so625533pfe.13
 for <barebox@lists.infradead.org>; Wed, 12 Dec 2018 23:12:44 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 12 Dec 2018 23:11:28 -0800
Message-Id: <20181213071144.31691-43-andrew.smirnov@gmail.com>
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
Subject: [PATCH 42/58] PCI: imx6: Remove LTSSM disable workaround
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit a71280722eeba8f1afa51ad6656028dcb96e110b

  This causes CPU hangs when the system is reset by the watchdog, as the GPRs
  aren't cleared, but the clocks are back to disabled state.

  If the bootloader uses PCIe, it must take care to bring it down into a safe
  state, before passing control to the Linux kernel.  This is the only way to
  get a properly operating system at all times and circumstances.

  Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>

LTSSM disable workaround still needs to be performed before passing
control to Linux. However, in order to avoid the hang described above,
we move it to imx6_pcie_remove() and apply it without relying on
values in GPR.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci-imx6.c | 57 +++++++++++++++++++++---------------------
 1 file changed, 28 insertions(+), 29 deletions(-)

diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index a9a4be927..023e6f07f 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -239,8 +239,7 @@ static void imx6_pcie_reset_phy(struct imx6_pcie *imx6_pcie)
 
 static void imx6_pcie_assert_core_reset(struct imx6_pcie *imx6_pcie)
 {
-	struct pcie_port *pp = &imx6_pcie->pp;
-	u32 val, gpr1, gpr12;
+	u32 gpr1;
 
 	switch (imx6_pcie->variant) {
 	case IMX6QP:
@@ -249,34 +248,7 @@ static void imx6_pcie_assert_core_reset(struct imx6_pcie *imx6_pcie)
 		writel(gpr1, imx6_pcie->iomuxc_gpr + IOMUXC_GPR1);
 		break;
 	case IMX6Q:
-		/*
-		 * If the bootloader already enabled the link we need some special
-		 * handling to get the core back into a state where it is safe to
-		 * touch it for configuration.  As there is no dedicated reset signal
-		 * wired up for MX6QDL, we need to manually force LTSSM into "detect"
-		 * state before completely disabling LTSSM, which is a prerequisite
-		 * for core configuration.
-		 *
-		 * If both LTSSM_ENABLE and REF_SSP_ENABLE are active we have a strong
-		 * indication that the bootloader activated the link.
-		 */
 		gpr1 = readl(imx6_pcie->iomuxc_gpr + IOMUXC_GPR1);
-		gpr12 = readl(imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
-
-		if ((gpr1 & IMX6Q_GPR1_PCIE_REF_CLK_EN) &&
-		    (gpr12 & IMX6Q_GPR12_PCIE_CTL_2)) {
-			val = dw_pcie_readl_rc(pp, PCIE_PL_PFLR);
-			val &= ~PCIE_PL_PFLR_LINK_STATE_MASK;
-			val |= PCIE_PL_PFLR_FORCE_LINK;
-
-			data_abort_mask();
-			dw_pcie_writel_rc(pp, PCIE_PL_PFLR, val);
-			data_abort_unmask();
-
-			gpr12 &= ~IMX6Q_GPR12_PCIE_CTL_2;
-			writel(gpr12, imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
-		}
-
 		gpr1 |= IMX6Q_GPR1_PCIE_TEST_PD;
 		writel(gpr1, imx6_pcie->iomuxc_gpr + IOMUXC_GPR1);
 
@@ -642,6 +614,33 @@ static void imx6_pcie_remove(struct device_d *dev)
 {
 	struct imx6_pcie *imx6_pcie = dev->priv;
 
+	if (imx6_pcie->variant == IMX6Q) {
+		/*
+		 * If the bootloader already enabled the link we need
+		 * some special handling to get the core back into a
+		 * state where it is safe to touch it for
+		 * configuration.  As there is no dedicated reset
+		 * signal wired up for MX6QDL, we need to manually
+		 * force LTSSM into "detect" state before completely
+		 * disabling LTSSM, which is a prerequisite for core
+		 * configuration.
+		 */
+		struct pcie_port *pp = &imx6_pcie->pp;
+		u32 gpr12, val;
+
+		val = dw_pcie_readl_rc(pp, PCIE_PL_PFLR);
+		val &= ~PCIE_PL_PFLR_LINK_STATE_MASK;
+		val |= PCIE_PL_PFLR_FORCE_LINK;
+
+		data_abort_mask();
+		dw_pcie_writel_rc(pp, PCIE_PL_PFLR, val);
+		data_abort_unmask();
+
+		gpr12 = readl(imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
+		gpr12 &= ~IMX6Q_GPR12_PCIE_CTL_2;
+		writel(gpr12, imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
+	}
+
 	imx6_pcie_assert_core_reset(imx6_pcie);
 }
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
