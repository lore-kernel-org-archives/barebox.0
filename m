Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x231.google.com ([2a00:1450:400c:c05::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9soq-0000dN-Km
 for barebox@lists.infradead.org; Wed, 23 Jul 2014 09:26:42 +0000
Received: by mail-wi0-f177.google.com with SMTP id ho1so1838514wib.4
 for <barebox@lists.infradead.org>; Wed, 23 Jul 2014 02:26:18 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 23 Jul 2014 11:26:08 +0200
Message-Id: <1406107568-8440-7-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1406107568-8440-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1406107568-8440-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH RESEND 6/6] pci: mvebu: Add PCIe driver
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>

This adds a PCI driver for the controllers found on Marvell MVEBU SoCs.
Besides the functional driver itself, it also adds SoC specific PHY
setup required for PCIe. Currently, only Armada 370 is fully supported.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
To: barebox@lists.infradead.org
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
---
 arch/arm/Kconfig            |   1 +
 drivers/pci/Kconfig         |   6 +
 drivers/pci/Makefile        |   2 +
 drivers/pci/pci-mvebu-phy.c | 102 +++++++++++
 drivers/pci/pci-mvebu.c     | 436 ++++++++++++++++++++++++++++++++++++++++++++
 drivers/pci/pci-mvebu.h     |  35 ++++
 6 files changed, 582 insertions(+)
 create mode 100644 drivers/pci/pci-mvebu-phy.c
 create mode 100644 drivers/pci/pci-mvebu.c
 create mode 100644 drivers/pci/pci-mvebu.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 8465d4a7f739..be5c7bd1981b 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -93,6 +93,7 @@ config ARCH_MVEBU
 	select GPIOLIB
 	select HAS_DEBUG_LL
 	select HAVE_PBL_MULTI_IMAGES
+	select HW_HAS_PCI
 	select MVEBU_MBUS
 	select OFTREE
 	select OF_ADDRESS_PCI
diff --git a/drivers/pci/Kconfig b/drivers/pci/Kconfig
index 9e4659270d25..d17a1510821f 100644
--- a/drivers/pci/Kconfig
+++ b/drivers/pci/Kconfig
@@ -24,6 +24,12 @@ config PCI_DEBUG
 
 	  When in doubt, say N.
 
+config PCI_MVEBU
+	bool "Marvell EBU PCIe driver"
+	depends on ARCH_MVEBU
+	select OF_PCI
+	select PCI
+
 endmenu
 
 endif
diff --git a/drivers/pci/Makefile b/drivers/pci/Makefile
index edac1a53de78..442353173c9e 100644
--- a/drivers/pci/Makefile
+++ b/drivers/pci/Makefile
@@ -6,3 +6,5 @@ obj-y		+= pci.o bus.o pci_iomap.o
 ccflags-$(CONFIG_PCI_DEBUG) := -DDEBUG
 
 CPPFLAGS += $(ccflags-y)
+
+obj-$(CONFIG_PCI_MVEBU)	+= pci-mvebu.o pci-mvebu-phy.o
diff --git a/drivers/pci/pci-mvebu-phy.c b/drivers/pci/pci-mvebu-phy.c
new file mode 100644
index 000000000000..9997cdbb0a6a
--- /dev/null
+++ b/drivers/pci/pci-mvebu-phy.c
@@ -0,0 +1,102 @@
+/*
+ * SoC specific PCIe PHY setup for Marvell MVEBU SoCs
+ *
+ * Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
+ *
+ * based on Marvell BSP code (C) Marvell International Ltd.
+ *
+ * This file is licensed under the terms of the GNU General Public
+ * License version 2.  This program is licensed "as is" without any
+ * warranty of any kind, whether express or implied.
+ */
+
+#include <common.h>
+#include <of.h>
+#include <of_address.h>
+
+#include "pci-mvebu.h"
+
+static u32 mvebu_pcie_phy_indirect(void __iomem *phybase, u8 lane,
+				   u8 off, u16 val, bool is_read)
+{
+	u32 reg = (lane << 24) | (off << 16) | val;
+
+	if (is_read)
+		reg |= BIT(31);
+	writel(reg, phybase);
+
+	return (is_read) ? readl(phybase) & 0xffff : 0;
+}
+
+static inline u32 mvebu_pcie_phy_read(void __iomem *phybase, u8 lane,
+				      u8 off)
+{
+	return mvebu_pcie_phy_indirect(phybase, lane, off, 0, true);
+}
+
+static inline void mvebu_pcie_phy_write(void __iomem *phybase, u8 lane,
+					u8 off, u16 val)
+{
+	mvebu_pcie_phy_indirect(phybase, lane, off, val, false);
+}
+
+#define ARMADA_370_PHY_OFFSET	0x1b00
+#define ARMADA_370_SOC_CTRL	0x04
+#define ARMADA_370_SERDES03_SEL	0x70
+
+int armada_370_phy_setup(struct mvebu_pcie *pcie)
+{
+	struct device_node *np = of_find_compatible_node(NULL, NULL,
+				 "marvell,armada-370-xp-system-controller");
+	void __iomem *sysctrl = of_iomap(np, 0);
+	void __iomem *phybase = pcie->base + ARMADA_370_PHY_OFFSET;
+	u32 reg;
+
+	if (!sysctrl)
+		return -ENODEV;
+
+	/* Enable PEX */
+	reg = readl(sysctrl + ARMADA_370_SOC_CTRL);
+	reg |= BIT(pcie->port);
+	writel(reg, sysctrl + ARMADA_370_SOC_CTRL);
+
+	/* Set SERDES selector */
+	reg = readl(sysctrl + ARMADA_370_SERDES03_SEL);
+	reg &= ~(0xf << (pcie->port * 4));
+	reg |= (0x1 << (pcie->port * 4));
+	writel(reg, sysctrl + ARMADA_370_SERDES03_SEL);
+
+	/* BTS #232 - PCIe clock (undocumented) */
+	writel(0x00000077, sysctrl + 0x2f0);
+
+	/* Disable Link (undocumented) */
+	reg = readl(pcie->base + 0x6c);
+	reg &= ~0x3f0;
+	reg |= BIT(4);
+	writel(reg, pcie->base + 0x6c);
+
+	/* PEX pipe configuration */
+	mvebu_pcie_phy_write(phybase, pcie->lane, 0xc1, 0x0025);
+	mvebu_pcie_phy_write(phybase, pcie->lane, 0xc3, 0x000f);
+	mvebu_pcie_phy_write(phybase, pcie->lane, 0xc8, 0x0005);
+	mvebu_pcie_phy_write(phybase, pcie->lane, 0xd0, 0x0100);
+	mvebu_pcie_phy_write(phybase, pcie->lane, 0xd1, 0x3014);
+	mvebu_pcie_phy_write(phybase, pcie->lane, 0xc5, 0x011f);
+	mvebu_pcie_phy_write(phybase, pcie->lane, 0x80, 0x1000);
+	mvebu_pcie_phy_write(phybase, pcie->lane, 0x81, 0x0011);
+	mvebu_pcie_phy_write(phybase, pcie->lane, 0x0f, 0x2a21);
+	mvebu_pcie_phy_write(phybase, pcie->lane, 0x45, 0x00df);
+	mvebu_pcie_phy_write(phybase, pcie->lane, 0x4f, 0x6219);
+	mvebu_pcie_phy_write(phybase, pcie->lane, 0x01, 0xfc60);
+	mvebu_pcie_phy_write(phybase, pcie->lane, 0x46, 0x0000);
+
+	reg = mvebu_pcie_phy_read(phybase, pcie->lane, 0x48) & ~0x4;
+	mvebu_pcie_phy_write(phybase, pcie->lane, 0x48, reg & 0xffff);
+
+	mvebu_pcie_phy_write(phybase, pcie->lane, 0x02, 0x0040);
+	mvebu_pcie_phy_write(phybase, pcie->lane, 0xc1, 0x0024);
+
+	mdelay(15);
+
+	return 0;
+}
diff --git a/drivers/pci/pci-mvebu.c b/drivers/pci/pci-mvebu.c
new file mode 100644
index 000000000000..6fee0800e98e
--- /dev/null
+++ b/drivers/pci/pci-mvebu.c
@@ -0,0 +1,436 @@
+/*
+ * PCIe driver for Marvell MVEBU SoCs
+ *
+ * Based on Linux drivers/pci/host/pci-mvebu.c
+ *
+ * This file is licensed under the terms of the GNU General Public
+ * License version 2.  This program is licensed "as is" without any
+ * warranty of any kind, whether express or implied.
+ */
+
+#include <common.h>
+#include <gpio.h>
+#include <init.h>
+#include <io.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+#include <linux/mbus.h>
+#include <linux/pci_regs.h>
+#include <malloc.h>
+#include <of_address.h>
+#include <of_gpio.h>
+#include <of_pci.h>
+#include <sizes.h>
+
+#include "pci-mvebu.h"
+
+/* PCIe unit register offsets */
+#define PCIE_DEV_ID_OFF			0x0000
+#define PCIE_CMD_OFF			0x0004
+#define PCIE_DEV_REV_OFF		0x0008
+#define  PCIE_BAR_LO_OFF(n)		(0x0010 + ((n) << 3))
+#define  PCIE_BAR_HI_OFF(n)		(0x0014 + ((n) << 3))
+#define PCIE_HEADER_LOG_4_OFF		0x0128
+#define  PCIE_BAR_CTRL_OFF(n)		(0x1804 + (((n) - 1) * 4))
+#define  PCIE_WIN04_CTRL_OFF(n)		(0x1820 + ((n) << 4))
+#define  PCIE_WIN04_BASE_OFF(n)		(0x1824 + ((n) << 4))
+#define  PCIE_WIN04_REMAP_OFF(n)	(0x182c + ((n) << 4))
+#define PCIE_WIN5_CTRL_OFF		0x1880
+#define PCIE_WIN5_BASE_OFF		0x1884
+#define PCIE_WIN5_REMAP_OFF		0x188c
+#define PCIE_CONF_ADDR_OFF		0x18f8
+#define  PCIE_CONF_ADDR_EN		BIT(31)
+#define  PCIE_CONF_REG(r)		((((r) & 0xf00) << 16) | ((r) & 0xfc))
+#define  PCIE_CONF_BUS(b)		(((b) & 0xff) << 16)
+#define  PCIE_CONF_DEV(d)		(((d) & 0x1f) << 11)
+#define  PCIE_CONF_FUNC(f)		(((f) & 0x7) << 8)
+#define  PCIE_CONF_ADDR(bus, devfn, where) \
+	(PCIE_CONF_BUS(bus) | PCIE_CONF_DEV(PCI_SLOT(devfn))    | \
+	 PCIE_CONF_FUNC(PCI_FUNC(devfn)) | PCIE_CONF_REG(where) | \
+	 PCIE_CONF_ADDR_EN)
+#define PCIE_CONF_DATA_OFF		0x18fc
+#define PCIE_MASK_OFF			0x1910
+#define  PCIE_MASK_ENABLE_INTS          (0xf << 24)
+#define PCIE_CTRL_OFF			0x1a00
+#define  PCIE_CTRL_X1_MODE		BIT(0)
+#define PCIE_STAT_OFF			0x1a04
+#define  PCIE_STAT_BUS                  (0xff << 8)
+#define  PCIE_STAT_DEV                  (0x1f << 16)
+#define  PCIE_STAT_LINK_DOWN		BIT(0)
+#define PCIE_DEBUG_CTRL         	0x1a60
+#define  PCIE_DEBUG_SOFT_RESET		BIT(20)
+
+#define to_pcie(_hc)	container_of(_hc, struct mvebu_pcie, pci)
+
+/*
+ * MVEBU PCIe controller needs MEMORY and I/O BARs to be mapped
+ * into SoCs address space. Each controller will map 32M of MEM
+ * and 64K of I/O space when registered.
+ */
+static void __iomem *mvebu_pcie_membase = IOMEM(0xe0000000);
+static void __iomem *mvebu_pcie_iobase = IOMEM(0xffe00000);
+
+static inline bool mvebu_pcie_link_up(struct mvebu_pcie *pcie)
+{
+	return !(readl(pcie->base + PCIE_STAT_OFF) & PCIE_STAT_LINK_DOWN);
+}
+
+static void mvebu_pcie_set_local_bus_nr(struct mvebu_pcie *pcie, int nr)
+{
+	u32 stat;
+
+	stat = readl(pcie->base + PCIE_STAT_OFF);
+	stat &= ~PCIE_STAT_BUS;
+	stat |= nr << 8;
+	writel(stat, pcie->base + PCIE_STAT_OFF);
+}
+
+static void mvebu_pcie_set_local_dev_nr(struct mvebu_pcie *pcie, int nr)
+{
+	u32 stat;
+
+	stat = readl(pcie->base + PCIE_STAT_OFF);
+	stat &= ~PCIE_STAT_DEV;
+	stat |= nr << 16;
+	writel(stat, pcie->base + PCIE_STAT_OFF);
+}
+
+static int mvebu_pcie_indirect_rd_conf(struct pci_bus *bus,
+	       unsigned int devfn, int where, int size, u32 *val)
+{
+	struct pci_controller *pci = bus->sysdata;
+	struct mvebu_pcie *pcie = to_pcie(pci);
+
+	/* Skip all requests not directed to device behind bridge */
+	if (devfn != 0x08 || !mvebu_pcie_link_up(pcie)) {
+		*val = 0xffffffff;
+		return PCIBIOS_DEVICE_NOT_FOUND;
+	}
+
+	writel(PCIE_CONF_ADDR(bus->number, devfn, where),
+	       pcie->base + PCIE_CONF_ADDR_OFF);
+
+	*val = readl(pcie->base + PCIE_CONF_DATA_OFF);
+
+	if (size == 1)
+		*val = (*val >> (8 * (where & 3))) & 0xff;
+	else if (size == 2)
+		*val = (*val >> (8 * (where & 3))) & 0xffff;
+
+	return PCIBIOS_SUCCESSFUL;
+}
+
+static int mvebu_pcie_indirect_wr_conf(struct pci_bus *bus,
+	       unsigned int devfn, int where, int size, u32 val)
+{
+	struct pci_controller *pci = bus->sysdata;
+	struct mvebu_pcie *pcie = to_pcie(pci);
+	u32 _val, shift = 8 * (where & 3);
+
+	/* Skip all requests not directed to device behind bridge */
+	if (devfn != 0x08 || !mvebu_pcie_link_up(pcie))
+		return PCIBIOS_DEVICE_NOT_FOUND;
+
+	writel(PCIE_CONF_ADDR(bus->number, devfn, where),
+	       pcie->base + PCIE_CONF_ADDR_OFF);
+	_val = readl(pcie->base + PCIE_CONF_DATA_OFF);
+
+	if (size == 4)
+		_val = val;
+	else if (size == 2)
+		_val = (_val & ~(0xffff << shift)) | ((val & 0xffff) << shift);
+	else if (size == 1)
+		_val = (_val & ~(0xff << shift)) | ((val & 0xff) << shift);
+	else
+		return PCIBIOS_BAD_REGISTER_NUMBER;
+
+	writel(_val, pcie->base + PCIE_CONF_DATA_OFF);
+
+	return PCIBIOS_SUCCESSFUL;
+}
+
+static int mvebu_pcie_res_start(struct pci_bus *bus, resource_size_t res_addr)
+{
+	struct pci_controller *pci = bus->sysdata;
+	struct mvebu_pcie *pcie = to_pcie(pci);
+
+	return (int)pcie->membase + res_addr;
+}
+
+static struct pci_ops mvebu_pcie_indirect_ops = {
+	.read = mvebu_pcie_indirect_rd_conf,
+	.write = mvebu_pcie_indirect_wr_conf,
+	.res_start = mvebu_pcie_res_start,
+};
+
+/*
+ * Setup PCIE BARs and Address Decode Wins:
+ * BAR[0,2] -> disabled, BAR[1] -> covers all DRAM banks
+ * WIN[0-3] -> DRAM bank[0-3]
+ */
+static void mvebu_pcie_setup_wins(struct mvebu_pcie *pcie)
+{
+	const struct mbus_dram_target_info *dram = mvebu_mbus_dram_info();
+	u32 size;
+	int i;
+
+	/* First, disable and clear BARs and windows. */
+	for (i = 1; i < 3; i++) {
+		writel(0, pcie->base + PCIE_BAR_CTRL_OFF(i));
+		writel(0, pcie->base + PCIE_BAR_LO_OFF(i));
+		writel(0, pcie->base + PCIE_BAR_HI_OFF(i));
+	}
+
+	for (i = 0; i < 5; i++) {
+		writel(0, pcie->base + PCIE_WIN04_CTRL_OFF(i));
+		writel(0, pcie->base + PCIE_WIN04_BASE_OFF(i));
+		writel(0, pcie->base + PCIE_WIN04_REMAP_OFF(i));
+	}
+
+	writel(0, pcie->base + PCIE_WIN5_CTRL_OFF);
+	writel(0, pcie->base + PCIE_WIN5_BASE_OFF);
+	writel(0, pcie->base + PCIE_WIN5_REMAP_OFF);
+
+	/* Setup windows for DDR banks.  Count total DDR size on the fly. */
+	size = 0;
+	for (i = 0; i < dram->num_cs; i++) {
+		const struct mbus_dram_window *cs = dram->cs + i;
+
+		writel(cs->base & 0xffff0000,
+		       pcie->base + PCIE_WIN04_BASE_OFF(i));
+		writel(0, pcie->base + PCIE_WIN04_REMAP_OFF(i));
+		writel(((cs->size - 1) & 0xffff0000) |
+		       (cs->mbus_attr << 8) |
+		       (dram->mbus_dram_target_id << 4) | 1,
+		       pcie->base + PCIE_WIN04_CTRL_OFF(i));
+
+		size += cs->size;
+	}
+
+	/* Round up 'size' to the nearest power of two. */
+	if ((size & (size - 1)) != 0)
+		size = 1 << fls(size);
+
+	/* Setup BAR[1] to all DRAM banks. */
+	writel(dram->cs[0].base, pcie->base + PCIE_BAR_LO_OFF(1));
+	writel(0, pcie->base + PCIE_BAR_HI_OFF(1));
+	writel(((size - 1) & 0xffff0000) | 1,
+	       pcie->base + PCIE_BAR_CTRL_OFF(1));
+}
+
+#define DT_FLAGS_TO_TYPE(flags)		(((flags) >> 24) & 0x03)
+#define  DT_TYPE_IO	0x1
+#define  DT_TYPE_MEM32	0x2
+#define DT_CPUADDR_TO_TARGET(cpuaddr)	(((cpuaddr) >> 56) & 0xFF)
+#define DT_CPUADDR_TO_ATTR(cpuaddr)	(((cpuaddr) >> 48) & 0xFF)
+
+static int mvebu_get_target_attr(struct device_node *np, int devfn,
+		 unsigned long type, unsigned int *target, unsigned int *attr)
+{
+	const int na = 3, ns = 2;
+	const __be32 *range;
+	int rlen, nranges, rangesz, pna, i;
+
+	*target = -1;
+	*attr = -1;
+
+	range = of_get_property(np, "ranges", &rlen);
+	if (!range)
+		return -EINVAL;
+
+	pna = of_n_addr_cells(np);
+	rangesz = pna + na + ns;
+	nranges = rlen / sizeof(__be32) / rangesz;
+
+	for (i = 0; i < nranges; i++) {
+		u32 flags = of_read_number(range, 1);
+		u32 slot = of_read_number(range + 1, 1);
+		u64 cpuaddr = of_read_number(range + na, pna);
+		unsigned long rtype;
+
+		if (DT_FLAGS_TO_TYPE(flags) == DT_TYPE_IO)
+			rtype = IORESOURCE_IO;
+		else if (DT_FLAGS_TO_TYPE(flags) == DT_TYPE_MEM32)
+			rtype = IORESOURCE_MEM;
+
+		if (slot == PCI_SLOT(devfn) && type == rtype) {
+			*target = DT_CPUADDR_TO_TARGET(cpuaddr);
+			*attr = DT_CPUADDR_TO_ATTR(cpuaddr);
+			return 0;
+		}
+
+		range += rangesz;
+	}
+
+	return -ENOENT;
+}
+
+static struct mvebu_pcie *mvebu_pcie_port_probe(struct device_d *dev,
+						struct device_node *np)
+{
+	struct mvebu_pcie *pcie;
+	struct clk *clk;
+	enum of_gpio_flags flags;
+	int reset_gpio;
+	u32 port, lane, devfn;
+	int mem_target, mem_attr;
+	int io_target, io_attr;
+	int ret;
+
+	if (of_property_read_u32(np, "marvell,pcie-port", &port)) {
+		dev_err(dev, "missing pcie-port property\n");
+		return ERR_PTR(-EINVAL);
+	}
+
+	of_property_read_u32(np, "marvell,pcie-lane", &lane);
+
+	devfn = of_pci_get_devfn(np);
+	if (devfn < 0) {
+		dev_err(dev, "unable to parse devfn\n");
+		return ERR_PTR(-EINVAL);
+	}
+
+	if (mvebu_get_target_attr(dev->device_node, devfn, IORESOURCE_MEM,
+				  &mem_target, &mem_attr)) {
+		dev_err(dev, "unable to get target/attr for mem window\n");
+		return ERR_PTR(-EINVAL);
+	}
+
+	/* I/O windows are optional */
+	mvebu_get_target_attr(dev->device_node, devfn, IORESOURCE_IO,
+			      &io_target, &io_attr);
+
+	reset_gpio = of_get_named_gpio_flags(np, "reset-gpios", 0, &flags);
+	if (gpio_is_valid(reset_gpio)) {
+		int reset_active_low = flags & OF_GPIO_ACTIVE_LOW;
+		char *reset_name = asprintf("pcie%d.%d-reset", port, lane);
+		u32 reset_udelay = 20000;
+
+		of_property_read_u32(np, "reset-delay-us", &reset_udelay);
+
+		ret = gpio_request_one(reset_gpio, GPIOF_DIR_OUT, reset_name);
+		if (ret)
+			return ERR_PTR(ret);
+
+		/* Ensure a full reset cycle*/
+		gpio_set_value(reset_gpio, 1 ^ reset_active_low);
+		udelay(reset_udelay);
+		gpio_set_value(reset_gpio, 0 ^ reset_active_low);
+		udelay(reset_udelay);
+	}
+
+	pcie = xzalloc(sizeof(*pcie));
+	pcie->port = port;
+	pcie->lane = lane;
+	pcie->name = asprintf("pcie%d.%d", port, lane);
+	pcie->devfn = devfn;
+
+	pcie->base = of_iomap(np, 0);
+	if (!pcie->base) {
+		dev_err(dev, "PCIe%d.%d unable to map registers\n", port, lane);
+		free(pcie);
+		return ERR_PTR(-ENOMEM);
+	}
+
+	pcie->membase = mvebu_pcie_membase;
+	pcie->mem.start = 0;
+	pcie->mem.end = pcie->mem.start + SZ_32M - 1;
+	if (mvebu_mbus_add_window_remap_by_id(mem_target, mem_attr,
+		(resource_size_t)pcie->membase, resource_size(&pcie->mem), 0)) {
+		dev_err(dev, "PCIe%d.%d unable to add mbus window for mem at %08x+%08x",
+			port, lane, (u32)pcie->mem.start, resource_size(&pcie->mem));
+
+		free(pcie);
+		return ERR_PTR(-EBUSY);
+	}
+	mvebu_pcie_membase += SZ_32M;
+
+	if (io_target >= 0 && io_attr >= 0) {
+		pcie->iobase = mvebu_pcie_iobase;
+		pcie->io.start = 0;
+		pcie->io.end = pcie->io.start + SZ_64K - 1;
+
+		mvebu_mbus_add_window_remap_by_id(io_target, io_attr,
+			(resource_size_t)pcie->iobase, resource_size(&pcie->io), 0);
+		mvebu_pcie_iobase += SZ_64K;
+	}
+
+	clk = of_clk_get(np, 0);
+	if (!IS_ERR(clk))
+		clk_enable(clk);
+
+	pcie->pci.pci_ops = &mvebu_pcie_indirect_ops;
+	pcie->pci.mem_resource = &pcie->mem;
+	pcie->pci.io_resource = &pcie->io;
+
+	return pcie;
+}
+
+static struct mvebu_pcie_ops armada_370_ops = {
+	.phy_setup = armada_370_phy_setup,
+};
+
+static struct of_device_id mvebu_pcie_dt_ids[] = {
+#if defined(CONFIG_ARCH_ARMADA_XP)
+	{ .compatible = "marvell,armada-xp-pcie", },
+#endif
+#if defined(CONFIG_ARCH_ARMADA_370)
+	{ .compatible = "marvell,armada-370-pcie", .data = (u32)&armada_370_ops, },
+#endif
+#if defined(CONFIG_ARCH_DOVE)
+	{ .compatible = "marvell,dove-pcie", },
+#endif
+#if defined(CONFIG_ARCH_KIRKWOOD)
+	{ .compatible = "marvell,kirkwood-pcie", },
+#endif
+	{ },
+};
+
+static int mvebu_pcie_probe(struct device_d *dev)
+{
+	struct device_node *np = dev->device_node;
+	const struct of_device_id *match = of_match_node(mvebu_pcie_dt_ids, np);
+	struct mvebu_pcie_ops *ops = (struct mvebu_pcie_ops *)match->data;
+	struct device_node *pnp;
+
+	for_each_child_of_node(np, pnp) {
+		struct mvebu_pcie *pcie;
+		u32 reg;
+
+		if (!of_device_is_available(pnp))
+			continue;
+
+		pcie = mvebu_pcie_port_probe(dev, pnp);
+		if (IS_ERR(pcie))
+			continue;
+
+		if (ops && ops->phy_setup)
+			ops->phy_setup(pcie);
+
+		mvebu_pcie_set_local_bus_nr(pcie, pcie->port);
+		mvebu_pcie_set_local_dev_nr(pcie, 0);
+		mvebu_pcie_setup_wins(pcie);
+
+		/* Master + slave enable. */
+		reg = readl(pcie->base + PCIE_CMD_OFF);
+		reg |= PCI_COMMAND_IO | PCI_COMMAND_MEMORY;
+		reg |= PCI_COMMAND_MASTER;
+		writel(reg, pcie->base + PCIE_CMD_OFF);
+
+		/* Disable interrupts */
+		reg = readl(pcie->base + PCIE_MASK_OFF);
+		reg &= ~PCIE_MASK_ENABLE_INTS;
+		writel(reg, pcie->base + PCIE_MASK_OFF);
+
+		register_pci_controller(&pcie->pci, pcie->port);
+	}
+
+	return 0;
+}
+
+static struct driver_d mvebu_pcie_driver = {
+	.name = "mvebu-pcie",
+	.probe = mvebu_pcie_probe,
+	.of_compatible = mvebu_pcie_dt_ids,
+};
+device_platform_driver(mvebu_pcie_driver);
diff --git a/drivers/pci/pci-mvebu.h b/drivers/pci/pci-mvebu.h
new file mode 100644
index 000000000000..2e4ed636227e
--- /dev/null
+++ b/drivers/pci/pci-mvebu.h
@@ -0,0 +1,35 @@
+/*
+ * PCIe include for Marvell MVEBU SoCs
+ *
+ * Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
+ *
+ * This file is licensed under the terms of the GNU General Public
+ * License version 2.  This program is licensed "as is" without any
+ * warranty of any kind, whether express or implied.
+ */
+
+#ifndef __MVEBU_PCI_H
+#define __MVEBU_PCI_H
+
+#include <linux/pci.h>
+
+struct mvebu_pcie {
+	struct pci_controller pci;
+	char *name;
+	void __iomem *base;
+	void __iomem *membase;
+	struct resource mem;
+	void __iomem *iobase;
+	struct resource io;
+	u32 port;
+	u32 lane;
+	int devfn;
+};
+
+struct mvebu_pcie_ops {
+	int (*phy_setup)(struct mvebu_pcie *pcie);
+};
+
+int armada_370_phy_setup(struct mvebu_pcie *pcie);
+
+#endif
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
