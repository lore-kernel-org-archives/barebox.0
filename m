Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1giCHE-0004SN-8f
 for barebox@lists.infradead.org; Sat, 12 Jan 2019 05:56:24 +0000
Received: by mail-pf1-x442.google.com with SMTP id g62so7919067pfd.12
 for <barebox@lists.infradead.org>; Fri, 11 Jan 2019 21:56:11 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 11 Jan 2019 21:55:21 -0800
Message-Id: <20190112055524.7733-16-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 15/18] PCI: imx6: Do not switch speed if Gen2 is disabled
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit 93b226f9c65a951a91617f87ba1f05f14e59f26f

  Save a bit of time and avoid going through link speed change procedure in
  configuration where link max speed is limited to Gen1 in DT.

  Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
  Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
  Cc: yurovsky@gmail.com
  Cc: Fabio Estevam <fabio.estevam@nxp.com>
  Cc: Dong Aisheng <dongas86@gmail.com>
  Cc: linux-arm-kernel@lists.infradead.org

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci-imx6.c | 55 +++++++++++++++++++++---------------------
 1 file changed, 28 insertions(+), 27 deletions(-)

diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index d121a20ce1..6bdc9465db 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -496,41 +496,42 @@ static int imx6_pcie_establish_link(struct imx6_pcie *imx6_pcie)
 		tmp &= ~PCIE_RC_LCR_MAX_LINK_SPEEDS_MASK;
 		tmp |= PCIE_RC_LCR_MAX_LINK_SPEEDS_GEN2;
 		dw_pcie_writel_dbi(pci, PCIE_RC_LCR, tmp);
-	} else {
-		dev_info(dev, "Link: Gen2 disabled\n");
-	}
-
-	/*
-	 * Start Directed Speed Change so the best possible speed both link
-	 * partners support can be negotiated.
-	 */
-	tmp = dw_pcie_readl_dbi(pci, PCIE_LINK_WIDTH_SPEED_CONTROL);
-	tmp |= PORT_LOGIC_SPEED_CHANGE;
-	dw_pcie_writel_dbi(pci, PCIE_LINK_WIDTH_SPEED_CONTROL, tmp);
 
-	if (imx6_pcie->variant != IMX7D) {
 		/*
-		 * On i.MX7, DIRECT_SPEED_CHANGE behaves differently
-		 * from i.MX6 family when no link speed transition
-		 * occurs and we go Gen1 -> yep, Gen1. The difference
-		 * is that, in such case, it will not be cleared by HW
-		 * which will cause the following code to report false
-		 * failure.
+		 * Start Directed Speed Change so the best possible
+		 * speed both link partners support can be negotiated.
 		 */
+		tmp = dw_pcie_readl_dbi(pci, PCIE_LINK_WIDTH_SPEED_CONTROL);
+		tmp |= PORT_LOGIC_SPEED_CHANGE;
+		dw_pcie_writel_dbi(pci, PCIE_LINK_WIDTH_SPEED_CONTROL, tmp);
+
+		if (imx6_pcie->variant != IMX7D) {
+			/*
+			 * On i.MX7, DIRECT_SPEED_CHANGE behaves
+			 * differently from i.MX6 family when no link
+			 * speed transition occurs and we go Gen1 ->
+			 * yep, Gen1. The difference is that, in such
+			 * case, it will not be cleared by HW which
+			 * will cause the following code to report
+			 * false failure.
+			 */
+
+			ret = imx6_pcie_wait_for_speed_change(imx6_pcie);
+			if (ret) {
+				dev_err(dev, "Failed to bring link up!\n");
+				goto err_reset_phy;
+			}
+		}
 
-		ret = imx6_pcie_wait_for_speed_change(imx6_pcie);
+		/* Make sure link training is finished as well! */
+		ret = imx6_pcie_wait_for_link(imx6_pcie);
 		if (ret) {
 			dev_err(dev, "Failed to bring link up!\n");
 			goto err_reset_phy;
 		}
-	}
-
-	/* Make sure link training is finished as well! */
-	ret = imx6_pcie_wait_for_link(imx6_pcie);
-	if (ret) {
-		dev_err(dev, "Failed to bring link up!\n");
-		goto err_reset_phy;
-	}
+	} else {
+		dev_info(dev, "Link: Gen2 disabled\n");
+        }
 
 	tmp = dw_pcie_readl_dbi(pci, PCIE_RC_LCSR);
 	dev_info(dev, "Link up, Gen%i\n", (tmp >> 16) & 0xf);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
