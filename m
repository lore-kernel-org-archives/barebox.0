Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXLB5-0006Kk-GF
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 07:13:20 +0000
Received: by mail-pg1-x541.google.com with SMTP id z11so625838pgu.0
 for <barebox@lists.infradead.org>; Wed, 12 Dec 2018 23:12:49 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 12 Dec 2018 23:11:32 -0800
Message-Id: <20181213071144.31691-47-andrew.smirnov@gmail.com>
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
Subject: [PATCH 46/58] PCI: dwc: Split pcie-designware.c into host and core
 files
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit feb85d9b1c47ea8dbcae559ff127b433fdb245b7

  Split pcie-designware.c into pcie-designware-host.c that contains the host
  specific parts of the driver and pcie-designware.c that contains the parts
  used by both host driver and endpoint driver.

  Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/Makefile               |   2 +-
 drivers/pci/pcie-designware-host.c | 397 +++++++++++++++++++++++++++++
 drivers/pci/pcie-designware.c      | 369 +--------------------------
 drivers/pci/pcie-designware.h      |   5 +-
 4 files changed, 407 insertions(+), 366 deletions(-)
 create mode 100644 drivers/pci/pcie-designware-host.c

diff --git a/drivers/pci/Makefile b/drivers/pci/Makefile
index ce5d0e2c8..562304c65 100644
--- a/drivers/pci/Makefile
+++ b/drivers/pci/Makefile
@@ -9,5 +9,5 @@ CPPFLAGS += $(ccflags-y)
 
 obj-$(CONFIG_PCI_MVEBU)	+= pci-mvebu.o pci-mvebu-phy.o
 obj-$(CONFIG_PCI_TEGRA) += pci-tegra.o
-obj-$(CONFIG_PCIE_DW) += pcie-designware.o
+obj-$(CONFIG_PCIE_DW) += pcie-designware.o pcie-designware-host.o
 obj-$(CONFIG_PCI_IMX6) += pci-imx6.o
diff --git a/drivers/pci/pcie-designware-host.c b/drivers/pci/pcie-designware-host.c
new file mode 100644
index 000000000..19e5d0b27
--- /dev/null
+++ b/drivers/pci/pcie-designware-host.c
@@ -0,0 +1,397 @@
+/*
+ * Synopsys Designware PCIe host controller driver
+ *
+ * Copyright (C) 2013 Samsung Electronics Co., Ltd.
+ *		http://www.samsung.com
+ *
+ * Author: Jingoo Han <jg1.han@samsung.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+
+#include <common.h>
+#include <clock.h>
+#include <malloc.h>
+#include <io.h>
+#include <init.h>
+#include <asm/mmu.h>
+
+#include <linux/clk.h>
+#include <linux/kernel.h>
+#include <of_address.h>
+#include <of_pci.h>
+#include <linux/pci.h>
+#include <linux/phy/phy.h>
+#include <linux/reset.h>
+#include <linux/sizes.h>
+
+#include "pcie-designware.h"
+
+#include <abort.h>
+
+static struct pci_ops dw_pcie_ops;
+static unsigned long global_io_offset;
+
+static int dw_pcie_rd_own_conf(struct pcie_port *pp, int where, int size,
+			       u32 *val)
+{
+	struct dw_pcie *pci;
+
+	if (pp->ops->rd_own_conf)
+		return pp->ops->rd_own_conf(pp, where, size, val);
+
+	pci = to_dw_pcie_from_pp(pp);
+	return dw_pcie_read(pci->dbi_base + where, size, val);
+}
+
+static int dw_pcie_wr_own_conf(struct pcie_port *pp, int where, int size,
+			       u32 val)
+{
+	struct dw_pcie *pci;
+
+	if (pp->ops->wr_own_conf)
+		return pp->ops->wr_own_conf(pp, where, size, val);
+
+	pci = to_dw_pcie_from_pp(pp);
+	return dw_pcie_write(pci->dbi_base + where, size, val);
+}
+
+static inline struct pcie_port *host_to_pcie(struct pci_controller *host)
+{
+	return container_of(host, struct pcie_port, pci);
+}
+
+static void dw_pcie_set_local_bus_nr(struct pci_controller *host, int busno)
+{
+	struct pcie_port *pp = host_to_pcie(host);
+
+	pp->root_bus_nr = busno;
+}
+
+int __init dw_pcie_host_init(struct pcie_port *pp)
+{
+	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
+	struct device_d *dev = pci->dev;
+	struct device_node *np = dev->device_node;
+	struct of_pci_range range;
+	struct of_pci_range_parser parser;
+	struct resource *cfg_res;
+	u32 na, ns;
+	const __be32 *addrp;
+	int index, ret;
+
+	/* Find the address cell size and the number of cells in order to get
+	 * the untranslated address.
+	 */
+	of_property_read_u32(np, "#address-cells", &na);
+	ns = of_n_size_cells(np);
+
+	cfg_res = dev_get_resource_by_name(dev, IORESOURCE_MEM, "config");
+	if (cfg_res) {
+		pp->cfg0_size = resource_size(cfg_res) / 2;
+		pp->cfg1_size = resource_size(cfg_res) / 2;
+		pp->cfg0_base = cfg_res->start;
+		pp->cfg1_base = cfg_res->start + pp->cfg0_size;
+
+		/* Find the untranslated configuration space address */
+		index = of_property_match_string(np, "reg-names", "config");
+		addrp = of_get_address(np, index, NULL, NULL);
+		pp->cfg0_mod_base = of_read_number(addrp, ns);
+		pp->cfg1_mod_base = pp->cfg0_mod_base + pp->cfg0_size;
+	} else {
+		dev_err(dev, "missing *config* reg space\n");
+	}
+
+	if (of_pci_range_parser_init(&parser, np)) {
+		dev_err(dev, "missing ranges property\n");
+		return -EINVAL;
+	}
+
+	/* Get the I/O and memory ranges from DT */
+	for_each_of_pci_range(&parser, &range) {
+		unsigned long restype = range.flags & IORESOURCE_TYPE_BITS;
+
+		if (restype == IORESOURCE_IO) {
+			of_pci_range_to_resource(&range, np, &pp->io);
+			pp->io.name = "I/O";
+			pp->io.start = range.pci_addr + global_io_offset;
+			pp->io.end =  range.pci_addr + range.size + global_io_offset - 1;
+			pp->io_size = resource_size(&pp->io);
+			pp->io_bus_addr = range.pci_addr;
+			pp->io_base = range.cpu_addr;
+
+			/* Find the untranslated IO space address */
+			pp->io_mod_base = of_read_number(parser.range -
+							 parser.np + na, ns);
+		}
+		if (restype == IORESOURCE_MEM) {
+			of_pci_range_to_resource(&range, np, &pp->mem);
+			pp->mem.name = "MEM";
+			pp->mem_size = resource_size(&pp->mem);
+			pp->mem_bus_addr = range.pci_addr;
+
+			/* Find the untranslated MEM space address */
+			pp->mem_mod_base = of_read_number(parser.range -
+							  parser.np + na, ns);
+		}
+		if (restype == 0) {
+			of_pci_range_to_resource(&range, np, &pp->cfg);
+			pp->cfg0_size = resource_size(&pp->cfg) / 2;
+			pp->cfg1_size = resource_size(&pp->cfg) / 2;
+			pp->cfg0_base = pp->cfg.start;
+			pp->cfg1_base = pp->cfg.start + pp->cfg0_size;
+
+			/* Find the untranslated configuration space address */
+			pp->cfg0_mod_base = of_read_number(parser.range -
+							   parser.np + na, ns);
+			pp->cfg1_mod_base = pp->cfg0_mod_base +
+					    pp->cfg0_size;
+		}
+	}
+
+	if (!pci->dbi_base)
+		pci->dbi_base = (void __force *)pp->cfg.start;
+
+	pp->mem_base = pp->mem.start;
+
+	if (!pp->va_cfg0_base)
+		pp->va_cfg0_base = (void __force *)(u32)pp->cfg0_base;
+
+	if (!pp->va_cfg1_base)
+		pp->va_cfg1_base = (void __force *)(u32)pp->cfg1_base;
+
+	ret = of_property_read_u32(np, "num-viewport", &pci->num_viewport);
+	if (ret)
+		pci->num_viewport = 2;
+
+	if (pp->ops->host_init)
+		pp->ops->host_init(pp);
+
+	pp->pci.parent = dev;
+	pp->pci.pci_ops = &dw_pcie_ops;
+	pp->pci.set_busno = dw_pcie_set_local_bus_nr;
+	pp->pci.mem_resource = &pp->mem;
+	pp->pci.io_resource = &pp->io;
+
+	register_pci_controller(&pp->pci);
+
+	return 0;
+}
+
+static int dw_pcie_rd_other_conf(struct pcie_port *pp, struct pci_bus *bus,
+				 u32 devfn, int where, int size, u32 *val)
+{
+	int ret, type;
+	u32 address, busdev, cfg_size;
+	u64 cpu_addr;
+	void __iomem *va_cfg_base;
+	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
+
+	if (pp->ops->rd_other_conf)
+		return pp->ops->rd_other_conf(pp, bus, devfn,
+					      where, size, val);
+
+	busdev = PCIE_ATU_BUS(bus->number) | PCIE_ATU_DEV(PCI_SLOT(devfn)) |
+		PCIE_ATU_FUNC(PCI_FUNC(devfn));
+	address = where & ~0x3;
+
+	if (bus->primary == pp->root_bus_nr) {
+		type = PCIE_ATU_TYPE_CFG0;
+		cpu_addr = pp->cfg0_mod_base;
+		cfg_size = pp->cfg0_size;
+		va_cfg_base = pp->va_cfg0_base;
+	} else {
+		type = PCIE_ATU_TYPE_CFG1;
+		cpu_addr = pp->cfg1_mod_base;
+		cfg_size = pp->cfg1_size;
+		va_cfg_base = pp->va_cfg1_base;
+	}
+
+	dw_pcie_prog_outbound_atu(pci, PCIE_ATU_REGION_INDEX1,
+				  type, cpu_addr,
+				  busdev, cfg_size);
+	ret = dw_pcie_read(va_cfg_base + where, size, val);
+	if (pci->num_viewport <= 2)
+		dw_pcie_prog_outbound_atu(pci, PCIE_ATU_REGION_INDEX1,
+					  PCIE_ATU_TYPE_IO, pp->io_mod_base,
+					  pp->io_bus_addr, pp->io_size);
+
+	return ret;
+}
+
+static int dw_pcie_wr_other_conf(struct pcie_port *pp, struct pci_bus *bus,
+				 u32 devfn, int where, int size, u32 val)
+{
+	int ret, type;
+	u32 busdev, cfg_size;
+	u64 cpu_addr;
+	void __iomem *va_cfg_base;
+	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
+
+	if (pp->ops->wr_other_conf)
+		return pp->ops->wr_other_conf(pp, bus, devfn,
+					      where, size, val);
+
+	busdev = PCIE_ATU_BUS(bus->number) | PCIE_ATU_DEV(PCI_SLOT(devfn)) |
+		 PCIE_ATU_FUNC(PCI_FUNC(devfn));
+
+	if (bus->primary == pp->root_bus_nr) {
+		type = PCIE_ATU_TYPE_CFG0;
+		cpu_addr = pp->cfg0_mod_base;
+		cfg_size = pp->cfg0_size;
+		va_cfg_base = pp->va_cfg0_base;
+	} else {
+		type = PCIE_ATU_TYPE_CFG1;
+		cpu_addr = pp->cfg1_mod_base;
+		cfg_size = pp->cfg1_size;
+		va_cfg_base = pp->va_cfg1_base;
+	}
+
+	dw_pcie_prog_outbound_atu(pci, PCIE_ATU_REGION_INDEX1,
+				  type, cpu_addr,
+				  busdev, cfg_size);
+	ret = dw_pcie_write(va_cfg_base + where, size, val);
+	if (pci->num_viewport <= 2)
+		dw_pcie_prog_outbound_atu(pci, PCIE_ATU_REGION_INDEX1,
+					  PCIE_ATU_TYPE_IO, pp->io_mod_base,
+					  pp->io_bus_addr, pp->io_size);
+
+	return ret;
+}
+
+static int dw_pcie_valid_device(struct pcie_port *pp, struct pci_bus *bus,
+				int dev)
+{
+	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
+
+	/* If there is no link, then there is no device */
+	if (bus->number != pp->root_bus_nr) {
+		if (!dw_pcie_link_up(pci))
+			return 0;
+	}
+
+	/* access only one slot on each root port */
+	if (bus->number == pp->root_bus_nr && dev > 0)
+		return 0;
+
+	/*
+	 * do not read more than one device on the bus directly attached
+	 * to RC's (Virtual Bridge's) DS side.
+	 */
+	if (bus->primary == pp->root_bus_nr && dev > 0)
+		return 0;
+
+	return 1;
+}
+
+static int dw_pcie_rd_conf(struct pci_bus *bus, u32 devfn, int where,
+			   int size, u32 *val)
+{
+	struct pcie_port *pp = host_to_pcie(bus->host);
+	int ret;
+
+	*val = 0xffffffff;
+
+	if (!dw_pcie_valid_device(pp, bus, PCI_SLOT(devfn)))
+		return PCIBIOS_DEVICE_NOT_FOUND;
+
+	data_abort_mask();
+
+	if (bus->number == pp->root_bus_nr)
+		ret = dw_pcie_rd_own_conf(pp, where, size, val);
+	else
+		ret = dw_pcie_rd_other_conf(pp, bus, devfn,
+					    where, size, val);
+
+	if (data_abort_unmask())
+		return PCIBIOS_DEVICE_NOT_FOUND;
+
+	return ret;
+}
+
+static int dw_pcie_wr_conf(struct pci_bus *bus, u32 devfn,
+			   int where, int size, u32 val)
+{
+	struct pcie_port *pp = host_to_pcie(bus->host);
+	int ret;
+
+	if (!dw_pcie_valid_device(pp, bus, PCI_SLOT(devfn)))
+		return PCIBIOS_DEVICE_NOT_FOUND;
+
+	data_abort_mask();
+
+	if (bus->number == pp->root_bus_nr)
+		ret = dw_pcie_wr_own_conf(pp, where, size, val);
+	else
+		ret = dw_pcie_wr_other_conf(pp, bus, devfn,
+					    where, size, val);
+
+	if (data_abort_unmask())
+		return PCIBIOS_DEVICE_NOT_FOUND;
+
+	return ret;
+}
+
+static int dw_pcie_res_start(struct pci_bus *bus, resource_size_t res_addr)
+{
+	return res_addr;
+}
+
+static struct pci_ops dw_pcie_ops = {
+	.read = dw_pcie_rd_conf,
+	.write = dw_pcie_wr_conf,
+	.res_start = dw_pcie_res_start,
+};
+
+
+void dw_pcie_setup_rc(struct pcie_port *pp)
+{
+	u32 val;
+	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
+
+	dw_pcie_setup(pci);
+
+	/* setup RC BARs */
+	dw_pcie_writel_dbi(pci, PCI_BASE_ADDRESS_0, 0x00000004);
+	dw_pcie_writel_dbi(pci, PCI_BASE_ADDRESS_1, 0x00000000);
+
+	/* setup bus numbers */
+	val = dw_pcie_readl_dbi(pci, PCI_PRIMARY_BUS);
+	val &= 0xff000000;
+	val |= 0x00010100;
+	dw_pcie_writel_dbi(pci, PCI_PRIMARY_BUS, val);
+
+	/* setup command register */
+	val = dw_pcie_readl_dbi(pci, PCI_COMMAND);
+	val &= 0xffff0000;
+	val |= PCI_COMMAND_IO | PCI_COMMAND_MEMORY |
+		PCI_COMMAND_MASTER | PCI_COMMAND_SERR;
+	dw_pcie_writel_dbi(pci, PCI_COMMAND, val);
+
+       /*
+        * If the platform provides ->rd_other_conf, it means the platform
+        * uses its own address translation component rather than ATU, so
+        * we should not program the ATU here.
+        */
+	if (!pp->ops->rd_other_conf) {
+		dw_pcie_prog_outbound_atu(pci, PCIE_ATU_REGION_INDEX0,
+					  PCIE_ATU_TYPE_MEM, pp->mem_mod_base,
+					  pp->mem_bus_addr, pp->mem_size);
+		if (pci->num_viewport <= 2)
+			dw_pcie_prog_outbound_atu(pci, PCIE_ATU_REGION_INDEX2,
+						  PCIE_ATU_TYPE_IO, pp->io_base,
+						  pp->io_bus_addr, pp->io_size);
+	}
+
+	dw_pcie_wr_own_conf(pp, PCI_BASE_ADDRESS_0, 4, 0);
+
+	/* program correct class for RC */
+	dw_pcie_wr_own_conf(pp, PCI_CLASS_DEVICE, 2, PCI_CLASS_BRIDGE_PCI);
+
+	dw_pcie_rd_own_conf(pp, PCIE_LINK_WIDTH_SPEED_CONTROL, 4, &val);
+	val |= PORT_LOGIC_SPEED_CHANGE;
+	dw_pcie_wr_own_conf(pp, PCIE_LINK_WIDTH_SPEED_CONTROL, 4, val);
+}
\ No newline at end of file
diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index d95b8aed8..0eb3bc20d 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -30,8 +30,6 @@
 
 #include "pcie-designware.h"
 
-static unsigned long global_io_offset;
-
 int dw_pcie_read(void __iomem *addr, int size, u32 *val)
 {
 	if ((uintptr_t)addr & (size - 1)) {
@@ -86,35 +84,9 @@ void dw_pcie_writel_dbi(struct dw_pcie *pci, u32 reg, u32 val)
 		writel(val, pci->dbi_base + reg);
 }
 
-#include <abort.h>
-
-static int dw_pcie_rd_own_conf(struct pcie_port *pp, int where, int size,
-			       u32 *val)
-{
-	struct dw_pcie *pci;
-
-	if (pp->ops->rd_own_conf)
-		return pp->ops->rd_own_conf(pp, where, size, val);
-
-	pci = to_dw_pcie_from_pp(pp);
-	return dw_pcie_read(pci->dbi_base + where, size, val);
-}
-
-static int dw_pcie_wr_own_conf(struct pcie_port *pp, int where, int size,
-			       u32 val)
-{
-	struct dw_pcie *pci;
-
-	if (pp->ops->wr_own_conf)
-		return pp->ops->wr_own_conf(pp, where, size, val);
-
-	pci = to_dw_pcie_from_pp(pp);
-	return dw_pcie_write(pci->dbi_base + where, size, val);
-}
-
-static void dw_pcie_prog_outbound_atu(struct dw_pcie *pci, int index,
-				      int type, u64 cpu_addr, u64 pci_addr,
-				      u32 size)
+void dw_pcie_prog_outbound_atu(struct dw_pcie *pci, int index,
+			       int type, u64 cpu_addr, u64 pci_addr,
+			       u32 size)
 {
 	u32 retries, val;
 
@@ -177,301 +149,11 @@ int dw_pcie_link_up(struct dw_pcie *pci)
 		!(val & PCIE_PHY_DEBUG_R1_LINK_IN_TRAINING));
 }
 
-static inline struct pcie_port *host_to_pcie(struct pci_controller *host)
-{
-	return container_of(host, struct pcie_port, pci);
-}
-
-static void dw_pcie_set_local_bus_nr(struct pci_controller *host, int busno)
-{
-	struct pcie_port *pp = host_to_pcie(host);
-
-	pp->root_bus_nr = busno;
-}
-
-static struct pci_ops dw_pcie_ops;
-
-int __init dw_pcie_host_init(struct pcie_port *pp)
-{
-	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
-	struct device_d *dev = pci->dev;
-	struct device_node *np = dev->device_node;
-	struct of_pci_range range;
-	struct of_pci_range_parser parser;
-	struct resource *cfg_res;
-	u32 na, ns;
-	const __be32 *addrp;
-	int index, ret;
-
-	/* Find the address cell size and the number of cells in order to get
-	 * the untranslated address.
-	 */
-	of_property_read_u32(np, "#address-cells", &na);
-	ns = of_n_size_cells(np);
-
-	cfg_res = dev_get_resource_by_name(dev, IORESOURCE_MEM, "config");
-	if (cfg_res) {
-		pp->cfg0_size = resource_size(cfg_res) / 2;
-		pp->cfg1_size = resource_size(cfg_res) / 2;
-		pp->cfg0_base = cfg_res->start;
-		pp->cfg1_base = cfg_res->start + pp->cfg0_size;
-
-		/* Find the untranslated configuration space address */
-		index = of_property_match_string(np, "reg-names", "config");
-		addrp = of_get_address(np, index, NULL, NULL);
-		pp->cfg0_mod_base = of_read_number(addrp, ns);
-		pp->cfg1_mod_base = pp->cfg0_mod_base + pp->cfg0_size;
-	} else {
-		dev_err(dev, "missing *config* reg space\n");
-	}
-
-	if (of_pci_range_parser_init(&parser, np)) {
-		dev_err(dev, "missing ranges property\n");
-		return -EINVAL;
-	}
-
-	/* Get the I/O and memory ranges from DT */
-	for_each_of_pci_range(&parser, &range) {
-		unsigned long restype = range.flags & IORESOURCE_TYPE_BITS;
-
-		if (restype == IORESOURCE_IO) {
-			of_pci_range_to_resource(&range, np, &pp->io);
-			pp->io.name = "I/O";
-			pp->io.start = range.pci_addr + global_io_offset;
-			pp->io.end =  range.pci_addr + range.size + global_io_offset - 1;
-			pp->io_size = resource_size(&pp->io);
-			pp->io_bus_addr = range.pci_addr;
-			pp->io_base = range.cpu_addr;
-
-			/* Find the untranslated IO space address */
-			pp->io_mod_base = of_read_number(parser.range -
-							 parser.np + na, ns);
-		}
-		if (restype == IORESOURCE_MEM) {
-			of_pci_range_to_resource(&range, np, &pp->mem);
-			pp->mem.name = "MEM";
-			pp->mem_size = resource_size(&pp->mem);
-			pp->mem_bus_addr = range.pci_addr;
-
-			/* Find the untranslated MEM space address */
-			pp->mem_mod_base = of_read_number(parser.range -
-							  parser.np + na, ns);
-		}
-		if (restype == 0) {
-			of_pci_range_to_resource(&range, np, &pp->cfg);
-			pp->cfg0_size = resource_size(&pp->cfg) / 2;
-			pp->cfg1_size = resource_size(&pp->cfg) / 2;
-			pp->cfg0_base = pp->cfg.start;
-			pp->cfg1_base = pp->cfg.start + pp->cfg0_size;
-
-			/* Find the untranslated configuration space address */
-			pp->cfg0_mod_base = of_read_number(parser.range -
-							   parser.np + na, ns);
-			pp->cfg1_mod_base = pp->cfg0_mod_base +
-					    pp->cfg0_size;
-		}
-	}
-
-	if (!pci->dbi_base)
-		pci->dbi_base = (void __force *)pp->cfg.start;
-
-	pp->mem_base = pp->mem.start;
-
-	if (!pp->va_cfg0_base)
-		pp->va_cfg0_base = (void __force *)(u32)pp->cfg0_base;
-
-	if (!pp->va_cfg1_base)
-		pp->va_cfg1_base = (void __force *)(u32)pp->cfg1_base;
-
-	ret = of_property_read_u32(np, "num-viewport", &pci->num_viewport);
-	if (ret)
-		pci->num_viewport = 2;
-
-	if (pp->ops->host_init)
-		pp->ops->host_init(pp);
-
-	pp->pci.parent = dev;
-	pp->pci.pci_ops = &dw_pcie_ops;
-	pp->pci.set_busno = dw_pcie_set_local_bus_nr;
-	pp->pci.mem_resource = &pp->mem;
-	pp->pci.io_resource = &pp->io;
-
-	register_pci_controller(&pp->pci);
-
-	return 0;
-}
-
-static int dw_pcie_rd_other_conf(struct pcie_port *pp, struct pci_bus *bus,
-				 u32 devfn, int where, int size, u32 *val)
-{
-	int ret, type;
-	u32 address, busdev, cfg_size;
-	u64 cpu_addr;
-	void __iomem *va_cfg_base;
-	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
-
-	if (pp->ops->rd_other_conf)
-		return pp->ops->rd_other_conf(pp, bus, devfn,
-					      where, size, val);
-
-	busdev = PCIE_ATU_BUS(bus->number) | PCIE_ATU_DEV(PCI_SLOT(devfn)) |
-		PCIE_ATU_FUNC(PCI_FUNC(devfn));
-	address = where & ~0x3;
-
-	if (bus->primary == pp->root_bus_nr) {
-		type = PCIE_ATU_TYPE_CFG0;
-		cpu_addr = pp->cfg0_mod_base;
-		cfg_size = pp->cfg0_size;
-		va_cfg_base = pp->va_cfg0_base;
-	} else {
-		type = PCIE_ATU_TYPE_CFG1;
-		cpu_addr = pp->cfg1_mod_base;
-		cfg_size = pp->cfg1_size;
-		va_cfg_base = pp->va_cfg1_base;
-	}
-
-	dw_pcie_prog_outbound_atu(pci, PCIE_ATU_REGION_INDEX1,
-				  type, cpu_addr,
-				  busdev, cfg_size);
-	ret = dw_pcie_read(va_cfg_base + where, size, val);
-	if (pci->num_viewport <= 2)
-		dw_pcie_prog_outbound_atu(pci, PCIE_ATU_REGION_INDEX1,
-					  PCIE_ATU_TYPE_IO, pp->io_mod_base,
-					  pp->io_bus_addr, pp->io_size);
-
-	return ret;
-}
-
-static int dw_pcie_wr_other_conf(struct pcie_port *pp, struct pci_bus *bus,
-				 u32 devfn, int where, int size, u32 val)
-{
-	int ret, type;
-	u32 busdev, cfg_size;
-	u64 cpu_addr;
-	void __iomem *va_cfg_base;
-	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
-
-	if (pp->ops->wr_other_conf)
-		return pp->ops->wr_other_conf(pp, bus, devfn,
-					      where, size, val);
-
-	busdev = PCIE_ATU_BUS(bus->number) | PCIE_ATU_DEV(PCI_SLOT(devfn)) |
-		 PCIE_ATU_FUNC(PCI_FUNC(devfn));
-
-	if (bus->primary == pp->root_bus_nr) {
-		type = PCIE_ATU_TYPE_CFG0;
-		cpu_addr = pp->cfg0_mod_base;
-		cfg_size = pp->cfg0_size;
-		va_cfg_base = pp->va_cfg0_base;
-	} else {
-		type = PCIE_ATU_TYPE_CFG1;
-		cpu_addr = pp->cfg1_mod_base;
-		cfg_size = pp->cfg1_size;
-		va_cfg_base = pp->va_cfg1_base;
-	}
-
-	dw_pcie_prog_outbound_atu(pci, PCIE_ATU_REGION_INDEX1,
-				  type, cpu_addr,
-				  busdev, cfg_size);
-	ret = dw_pcie_write(va_cfg_base + where, size, val);
-	if (pci->num_viewport <= 2)
-		dw_pcie_prog_outbound_atu(pci, PCIE_ATU_REGION_INDEX1,
-					  PCIE_ATU_TYPE_IO, pp->io_mod_base,
-					  pp->io_bus_addr, pp->io_size);
-
-	return ret;
-}
-
-static int dw_pcie_valid_device(struct pcie_port *pp, struct pci_bus *bus,
-				int dev)
-{
-	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
-
-	/* If there is no link, then there is no device */
-	if (bus->number != pp->root_bus_nr) {
-		if (!dw_pcie_link_up(pci))
-			return 0;
-	}
-
-	/* access only one slot on each root port */
-	if (bus->number == pp->root_bus_nr && dev > 0)
-		return 0;
-
-	/*
-	 * do not read more than one device on the bus directly attached
-	 * to RC's (Virtual Bridge's) DS side.
-	 */
-	if (bus->primary == pp->root_bus_nr && dev > 0)
-		return 0;
-
-	return 1;
-}
-
-static int dw_pcie_rd_conf(struct pci_bus *bus, u32 devfn, int where,
-			   int size, u32 *val)
+void dw_pcie_setup(struct dw_pcie *pci)
 {
-	struct pcie_port *pp = host_to_pcie(bus->host);
 	int ret;
-
-	*val = 0xffffffff;
-
-	if (!dw_pcie_valid_device(pp, bus, PCI_SLOT(devfn)))
-		return PCIBIOS_DEVICE_NOT_FOUND;
-
-	data_abort_mask();
-
-	if (bus->number == pp->root_bus_nr)
-		ret = dw_pcie_rd_own_conf(pp, where, size, val);
-	else
-		ret = dw_pcie_rd_other_conf(pp, bus, devfn,
-					    where, size, val);
-
-	if (data_abort_unmask())
-		return PCIBIOS_DEVICE_NOT_FOUND;
-
-	return ret;
-}
-
-static int dw_pcie_wr_conf(struct pci_bus *bus, u32 devfn,
-			   int where, int size, u32 val)
-{
-	struct pcie_port *pp = host_to_pcie(bus->host);
-	int ret;
-
-	if (!dw_pcie_valid_device(pp, bus, PCI_SLOT(devfn)))
-		return PCIBIOS_DEVICE_NOT_FOUND;
-
-	data_abort_mask();
-
-	if (bus->number == pp->root_bus_nr)
-		ret = dw_pcie_wr_own_conf(pp, where, size, val);
-	else
-		ret = dw_pcie_wr_other_conf(pp, bus, devfn,
-					    where, size, val);
-
-	if (data_abort_unmask())
-		return PCIBIOS_DEVICE_NOT_FOUND;
-
-	return ret;
-}
-
-static int dw_pcie_res_start(struct pci_bus *bus, resource_size_t res_addr)
-{
-	return res_addr;
-}
-
-static struct pci_ops dw_pcie_ops = {
-	.read = dw_pcie_rd_conf,
-	.write = dw_pcie_wr_conf,
-	.res_start = dw_pcie_res_start,
-};
-
-void dw_pcie_setup_rc(struct pcie_port *pp)
-{
-	int ret;
-	u32 lanes;
 	u32 val;
-	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
+	u32 lanes;
 	struct device_d *dev = pci->dev;
 	struct device_node *np = dev->device_node;
 
@@ -513,47 +195,6 @@ void dw_pcie_setup_rc(struct pcie_port *pp)
 		break;
 	}
 	dw_pcie_writel_dbi(pci, PCIE_LINK_WIDTH_SPEED_CONTROL, val);
-
-	/* setup RC BARs */
-	dw_pcie_writel_dbi(pci, PCI_BASE_ADDRESS_0, 0x00000004);
-	dw_pcie_writel_dbi(pci, PCI_BASE_ADDRESS_1, 0x00000000);
-
-	/* setup bus numbers */
-	val = dw_pcie_readl_dbi(pci, PCI_PRIMARY_BUS);
-	val &= 0xff000000;
-	val |= 0x00010100;
-	dw_pcie_writel_dbi(pci, PCI_PRIMARY_BUS, val);
-
-	/* setup command register */
-	val = dw_pcie_readl_dbi(pci, PCI_COMMAND);
-	val &= 0xffff0000;
-	val |= PCI_COMMAND_IO | PCI_COMMAND_MEMORY |
-		PCI_COMMAND_MASTER | PCI_COMMAND_SERR;
-	dw_pcie_writel_dbi(pci, PCI_COMMAND, val);
-
-       /*
-        * If the platform provides ->rd_other_conf, it means the platform
-        * uses its own address translation component rather than ATU, so
-        * we should not program the ATU here.
-        */
-	if (!pp->ops->rd_other_conf) {
-		dw_pcie_prog_outbound_atu(pci, PCIE_ATU_REGION_INDEX0,
-					  PCIE_ATU_TYPE_MEM, pp->mem_mod_base,
-					  pp->mem_bus_addr, pp->mem_size);
-		if (pci->num_viewport <= 2)
-			dw_pcie_prog_outbound_atu(pci, PCIE_ATU_REGION_INDEX2,
-						  PCIE_ATU_TYPE_IO, pp->io_base,
-						  pp->io_bus_addr, pp->io_size);
-	}
-
-	dw_pcie_wr_own_conf(pp, PCI_BASE_ADDRESS_0, 4, 0);
-
-	/* program correct class for RC */
-	dw_pcie_wr_own_conf(pp, PCI_CLASS_DEVICE, 2, PCI_CLASS_BRIDGE_PCI);
-
-	dw_pcie_rd_own_conf(pp, PCIE_LINK_WIDTH_SPEED_CONTROL, 4, &val);
-	val |= PORT_LOGIC_SPEED_CHANGE;
-	dw_pcie_wr_own_conf(pp, PCIE_LINK_WIDTH_SPEED_CONTROL, 4, val);
 }
 
 MODULE_AUTHOR("Jingoo Han <jg1.han@samsung.com>");
diff --git a/drivers/pci/pcie-designware.h b/drivers/pci/pcie-designware.h
index 382a01219..e81941826 100644
--- a/drivers/pci/pcie-designware.h
+++ b/drivers/pci/pcie-designware.h
@@ -137,5 +137,8 @@ u32 dw_pcie_readl_dbi(struct dw_pcie *pci, u32 reg);
 void dw_pcie_writel_dbi(struct dw_pcie *pci, u32 reg, u32 val);
 int dw_pcie_link_up(struct dw_pcie *pci);
 int dw_pcie_wait_for_link(struct dw_pcie *pci);
-
+void dw_pcie_prog_outbound_atu(struct dw_pcie *pci, int index,
+			       int type, u64 cpu_addr, u64 pci_addr,
+			       u32 size);
+void dw_pcie_setup(struct dw_pcie *pci);
 #endif /* _PCIE_DESIGNWARE_H */
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
