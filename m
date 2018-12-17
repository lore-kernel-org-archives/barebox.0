Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYlKw-0005Ib-Iu
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 05:21:04 +0000
Received: by mail-pg1-x541.google.com with SMTP id z10so5527151pgp.7
 for <barebox@lists.infradead.org>; Sun, 16 Dec 2018 21:20:52 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 16 Dec 2018 21:19:14 -0800
Message-Id: <20181217051925.17582-55-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 54/65] PCI: dwc: designware: Move _unroll configurations to
 a separate function
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit edd45e3968299f9b4635bdfeca1edab842d81eac

  No functional change. Rename dw_pcie_writel_unroll/dw_pcie_readl_unroll to
  dw_pcie_writel_ob_unroll/dw_pcie_readl_ob_unroll respectively as these
  functions are used to perform only outbound configurations. Also move
  these _unroll configurations to a separate function.

  Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pcie-designware.c | 98 +++++++++++++++++++++--------------
 1 file changed, 59 insertions(+), 39 deletions(-)

diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index e67991fa0..5c476e815 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -99,21 +99,57 @@ void __dw_pcie_writel_dbi(struct dw_pcie *pci, void __iomem *base, u32 reg,
 		dev_err(pci->dev, "write DBI address failed\n");
 }
 
-static u32 dw_pcie_readl_unroll(struct dw_pcie *pci, u32 index, u32 reg)
+static u32 dw_pcie_readl_ob_unroll(struct dw_pcie *pci, u32 index, u32 reg)
 {
 	u32 offset = PCIE_GET_ATU_OUTB_UNR_REG_OFFSET(index);
 
 	return dw_pcie_readl_dbi(pci, offset + reg);
 }
 
-static void dw_pcie_writel_unroll(struct dw_pcie *pci, u32 index,
-				  u32 reg, u32 val)
+static void dw_pcie_writel_ob_unroll(struct dw_pcie *pci, u32 index,
+				     u32 reg, u32 val)
 {
 	u32 offset = PCIE_GET_ATU_OUTB_UNR_REG_OFFSET(index);
 
 	dw_pcie_writel_dbi(pci, offset + reg, val);
 }
 
+void dw_pcie_prog_outbound_atu_unroll(struct dw_pcie *pci, int index, int type,
+				     u64 cpu_addr, u64 pci_addr, u32 size)
+
+{
+	u32 retries, val;
+
+	dw_pcie_writel_ob_unroll(pci, index, PCIE_ATU_UNR_LOWER_BASE,
+				 lower_32_bits(cpu_addr));
+	dw_pcie_writel_ob_unroll(pci, index, PCIE_ATU_UNR_UPPER_BASE,
+				 upper_32_bits(cpu_addr));
+	dw_pcie_writel_ob_unroll(pci, index, PCIE_ATU_UNR_LIMIT,
+				 lower_32_bits(cpu_addr + size - 1));
+	dw_pcie_writel_ob_unroll(pci, index, PCIE_ATU_UNR_LOWER_TARGET,
+				 lower_32_bits(pci_addr));
+	dw_pcie_writel_ob_unroll(pci, index, PCIE_ATU_UNR_UPPER_TARGET,
+				 upper_32_bits(pci_addr));
+	dw_pcie_writel_ob_unroll(pci, index, PCIE_ATU_UNR_REGION_CTRL1,
+				 type);
+	dw_pcie_writel_ob_unroll(pci, index, PCIE_ATU_UNR_REGION_CTRL2,
+				 PCIE_ATU_ENABLE);
+
+	/*
+	 * Make sure ATU enable takes effect before any subsequent config
+	 * and I/O accesses.
+	 */
+	for (retries = 0; retries < LINK_WAIT_MAX_IATU_RETRIES; retries++) {
+		val = dw_pcie_readl_ob_unroll(pci, index,
+					      PCIE_ATU_UNR_REGION_CTRL2);
+		if (val & PCIE_ATU_ENABLE)
+			return;
+
+		udelay(LINK_WAIT_IATU_MAX);
+	}
+	dev_err(pci->dev, "outbound iATU is not being enabled\n");
+}
+
 void dw_pcie_prog_outbound_atu(struct dw_pcie *pci, int index,
 			       int type, u64 cpu_addr, u64 pci_addr,
 			       u32 size)
@@ -121,54 +157,38 @@ void dw_pcie_prog_outbound_atu(struct dw_pcie *pci, int index,
 	u32 retries, val;
 
 	if (pci->iatu_unroll_enabled) {
-		dw_pcie_writel_unroll(pci, index, PCIE_ATU_UNR_LOWER_BASE,
-				      lower_32_bits(cpu_addr));
-		dw_pcie_writel_unroll(pci, index, PCIE_ATU_UNR_UPPER_BASE,
-				      upper_32_bits(cpu_addr));
-		dw_pcie_writel_unroll(pci, index, PCIE_ATU_UNR_LIMIT,
-				      lower_32_bits(cpu_addr + size - 1));
-		dw_pcie_writel_unroll(pci, index, PCIE_ATU_UNR_LOWER_TARGET,
-				      lower_32_bits(pci_addr));
-		dw_pcie_writel_unroll(pci, index, PCIE_ATU_UNR_UPPER_TARGET,
-				      upper_32_bits(pci_addr));
-		dw_pcie_writel_unroll(pci, index, PCIE_ATU_UNR_REGION_CTRL1,
-				      type);
-		dw_pcie_writel_unroll(pci, index, PCIE_ATU_UNR_REGION_CTRL2,
-				      PCIE_ATU_ENABLE);
-	} else {
-		dw_pcie_writel_dbi(pci, PCIE_ATU_VIEWPORT,
-				   PCIE_ATU_REGION_OUTBOUND | index);
-		dw_pcie_writel_dbi(pci, PCIE_ATU_LOWER_BASE,
-				   lower_32_bits(cpu_addr));
-		dw_pcie_writel_dbi(pci, PCIE_ATU_UPPER_BASE,
-				   upper_32_bits(cpu_addr));
-		dw_pcie_writel_dbi(pci, PCIE_ATU_LIMIT,
-				   lower_32_bits(cpu_addr + size - 1));
-		dw_pcie_writel_dbi(pci, PCIE_ATU_LOWER_TARGET,
-				   lower_32_bits(pci_addr));
-		dw_pcie_writel_dbi(pci, PCIE_ATU_UPPER_TARGET,
-				   upper_32_bits(pci_addr));
-		dw_pcie_writel_dbi(pci, PCIE_ATU_CR1, type);
-		dw_pcie_writel_dbi(pci, PCIE_ATU_CR2, PCIE_ATU_ENABLE);
+		dw_pcie_prog_outbound_atu_unroll(pci, index, type, cpu_addr,
+						 pci_addr, size);
+		return;
 	}
 
+	dw_pcie_writel_dbi(pci, PCIE_ATU_VIEWPORT,
+			   PCIE_ATU_REGION_OUTBOUND | index);
+	dw_pcie_writel_dbi(pci, PCIE_ATU_LOWER_BASE,
+			   lower_32_bits(cpu_addr));
+	dw_pcie_writel_dbi(pci, PCIE_ATU_UPPER_BASE,
+			   upper_32_bits(cpu_addr));
+	dw_pcie_writel_dbi(pci, PCIE_ATU_LIMIT,
+			   lower_32_bits(cpu_addr + size - 1));
+	dw_pcie_writel_dbi(pci, PCIE_ATU_LOWER_TARGET,
+			   lower_32_bits(pci_addr));
+	dw_pcie_writel_dbi(pci, PCIE_ATU_UPPER_TARGET,
+			   upper_32_bits(pci_addr));
+	dw_pcie_writel_dbi(pci, PCIE_ATU_CR1, type);
+	dw_pcie_writel_dbi(pci, PCIE_ATU_CR2, PCIE_ATU_ENABLE);
+
 	/*
 	 * Make sure ATU enable takes effect before any subsequent config
 	 * and I/O accesses.
 	 */
 	for (retries = 0; retries < LINK_WAIT_MAX_IATU_RETRIES; retries++) {
-		if (pci->iatu_unroll_enabled)
-			val = dw_pcie_readl_unroll(pci, index,
-						   PCIE_ATU_UNR_REGION_CTRL2);
-		else
-			val = dw_pcie_readl_dbi(pci, PCIE_ATU_CR2);
-
+		val = dw_pcie_readl_dbi(pci, PCIE_ATU_CR2);
 		if (val == PCIE_ATU_ENABLE)
 			return;
 
 		udelay(LINK_WAIT_IATU_MAX);
 	}
-	dev_err(pci->dev, "iATU is not being enabled\n");
+	dev_err(pci->dev, "outbound iATU is not being enabled\n");
 }
 
 int dw_pcie_wait_for_link(struct dw_pcie *pci)
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
