Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYlKw-0005JD-Iv
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 05:21:03 +0000
Received: by mail-pg1-x541.google.com with SMTP id z10so5527283pgp.7
 for <barebox@lists.infradead.org>; Sun, 16 Dec 2018 21:20:59 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 16 Dec 2018 21:19:19 -0800
Message-Id: <20181217051925.17582-60-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 59/65] PCI: dwc: Replace lower into upper case characters
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit b4a8a51caf7de47c2fb03dfb1bbbe442661b5732

  Replace of all initial lowercase character in comments and debug messages
  to uppercase to maintain coherence.

  Fix messages coherence within the DesignWare driver.

  Fix code style on dw_pcie_irq_domain_free() function.

  Signed-off-by: Gustavo Pimentel <gustavo.pimentel@synopsys.com>
  Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
  Acked-by: Jingoo Han <jingoohan1@gmail.com>
  Acked-by: Joao Pinto <jpinto@synopsys.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pcie-designware-host.c | 16 ++++++++--------
 drivers/pci/pcie-designware.c      | 12 ++++++------
 2 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/pci/pcie-designware-host.c b/drivers/pci/pcie-designware-host.c
index 29967fbc5..5de9cd8ea 100644
--- a/drivers/pci/pcie-designware-host.c
+++ b/drivers/pci/pcie-designware-host.c
@@ -99,11 +99,11 @@ int __init dw_pcie_host_init(struct pcie_port *pp)
 		pp->cfg0_mod_base = of_read_number(addrp, ns);
 		pp->cfg1_mod_base = pp->cfg0_mod_base + pp->cfg0_size;
 	} else {
-		dev_err(dev, "missing *config* reg space\n");
+		dev_err(dev, "Missing *config* reg space\n");
 	}
 
 	if (of_pci_range_parser_init(&parser, np)) {
-		dev_err(dev, "missing ranges property\n");
+		dev_err(dev, "Missing ranges property\n");
 		return -EINVAL;
 	}
 
@@ -270,12 +270,12 @@ static int dw_pcie_valid_device(struct pcie_port *pp, struct pci_bus *bus,
 			return 0;
 	}
 
-	/* access only one slot on each root port */
+	/* Access only one slot on each root port */
 	if (bus->number == pp->root_bus_nr && dev > 0)
 		return 0;
 
 	/*
-	 * do not read more than one device on the bus directly attached
+	 * Do not read more than one device on the bus directly attached
 	 * to RC's (Virtual Bridge's) DS side.
 	 */
 	if (bus->primary == pp->root_bus_nr && dev > 0)
@@ -361,17 +361,17 @@ void dw_pcie_setup_rc(struct pcie_port *pp)
 
 	dw_pcie_setup(pci);
 
-	/* setup RC BARs */
+	/* Setup RC BARs */
 	dw_pcie_writel_dbi(pci, PCI_BASE_ADDRESS_0, 0x00000004);
 	dw_pcie_writel_dbi(pci, PCI_BASE_ADDRESS_1, 0x00000000);
 
-	/* setup bus numbers */
+	/* Setup bus numbers */
 	val = dw_pcie_readl_dbi(pci, PCI_PRIMARY_BUS);
 	val &= 0xff000000;
 	val |= 0x00010100;
 	dw_pcie_writel_dbi(pci, PCI_PRIMARY_BUS, val);
 
-	/* setup command register */
+	/* Setup command register */
 	val = dw_pcie_readl_dbi(pci, PCI_COMMAND);
 	val &= 0xffff0000;
 	val |= PCI_COMMAND_IO | PCI_COMMAND_MEMORY |
@@ -400,7 +400,7 @@ void dw_pcie_setup_rc(struct pcie_port *pp)
 
 	dw_pcie_wr_own_conf(pp, PCI_BASE_ADDRESS_0, 4, 0);
 
-	/* program correct class for RC */
+	/* Program correct class for RC */
 	dw_pcie_wr_own_conf(pp, PCI_CLASS_DEVICE, 2, PCI_CLASS_BRIDGE_PCI);
 
 	dw_pcie_rd_own_conf(pp, PCIE_LINK_WIDTH_SPEED_CONTROL, 4, &val);
diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index 6b2458c9f..aaea316e9 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -76,7 +76,7 @@ u32 __dw_pcie_readl_dbi(struct dw_pcie *pci, void __iomem *base, u32 reg,
 
 	ret = dw_pcie_read(base + reg, size, &val);
 	if (ret)
-		dev_err(pci->dev, "read DBI address failed\n");
+		dev_err(pci->dev, "Read DBI address failed\n");
 
 	return val;
 }
@@ -93,7 +93,7 @@ void __dw_pcie_writel_dbi(struct dw_pcie *pci, void __iomem *base, u32 reg,
 
 	ret = dw_pcie_write(base + reg, size, val);
 	if (ret)
-		dev_err(pci->dev, "write DBI address failed\n");
+		dev_err(pci->dev, "Write DBI address failed\n");
 }
 
 static u32 dw_pcie_readl_ob_unroll(struct dw_pcie *pci, u32 index, u32 reg)
@@ -144,7 +144,7 @@ static void dw_pcie_prog_outbound_atu_unroll(struct dw_pcie *pci, int index,
 
 		udelay(LINK_WAIT_IATU_MAX);
 	}
-	dev_err(pci->dev, "outbound iATU is not being enabled\n");
+	dev_err(pci->dev, "Outbound iATU is not being enabled\n");
 }
 
 void dw_pcie_prog_outbound_atu(struct dw_pcie *pci, int index,
@@ -185,7 +185,7 @@ void dw_pcie_prog_outbound_atu(struct dw_pcie *pci, int index,
 
 		udelay(LINK_WAIT_IATU_MAX);
 	}
-	dev_err(pci->dev, "outbound iATU is not being enabled\n");
+	dev_err(pci->dev, "Outbound iATU is not being enabled\n");
 }
 
 int dw_pcie_wait_for_link(struct dw_pcie *pci)
@@ -230,7 +230,7 @@ void dw_pcie_setup(struct dw_pcie *pci)
 	if (ret)
 		lanes = 0;
 
-	/* set the number of lanes */
+	/* Set the number of lanes */
 	val = dw_pcie_readl_dbi(pci, PCIE_PORT_LINK_CONTROL);
 	val &= ~PORT_LINK_MODE_MASK;
 	switch (lanes) {
@@ -249,7 +249,7 @@ void dw_pcie_setup(struct dw_pcie *pci)
 	}
 	dw_pcie_writel_dbi(pci, PCIE_PORT_LINK_CONTROL, val);
 
-	/* set link width speed control register */
+	/* Set link width speed control register */
 	val = dw_pcie_readl_dbi(pci, PCIE_LINK_WIDTH_SPEED_CONTROL);
 	val &= ~PORT_LOGIC_LINK_WIDTH_MASK;
 	switch (lanes) {
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
