Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYlKT-0002bY-Ck
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 05:21:11 +0000
Received: by mail-pg1-x543.google.com with SMTP id v28so5518983pgk.10
 for <barebox@lists.infradead.org>; Sun, 16 Dec 2018 21:20:28 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 16 Dec 2018 21:18:56 -0800
Message-Id: <20181217051925.17582-37-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 36/65] PCI: imx6: Add local struct device pointers
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit 13957652f7242a8cb02ffb8c96f412f62c486ee1

  Use a local "struct device *dev" for brevity and consistency with other
  drivers.  No functional change intended.

  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci-imx6.c | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index c499f4c83..0ede1abfa 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -401,6 +401,7 @@ static int imx6_pcie_wait_for_link(struct pcie_port *pp)
 
 static int imx6_pcie_wait_for_speed_change(struct pcie_port *pp)
 {
+	struct device_d *dev = pp->dev;
 	uint32_t tmp;
 	uint64_t start = get_time_ns();
 
@@ -411,7 +412,7 @@ static int imx6_pcie_wait_for_speed_change(struct pcie_port *pp)
 			return 0;
 	}
 
-	dev_err(pp->dev, "Speed change timeout\n");
+	dev_err(dev, "Speed change timeout\n");
 	return -EINVAL;
 }
 
@@ -419,6 +420,7 @@ static int imx6_pcie_wait_for_speed_change(struct pcie_port *pp)
 static int imx6_pcie_establish_link(struct pcie_port *pp)
 {
 	struct imx6_pcie *imx6_pcie = to_imx6_pcie(pp);
+	struct device_d *dev = pp->dev;
 	uint32_t tmp;
 	int ret;
 	u32 gpr12;
@@ -440,7 +442,7 @@ static int imx6_pcie_establish_link(struct pcie_port *pp)
 
 	ret = imx6_pcie_wait_for_link(pp);
 	if (ret) {
-		dev_info(pp->dev, "Link never came up\n");
+		dev_info(dev, "Link never came up\n");
 		goto err_reset_phy;
 	}
 
@@ -460,24 +462,24 @@ static int imx6_pcie_establish_link(struct pcie_port *pp)
 
 	ret = imx6_pcie_wait_for_speed_change(pp);
 	if (ret) {
-		dev_err(pp->dev, "Failed to bring link up!\n");
+		dev_err(dev, "Failed to bring link up!\n");
 		goto err_reset_phy;
 	}
 
 	/* Make sure link training is finished as well! */
 	ret = imx6_pcie_wait_for_link(pp);
 	if (ret) {
-		dev_err(pp->dev, "Failed to bring link up!\n");
+		dev_err(dev, "Failed to bring link up!\n");
 		goto err_reset_phy;
 	}
 
 	tmp = readl(pp->dbi_base + PCIE_RC_LCSR);
-	dev_dbg(pp->dev, "Link up, Gen=%i\n", (tmp >> 16) & 0xf);
+	dev_dbg(dev, "Link up, Gen=%i\n", (tmp >> 16) & 0xf);
 
 	return 0;
 
 err_reset_phy:
-       dev_dbg(pp->dev, "PHY DEBUG_R0=0x%08x DEBUG_R1=0x%08x\n",
+       dev_dbg(dev, "PHY DEBUG_R0=0x%08x DEBUG_R1=0x%08x\n",
                readl(pp->dbi_base + PCIE_PHY_DEBUG_R0),
                readl(pp->dbi_base + PCIE_PHY_DEBUG_R1));
        imx6_pcie_reset_phy(pp);
@@ -500,6 +502,7 @@ static void imx6_pcie_host_init(struct pcie_port *pp)
 
 static int imx6_pcie_link_up(struct pcie_port *pp)
 {
+	struct device_d *dev = pp->dev;
 	u32 rc;
 	int count = 5;
 
@@ -527,7 +530,7 @@ static int imx6_pcie_link_up(struct pcie_port *pp)
 			return 1;
 		if (!count--)
 			break;
-		dev_dbg(pp->dev, "Link is up, but still in training\n");
+		dev_dbg(dev, "Link is up, but still in training\n");
 		/*
 		 * Wait a little bit, then re-check if the link finished
 		 * the training.
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
