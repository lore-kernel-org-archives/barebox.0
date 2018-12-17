Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYlKu-0005IY-Ej
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 05:21:01 +0000
Received: by mail-pf1-x444.google.com with SMTP id u6so5750333pfh.11
 for <barebox@lists.infradead.org>; Sun, 16 Dec 2018 21:20:50 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 16 Dec 2018 21:19:12 -0800
Message-Id: <20181217051925.17582-53-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 52/65] PCI: dwc: all: Modify dbi accessors to take dbi_base
 as argument
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit b50b2db266d8a8c303e8d88590c6416dfe576c6c

  dwc has 2 dbi address space labeled dbics and dbics2. The existing helper
  to access dbi address space can access only dbics. However dbics2 has to
  be accessed for programming the BAR registers in the case of EP mode. This
  is in preparation for adding EP mode support to dwc driver.

  Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
  Acked-by: Niklas Cassel <niklas.cassel@axis.com>
  Cc: Jingoo Han <jingoohan1@gmail.com>
  Cc: Joao Pinto <Joao.Pinto@synopsys.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pcie-designware.c | 13 +++++++------
 drivers/pci/pcie-designware.h | 19 +++++++++++++++----
 2 files changed, 22 insertions(+), 10 deletions(-)

diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index 6687fff8b..25f9f8df1 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -68,20 +68,21 @@ int dw_pcie_write(void __iomem *addr, int size, u32 val)
 	return PCIBIOS_SUCCESSFUL;
 }
 
-u32 dw_pcie_readl_dbi(struct dw_pcie *pci, u32 reg)
+u32 __dw_pcie_readl_dbi(struct dw_pcie *pci, void __iomem *base, u32 reg)
 {
 	if (pci->ops->readl_dbi)
-		return pci->ops->readl_dbi(pci, reg);
+		return pci->ops->readl_dbi(pci, base, reg);
 
-	return readl(pci->dbi_base + reg);
+	return readl(base + reg);
 }
 
-void dw_pcie_writel_dbi(struct dw_pcie *pci, u32 reg, u32 val)
+void __dw_pcie_writel_dbi(struct dw_pcie *pci, void __iomem *base, u32 reg,
+			  u32 val)
 {
 	if (pci->ops->writel_dbi)
-		pci->ops->writel_dbi(pci, reg, val);
+		pci->ops->writel_dbi(pci, base, reg, val);
 	else
-		writel(val, pci->dbi_base + reg);
+		writel(val, base + reg);
 }
 
 static u32 dw_pcie_readl_unroll(struct dw_pcie *pci, u32 index, u32 reg)
diff --git a/drivers/pci/pcie-designware.h b/drivers/pci/pcie-designware.h
index 97c8b0b3c..10deb577a 100644
--- a/drivers/pci/pcie-designware.h
+++ b/drivers/pci/pcie-designware.h
@@ -134,8 +134,9 @@ struct pcie_port {
 };
 
 struct dw_pcie_ops {
-	u32     (*readl_dbi)(struct dw_pcie *pcie, u32 reg);
-	void    (*writel_dbi)(struct dw_pcie *pcie, u32 reg, u32 val);
+	u32     (*readl_dbi)(struct dw_pcie *pcie, void __iomem *base, u32 reg);
+	void    (*writel_dbi)(struct dw_pcie *pcie, void __iomem *base, u32 reg,
+			      u32 val);
 	int     (*link_up)(struct dw_pcie *pcie);
 };
 
@@ -155,12 +156,22 @@ int dw_pcie_write(void __iomem *addr, int size, u32 val);
 void dw_pcie_setup_rc(struct pcie_port *pp);
 int dw_pcie_host_init(struct pcie_port *pp);
 
-u32 dw_pcie_readl_dbi(struct dw_pcie *pci, u32 reg);
-void dw_pcie_writel_dbi(struct dw_pcie *pci, u32 reg, u32 val);
+u32 __dw_pcie_readl_dbi(struct dw_pcie *pci, void __iomem *addr, u32 reg);
+void __dw_pcie_writel_dbi(struct dw_pcie *pci, void __iomem *addr, u32 reg, u32 val);
 int dw_pcie_link_up(struct dw_pcie *pci);
 int dw_pcie_wait_for_link(struct dw_pcie *pci);
 void dw_pcie_prog_outbound_atu(struct dw_pcie *pci, int index,
 			       int type, u64 cpu_addr, u64 pci_addr,
 			       u32 size);
 void dw_pcie_setup(struct dw_pcie *pci);
+
+static inline void dw_pcie_writel_dbi(struct dw_pcie *pci, u32 reg, u32 val)
+{
+	__dw_pcie_writel_dbi(pci, pci->dbi_base, reg, val);
+}
+
+static inline u32 dw_pcie_readl_dbi(struct dw_pcie *pci, u32 reg)
+{
+	return  __dw_pcie_readl_dbi(pci, pci->dbi_base, reg);
+}
 #endif /* _PCIE_DESIGNWARE_H */
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
