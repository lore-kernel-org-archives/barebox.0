Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXLAX-0005kU-Ij
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 07:12:34 +0000
Received: by mail-pl1-x642.google.com with SMTP id b5so617929plr.4
 for <barebox@lists.infradead.org>; Wed, 12 Dec 2018 23:12:15 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 12 Dec 2018 23:11:04 -0800
Message-Id: <20181213071144.31691-19-andrew.smirnov@gmail.com>
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
Subject: [PATCH 18/58] PCI: designware: Return data directly from
 dw_pcie_readl_rc()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit 446fc23fb6f0cab15011d7daae856091856a65cc

  dw_pcie_readl_rc() reads a u32 value.  Previously we stored that value in
  space supplied by the caller.  Return the u32 value directly instead.

  This makes the calling code read better and makes it obvious that the
  caller need not initialize the storage.  In the following example it isn't
  clear whether "val" is initialized before being used:

    dw_pcie_readl_rc(pp, PCI_COMMAND, &val);
    if (val & PCI_COMMAND_MEMORY)
      ...

  No functional change intended.

  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pcie-designware.c | 18 +++++++++---------
 drivers/pci/pcie-designware.h |  3 +--
 2 files changed, 10 insertions(+), 11 deletions(-)

diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index e9058768d..995fe997e 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -117,12 +117,12 @@ int dw_pcie_cfg_write(void __iomem *addr, int size, u32 val)
 	return PCIBIOS_SUCCESSFUL;
 }
 
-static inline void dw_pcie_readl_rc(struct pcie_port *pp, u32 reg, u32 *val)
+static inline u32 dw_pcie_readl_rc(struct pcie_port *pp, u32 reg)
 {
 	if (pp->ops->readl_rc)
-		pp->ops->readl_rc(pp, pp->dbi_base + reg, val);
-	else
-		*val = readl(pp->dbi_base + reg);
+		return pp->ops->readl_rc(pp, pp->dbi_base + reg);
+
+	return readl(pp->dbi_base + reg);
 }
 
 static inline void dw_pcie_writel_rc(struct pcie_port *pp, u32 val, u32 reg)
@@ -173,7 +173,7 @@ static void dw_pcie_prog_outbound_atu(struct pcie_port *pp, int index,
 	 * Make sure ATU enable takes effect before any subsequent config
 	 * and I/O accesses.
 	 */
-	dw_pcie_readl_rc(pp, PCIE_ATU_CR2, &val);
+	dw_pcie_readl_rc(pp, PCIE_ATU_CR2);
 }
 
 int dw_pcie_wait_for_link(struct pcie_port *pp)
@@ -491,7 +491,7 @@ void dw_pcie_setup_rc(struct pcie_port *pp)
 	u32 val;
 
 	/* set the number of lanes */
-	dw_pcie_readl_rc(pp, PCIE_PORT_LINK_CONTROL, &val);
+	val = dw_pcie_readl_rc(pp, PCIE_PORT_LINK_CONTROL);
 	val &= ~PORT_LINK_MODE_MASK;
 	switch (pp->lanes) {
 	case 1:
@@ -510,7 +510,7 @@ void dw_pcie_setup_rc(struct pcie_port *pp)
 	dw_pcie_writel_rc(pp, val, PCIE_PORT_LINK_CONTROL);
 
 	/* set link width speed control register */
-	dw_pcie_readl_rc(pp, PCIE_LINK_WIDTH_SPEED_CONTROL, &val);
+	val = dw_pcie_readl_rc(pp, PCIE_LINK_WIDTH_SPEED_CONTROL);
 	val &= ~PORT_LOGIC_LINK_WIDTH_MASK;
 	switch (pp->lanes) {
 	case 1:
@@ -530,13 +530,13 @@ void dw_pcie_setup_rc(struct pcie_port *pp)
 	dw_pcie_writel_rc(pp, 0x00000000, PCI_BASE_ADDRESS_1);
 
 	/* setup bus numbers */
-	dw_pcie_readl_rc(pp, PCI_PRIMARY_BUS, &val);
+	val = dw_pcie_readl_rc(pp, PCI_PRIMARY_BUS);
 	val &= 0xff000000;
 	val |= 0x00010100;
 	dw_pcie_writel_rc(pp, val, PCI_PRIMARY_BUS);
 
 	/* setup command register */
-	dw_pcie_readl_rc(pp, PCI_COMMAND, &val);
+	val = dw_pcie_readl_rc(pp, PCI_COMMAND);
 	val &= 0xffff0000;
 	val |= PCI_COMMAND_IO | PCI_COMMAND_MEMORY |
 		PCI_COMMAND_MASTER | PCI_COMMAND_SERR;
diff --git a/drivers/pci/pcie-designware.h b/drivers/pci/pcie-designware.h
index 051511a26..547ab3151 100644
--- a/drivers/pci/pcie-designware.h
+++ b/drivers/pci/pcie-designware.h
@@ -49,8 +49,7 @@ struct pcie_port {
 };
 
 struct pcie_host_ops {
-	void (*readl_rc)(struct pcie_port *pp,
-			void __iomem *dbi_base, u32 *val);
+	u32 (*readl_rc)(struct pcie_port *pp, void __iomem *dbi_base);
 	void (*writel_rc)(struct pcie_port *pp,
 			u32 val, void __iomem *dbi_base);
 	int (*rd_own_conf)(struct pcie_port *pp, int where, int size, u32 *val);
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
