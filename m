Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXLB5-0001MH-R2
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 07:13:00 +0000
Received: by mail-pf1-x442.google.com with SMTP id y126so645615pfb.4
 for <barebox@lists.infradead.org>; Wed, 12 Dec 2018 23:12:49 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 12 Dec 2018 23:11:31 -0800
Message-Id: <20181213071144.31691-46-andrew.smirnov@gmail.com>
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
Subject: [PATCH 45/58] PCI: dwc: designware: Fix style errors in
 pcie-designware.c
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit 314fc854f50317931fb4dfaab431695ab886e8de

  No functional change. Fix all checkpatch warnings and check errors in
  pcie-designware.c

  Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
  Acked-By: Joao Pinto <jpinto@synopsys.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pcie-designware.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index bffbc83bc..d95b8aed8 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -39,13 +39,13 @@ int dw_pcie_read(void __iomem *addr, int size, u32 *val)
 		return PCIBIOS_BAD_REGISTER_NUMBER;
 	}
 
-	if (size == 4)
+	if (size == 4) {
 		*val = readl(addr);
-	else if (size == 2)
+	} else if (size == 2) {
 		*val = readw(addr);
-	else if (size == 1)
+	} else if (size == 1) {
 		*val = readb(addr);
-	else {
+	} else {
 		*val = 0;
 		return PCIBIOS_BAD_REGISTER_NUMBER;
 	}
@@ -211,8 +211,8 @@ int __init dw_pcie_host_init(struct pcie_port *pp)
 
 	cfg_res = dev_get_resource_by_name(dev, IORESOURCE_MEM, "config");
 	if (cfg_res) {
-		pp->cfg0_size = resource_size(cfg_res)/2;
-		pp->cfg1_size = resource_size(cfg_res)/2;
+		pp->cfg0_size = resource_size(cfg_res) / 2;
+		pp->cfg1_size = resource_size(cfg_res) / 2;
 		pp->cfg0_base = cfg_res->start;
 		pp->cfg1_base = cfg_res->start + pp->cfg0_size;
 
@@ -259,8 +259,8 @@ int __init dw_pcie_host_init(struct pcie_port *pp)
 		}
 		if (restype == 0) {
 			of_pci_range_to_resource(&range, np, &pp->cfg);
-			pp->cfg0_size = resource_size(&pp->cfg)/2;
-			pp->cfg1_size = resource_size(&pp->cfg)/2;
+			pp->cfg0_size = resource_size(&pp->cfg) / 2;
+			pp->cfg1_size = resource_size(&pp->cfg) / 2;
 			pp->cfg0_base = pp->cfg.start;
 			pp->cfg1_base = pp->cfg.start + pp->cfg0_size;
 
@@ -302,7 +302,7 @@ int __init dw_pcie_host_init(struct pcie_port *pp)
 }
 
 static int dw_pcie_rd_other_conf(struct pcie_port *pp, struct pci_bus *bus,
-		u32 devfn, int where, int size, u32 *val)
+				 u32 devfn, int where, int size, u32 *val)
 {
 	int ret, type;
 	u32 address, busdev, cfg_size;
@@ -343,7 +343,7 @@ static int dw_pcie_rd_other_conf(struct pcie_port *pp, struct pci_bus *bus,
 }
 
 static int dw_pcie_wr_other_conf(struct pcie_port *pp, struct pci_bus *bus,
-		u32 devfn, int where, int size, u32 val)
+				 u32 devfn, int where, int size, u32 val)
 {
 	int ret, type;
 	u32 busdev, cfg_size;
@@ -408,7 +408,7 @@ static int dw_pcie_valid_device(struct pcie_port *pp, struct pci_bus *bus,
 }
 
 static int dw_pcie_rd_conf(struct pci_bus *bus, u32 devfn, int where,
-			int size, u32 *val)
+			   int size, u32 *val)
 {
 	struct pcie_port *pp = host_to_pcie(bus->host);
 	int ret;
@@ -433,7 +433,7 @@ static int dw_pcie_rd_conf(struct pci_bus *bus, u32 devfn, int where,
 }
 
 static int dw_pcie_wr_conf(struct pci_bus *bus, u32 devfn,
-			int where, int size, u32 val)
+			   int where, int size, u32 val)
 {
 	struct pcie_port *pp = host_to_pcie(bus->host);
 	int ret;
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
