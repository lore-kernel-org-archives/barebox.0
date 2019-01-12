Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1giCHH-0004WF-PM
 for barebox@lists.infradead.org; Sat, 12 Jan 2019 05:56:28 +0000
Received: by mail-pf1-x441.google.com with SMTP id h3so7950936pfg.1
 for <barebox@lists.infradead.org>; Fri, 11 Jan 2019 21:56:15 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 11 Jan 2019 21:55:24 -0800
Message-Id: <20190112055524.7733-19-andrew.smirnov@gmail.com>
In-Reply-To: <20190112055524.7733-1-andrew.smirnov@gmail.com>
References: <20190112055524.7733-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 18/18] PCI: imx6: Port imx6_pcie_ltssm_enable()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port imx6_pcie_ltssm_enable() from Linux kernel driver.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci-imx6.c | 27 ++++++++++++++++++---------
 1 file changed, 18 insertions(+), 9 deletions(-)

diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index 9aa307aabf..c1719093be 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -457,6 +457,23 @@ static int imx6_pcie_wait_for_speed_change(struct imx6_pcie *imx6_pcie)
 	return -EINVAL;
 }
 
+static void imx6_pcie_ltssm_enable(struct device_d *dev)
+{
+	struct imx6_pcie *imx6_pcie = dev->priv;
+	u32 gpr12;
+
+	switch (imx6_pcie->variant) {
+	case IMX6Q:
+	case IMX6QP:
+		gpr12 = readl(imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
+		gpr12 |= IMX6Q_GPR12_PCIE_CTL_2;
+		writel(gpr12, imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
+		break;
+	case IMX7D:
+		reset_control_deassert(imx6_pcie->apps_reset);
+		break;
+	}
+}
 
 static int imx6_pcie_establish_link(struct imx6_pcie *imx6_pcie)
 {
@@ -464,7 +481,6 @@ static int imx6_pcie_establish_link(struct imx6_pcie *imx6_pcie)
 	struct device_d *dev = pci->dev;
 	uint32_t tmp;
 	int ret;
-	u32 gpr12;
 
 	/*
 	 * Force Gen1 operation when starting the link.  In case the link is
@@ -476,14 +492,7 @@ static int imx6_pcie_establish_link(struct imx6_pcie *imx6_pcie)
 	tmp |= PCIE_RC_LCR_MAX_LINK_SPEEDS_GEN1;
 	dw_pcie_writel_dbi(pci, PCIE_RC_LCR, tmp);
 
-	/* Start LTSSM. */
-	if (imx6_pcie->variant == IMX7D) {
-		reset_control_deassert(imx6_pcie->apps_reset);
-	} else {
-		gpr12 = readl(imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
-		gpr12 |= IMX6Q_GPR12_PCIE_CTL_2;
-		writel(gpr12, imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
-	}
+	imx6_pcie_ltssm_enable(dev);
 
 	ret = imx6_pcie_wait_for_link(imx6_pcie);
 	if (ret)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
