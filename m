Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXLAl-0005zc-Li
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 07:12:49 +0000
Received: by mail-pl1-x644.google.com with SMTP id u6so606720plm.8
 for <barebox@lists.infradead.org>; Wed, 12 Dec 2018 23:12:29 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 12 Dec 2018 23:11:16 -0800
Message-Id: <20181213071144.31691-31-andrew.smirnov@gmail.com>
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
Subject: [PATCH 30/58] PCI: dwc: designware: Get device pointer at the start
 of dw_pcie_host_init()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit 40f67fb2c384fe12741aa35010d62bfe8c98286c

  No functional change. Get device pointer at the beginning of
  dw_pcie_host_init() instead of getting it all over dw_pcie_host_init().
  This is in preparation for splitting struct pcie_port into host and core
  structures (once split pcie_port will not have device pointer).

  Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pcie-designware.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index 816a70539..7ea48819b 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -186,7 +186,8 @@ static struct pci_ops dw_pcie_ops;
 
 int __init dw_pcie_host_init(struct pcie_port *pp)
 {
-	struct device_node *np = pp->dev->device_node;
+	struct device_d *dev = pp->dev;
+	struct device_node *np = dev->device_node;
 	struct of_pci_range range;
 	struct of_pci_range_parser parser;
 	struct resource *cfg_res;
@@ -200,7 +201,7 @@ int __init dw_pcie_host_init(struct pcie_port *pp)
 	of_property_read_u32(np, "#address-cells", &na);
 	ns = of_n_size_cells(np);
 
-	cfg_res = dev_get_resource_by_name(pp->dev, IORESOURCE_MEM, "config");
+	cfg_res = dev_get_resource_by_name(dev, IORESOURCE_MEM, "config");
 	if (cfg_res) {
 		pp->cfg0_size = resource_size(cfg_res)/2;
 		pp->cfg1_size = resource_size(cfg_res)/2;
@@ -213,11 +214,11 @@ int __init dw_pcie_host_init(struct pcie_port *pp)
 		pp->cfg0_mod_base = of_read_number(addrp, ns);
 		pp->cfg1_mod_base = pp->cfg0_mod_base + pp->cfg0_size;
 	} else {
-		dev_err(pp->dev, "missing *config* reg space\n");
+		dev_err(dev, "missing *config* reg space\n");
 	}
 
 	if (of_pci_range_parser_init(&parser, np)) {
-		dev_err(pp->dev, "missing ranges property\n");
+		dev_err(dev, "missing ranges property\n");
 		return -EINVAL;
 	}
 
@@ -285,7 +286,7 @@ int __init dw_pcie_host_init(struct pcie_port *pp)
 	if (pp->ops->host_init)
 		pp->ops->host_init(pp);
 
-	pp->pci.parent = pp->dev;
+	pp->pci.parent = dev;
 	pp->pci.pci_ops = &dw_pcie_ops;
 	pp->pci.set_busno = dw_pcie_set_local_bus_nr;
 	pp->pci.mem_resource = &pp->mem;
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
