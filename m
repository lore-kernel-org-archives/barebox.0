Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZvNm-0006CD-Sj
 for barebox@lists.infradead.org; Wed, 27 Nov 2019 11:21:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Nov 2019 12:20:46 +0100
Message-Id: <20191127112051.9427-8-s.hauer@pengutronix.de>
In-Reply-To: <20191127112051.9427-1-s.hauer@pengutronix.de>
References: <20191127112051.9427-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/12] PCI: dwc: imx6: Share PHY debug register definitions
To: Barebox List <barebox@lists.infradead.org>

Port of Linux commit 60ef4b072ba089440531287f72740d94ed1e8dd1

    Both pcie-designware.c and pci-imx6.c contain custom definitions for
    PHY debug registers R0/R1 and on top of that there's already a
    definition for R0 in pcie-designware.h. Move all of the definitions to
    pcie-designware.h. No functional change intended.

    Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
    Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
    Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
    Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
    Cc: Bjorn Helgaas <bhelgaas@google.com>
    Cc: Chris Healy <cphealy@gmail.com>
    Cc: Lucas Stach <l.stach@pengutronix.de>
    Cc: linux-kernel@vger.kernel.org
    Cc: linux-pci@vger.kernel.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pci/pci-imx6.c        | 10 ++++------
 drivers/pci/pcie-designware.c |  6 +++---
 drivers/pci/pcie-designware.h |  7 +++++++
 3 files changed, 14 insertions(+), 9 deletions(-)

diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index 6cbae1e223..05df9c0f79 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -97,8 +97,6 @@ struct imx6_pcie {
 #define PCIE_PL_PFLR (PL_OFFSET + 0x08)
 #define PCIE_PL_PFLR_LINK_STATE_MASK		(0x3f << 16)
 #define PCIE_PL_PFLR_FORCE_LINK			(1 << 15)
-#define PCIE_PHY_DEBUG_R0 (PL_OFFSET + 0x28)
-#define PCIE_PHY_DEBUG_R1_XMLH_LINK_IN_TRAINING	(1 << 29)
 #define PCIE_PHY_DEBUG_R1_XMLH_LINK_UP		(1 << 4)
 
 #define PCIE_PHY_CTRL (PL_OFFSET + 0x114)
@@ -635,8 +633,8 @@ static int imx6_pcie_establish_link(struct imx6_pcie *imx6_pcie)
 
 err_reset_phy:
        dev_dbg(dev, "PHY DEBUG_R0=0x%08x DEBUG_R1=0x%08x\n",
-               dw_pcie_readl_dbi(pci, PCIE_PHY_DEBUG_R0),
-               dw_pcie_readl_dbi(pci, PCIE_PHY_DEBUG_R1));
+               dw_pcie_readl_dbi(pci, PCIE_PORT_DEBUG0),
+               dw_pcie_readl_dbi(pci, PCIE_PORT_DEBUG1));
        imx6_pcie_reset_phy(imx6_pcie);
 
        return ret;
@@ -658,8 +656,8 @@ static int imx6_pcie_host_init(struct pcie_port *pp)
 
 static int imx6_pcie_link_up(struct dw_pcie *pci)
 {
-	return dw_pcie_readl_dbi(pci, PCIE_PHY_DEBUG_R1) &
-		PCIE_PHY_DEBUG_R1_XMLH_LINK_UP;
+	return dw_pcie_readl_dbi(pci, PCIE_PORT_DEBUG1) &
+		PCIE_PORT_DEBUG1_LINK_UP;
 }
 
 static const struct dw_pcie_ops dw_pcie_ops = {
diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index f9a759b8fd..106c3a017c 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -233,9 +233,9 @@ int dw_pcie_link_up(struct dw_pcie *pci)
 	if (pci->ops->link_up)
 		return pci->ops->link_up(pci);
 
-	val = readl(pci->dbi_base + PCIE_PHY_DEBUG_R1);
-	return ((val & PCIE_PHY_DEBUG_R1_LINK_UP) &&
-		!(val & PCIE_PHY_DEBUG_R1_LINK_IN_TRAINING));
+	val = readl(pci->dbi_base + PCIE_PORT_DEBUG1);
+	return ((val & PCIE_PORT_DEBUG1_LINK_UP) &&
+		(!(val & PCIE_PORT_DEBUG1_LINK_IN_TRAINING)));
 }
 
 static u8 dw_pcie_iatu_unroll_enabled(struct dw_pcie *pci)
diff --git a/drivers/pci/pcie-designware.h b/drivers/pci/pcie-designware.h
index 8cd48a27c1..ebd0d8e16c 100644
--- a/drivers/pci/pcie-designware.h
+++ b/drivers/pci/pcie-designware.h
@@ -26,6 +26,13 @@
 #define PORT_LINK_MODE_2_LANES		(0x3 << 16)
 #define PORT_LINK_MODE_4_LANES		(0x7 << 16)
 
+#define PCIE_PORT_DEBUG0		0x728
+#define PORT_LOGIC_LTSSM_STATE_MASK	0x1f
+#define PORT_LOGIC_LTSSM_STATE_L0	0x11
+#define PCIE_PORT_DEBUG1		0x72C
+#define PCIE_PORT_DEBUG1_LINK_UP		BIT(4)
+#define PCIE_PORT_DEBUG1_LINK_IN_TRAINING	BIT(29)
+
 #define PCIE_LINK_WIDTH_SPEED_CONTROL	0x80C
 #define PORT_LOGIC_SPEED_CHANGE		BIT(17)
 #define PORT_LOGIC_LINK_WIDTH_MASK	(0x1f << 8)
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
