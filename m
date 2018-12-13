Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXLAh-0005up-Ck
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 07:12:45 +0000
Received: by mail-pf1-x443.google.com with SMTP id c73so625053pfe.13
 for <barebox@lists.infradead.org>; Wed, 12 Dec 2018 23:12:25 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 12 Dec 2018 23:11:12 -0800
Message-Id: <20181213071144.31691-27-andrew.smirnov@gmail.com>
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
Subject: [PATCH 26/58] PCI: designware: Swap order of dw_pcie_writel_rc()
 reg/val arguments
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit ad8802189426cf7b3a2ad0444f71981fb81312a8

  Swap order of dw_pcie_writel_rc() arguments to match the "dev, pos, val"
  order used by pci_write_config_word() and other drivers.  No functional
  change intended.

  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pcie-designware.c | 40 +++++++++++++++++++----------------
 drivers/pci/pcie-designware.h |  2 +-
 2 files changed, 23 insertions(+), 19 deletions(-)

diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index 95752d43e..ed3e4b750 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -135,10 +135,10 @@ static inline u32 dw_pcie_readl_rc(struct pcie_port *pp, u32 reg)
 	return readl(pp->dbi_base + reg);
 }
 
-static inline void dw_pcie_writel_rc(struct pcie_port *pp, u32 val, u32 reg)
+static inline void dw_pcie_writel_rc(struct pcie_port *pp, u32 reg, u32 val)
 {
 	if (pp->ops->writel_rc)
-		pp->ops->writel_rc(pp, val, reg);
+		pp->ops->writel_rc(pp, reg, val);
 	else
 		writel(val, pp->dbi_base + reg);
 }
@@ -168,16 +168,20 @@ static void dw_pcie_prog_outbound_atu(struct pcie_port *pp, int index,
 {
 	u32 retries, val;
 
-	dw_pcie_writel_rc(pp, PCIE_ATU_REGION_OUTBOUND | index,
-			  PCIE_ATU_VIEWPORT);
-	dw_pcie_writel_rc(pp, lower_32_bits(cpu_addr), PCIE_ATU_LOWER_BASE);
-	dw_pcie_writel_rc(pp, upper_32_bits(cpu_addr), PCIE_ATU_UPPER_BASE);
-	dw_pcie_writel_rc(pp, lower_32_bits(cpu_addr + size - 1),
-			  PCIE_ATU_LIMIT);
-	dw_pcie_writel_rc(pp, lower_32_bits(pci_addr), PCIE_ATU_LOWER_TARGET);
-	dw_pcie_writel_rc(pp, upper_32_bits(pci_addr), PCIE_ATU_UPPER_TARGET);
-	dw_pcie_writel_rc(pp, type, PCIE_ATU_CR1);
-	dw_pcie_writel_rc(pp, PCIE_ATU_ENABLE, PCIE_ATU_CR2);
+	dw_pcie_writel_rc(pp, PCIE_ATU_VIEWPORT,
+			  PCIE_ATU_REGION_OUTBOUND | index);
+	dw_pcie_writel_rc(pp, PCIE_ATU_LOWER_BASE,
+			  lower_32_bits(cpu_addr));
+	dw_pcie_writel_rc(pp, PCIE_ATU_UPPER_BASE,
+			  upper_32_bits(cpu_addr));
+	dw_pcie_writel_rc(pp, PCIE_ATU_LIMIT,
+			  lower_32_bits(cpu_addr + size - 1));
+	dw_pcie_writel_rc(pp, PCIE_ATU_LOWER_TARGET,
+			  lower_32_bits(pci_addr));
+	dw_pcie_writel_rc(pp, PCIE_ATU_UPPER_TARGET,
+			  upper_32_bits(pci_addr));
+	dw_pcie_writel_rc(pp, PCIE_ATU_CR1, type);
+	dw_pcie_writel_rc(pp, PCIE_ATU_CR2, PCIE_ATU_ENABLE);
 
 	/*
 	 * Make sure ATU enable takes effect before any subsequent config
@@ -531,7 +535,7 @@ void dw_pcie_setup_rc(struct pcie_port *pp)
                dev_err(pp->dev, "num-lanes %u: invalid value\n", pp->lanes);
                return;
 	}
-	dw_pcie_writel_rc(pp, val, PCIE_PORT_LINK_CONTROL);
+	dw_pcie_writel_rc(pp, PCIE_PORT_LINK_CONTROL, val);
 
 	/* set link width speed control register */
 	val = dw_pcie_readl_rc(pp, PCIE_LINK_WIDTH_SPEED_CONTROL);
@@ -547,24 +551,24 @@ void dw_pcie_setup_rc(struct pcie_port *pp)
 		val |= PORT_LOGIC_LINK_WIDTH_4_LANES;
 		break;
 	}
-	dw_pcie_writel_rc(pp, val, PCIE_LINK_WIDTH_SPEED_CONTROL);
+	dw_pcie_writel_rc(pp, PCIE_LINK_WIDTH_SPEED_CONTROL, val);
 
 	/* setup RC BARs */
-	dw_pcie_writel_rc(pp, 0x00000004, PCI_BASE_ADDRESS_0);
-	dw_pcie_writel_rc(pp, 0x00000000, PCI_BASE_ADDRESS_1);
+	dw_pcie_writel_rc(pp, PCI_BASE_ADDRESS_0, 0x00000004);
+	dw_pcie_writel_rc(pp, PCI_BASE_ADDRESS_1, 0x00000000);
 
 	/* setup bus numbers */
 	val = dw_pcie_readl_rc(pp, PCI_PRIMARY_BUS);
 	val &= 0xff000000;
 	val |= 0x00010100;
-	dw_pcie_writel_rc(pp, val, PCI_PRIMARY_BUS);
+	dw_pcie_writel_rc(pp, PCI_PRIMARY_BUS, val);
 
 	/* setup command register */
 	val = dw_pcie_readl_rc(pp, PCI_COMMAND);
 	val &= 0xffff0000;
 	val |= PCI_COMMAND_IO | PCI_COMMAND_MEMORY |
 		PCI_COMMAND_MASTER | PCI_COMMAND_SERR;
-	dw_pcie_writel_rc(pp, val, PCI_COMMAND);
+	dw_pcie_writel_rc(pp, PCI_COMMAND, val);
 
        /*
         * If the platform provides ->rd_other_conf, it means the platform
diff --git a/drivers/pci/pcie-designware.h b/drivers/pci/pcie-designware.h
index 9a3b251fc..525030542 100644
--- a/drivers/pci/pcie-designware.h
+++ b/drivers/pci/pcie-designware.h
@@ -47,7 +47,7 @@ struct pcie_port {
 
 struct pcie_host_ops {
 	u32 (*readl_rc)(struct pcie_port *pp, u32 reg);
-	void (*writel_rc)(struct pcie_port *pp, u32 val, u32 reg);
+	void (*writel_rc)(struct pcie_port *pp, u32 reg, u32 val);
 	int (*rd_own_conf)(struct pcie_port *pp, int where, int size, u32 *val);
 	int (*wr_own_conf)(struct pcie_port *pp, int where, int size, u32 val);
 	int (*rd_other_conf)(struct pcie_port *pp, struct pci_bus *bus,
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
