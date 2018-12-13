Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXLAD-0005Y4-2y
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 07:12:10 +0000
Received: by mail-pg1-x541.google.com with SMTP id s198so618596pgs.2
 for <barebox@lists.infradead.org>; Wed, 12 Dec 2018 23:11:56 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 12 Dec 2018 23:10:49 -0800
Message-Id: <20181213071144.31691-4-andrew.smirnov@gmail.com>
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
Subject: [PATCH 03/58] PCI: designware: Use iATU0 for cfg and IO, iATU1 for MEM
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit 2d91b491d5be13602a73be789bb8a3c28d06b7f2

  Most transactions' type are cfg0 and MEM, so the current iATU usage is not
  balanced: iATU0 is hot while iATU1 is rarely used.

  Refactor the iATU usage so we use iATU0 for cfg and IO and iATU1 for MEM.
  This allocation idea comes from Minghuan Lian
  <Minghuan.Lian@freescale.com>:

  [bhelgaas: use link with Message-ID]
  Link: http://lkml.kernel.org/r/1429091315-31891-3-git-send-email-Minghuan.Lian@freescale.com
  Signed-off-by: Jisheng Zhang <jszhang@marvell.com>
  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
  Acked-by: Pratyush Anand <pratyush.anand@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pcie-designware.c | 79 ++++++++++++++++++++---------------
 1 file changed, 46 insertions(+), 33 deletions(-)

diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index d54e47074..1ef544c7b 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -283,6 +283,11 @@ int __init dw_pcie_host_init(struct pcie_port *pp)
 	if (pp->ops->host_init)
 		pp->ops->host_init(pp);
 
+	if (!pp->ops->rd_other_conf)
+		dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX1,
+					  PCIE_ATU_TYPE_MEM, pp->mem_mod_base,
+					  pp->mem_bus_addr, pp->mem_size);
+
 	dw_pcie_wr_own_conf(pp, PCI_BASE_ADDRESS_0, 4, 0);
 
 	/* program correct class for RC */
@@ -306,62 +311,70 @@ int __init dw_pcie_host_init(struct pcie_port *pp)
 static int dw_pcie_rd_other_conf(struct pcie_port *pp, struct pci_bus *bus,
 		u32 devfn, int where, int size, u32 *val)
 {
-	int ret = PCIBIOS_SUCCESSFUL;
-	u32 address, busdev;
+	int ret, type;
+	u32 address, busdev, cfg_size;
+	u64 cpu_addr;
+	void __iomem *va_cfg_base;
 
 	busdev = PCIE_ATU_BUS(bus->number) | PCIE_ATU_DEV(PCI_SLOT(devfn)) |
-		 PCIE_ATU_FUNC(PCI_FUNC(devfn));
+		PCIE_ATU_FUNC(PCI_FUNC(devfn));
 	address = where & ~0x3;
 
 	if (bus->primary == pp->root_bus_nr) {
-		dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX0,
-					  PCIE_ATU_TYPE_CFG0, pp->cfg0_mod_base,
-					  busdev, pp->cfg0_size);
-		ret = dw_pcie_cfg_read(pp->va_cfg0_base + address, where, size, val);
-		dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX0,
-					  PCIE_ATU_TYPE_MEM, pp->mem_mod_base,
-					  pp->mem_bus_addr, pp->mem_size);
+		type = PCIE_ATU_TYPE_CFG0;
+		cpu_addr = pp->cfg0_mod_base;
+		cfg_size = pp->cfg0_size;
+		va_cfg_base = pp->va_cfg0_base;
 	} else {
-		dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX1,
-					  PCIE_ATU_TYPE_CFG1, pp->cfg1_mod_base,
-					  busdev, pp->cfg1_size);
-		ret = dw_pcie_cfg_read(pp->va_cfg1_base + address, where, size, val);
-		dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX1,
-					  PCIE_ATU_TYPE_IO, pp->io_mod_base,
-					  pp->io_bus_addr, pp->io_size);
+		type = PCIE_ATU_TYPE_CFG1;
+		cpu_addr = pp->cfg1_mod_base;
+		cfg_size = pp->cfg1_size;
+		va_cfg_base = pp->va_cfg1_base;
 	}
 
+	dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX0,
+				  type, cpu_addr,
+				  busdev, cfg_size);
+	ret = dw_pcie_cfg_read(va_cfg_base + address, where, size, val);
+	dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX0,
+				  PCIE_ATU_TYPE_IO, pp->io_mod_base,
+				  pp->io_bus_addr, pp->io_size);
+
 	return ret;
 }
 
 static int dw_pcie_wr_other_conf(struct pcie_port *pp, struct pci_bus *bus,
 		u32 devfn, int where, int size, u32 val)
 {
-	int ret = PCIBIOS_SUCCESSFUL;
-	u32 address, busdev;
+	int ret, type;
+	u32 address, busdev, cfg_size;
+	u64 cpu_addr;
+	void __iomem *va_cfg_base;
 
 	busdev = PCIE_ATU_BUS(bus->number) | PCIE_ATU_DEV(PCI_SLOT(devfn)) |
 		 PCIE_ATU_FUNC(PCI_FUNC(devfn));
 	address = where & ~0x3;
 
 	if (bus->primary == pp->root_bus_nr) {
-		dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX0,
-					  PCIE_ATU_TYPE_CFG0, pp->cfg0_mod_base,
-					  busdev, pp->cfg0_size);
-		ret = dw_pcie_cfg_write(pp->va_cfg0_base + address, where, size, val);
-		dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX0,
-					  PCIE_ATU_TYPE_MEM, pp->mem_mod_base,
-					  pp->mem_bus_addr, pp->mem_size);
+		type = PCIE_ATU_TYPE_CFG0;
+		cpu_addr = pp->cfg0_mod_base;
+		cfg_size = pp->cfg0_size;
+		va_cfg_base = pp->va_cfg0_base;
 	} else {
-		dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX1,
-					  PCIE_ATU_TYPE_CFG1, pp->cfg1_mod_base,
-					  busdev, pp->cfg1_size);
-		ret = dw_pcie_cfg_write(pp->va_cfg1_base + address, where, size, val);
-		dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX1,
-					  PCIE_ATU_TYPE_IO, pp->io_mod_base,
-					  pp->io_bus_addr, pp->io_size);
+		type = PCIE_ATU_TYPE_CFG1;
+		cpu_addr = pp->cfg1_mod_base;
+		cfg_size = pp->cfg1_size;
+		va_cfg_base = pp->va_cfg1_base;
 	}
 
+	dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX0,
+				  type, cpu_addr,
+				  busdev, cfg_size);
+	ret = dw_pcie_cfg_write(va_cfg_base + address, where, size, val);
+	dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX0,
+				  PCIE_ATU_TYPE_IO, pp->io_mod_base,
+				  pp->io_bus_addr, pp->io_size);
+
 	return ret;
 }
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
