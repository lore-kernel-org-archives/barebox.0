Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x22d.google.com ([2607:f8b0:400e:c03::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1auvh4-0001sV-8d
 for barebox@lists.infradead.org; Tue, 26 Apr 2016 05:37:54 +0000
Received: by mail-pa0-x22d.google.com with SMTP id bt5so2215526pac.3
 for <barebox@lists.infradead.org>; Mon, 25 Apr 2016 22:37:33 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 25 Apr 2016 22:37:04 -0700
Message-Id: <1461649027-5046-7-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 6/9] PCI: imx6: Move imx6_pcie_reset_phy() near other PHY
 handling functions
To: barebox@lists.infradead.org
Cc: Fabio Estevam <fabio.estevam@freescale.com>, Andrey Smirnov <andrew.smirnov@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>

Move imx6_pcie_reset_phy() near the other PHY related functions in the
file.  This is a cosmetic change, but also allows to do the following
changes without introducing needless forward declarations.

[Andrey Smirnov: port to Barebox codebase]

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci-imx6.c | 34 +++++++++++++++++-----------------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index 2ccf80a..fd53d36 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -213,6 +213,23 @@ static int pcie_phy_write(void __iomem *dbi_base, int addr, int data)
 	return 0;
 }
 
+static void imx6_pcie_reset_phy(struct pcie_port *pp)
+{
+	uint32_t temp;
+
+	pcie_phy_read(pp->dbi_base, PHY_RX_OVRD_IN_LO, &temp);
+	temp |= (PHY_RX_OVRD_IN_LO_RX_DATA_EN |
+		 PHY_RX_OVRD_IN_LO_RX_PLL_EN);
+	pcie_phy_write(pp->dbi_base, PHY_RX_OVRD_IN_LO, temp);
+
+	udelay(2000);
+
+	pcie_phy_read(pp->dbi_base, PHY_RX_OVRD_IN_LO, &temp);
+	temp &= ~(PHY_RX_OVRD_IN_LO_RX_DATA_EN |
+		  PHY_RX_OVRD_IN_LO_RX_PLL_EN);
+	pcie_phy_write(pp->dbi_base, PHY_RX_OVRD_IN_LO, temp);
+}
+
 static int imx6_pcie_assert_core_reset(struct pcie_port *pp)
 {
 	struct imx6_pcie *imx6_pcie = to_imx6_pcie(pp);
@@ -478,23 +495,6 @@ static void imx6_pcie_host_init(struct pcie_port *pp)
 	imx6_pcie_establish_link(pp);
 }
 
-static void imx6_pcie_reset_phy(struct pcie_port *pp)
-{
-	uint32_t temp;
-
-	pcie_phy_read(pp->dbi_base, PHY_RX_OVRD_IN_LO, &temp);
-	temp |= (PHY_RX_OVRD_IN_LO_RX_DATA_EN |
-		 PHY_RX_OVRD_IN_LO_RX_PLL_EN);
-	pcie_phy_write(pp->dbi_base, PHY_RX_OVRD_IN_LO, temp);
-
-	udelay(2000);
-
-	pcie_phy_read(pp->dbi_base, PHY_RX_OVRD_IN_LO, &temp);
-	temp &= ~(PHY_RX_OVRD_IN_LO_RX_DATA_EN |
-		  PHY_RX_OVRD_IN_LO_RX_PLL_EN);
-	pcie_phy_write(pp->dbi_base, PHY_RX_OVRD_IN_LO, temp);
-}
-
 static int imx6_pcie_link_up(struct pcie_port *pp)
 {
 	u32 rc, debug_r0, rx_valid;
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
