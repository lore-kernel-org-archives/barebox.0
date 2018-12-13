Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXLAh-0005vm-Cv
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 07:12:43 +0000
Received: by mail-pf1-x443.google.com with SMTP id c72so640518pfc.6
 for <barebox@lists.infradead.org>; Wed, 12 Dec 2018 23:12:26 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 12 Dec 2018 23:11:13 -0800
Message-Id: <20181213071144.31691-28-andrew.smirnov@gmail.com>
In-Reply-To: <20181213071144.31691-1-andrew.smirnov@gmail.com>
References: <20181213071144.31691-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 27/58] PCI: designware: Export dw_pcie_readl_rc(),
 dw_pcie_writel_rc()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

  Export dw_pcie_readl_rc() and dw_pcie_writel_rc().  Many other drivers can
  use these instead of implementing their own versions.  No functional change
  intended.

  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pcie-designware.c | 4 ++--
 drivers/pci/pcie-designware.h | 2 ++
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index ed3e4b750..4f6a4e7e7 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -127,7 +127,7 @@ int dw_pcie_cfg_write(void __iomem *addr, int size, u32 val)
 	return PCIBIOS_SUCCESSFUL;
 }
 
-static inline u32 dw_pcie_readl_rc(struct pcie_port *pp, u32 reg)
+u32 dw_pcie_readl_rc(struct pcie_port *pp, u32 reg)
 {
 	if (pp->ops->readl_rc)
 		return pp->ops->readl_rc(pp, reg);
@@ -135,7 +135,7 @@ static inline u32 dw_pcie_readl_rc(struct pcie_port *pp, u32 reg)
 	return readl(pp->dbi_base + reg);
 }
 
-static inline void dw_pcie_writel_rc(struct pcie_port *pp, u32 reg, u32 val)
+void dw_pcie_writel_rc(struct pcie_port *pp, u32 reg, u32 val)
 {
 	if (pp->ops->writel_rc)
 		pp->ops->writel_rc(pp, reg, val);
diff --git a/drivers/pci/pcie-designware.h b/drivers/pci/pcie-designware.h
index 525030542..8313d6fdc 100644
--- a/drivers/pci/pcie-designware.h
+++ b/drivers/pci/pcie-designware.h
@@ -59,6 +59,8 @@ struct pcie_host_ops {
 	void (*scan_bus)(struct pcie_port *pp);
 };
 
+u32 dw_pcie_readl_rc(struct pcie_port *pp, u32 reg);
+void dw_pcie_writel_rc(struct pcie_port *pp, u32 reg, u32 val);
 int dw_pcie_cfg_read(void __iomem *addr, int size, u32 *val);
 int dw_pcie_cfg_write(void __iomem *addr, int size, u32 val);
 int dw_pcie_link_up(struct pcie_port *pp);
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
