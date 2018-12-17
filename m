Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYlKS-0002GV-30
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 05:20:59 +0000
Received: by mail-pf1-x441.google.com with SMTP id u6so5749735pfh.11
 for <barebox@lists.infradead.org>; Sun, 16 Dec 2018 21:20:21 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 16 Dec 2018 21:18:51 -0800
Message-Id: <20181217051925.17582-32-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 31/65] PCI: designware: Swap order of
 dw_pcie_writel_unroll() reg/val arguments
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit f5acb5c51de2c073ee5f80d868354113ce0227ee

  Swap order of dw_pcie_readl_unroll() arguments to match the "dev, pos, val"
  order used by pci_write_config_word() and other drivers.  No functional
  change intended.

  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pcie-designware.c | 30 +++++++++++++++---------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index 3aa048779..2b39e39e0 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -166,7 +166,7 @@ static u32 dw_pcie_readl_unroll(struct pcie_port *pp, u32 index, u32 reg)
 }
 
 static void dw_pcie_writel_unroll(struct pcie_port *pp, u32 index,
-					u32 val, u32 reg)
+				  u32 reg, u32 val)
 {
 	u32 offset = PCIE_GET_ATU_OUTB_UNR_REG_OFFSET(index);
 
@@ -199,20 +199,20 @@ static void dw_pcie_prog_outbound_atu(struct pcie_port *pp, int index,
 	u32 retries, val;
 
 	if (pp->iatu_unroll_enabled) {
-		dw_pcie_writel_unroll(pp, index,
-			lower_32_bits(cpu_addr), PCIE_ATU_UNR_LOWER_BASE);
-		dw_pcie_writel_unroll(pp, index,
-			upper_32_bits(cpu_addr), PCIE_ATU_UNR_UPPER_BASE);
-		dw_pcie_writel_unroll(pp, index,
-			lower_32_bits(cpu_addr + size - 1), PCIE_ATU_UNR_LIMIT);
-		dw_pcie_writel_unroll(pp, index,
-			lower_32_bits(pci_addr), PCIE_ATU_UNR_LOWER_TARGET);
-		dw_pcie_writel_unroll(pp, index,
-			upper_32_bits(pci_addr), PCIE_ATU_UNR_UPPER_TARGET);
-		dw_pcie_writel_unroll(pp, index,
-			type, PCIE_ATU_UNR_REGION_CTRL1);
-		dw_pcie_writel_unroll(pp, index,
-			PCIE_ATU_ENABLE, PCIE_ATU_UNR_REGION_CTRL2);
+		dw_pcie_writel_unroll(pp, index, PCIE_ATU_UNR_LOWER_BASE,
+			lower_32_bits(cpu_addr));
+		dw_pcie_writel_unroll(pp, index, PCIE_ATU_UNR_UPPER_BASE,
+			upper_32_bits(cpu_addr));
+		dw_pcie_writel_unroll(pp, index, PCIE_ATU_UNR_LIMIT,
+			lower_32_bits(cpu_addr + size - 1));
+		dw_pcie_writel_unroll(pp, index, PCIE_ATU_UNR_LOWER_TARGET,
+			lower_32_bits(pci_addr));
+		dw_pcie_writel_unroll(pp, index, PCIE_ATU_UNR_UPPER_TARGET,
+			upper_32_bits(pci_addr));
+		dw_pcie_writel_unroll(pp, index, PCIE_ATU_UNR_REGION_CTRL1,
+			type);
+		dw_pcie_writel_unroll(pp, index, PCIE_ATU_UNR_REGION_CTRL2,
+			PCIE_ATU_ENABLE);
 	} else {
 		dw_pcie_writel_rc(pp, PCIE_ATU_VIEWPORT,
 				  PCIE_ATU_REGION_OUTBOUND | index);
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
