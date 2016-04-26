Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x235.google.com ([2607:f8b0:400e:c00::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1auvh5-0001sZ-2s
 for barebox@lists.infradead.org; Tue, 26 Apr 2016 05:37:55 +0000
Received: by mail-pf0-x235.google.com with SMTP id n1so2698139pfn.2
 for <barebox@lists.infradead.org>; Mon, 25 Apr 2016 22:37:34 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 25 Apr 2016 22:37:05 -0700
Message-Id: <1461649027-5046-8-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 7/9] PCI: imx6: Move PHY reset into imx6_pcie_establish_link()
To: barebox@lists.infradead.org
Cc: Fabio Estevam <fabio.estevam@freescale.com>, Andrey Smirnov <andrew.smirnov@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>

This adds the PHY reset into a common error path of
imx6_pcie_establish_link(), deduplicating some of the debug prints.  Also
reduce the severity of the "no-link" message in the one place where it is
expected to be hit when no peripheral is attached.

[Andrey Smirnov: port to Barebox codebase]

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci-imx6.c | 28 +++++++++++++++-------------
 1 file changed, 15 insertions(+), 13 deletions(-)

diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index fd53d36..c564a60 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -399,10 +399,6 @@ static int imx6_pcie_wait_for_link(struct pcie_port *pp)
 		if (!is_timeout(start, SECOND))
 			continue;
 
-		dev_err(pp->dev, "phy link never came up\n");
-		dev_dbg(pp->dev, "DEBUG_R0: 0x%08x, DEBUG_R1: 0x%08x\n",
-			readl(pp->dbi_base + PCIE_PHY_DEBUG_R0),
-			readl(pp->dbi_base + PCIE_PHY_DEBUG_R1));
 		return -EINVAL;
 	}
 }
@@ -447,8 +443,10 @@ static int imx6_pcie_establish_link(struct pcie_port *pp)
 	writel(gpr12, imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
 
 	ret = imx6_pcie_wait_for_link(pp);
-	if (ret)
-		return ret;
+	if (ret) {
+		dev_info(pp->dev, "Link never came up\n");
+		goto err_reset_phy;
+	}
 
 	/* Allow Gen2 mode after the link is up. */
 	tmp = readl(pp->dbi_base + PCIE_RC_LCR);
@@ -467,19 +465,28 @@ static int imx6_pcie_establish_link(struct pcie_port *pp)
 	ret = imx6_pcie_wait_for_speed_change(pp);
 	if (ret) {
 		dev_err(pp->dev, "Failed to bring link up!\n");
-		return ret;
+		goto err_reset_phy;
 	}
 
 	/* Make sure link training is finished as well! */
 	ret = imx6_pcie_wait_for_link(pp);
 	if (ret) {
 		dev_err(pp->dev, "Failed to bring link up!\n");
-		return ret;
+		goto err_reset_phy;
 	}
 
 	tmp = readl(pp->dbi_base + PCIE_RC_LCSR);
 	dev_dbg(pp->dev, "Link up, Gen=%i\n", (tmp >> 16) & 0xf);
+	
 	return 0;
+
+err_reset_phy:
+       dev_dbg(pp->dev, "PHY DEBUG_R0=0x%08x DEBUG_R1=0x%08x\n",
+               readl(pp->dbi_base + PCIE_PHY_DEBUG_R0),
+               readl(pp->dbi_base + PCIE_PHY_DEBUG_R1));
+       imx6_pcie_reset_phy(pp);
+
+       return ret;
 }
 
 static void imx6_pcie_host_init(struct pcie_port *pp)
@@ -547,11 +554,6 @@ static int imx6_pcie_link_up(struct pcie_port *pp)
 	if ((debug_r0 & 0x3f) != 0x0d)
 		return 0;
 
-	dev_err(pp->dev, "transition to gen2 is stuck, reset PHY!\n");
-	dev_dbg(pp->dev, "debug_r0=%08x debug_r1=%08x\n", debug_r0, rc);
-
-	imx6_pcie_reset_phy(pp);
-
 	return 0;
 }
 
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
