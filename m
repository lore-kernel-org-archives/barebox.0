Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYlK6-0000uV-UM
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 05:20:24 +0000
Received: by mail-pl1-x642.google.com with SMTP id g9so5544926plo.3
 for <barebox@lists.infradead.org>; Sun, 16 Dec 2018 21:20:00 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 16 Dec 2018 21:18:36 -0800
Message-Id: <20181217051925.17582-17-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 16/65] PCI: designware: Move Root Complex setup code to
 dw_pcie_setup_rc()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit 7e57fd1444bf8f4ba9179f826ed6817c56b801d4

  dw_pcie_host_init() looks up host bridge resources, ioremaps them, creates
  IRQ domains, and enumerates devices below the bridge.  dw_pcie_setup_rc()
  programs the Root Complex registers.  The Root Complex may lose power
  during suspend-to-RAM, and when we resume, we want to redo the latter but
  not the former.

  Move some Root Complex programming from dw_pcie_host_init() to
  dw_pcie_setup_rc() where it belongs.  DesignWare-based drivers can call
  dw_pcie_setup_rc() in their resume paths.

  [Niklas Cassel <niklas.cassel@axis.com>:  This change moves outbound ATU
  programming, which uses pp->mem_base, to dw_pcie_setup_rc().  Apply the
  dra7xx pp->mem_base update before calling dw_pcie_setup_rc().]

  [bhelgaas: changelog, fold in dra7xx fix from Niklas]
  Signed-off-by: Jisheng Zhang <jszhang@marvell.com>
  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
  Acked-by: Pratyush Anand <pratyush.anand@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pcie-designware.c | 40 +++++++++++++++++------------------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index d1c2635d6..5e824cedc 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -225,7 +225,7 @@ int __init dw_pcie_host_init(struct pcie_port *pp)
 	struct of_pci_range range;
 	struct of_pci_range_parser parser;
 	struct resource *cfg_res;
-	u32 val, na, ns;
+	u32 na, ns;
 	const __be32 *addrp;
 	int index, ret;
 
@@ -316,25 +316,6 @@ int __init dw_pcie_host_init(struct pcie_port *pp)
 	if (pp->ops->host_init)
 		pp->ops->host_init(pp);
 
-       /*
-        * If the platform provides ->rd_other_conf, it means the platform
-        * uses its own address translation component rather than ATU, so
-        * we should not program the ATU here.
-        */
-	if (!pp->ops->rd_other_conf)
-		dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX1,
-					  PCIE_ATU_TYPE_MEM, pp->mem_mod_base,
-					  pp->mem_bus_addr, pp->mem_size);
-
-	dw_pcie_wr_own_conf(pp, PCI_BASE_ADDRESS_0, 4, 0);
-
-	/* program correct class for RC */
-	dw_pcie_wr_own_conf(pp, PCI_CLASS_DEVICE, 2, PCI_CLASS_BRIDGE_PCI);
-
-	dw_pcie_rd_own_conf(pp, PCIE_LINK_WIDTH_SPEED_CONTROL, 4, &val);
-	val |= PORT_LOGIC_SPEED_CHANGE;
-	dw_pcie_wr_own_conf(pp, PCIE_LINK_WIDTH_SPEED_CONTROL, 4, val);
-
 	pp->pci.parent = pp->dev;
 	pp->pci.pci_ops = &dw_pcie_ops;
 	pp->pci.set_busno = dw_pcie_set_local_bus_nr;
@@ -568,6 +549,25 @@ void dw_pcie_setup_rc(struct pcie_port *pp)
 	val |= PCI_COMMAND_IO | PCI_COMMAND_MEMORY |
 		PCI_COMMAND_MASTER | PCI_COMMAND_SERR;
 	dw_pcie_writel_rc(pp, val, PCI_COMMAND);
+
+       /*
+        * If the platform provides ->rd_other_conf, it means the platform
+        * uses its own address translation component rather than ATU, so
+        * we should not program the ATU here.
+        */
+	if (!pp->ops->rd_other_conf)
+		dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX1,
+					  PCIE_ATU_TYPE_MEM, pp->mem_mod_base,
+					  pp->mem_bus_addr, pp->mem_size);
+
+	dw_pcie_wr_own_conf(pp, PCI_BASE_ADDRESS_0, 4, 0);
+
+	/* program correct class for RC */
+	dw_pcie_wr_own_conf(pp, PCI_CLASS_DEVICE, 2, PCI_CLASS_BRIDGE_PCI);
+
+	dw_pcie_rd_own_conf(pp, PCIE_LINK_WIDTH_SPEED_CONTROL, 4, &val);
+	val |= PORT_LOGIC_SPEED_CHANGE;
+	dw_pcie_wr_own_conf(pp, PCIE_LINK_WIDTH_SPEED_CONTROL, 4, val);
 }
 
 MODULE_AUTHOR("Jingoo Han <jg1.han@samsung.com>");
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
