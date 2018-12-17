Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYlKK-0001iu-Nl
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 05:20:40 +0000
Received: by mail-pf1-f195.google.com with SMTP id q1so5761885pfi.5
 for <barebox@lists.infradead.org>; Sun, 16 Dec 2018 21:20:14 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 16 Dec 2018 21:18:46 -0800
Message-Id: <20181217051925.17582-27-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 26/65] PCI: designware: Simplify dw_pcie_readl_unroll(),
 dw_pcie_writel_unroll()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of Linux commit a26e0108b61d6e65c151af720f2c4248a38f000d

  dw_pcie_readl_unroll() and dw_pcie_writel_unroll() duplicate what
  dw_pcie_readl_rc() and dw_pcie_writel_rc() already do, so call them
  directly.

  [bhelgaas: reworked into patch series]
  Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pcie-designware.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index c548ae87e..fd529c114 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -162,10 +162,7 @@ static inline u32 dw_pcie_readl_unroll(struct pcie_port *pp, u32 index, u32 reg)
 {
 	u32 offset = PCIE_GET_ATU_OUTB_UNR_REG_OFFSET(index);
 
-	if (pp->ops->readl_rc)
-		return pp->ops->readl_rc(pp, pp->dbi_base + offset + reg);
-
-	return readl(pp->dbi_base + offset + reg);
+	return dw_pcie_readl_rc(pp, offset + reg);
 }
 
 static inline void dw_pcie_writel_unroll(struct pcie_port *pp, u32 index,
@@ -173,10 +170,7 @@ static inline void dw_pcie_writel_unroll(struct pcie_port *pp, u32 index,
 {
 	u32 offset = PCIE_GET_ATU_OUTB_UNR_REG_OFFSET(index);
 
-	if (pp->ops->writel_rc)
-		pp->ops->writel_rc(pp, val, pp->dbi_base + offset + reg);
-	else
-		writel(val, pp->dbi_base + offset + reg);
+	dw_pcie_writel_rc(pp, val, offset + reg);
 }
 
 #include <abort.h>
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
