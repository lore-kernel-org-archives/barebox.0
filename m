Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYlKD-0001Hf-VN
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 05:20:34 +0000
Received: by mail-pg1-x542.google.com with SMTP id c25so4023576pgb.4
 for <barebox@lists.infradead.org>; Sun, 16 Dec 2018 21:20:07 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 16 Dec 2018 21:18:41 -0800
Message-Id: <20181217051925.17582-22-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 21/65] PCI: designware: Add iATU Unroll feature
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit a0601a47053714eecec726aea5ebcd829f817497

  Add support for the new iATU Unroll mechanism that will be used from Core
  version 4.80.  The new Cores can support either iATU Unroll or the "old"
  iATU method, now called Legacy Mode.  The driver is perfectly capable of
  performing well for both.

  [bhelgaas: split ATU enable timeout to separate patch]
  Signed-off-by: Joao Pinto <jpinto@synopsys.com>
  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>

To avoid breaking i.MX6 PCIE support commit
416379f9ebded501eda882e6af0a7aafc1866700 was squashed here as well

  PCI: designware: Check for iATU unroll support after initializing host

  dw_pcie_iatu_unroll_enabled() reads a dbi_base register.  Reading any
  dbi_base register before pp->ops->host_init has been called causes
  "imprecise external abort" on platforms like ARTPEC-6, where the PCIe
  module is disabled at boot and first enabled in pp->ops->host_init.  Move
  dw_pcie_iatu_unroll_enabled() to dw_pcie_setup_rc(), since it is after
  pp->ops->host_init, but before pp->iatu_unroll_enabled is actually used.

  Fixes: a0601a470537 ("PCI: designware: Add iATU Unroll feature")
  Tested-by: James Le Cuirot <chewi@gentoo.org>
  Signed-off-by: Niklas Cassel <niklas.cassel@axis.com>
  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
  Acked-by: Joao Pinto <jpinto@synopsys.com>
  Acked-by: Olof Johansson <olof@lixom.net>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pcie-designware.c | 101 ++++++++++++++++++++++++++++++----
 drivers/pci/pcie-designware.h |   1 +
 2 files changed, 91 insertions(+), 11 deletions(-)

diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index b56c466fd..5d0f782f4 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -80,6 +80,21 @@
 #define PCIE_ATU_FUNC(x)		(((x) & 0x7) << 16)
 #define PCIE_ATU_UPPER_TARGET		0x91C
 
+/*
+ * iATU Unroll-specific register definitions
+ * From 4.80 core version the address translation will be made by unroll
+ */
+#define PCIE_ATU_UNR_REGION_CTRL1	0x00
+#define PCIE_ATU_UNR_REGION_CTRL2	0x04
+#define PCIE_ATU_UNR_LOWER_BASE	0x08
+#define PCIE_ATU_UNR_UPPER_BASE	0x0C
+#define PCIE_ATU_UNR_LIMIT		0x10
+#define PCIE_ATU_UNR_LOWER_TARGET	0x14
+#define PCIE_ATU_UNR_UPPER_TARGET	0x18
+
+/* Register address builder */
+#define PCIE_GET_ATU_OUTB_UNR_REG_OFFSET(region)  ((0x3 << 20) | (region << 9))
+
 /* PCIe Port Logic registers */
 #define PLR_OFFSET                     0x700
 #define PCIE_PHY_DEBUG_R1              (PLR_OFFSET + 0x2c)
@@ -141,6 +156,27 @@ static inline void dw_pcie_writel_rc(struct pcie_port *pp, u32 val, u32 reg)
 		writel(val, pp->dbi_base + reg);
 }
 
+static inline u32 dw_pcie_readl_unroll(struct pcie_port *pp, u32 index, u32 reg)
+{
+	u32 offset = PCIE_GET_ATU_OUTB_UNR_REG_OFFSET(index);
+
+	if (pp->ops->readl_rc)
+		return pp->ops->readl_rc(pp, pp->dbi_base + offset + reg);
+
+	return readl(pp->dbi_base + offset + reg);
+}
+
+static inline void dw_pcie_writel_unroll(struct pcie_port *pp, u32 index,
+					u32 val, u32 reg)
+{
+	u32 offset = PCIE_GET_ATU_OUTB_UNR_REG_OFFSET(index);
+
+	if (pp->ops->writel_rc)
+		pp->ops->writel_rc(pp, val, pp->dbi_base + offset + reg);
+	else
+		writel(val, pp->dbi_base + offset + reg);
+}
+
 #include <abort.h>
 
 static int dw_pcie_rd_own_conf(struct pcie_port *pp, int where, int size,
@@ -166,23 +202,49 @@ static void dw_pcie_prog_outbound_atu(struct pcie_port *pp, int index,
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
+	if (pp->iatu_unroll_enabled) {
+		dw_pcie_writel_unroll(pp, index,
+			lower_32_bits(cpu_addr), PCIE_ATU_UNR_LOWER_BASE);
+		dw_pcie_writel_unroll(pp, index,
+			upper_32_bits(cpu_addr), PCIE_ATU_UNR_UPPER_BASE);
+		dw_pcie_writel_unroll(pp, index,
+			lower_32_bits(cpu_addr + size - 1), PCIE_ATU_UNR_LIMIT);
+		dw_pcie_writel_unroll(pp, index,
+			lower_32_bits(pci_addr), PCIE_ATU_UNR_LOWER_TARGET);
+		dw_pcie_writel_unroll(pp, index,
+			upper_32_bits(pci_addr), PCIE_ATU_UNR_UPPER_TARGET);
+		dw_pcie_writel_unroll(pp, index,
+			type, PCIE_ATU_UNR_REGION_CTRL1);
+		dw_pcie_writel_unroll(pp, index,
+			PCIE_ATU_ENABLE, PCIE_ATU_UNR_REGION_CTRL2);
+	} else {
+		dw_pcie_writel_rc(pp, PCIE_ATU_REGION_OUTBOUND | index,
+				  PCIE_ATU_VIEWPORT);
+		dw_pcie_writel_rc(pp, lower_32_bits(cpu_addr),
+				  PCIE_ATU_LOWER_BASE);
+		dw_pcie_writel_rc(pp, upper_32_bits(cpu_addr),
+				  PCIE_ATU_UPPER_BASE);
+		dw_pcie_writel_rc(pp, lower_32_bits(cpu_addr + size - 1),
+				  PCIE_ATU_LIMIT);
+		dw_pcie_writel_rc(pp, lower_32_bits(pci_addr),
+				  PCIE_ATU_LOWER_TARGET);
+		dw_pcie_writel_rc(pp, upper_32_bits(pci_addr),
+				  PCIE_ATU_UPPER_TARGET);
+		dw_pcie_writel_rc(pp, type, PCIE_ATU_CR1);
+		dw_pcie_writel_rc(pp, PCIE_ATU_ENABLE, PCIE_ATU_CR2);
+	}
 
 	/*
 	 * Make sure ATU enable takes effect before any subsequent config
 	 * and I/O accesses.
 	 */
 	for (retries = 0; retries < LINK_WAIT_MAX_IATU_RETRIES; retries++) {
-		val = dw_pcie_readl_rc(pp, PCIE_ATU_CR2);
+		if (pp->iatu_unroll_enabled)
+			val = dw_pcie_readl_unroll(pp, index,
+						   PCIE_ATU_UNR_REGION_CTRL2);
+		else
+			val = dw_pcie_readl_rc(pp, PCIE_ATU_CR2);
+
 		if (val == PCIE_ATU_ENABLE)
 			return;
 
@@ -234,6 +296,18 @@ static void dw_pcie_set_local_bus_nr(struct pci_controller *host, int busno)
 
 static struct pci_ops dw_pcie_ops;
 
+static u8 dw_pcie_iatu_unroll_enabled(struct pcie_port *pp)
+{
+	u32 val;
+
+	val = dw_pcie_readl_rc(pp, PCIE_ATU_VIEWPORT);
+	if (val == 0xffffffff)
+		return 1;
+
+	return 0;
+}
+
+
 int __init dw_pcie_host_init(struct pcie_port *pp)
 {
 	struct device_node *np = pp->dev->device_node;
@@ -505,6 +579,11 @@ void dw_pcie_setup_rc(struct pcie_port *pp)
 {
 	u32 val;
 
+	/* get iATU unroll support */
+	pp->iatu_unroll_enabled = dw_pcie_iatu_unroll_enabled(pp);
+	dev_dbg(pp->dev, "iATU unroll: %s\n",
+		pp->iatu_unroll_enabled ? "enabled" : "disabled");
+
 	/* set the number of lanes */
 	val = dw_pcie_readl_rc(pp, PCIE_PORT_LINK_CONTROL);
 	val &= ~PORT_LINK_MODE_MASK;
diff --git a/drivers/pci/pcie-designware.h b/drivers/pci/pcie-designware.h
index 0d777ce00..b2f492a5d 100644
--- a/drivers/pci/pcie-designware.h
+++ b/drivers/pci/pcie-designware.h
@@ -42,6 +42,7 @@ struct pcie_port {
 	u32			lanes;
 	struct pcie_host_ops	*ops;
 	struct pci_controller	pci;
+	u8                      iatu_unroll_enabled;
 };
 
 struct pcie_host_ops {
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
