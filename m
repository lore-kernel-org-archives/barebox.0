Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZvNO-0005pN-Sk
 for barebox@lists.infradead.org; Wed, 27 Nov 2019 11:20:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Nov 2019 12:20:47 +0100
Message-Id: <20191127112051.9427-9-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/12] PCI: dwc: Cleanup DBI,ATU read and write APIs
To: Barebox List <barebox@lists.infradead.org>

Port of Linux commit 7bc082d7e97009f252bd432de5d476b0bcf3b266

    Cleanup DBI read and write APIs by removing leading "__" (underscore)
    from their names as there is no reason to have leading underscores
    in the first place in the function definition.

    Remove dbi/dbi2 base address parameters as the same behaviour can be
    obtained through read and write APIs. Since dw_pcie_{readl/writel}_dbi()
    APIs can't be used for ATU read/write as ATU base address could be
    different from DBI base address, implement ATU read/write APIs using ATU
    base address without using dw_pcie_{readl/writel}_dbi() APIs.

    Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
    Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
    Acked-by: Jingoo Han <jingoohan1@gmail.com>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pci/pcie-designware.c | 43 ++++++++++++++++++++++++++++-------
 drivers/pci/pcie-designware.h | 17 +++++++-------
 2 files changed, 43 insertions(+), 17 deletions(-)

diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index 106c3a017c..1da0947414 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -65,37 +65,64 @@ int dw_pcie_write(void __iomem *addr, int size, u32 val)
 	return PCIBIOS_SUCCESSFUL;
 }
 
-u32 __dw_pcie_readl_dbi(struct dw_pcie *pci, void __iomem *base, u32 reg,
-			size_t size)
+u32 dw_pcie_read_dbi(struct dw_pcie *pci, u32 reg, size_t size)
 {
 	int ret;
 	u32 val;
 
 	if (pci->ops->readl_dbi)
-		return pci->ops->readl_dbi(pci, base, reg, size);
+		return pci->ops->readl_dbi(pci, pci->dbi_base, reg, size);
 
-	ret = dw_pcie_read(base + reg, size, &val);
+	ret = dw_pcie_read(pci->dbi_base + reg, size, &val);
 	if (ret)
 		dev_err(pci->dev, "Read DBI address failed\n");
 
 	return val;
 }
 
-void __dw_pcie_writel_dbi(struct dw_pcie *pci, void __iomem *base, u32 reg,
-			  size_t size, u32 val)
+void dw_pcie_write_dbi(struct dw_pcie *pci, u32 reg, size_t size, u32 val)
 {
 	int ret;
 
 	if (pci->ops->writel_dbi) {
-		pci->ops->writel_dbi(pci, base, reg, size, val);
+		pci->ops->writel_dbi(pci, pci->dbi_base, reg, size, val);
 		return;
 	}
 
-	ret = dw_pcie_write(base + reg, size, val);
+	ret = dw_pcie_write(pci->dbi_base + reg, size, val);
 	if (ret)
 		dev_err(pci->dev, "Write DBI address failed\n");
 }
 
+u32 dw_pcie_read_atu(struct dw_pcie *pci, u32 reg, size_t size)
+{
+	int ret;
+	u32 val;
+
+	if (pci->ops->readl_dbi)
+		return pci->ops->readl_dbi(pci, pci->atu_base, reg, size);
+
+	ret = dw_pcie_read(pci->atu_base + reg, size, &val);
+	if (ret)
+		dev_err(pci->dev, "Read ATU address failed\n");
+
+	return val;
+}
+
+void dw_pcie_write_atu(struct dw_pcie *pci, u32 reg, size_t size, u32 val)
+{
+	int ret;
+
+	if (pci->ops->writel_dbi) {
+		pci->ops->writel_dbi(pci, pci->atu_base, reg, size, val);
+		return;
+	}
+
+	ret = dw_pcie_write(pci->atu_base + reg, size, val);
+	if (ret)
+		dev_err(pci->dev, "Write ATU address failed\n");
+}
+
 static u32 dw_pcie_readl_ob_unroll(struct dw_pcie *pci, u32 index, u32 reg)
 {
 	u32 offset = PCIE_GET_ATU_OUTB_UNR_REG_OFFSET(index);
diff --git a/drivers/pci/pcie-designware.h b/drivers/pci/pcie-designware.h
index ebd0d8e16c..1ffeaa8d1d 100644
--- a/drivers/pci/pcie-designware.h
+++ b/drivers/pci/pcie-designware.h
@@ -180,11 +180,10 @@ int dw_pcie_read(void __iomem *addr, int size, u32 *val);
 int dw_pcie_write(void __iomem *addr, int size, u32 val);
 void dw_pcie_setup_rc(struct pcie_port *pp);
 int dw_pcie_host_init(struct pcie_port *pp);
-
-u32 __dw_pcie_readl_dbi(struct dw_pcie *pci, void __iomem *addr, u32 reg,
-			size_t size);
-void __dw_pcie_writel_dbi(struct dw_pcie *pci, void __iomem *addr, u32 reg,
-			  size_t size, u32 val);
+u32 dw_pcie_read_dbi(struct dw_pcie *pci, u32 reg, size_t size);
+void dw_pcie_write_dbi(struct dw_pcie *pci, u32 reg, size_t size, u32 val);
+u32 dw_pcie_read_atu(struct dw_pcie *pci, u32 reg, size_t size);
+void dw_pcie_write_atu(struct dw_pcie *pci, u32 reg, size_t size, u32 val);
 int dw_pcie_link_up(struct dw_pcie *pci);
 int dw_pcie_wait_for_link(struct dw_pcie *pci);
 void dw_pcie_prog_outbound_atu(struct dw_pcie *pci, int index,
@@ -196,22 +195,22 @@ void dw_pcie_setup(struct dw_pcie *pci);
 
 static inline void dw_pcie_writel_dbi(struct dw_pcie *pci, u32 reg, u32 val)
 {
-	__dw_pcie_writel_dbi(pci, pci->dbi_base, reg, 0x4, val);
+	dw_pcie_write_dbi(pci, reg, 0x4, val);
 }
 
 static inline u32 dw_pcie_readl_dbi(struct dw_pcie *pci, u32 reg)
 {
-	return  __dw_pcie_readl_dbi(pci, pci->dbi_base, reg, 0x4);
+	return dw_pcie_read_dbi(pci, reg, 0x4);
 }
 
 static inline void dw_pcie_writel_atu(struct dw_pcie *pci, u32 reg, u32 val)
 {
-	__dw_pcie_writel_dbi(pci, pci->atu_base, reg, 0x4, val);
+	dw_pcie_write_atu(pci, reg, 0x4, val);
 }
 
 static inline u32 dw_pcie_readl_atu(struct dw_pcie *pci, u32 reg)
 {
-	return __dw_pcie_readl_dbi(pci, pci->atu_base, reg, 0x4);
+	return dw_pcie_read_atu(pci, reg, 0x4);
 }
 
 static inline void dw_pcie_dbi_ro_wr_en(struct dw_pcie *pci)
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
