Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYlKN-0003Ys-HS
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 05:20:29 +0000
Received: by mail-pl1-x643.google.com with SMTP id b5so5553980plr.4
 for <barebox@lists.infradead.org>; Sun, 16 Dec 2018 21:20:16 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 16 Dec 2018 21:18:47 -0800
Message-Id: <20181217051925.17582-28-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 27/65] PCI: designware: Simplify pcie_host_ops.readl_rc()
 and .writel_rc() interfaces
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit 7e00dfd0fbbb2fc276592613f76ded0b9a139a04

  The struct pcie_host_ops.readl_rc() and .writel_rc() function pointers
  allow a driver to override the default DesignWare register accessors.

  Make the signature of the override functions the same as the default
  accessors.  This makes the default dw_pcie_readl_rc() and the corresponding
  override more structurally similar: both will compute the final register
  address with "pp->dbi_base + reg".  Previously dw_pcie_readl_rc() computed
  the address and passed it to the override.

  No functional change intended.

  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pcie-designware.c | 4 ++--
 drivers/pci/pcie-designware.h | 5 ++---
 2 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index fd529c114..4595167c4 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -145,7 +145,7 @@ int dw_pcie_cfg_write(void __iomem *addr, int size, u32 val)
 static inline u32 dw_pcie_readl_rc(struct pcie_port *pp, u32 reg)
 {
 	if (pp->ops->readl_rc)
-		return pp->ops->readl_rc(pp, pp->dbi_base + reg);
+		return pp->ops->readl_rc(pp, reg);
 
 	return readl(pp->dbi_base + reg);
 }
@@ -153,7 +153,7 @@ static inline u32 dw_pcie_readl_rc(struct pcie_port *pp, u32 reg)
 static inline void dw_pcie_writel_rc(struct pcie_port *pp, u32 val, u32 reg)
 {
 	if (pp->ops->writel_rc)
-		pp->ops->writel_rc(pp, val, pp->dbi_base + reg);
+		pp->ops->writel_rc(pp, val, reg);
 	else
 		writel(val, pp->dbi_base + reg);
 }
diff --git a/drivers/pci/pcie-designware.h b/drivers/pci/pcie-designware.h
index 62f04e69b..b7ce73718 100644
--- a/drivers/pci/pcie-designware.h
+++ b/drivers/pci/pcie-designware.h
@@ -47,9 +47,8 @@ struct pcie_port {
 };
 
 struct pcie_host_ops {
-	u32 (*readl_rc)(struct pcie_port *pp, void __iomem *dbi_base);
-	void (*writel_rc)(struct pcie_port *pp,
-			u32 val, void __iomem *dbi_base);
+	u32 (*readl_rc)(struct pcie_port *pp, u32 reg);
+	void (*writel_rc)(struct pcie_port *pp, u32 val, u32 reg);
 	int (*rd_own_conf)(struct pcie_port *pp, int where, int size, u32 *val);
 	int (*wr_own_conf)(struct pcie_port *pp, int where, int size, u32 val);
 	int (*rd_other_conf)(struct pcie_port *pp, struct pci_bus *bus,
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
