Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZvNW-0005xG-MX
 for barebox@lists.infradead.org; Wed, 27 Nov 2019 11:21:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Nov 2019 12:20:40 +0100
Message-Id: <20191127112051.9427-2-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/12] PCI: dwc: Don't hard-code DBI/ATU offset
To: Barebox List <barebox@lists.infradead.org>

Port of Linux commit 6d6b05e3d5337f645a411cdf72f1a083e495acb8

    The DWC PCIe core contains various separate register spaces: DBI, DBI2,
    ATU, DMA, etc. The relationship between the addresses of these register
    spaces is entirely determined by the implementation of the IP block, not
    by the IP block design itself. Hence, the DWC driver must not make
    assumptions that one register space can be accessed at a fixed offset from
    any other register space. To avoid such assumptions, introduce an
    explicit/separate register pointer for the ATU register space. In
    particular, the current assumption is not valid for NVIDIA's T194 SoC.

    The ATU register space is only used on systems that require unrolled ATU
    access. This property is detected at run-time for host controllers, and
    when this is detected, this patch provides a default value for atu_base
    that matches the previous assumption re: register layout. An alternative
    would be to update all drivers for HW that requires unrolled access to
    explicitly set atu_base. However, it's hard to tell which drivers would
    require atu_base to be set. The unrolled property is not detected for
    endpoint systems, and so any endpoint driver that requires unrolled access
    must explicitly set the iatu_unroll_enabled flag (none do at present), and
    so a check is added to require the driver to also set atu_base while at
    it.

    Signed-off-by: Stephen Warren <swarren@nvidia.com>
    Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
    Acked-by: Gustavo Pimentel <gustavo.pimentel@synopsys.com>
    Acked-by: Vidya Sagar <vidyas@nvidia.com>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pci/pcie-designware-host.c |  3 +++
 drivers/pci/pcie-designware.c      |  4 ++--
 drivers/pci/pcie-designware.h      | 22 +++++++++++++++++++++-
 3 files changed, 26 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/pcie-designware-host.c b/drivers/pci/pcie-designware-host.c
index 7a95b2a092..f3d7c59a60 100644
--- a/drivers/pci/pcie-designware-host.c
+++ b/drivers/pci/pcie-designware-host.c
@@ -386,6 +386,9 @@ void dw_pcie_setup_rc(struct pcie_port *pp)
 		dev_dbg(pci->dev, "iATU unroll: %s\n",
 			pci->iatu_unroll_enabled ? "enabled" : "disabled");
 
+		if (pci->iatu_unroll_enabled && !pci->atu_base)
+			pci->atu_base = pci->dbi_base + DEFAULT_DBI_ATU_OFFSET;
+
 		dw_pcie_prog_outbound_atu(pci, PCIE_ATU_REGION_INDEX0,
 					  PCIE_ATU_TYPE_MEM, pp->mem_mod_base,
 					  pp->mem_bus_addr, pp->mem_size);
diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index c6d19559f4..4fe99b1ffb 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -100,7 +100,7 @@ static u32 dw_pcie_readl_ob_unroll(struct dw_pcie *pci, u32 index, u32 reg)
 {
 	u32 offset = PCIE_GET_ATU_OUTB_UNR_REG_OFFSET(index);
 
-	return dw_pcie_readl_dbi(pci, offset + reg);
+	return dw_pcie_readl_atu(pci, offset + reg);
 }
 
 static void dw_pcie_writel_ob_unroll(struct dw_pcie *pci, u32 index,
@@ -108,7 +108,7 @@ static void dw_pcie_writel_ob_unroll(struct dw_pcie *pci, u32 index,
 {
 	u32 offset = PCIE_GET_ATU_OUTB_UNR_REG_OFFSET(index);
 
-	dw_pcie_writel_dbi(pci, offset + reg, val);
+	dw_pcie_writel_atu(pci, offset + reg, val);
 }
 
 static void dw_pcie_prog_outbound_atu_unroll(struct dw_pcie *pci, int index,
diff --git a/drivers/pci/pcie-designware.h b/drivers/pci/pcie-designware.h
index 058a0acbb2..f989ef2bd9 100644
--- a/drivers/pci/pcie-designware.h
+++ b/drivers/pci/pcie-designware.h
@@ -74,8 +74,16 @@
 #define PCIE_ATU_UNR_LOWER_TARGET	0x14
 #define PCIE_ATU_UNR_UPPER_TARGET	0x18
 
+/*
+ * The default address offset between dbi_base and atu_base. Root controller
+ * drivers are not required to initialize atu_base if the offset matches this
+ * default; the driver core automatically derives atu_base from dbi_base using
+ * this offset, if atu_base not set.
+ */
+#define DEFAULT_DBI_ATU_OFFSET (0x3 << 20)
+
 /* Register address builder */
-#define PCIE_GET_ATU_OUTB_UNR_REG_OFFSET(region)  ((0x3 << 20) | (region << 9))
+#define PCIE_GET_ATU_OUTB_UNR_REG_OFFSET(region) ((region) << 9)
 
 /* PCIe Port Logic registers */
 #define PLR_OFFSET                     0x700
@@ -144,6 +152,8 @@ struct dw_pcie_ops {
 struct dw_pcie {
 	struct device_d         *dev;
 	void __iomem            *dbi_base;
+	/* Used when iatu_unroll_enabled is true */
+	void __iomem            *atu_base;
 	u32                     num_viewport;
 	u8                      iatu_unroll_enabled;
 	struct pcie_port        pp;
@@ -178,6 +188,16 @@ static inline u32 dw_pcie_readl_dbi(struct dw_pcie *pci, u32 reg)
 	return  __dw_pcie_readl_dbi(pci, pci->dbi_base, reg, 0x4);
 }
 
+static inline void dw_pcie_writel_atu(struct dw_pcie *pci, u32 reg, u32 val)
+{
+	__dw_pcie_writel_dbi(pci, pci->atu_base, reg, 0x4, val);
+}
+
+static inline u32 dw_pcie_readl_atu(struct dw_pcie *pci, u32 reg)
+{
+	return __dw_pcie_readl_dbi(pci, pci->atu_base, reg, 0x4);
+}
+
 static inline void dw_pcie_dbi_ro_wr_en(struct dw_pcie *pci)
 {
 	u32 reg;
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
