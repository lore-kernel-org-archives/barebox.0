Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYlKh-0005Hz-Ir
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 05:20:48 +0000
Received: by mail-pf1-x442.google.com with SMTP id q1so5762504pfi.5
 for <barebox@lists.infradead.org>; Sun, 16 Dec 2018 21:20:47 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 16 Dec 2018 21:19:10 -0800
Message-Id: <20181217051925.17582-51-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 50/65] PCI: dwc: designware: Fix style errors in
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
index 59884d514..f5a77ae15 100644
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
@@ -260,8 +260,8 @@ int __init dw_pcie_host_init(struct pcie_port *pp)
 
 	cfg_res = dev_get_resource_by_name(dev, IORESOURCE_MEM, "config");
 	if (cfg_res) {
-		pp->cfg0_size = resource_size(cfg_res)/2;
-		pp->cfg1_size = resource_size(cfg_res)/2;
+		pp->cfg0_size = resource_size(cfg_res) / 2;
+		pp->cfg1_size = resource_size(cfg_res) / 2;
 		pp->cfg0_base = cfg_res->start;
 		pp->cfg1_base = cfg_res->start + pp->cfg0_size;
 
@@ -308,8 +308,8 @@ int __init dw_pcie_host_init(struct pcie_port *pp)
 		}
 		if (restype == 0) {
 			of_pci_range_to_resource(&range, np, &pp->cfg);
-			pp->cfg0_size = resource_size(&pp->cfg)/2;
-			pp->cfg1_size = resource_size(&pp->cfg)/2;
+			pp->cfg0_size = resource_size(&pp->cfg) / 2;
+			pp->cfg1_size = resource_size(&pp->cfg) / 2;
 			pp->cfg0_base = pp->cfg.start;
 			pp->cfg1_base = pp->cfg.start + pp->cfg0_size;
 
@@ -351,7 +351,7 @@ int __init dw_pcie_host_init(struct pcie_port *pp)
 }
 
 static int dw_pcie_rd_other_conf(struct pcie_port *pp, struct pci_bus *bus,
-		u32 devfn, int where, int size, u32 *val)
+				 u32 devfn, int where, int size, u32 *val)
 {
 	int ret, type;
 	u32 address, busdev, cfg_size;
@@ -392,7 +392,7 @@ static int dw_pcie_rd_other_conf(struct pcie_port *pp, struct pci_bus *bus,
 }
 
 static int dw_pcie_wr_other_conf(struct pcie_port *pp, struct pci_bus *bus,
-		u32 devfn, int where, int size, u32 val)
+				 u32 devfn, int where, int size, u32 val)
 {
 	int ret, type;
 	u32 busdev, cfg_size;
@@ -457,7 +457,7 @@ static int dw_pcie_valid_device(struct pcie_port *pp, struct pci_bus *bus,
 }
 
 static int dw_pcie_rd_conf(struct pci_bus *bus, u32 devfn, int where,
-			int size, u32 *val)
+			   int size, u32 *val)
 {
 	struct pcie_port *pp = host_to_pcie(bus->host);
 	int ret;
@@ -482,7 +482,7 @@ static int dw_pcie_rd_conf(struct pci_bus *bus, u32 devfn, int where,
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
