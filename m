Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXLAB-0005YG-LM
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 07:12:05 +0000
Received: by mail-pg1-x544.google.com with SMTP id 70so602271pgh.8
 for <barebox@lists.infradead.org>; Wed, 12 Dec 2018 23:11:59 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 12 Dec 2018 23:10:52 -0800
Message-Id: <20181213071144.31691-7-andrew.smirnov@gmail.com>
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
Subject: [PATCH 06/58] PCI: designware: Simplify dw_pcie_cfg_read/write()
 interfaces
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit 4c45852f494dab827291c656ee9e12f3f4ee64d6

  Callers of dw_pcie_cfg_read() and dw_pcie_cfg_write() previously had to
  split the address into "addr" and "where".  The callees assumed "addr" was
  32-bit aligned (with zeros in the low two bits) and they used only the low
  two bits of "where".

  Accept the entire address in "addr" and drop the now-redundant "where"
  argument.  As an example, this replaces this:

    int dw_pcie_cfg_read(void __iomem *addr, int where, int size, u32 *val)
      *val = readb(addr + (where & 1));

  with this:

    int dw_pcie_cfg_read(void __iomem *addr, int size, u32 *val)
      *val = readb(addr):

  [bhelgaas: changelog, split access size change to separate patch]
  Signed-off-by: Gabriele Paoloni <gabriele.paoloni@huawei.com>
  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>

TODO: Fixup the pcie-designware.h

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pcie-designware.c | 27 +++++++++++++--------------
 drivers/pci/pcie-designware.h |  4 ++--
 2 files changed, 15 insertions(+), 16 deletions(-)

diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index bda85c30e..f46d33265 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -74,14 +74,14 @@
 
 static unsigned long global_io_offset;
 
-int dw_pcie_cfg_read(void __iomem *addr, int where, int size, u32 *val)
+int dw_pcie_cfg_read(void __iomem *addr, int size, u32 *val)
 {
 	if (size == 4)
 		*val = readl(addr);
 	else if (size == 2)
-		*val = readw(addr + (where & 2));
+		*val = readw(addr);
 	else if (size == 1)
-		*val = readb(addr + (where & 3));
+		*val = readb(addr);
 	else {
 		*val = 0;
 		return PCIBIOS_BAD_REGISTER_NUMBER;
@@ -90,14 +90,14 @@ int dw_pcie_cfg_read(void __iomem *addr, int where, int size, u32 *val)
 	return PCIBIOS_SUCCESSFUL;
 }
 
-int dw_pcie_cfg_write(void __iomem *addr, int where, int size, u32 val)
+int dw_pcie_cfg_write(void __iomem *addr, int size, u32 val)
 {
 	if (size == 4)
 		writel(val, addr);
 	else if (size == 2)
-		writew(val, addr + (where & 2));
+		writew(val, addr);
 	else if (size == 1)
-		writeb(val, addr + (where & 3));
+		writeb(val, addr);
 	else
 		return PCIBIOS_BAD_REGISTER_NUMBER;
 
@@ -130,8 +130,8 @@ static int dw_pcie_rd_own_conf(struct pcie_port *pp, int where, int size,
 	if (pp->ops->rd_own_conf)
 		ret = pp->ops->rd_own_conf(pp, where, size, val);
 	else
-		ret = dw_pcie_cfg_read(pp->dbi_base + (where & ~0x3), where,
-				size, val);
+		ret = dw_pcie_cfg_read(pp->dbi_base + where,
+				       size, val);
 
 	return ret;
 }
@@ -144,8 +144,8 @@ static int dw_pcie_wr_own_conf(struct pcie_port *pp, int where, int size,
 	if (pp->ops->wr_own_conf)
 		ret = pp->ops->wr_own_conf(pp, where, size, val);
 	else
-		ret = dw_pcie_cfg_write(pp->dbi_base + (where & ~0x3), where,
-				size, val);
+		ret = dw_pcie_cfg_write(pp->dbi_base + where,
+					size, val);
 
 	return ret;
 }
@@ -337,7 +337,7 @@ static int dw_pcie_rd_other_conf(struct pcie_port *pp, struct pci_bus *bus,
 	dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX0,
 				  type, cpu_addr,
 				  busdev, cfg_size);
-	ret = dw_pcie_cfg_read(va_cfg_base + address, where, size, val);
+	ret = dw_pcie_cfg_read(va_cfg_base + where, size, val);
 	dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX0,
 				  PCIE_ATU_TYPE_IO, pp->io_mod_base,
 				  pp->io_bus_addr, pp->io_size);
@@ -349,13 +349,12 @@ static int dw_pcie_wr_other_conf(struct pcie_port *pp, struct pci_bus *bus,
 		u32 devfn, int where, int size, u32 val)
 {
 	int ret, type;
-	u32 address, busdev, cfg_size;
+	u32 busdev, cfg_size;
 	u64 cpu_addr;
 	void __iomem *va_cfg_base;
 
 	busdev = PCIE_ATU_BUS(bus->number) | PCIE_ATU_DEV(PCI_SLOT(devfn)) |
 		 PCIE_ATU_FUNC(PCI_FUNC(devfn));
-	address = where & ~0x3;
 
 	if (bus->primary == pp->root_bus_nr) {
 		type = PCIE_ATU_TYPE_CFG0;
@@ -372,7 +371,7 @@ static int dw_pcie_wr_other_conf(struct pcie_port *pp, struct pci_bus *bus,
 	dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX0,
 				  type, cpu_addr,
 				  busdev, cfg_size);
-	ret = dw_pcie_cfg_write(va_cfg_base + address, where, size, val);
+	ret = dw_pcie_cfg_write(va_cfg_base + where, size, val);
 	dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX0,
 				  PCIE_ATU_TYPE_IO, pp->io_mod_base,
 				  pp->io_bus_addr, pp->io_size);
diff --git a/drivers/pci/pcie-designware.h b/drivers/pci/pcie-designware.h
index ba5752ec1..b8b85c575 100644
--- a/drivers/pci/pcie-designware.h
+++ b/drivers/pci/pcie-designware.h
@@ -60,8 +60,8 @@ struct pcie_host_ops {
 	void (*scan_bus)(struct pcie_port *pp);
 };
 
-int dw_pcie_cfg_read(void __iomem *addr, int where, int size, u32 *val);
-int dw_pcie_cfg_write(void __iomem *addr, int where, int size, u32 val);
+int dw_pcie_cfg_read(void __iomem *addr, int size, u32 *val);
+int dw_pcie_cfg_write(void __iomem *addr, int size, u32 val);
 int dw_pcie_link_up(struct pcie_port *pp);
 void dw_pcie_setup_rc(struct pcie_port *pp);
 int dw_pcie_host_init(struct pcie_port *pp);
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
