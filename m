Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x236.google.com ([2607:f8b0:400e:c00::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1auvh0-0001s4-86
 for barebox@lists.infradead.org; Tue, 26 Apr 2016 05:37:50 +0000
Received: by mail-pf0-x236.google.com with SMTP id c189so2420911pfb.3
 for <barebox@lists.infradead.org>; Mon, 25 Apr 2016 22:37:29 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 25 Apr 2016 22:36:59 -0700
Message-Id: <1461649027-5046-2-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/9] PCI: imx6: Simplify imx6_pcie_remove()
To: barebox@lists.infradead.org
Cc: Fabio Estevam <fabio.estevam@freescale.com>, Andrey Smirnov <andrew.smirnov@gmail.com>

Instead of manualy flipping the bits call imx6_pcie_assert_core_reset()
to give the code, executing after BB, a clean slate. This also makes the
function match similar code in Linux kernel driver.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci-imx6.c | 19 +------------------
 1 file changed, 1 insertion(+), 18 deletions(-)

diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index 46483b4..241df3f 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -618,25 +618,8 @@ static int __init imx6_pcie_probe(struct device_d *dev)
 static void imx6_pcie_remove(struct device_d *dev)
 {
 	struct imx6_pcie *imx6_pcie = dev->priv;
-	u32 val;
-
-	val = readl(imx6_pcie->pp.dbi_base + PCIE_PL_PFLR);
-	val &= ~PCIE_PL_PFLR_LINK_STATE_MASK;
-	val |= PCIE_PL_PFLR_FORCE_LINK;
-	data_abort_mask();
-	writel(val, imx6_pcie->pp.dbi_base + PCIE_PL_PFLR);
-	data_abort_unmask();
-
-	val = readl(imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
-	val &= ~IMX6Q_GPR12_PCIE_CTL_2;
-	writel(val, imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
-
-	val = readl(imx6_pcie->iomuxc_gpr + IOMUXC_GPR1);
-	val |= IMX6Q_GPR1_PCIE_TEST_PD;
-	writel(val, imx6_pcie->iomuxc_gpr + IOMUXC_GPR1);
 
-	val &= ~IMX6Q_GPR1_PCIE_REF_CLK_EN;
-	writel(val, imx6_pcie->iomuxc_gpr + IOMUXC_GPR1);
+	imx6_pcie_assert_core_reset(&imx6_pcie->pp);
 }
 
 static struct of_device_id imx6_pcie_of_match[] = {
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
