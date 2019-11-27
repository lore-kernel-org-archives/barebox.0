Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZvNO-0005pQ-Si
 for barebox@lists.infradead.org; Wed, 27 Nov 2019 11:20:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Nov 2019 12:20:48 +0100
Message-Id: <20191127112051.9427-10-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/12] PCI: dwc: rename readl/writel_dbi ops to read/write_dbi
To: Barebox List <barebox@lists.infradead.org>

struct dw_pcie_ops read/writel_dbi functions can read values of any
size, so with readl/writel they are misnamed. Rename them to read/write
which also matches the kernel driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pci/pcie-designware.c | 16 ++++++++--------
 drivers/pci/pcie-designware.h |  8 ++++----
 2 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index 1da0947414..72deeee4ed 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -70,8 +70,8 @@ u32 dw_pcie_read_dbi(struct dw_pcie *pci, u32 reg, size_t size)
 	int ret;
 	u32 val;
 
-	if (pci->ops->readl_dbi)
-		return pci->ops->readl_dbi(pci, pci->dbi_base, reg, size);
+	if (pci->ops->read_dbi)
+		return pci->ops->read_dbi(pci, pci->dbi_base, reg, size);
 
 	ret = dw_pcie_read(pci->dbi_base + reg, size, &val);
 	if (ret)
@@ -84,8 +84,8 @@ void dw_pcie_write_dbi(struct dw_pcie *pci, u32 reg, size_t size, u32 val)
 {
 	int ret;
 
-	if (pci->ops->writel_dbi) {
-		pci->ops->writel_dbi(pci, pci->dbi_base, reg, size, val);
+	if (pci->ops->write_dbi) {
+		pci->ops->write_dbi(pci, pci->dbi_base, reg, size, val);
 		return;
 	}
 
@@ -99,8 +99,8 @@ u32 dw_pcie_read_atu(struct dw_pcie *pci, u32 reg, size_t size)
 	int ret;
 	u32 val;
 
-	if (pci->ops->readl_dbi)
-		return pci->ops->readl_dbi(pci, pci->atu_base, reg, size);
+	if (pci->ops->read_dbi)
+		return pci->ops->read_dbi(pci, pci->atu_base, reg, size);
 
 	ret = dw_pcie_read(pci->atu_base + reg, size, &val);
 	if (ret)
@@ -113,8 +113,8 @@ void dw_pcie_write_atu(struct dw_pcie *pci, u32 reg, size_t size, u32 val)
 {
 	int ret;
 
-	if (pci->ops->writel_dbi) {
-		pci->ops->writel_dbi(pci, pci->atu_base, reg, size, val);
+	if (pci->ops->write_dbi) {
+		pci->ops->write_dbi(pci, pci->atu_base, reg, size, val);
 		return;
 	}
 
diff --git a/drivers/pci/pcie-designware.h b/drivers/pci/pcie-designware.h
index 1ffeaa8d1d..449c72aeaa 100644
--- a/drivers/pci/pcie-designware.h
+++ b/drivers/pci/pcie-designware.h
@@ -155,10 +155,10 @@ struct pcie_port {
 };
 
 struct dw_pcie_ops {
-	u32     (*readl_dbi)(struct dw_pcie *pcie, void __iomem *base, u32 reg,
-			     size_t size);
-	void    (*writel_dbi)(struct dw_pcie *pcie, void __iomem *base, u32 reg,
-			      size_t size, u32 val);
+	u32     (*read_dbi)(struct dw_pcie *pcie, void __iomem *base, u32 reg,
+			    size_t size);
+	void    (*write_dbi)(struct dw_pcie *pcie, void __iomem *base, u32 reg,
+			     size_t size, u32 val);
 	int     (*link_up)(struct dw_pcie *pcie);
 };
 
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
