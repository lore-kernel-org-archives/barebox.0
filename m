Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYlKu-0005Ia-En
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 05:21:01 +0000
Received: by mail-pf1-x444.google.com with SMTP id q1so5762584pfi.5
 for <barebox@lists.infradead.org>; Sun, 16 Dec 2018 21:20:51 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 16 Dec 2018 21:19:13 -0800
Message-Id: <20181217051925.17582-54-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 53/65] PCI: dwc: all: Modify dbi accessors to access data
 of 4/2/1 bytes
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit a509d7d9af5ebf86ffbefa98e49761d813fb1d40

  Previously dbi accessors can be used to access data of size 4 bytes. But
  there might be situations (like accessing MSI_MESSAGE_CONTROL in order to
  set/get the number of required MSI interrupts in EP mode) where dbi
  accessors must be used to access data of size 2. This is in preparation
  for adding endpoint mode support to designware driver.

  Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
  Acked-by: Niklas Cassel <niklas.cassel@axis.com>
  Cc: Jingoo Han <jingoohan1@gmail.com>
  Cc: Joao Pinto <Joao.Pinto@synopsys.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pcie-designware.c | 30 ++++++++++++++++++++++--------
 drivers/pci/pcie-designware.h | 15 +++++++++------
 2 files changed, 31 insertions(+), 14 deletions(-)

diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index 25f9f8df1..e67991fa0 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -68,21 +68,35 @@ int dw_pcie_write(void __iomem *addr, int size, u32 val)
 	return PCIBIOS_SUCCESSFUL;
 }
 
-u32 __dw_pcie_readl_dbi(struct dw_pcie *pci, void __iomem *base, u32 reg)
+u32 __dw_pcie_readl_dbi(struct dw_pcie *pci, void __iomem *base, u32 reg,
+			size_t size)
 {
+	int ret;
+	u32 val;
+
 	if (pci->ops->readl_dbi)
-		return pci->ops->readl_dbi(pci, base, reg);
+		return pci->ops->readl_dbi(pci, base, reg, size);
 
-	return readl(base + reg);
+	ret = dw_pcie_read(base + reg, size, &val);
+	if (ret)
+		dev_err(pci->dev, "read DBI address failed\n");
+
+	return val;
 }
 
 void __dw_pcie_writel_dbi(struct dw_pcie *pci, void __iomem *base, u32 reg,
-			  u32 val)
+			  size_t size, u32 val)
 {
-	if (pci->ops->writel_dbi)
-		pci->ops->writel_dbi(pci, base, reg, val);
-	else
-		writel(val, base + reg);
+	int ret;
+
+	if (pci->ops->writel_dbi) {
+		pci->ops->writel_dbi(pci, base, reg, size, val);
+		return;
+	}
+
+	ret = dw_pcie_write(base + reg, size, val);
+	if (ret)
+		dev_err(pci->dev, "write DBI address failed\n");
 }
 
 static u32 dw_pcie_readl_unroll(struct dw_pcie *pci, u32 index, u32 reg)
diff --git a/drivers/pci/pcie-designware.h b/drivers/pci/pcie-designware.h
index 10deb577a..149ce1da5 100644
--- a/drivers/pci/pcie-designware.h
+++ b/drivers/pci/pcie-designware.h
@@ -134,9 +134,10 @@ struct pcie_port {
 };
 
 struct dw_pcie_ops {
-	u32     (*readl_dbi)(struct dw_pcie *pcie, void __iomem *base, u32 reg);
+	u32     (*readl_dbi)(struct dw_pcie *pcie, void __iomem *base, u32 reg,
+			     size_t size);
 	void    (*writel_dbi)(struct dw_pcie *pcie, void __iomem *base, u32 reg,
-			      u32 val);
+			      size_t size, u32 val);
 	int     (*link_up)(struct dw_pcie *pcie);
 };
 
@@ -156,8 +157,10 @@ int dw_pcie_write(void __iomem *addr, int size, u32 val);
 void dw_pcie_setup_rc(struct pcie_port *pp);
 int dw_pcie_host_init(struct pcie_port *pp);
 
-u32 __dw_pcie_readl_dbi(struct dw_pcie *pci, void __iomem *addr, u32 reg);
-void __dw_pcie_writel_dbi(struct dw_pcie *pci, void __iomem *addr, u32 reg, u32 val);
+u32 __dw_pcie_readl_dbi(struct dw_pcie *pci, void __iomem *addr, u32 reg,
+			size_t size);
+void __dw_pcie_writel_dbi(struct dw_pcie *pci, void __iomem *addr, u32 reg,
+			  size_t size, u32 val);
 int dw_pcie_link_up(struct dw_pcie *pci);
 int dw_pcie_wait_for_link(struct dw_pcie *pci);
 void dw_pcie_prog_outbound_atu(struct dw_pcie *pci, int index,
@@ -167,11 +170,11 @@ void dw_pcie_setup(struct dw_pcie *pci);
 
 static inline void dw_pcie_writel_dbi(struct dw_pcie *pci, u32 reg, u32 val)
 {
-	__dw_pcie_writel_dbi(pci, pci->dbi_base, reg, val);
+	__dw_pcie_writel_dbi(pci, pci->dbi_base, reg, 0x4, val);
 }
 
 static inline u32 dw_pcie_readl_dbi(struct dw_pcie *pci, u32 reg)
 {
-	return  __dw_pcie_readl_dbi(pci, pci->dbi_base, reg);
+	return  __dw_pcie_readl_dbi(pci, pci->dbi_base, reg, 0x4);
 }
 #endif /* _PCIE_DESIGNWARE_H */
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
