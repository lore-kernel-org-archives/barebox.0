Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZvNf-00066e-Bm
 for barebox@lists.infradead.org; Wed, 27 Nov 2019 11:21:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Nov 2019 12:20:44 +0100
Message-Id: <20191127112051.9427-6-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/12] PCI: dwc: Enable iATU unroll for endpoint too
To: Barebox List <barebox@lists.infradead.org>

Port of Linux commit a9f4c2d2f99ec85ebc734a5bfb21a2cf93c169ad

    iatu_unroll_enabled flag is set only for Designware in host mode.

    However iATU unroll can be applicable for endpoint mode too. Set
    iatu_unroll_enabled flag in dw_pcie_setup() which is common for
    both host mode and endpoint mode.

    Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
    Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pci/pcie-designware-host.c | 19 -------------------
 drivers/pci/pcie-designware.c      | 19 +++++++++++++++++++
 2 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/pci/pcie-designware-host.c b/drivers/pci/pcie-designware-host.c
index f3d7c59a60..b2d46d38f8 100644
--- a/drivers/pci/pcie-designware-host.c
+++ b/drivers/pci/pcie-designware-host.c
@@ -340,17 +340,6 @@ static const struct pci_ops dw_pcie_ops = {
 	.write = dw_pcie_wr_conf,
 };
 
-static u8 dw_pcie_iatu_unroll_enabled(struct dw_pcie *pci)
-{
-	u32 val;
-
-	val = dw_pcie_readl_dbi(pci, PCIE_ATU_VIEWPORT);
-	if (val == 0xffffffff)
-		return 1;
-
-	return 0;
-}
-
 void dw_pcie_setup_rc(struct pcie_port *pp)
 {
 	u32 val;
@@ -381,14 +370,6 @@ void dw_pcie_setup_rc(struct pcie_port *pp)
         * we should not program the ATU here.
         */
 	if (!pp->ops->rd_other_conf) {
-		/* get iATU unroll support */
-		pci->iatu_unroll_enabled = dw_pcie_iatu_unroll_enabled(pci);
-		dev_dbg(pci->dev, "iATU unroll: %s\n",
-			pci->iatu_unroll_enabled ? "enabled" : "disabled");
-
-		if (pci->iatu_unroll_enabled && !pci->atu_base)
-			pci->atu_base = pci->dbi_base + DEFAULT_DBI_ATU_OFFSET;
-
 		dw_pcie_prog_outbound_atu(pci, PCIE_ATU_REGION_INDEX0,
 					  PCIE_ATU_TYPE_MEM, pp->mem_mod_base,
 					  pp->mem_bus_addr, pp->mem_size);
diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index 9728964ec9..91aac8dec0 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -238,6 +238,17 @@ int dw_pcie_link_up(struct dw_pcie *pci)
 		!(val & PCIE_PHY_DEBUG_R1_LINK_IN_TRAINING));
 }
 
+static u8 dw_pcie_iatu_unroll_enabled(struct dw_pcie *pci)
+{
+	u32 val;
+
+	val = dw_pcie_readl_dbi(pci, PCIE_ATU_VIEWPORT);
+	if (val == 0xffffffff)
+		return 1;
+
+	return 0;
+}
+
 void dw_pcie_setup(struct dw_pcie *pci)
 {
 	int ret;
@@ -246,6 +257,14 @@ void dw_pcie_setup(struct dw_pcie *pci)
 	struct device_d *dev = pci->dev;
 	struct device_node *np = dev->device_node;
 
+	/* Get iATU unroll support */
+	pci->iatu_unroll_enabled = dw_pcie_iatu_unroll_enabled(pci);
+	dev_dbg(pci->dev, "iATU unroll: %s\n",
+		pci->iatu_unroll_enabled ? "enabled" : "disabled");
+
+	if (pci->iatu_unroll_enabled && !pci->atu_base)
+		pci->atu_base = pci->dbi_base + DEFAULT_DBI_ATU_OFFSET;
+
 	ret = of_property_read_u32(np, "num-lanes", &lanes);
 	if (ret)
 		lanes = 0;
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
