Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXLAD-0005Y1-2w
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 07:12:10 +0000
Received: by mail-pg1-x541.google.com with SMTP id z11so624567pgu.0
 for <barebox@lists.infradead.org>; Wed, 12 Dec 2018 23:11:54 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 12 Dec 2018 23:10:48 -0800
Message-Id: <20181213071144.31691-3-andrew.smirnov@gmail.com>
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
Subject: [PATCH 02/58] PCI: designware: Consolidate outbound iATU programming
 functions
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit 63503c87f06e0f2c8c951cada81221c5500188d8

  Currently, the outbound iATU programming functions are similar: the only
  difference is index, type, addr and size.  Consolidate these functions into
  one.  This saves about 1700 bytes in text:

     text    data     bss     dec     hex filename
     9276     204       4    9484    250c pcie-designware.o-before
     7532     204       4    7740    1e3c pcie-designware.o

  Signed-off-by: Jisheng Zhang <jszhang@marvell.com>
  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
  Acked-by: Pratyush Anand <pratyush.anand@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pcie-designware.c | 121 ++++++++++++----------------------
 1 file changed, 43 insertions(+), 78 deletions(-)

diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index 4962a1964..d54e47074 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -148,6 +148,21 @@ static int dw_pcie_wr_own_conf(struct pcie_port *pp, int where, int size,
 	return ret;
 }
 
+static void dw_pcie_prog_outbound_atu(struct pcie_port *pp, int index,
+               int type, u64 cpu_addr, u64 pci_addr, u32 size)
+{
+	dw_pcie_writel_rc(pp, PCIE_ATU_REGION_OUTBOUND | index,
+			  PCIE_ATU_VIEWPORT);
+	dw_pcie_writel_rc(pp, lower_32_bits(cpu_addr), PCIE_ATU_LOWER_BASE);
+	dw_pcie_writel_rc(pp, upper_32_bits(cpu_addr), PCIE_ATU_UPPER_BASE);
+	dw_pcie_writel_rc(pp, lower_32_bits(cpu_addr + size - 1),
+			  PCIE_ATU_LIMIT);
+	dw_pcie_writel_rc(pp, lower_32_bits(pci_addr), PCIE_ATU_LOWER_TARGET);
+	dw_pcie_writel_rc(pp, upper_32_bits(pci_addr), PCIE_ATU_UPPER_TARGET);
+	dw_pcie_writel_rc(pp, type, PCIE_ATU_CR1);
+	dw_pcie_writel_rc(pp, PCIE_ATU_ENABLE, PCIE_ATU_CR2);
+}
+
 int dw_pcie_link_up(struct pcie_port *pp)
 {
 	if (pp->ops->link_up)
@@ -288,68 +303,6 @@ int __init dw_pcie_host_init(struct pcie_port *pp)
 	return 0;
 }
 
-static void dw_pcie_prog_viewport_cfg0(struct pcie_port *pp, u32 busdev)
-{
-	/* Program viewport 0 : OUTBOUND : CFG0 */
-	dw_pcie_writel_rc(pp, PCIE_ATU_REGION_OUTBOUND | PCIE_ATU_REGION_INDEX0,
-			  PCIE_ATU_VIEWPORT);
-	dw_pcie_writel_rc(pp, pp->cfg0_mod_base, PCIE_ATU_LOWER_BASE);
-	dw_pcie_writel_rc(pp, (pp->cfg0_mod_base >> 32), PCIE_ATU_UPPER_BASE);
-	dw_pcie_writel_rc(pp, pp->cfg0_mod_base + pp->cfg0_size - 1,
-			  PCIE_ATU_LIMIT);
-	dw_pcie_writel_rc(pp, busdev, PCIE_ATU_LOWER_TARGET);
-	dw_pcie_writel_rc(pp, 0, PCIE_ATU_UPPER_TARGET);
-	dw_pcie_writel_rc(pp, PCIE_ATU_TYPE_CFG0, PCIE_ATU_CR1);
-	dw_pcie_writel_rc(pp, PCIE_ATU_ENABLE, PCIE_ATU_CR2);
-}
-
-static void dw_pcie_prog_viewport_cfg1(struct pcie_port *pp, u32 busdev)
-{
-	/* Program viewport 1 : OUTBOUND : CFG1 */
-	dw_pcie_writel_rc(pp, PCIE_ATU_REGION_OUTBOUND | PCIE_ATU_REGION_INDEX1,
-			  PCIE_ATU_VIEWPORT);
-	dw_pcie_writel_rc(pp, PCIE_ATU_TYPE_CFG1, PCIE_ATU_CR1);
-	dw_pcie_writel_rc(pp, pp->cfg1_mod_base, PCIE_ATU_LOWER_BASE);
-	dw_pcie_writel_rc(pp, (pp->cfg1_mod_base >> 32), PCIE_ATU_UPPER_BASE);
-	dw_pcie_writel_rc(pp, pp->cfg1_mod_base + pp->cfg1_size - 1,
-			  PCIE_ATU_LIMIT);
-	dw_pcie_writel_rc(pp, busdev, PCIE_ATU_LOWER_TARGET);
-	dw_pcie_writel_rc(pp, 0, PCIE_ATU_UPPER_TARGET);
-	dw_pcie_writel_rc(pp, PCIE_ATU_ENABLE, PCIE_ATU_CR2);
-}
-
-static void dw_pcie_prog_viewport_mem_outbound(struct pcie_port *pp)
-{
-	/* Program viewport 0 : OUTBOUND : MEM */
-	dw_pcie_writel_rc(pp, PCIE_ATU_REGION_OUTBOUND | PCIE_ATU_REGION_INDEX0,
-			  PCIE_ATU_VIEWPORT);
-	dw_pcie_writel_rc(pp, PCIE_ATU_TYPE_MEM, PCIE_ATU_CR1);
-	dw_pcie_writel_rc(pp, pp->mem_mod_base, PCIE_ATU_LOWER_BASE);
-	dw_pcie_writel_rc(pp, (pp->mem_mod_base >> 32), PCIE_ATU_UPPER_BASE);
-	dw_pcie_writel_rc(pp, pp->mem_mod_base + pp->mem_size - 1,
-			  PCIE_ATU_LIMIT);
-	dw_pcie_writel_rc(pp, pp->mem_bus_addr, PCIE_ATU_LOWER_TARGET);
-	dw_pcie_writel_rc(pp, upper_32_bits(pp->mem_bus_addr),
-			  PCIE_ATU_UPPER_TARGET);
-	dw_pcie_writel_rc(pp, PCIE_ATU_ENABLE, PCIE_ATU_CR2);
-}
-
-static void dw_pcie_prog_viewport_io_outbound(struct pcie_port *pp)
-{
-	/* Program viewport 1 : OUTBOUND : IO */
-	dw_pcie_writel_rc(pp, PCIE_ATU_REGION_OUTBOUND | PCIE_ATU_REGION_INDEX1,
-			  PCIE_ATU_VIEWPORT);
-	dw_pcie_writel_rc(pp, PCIE_ATU_TYPE_IO, PCIE_ATU_CR1);
-	dw_pcie_writel_rc(pp, pp->io_mod_base, PCIE_ATU_LOWER_BASE);
-	dw_pcie_writel_rc(pp, (pp->io_mod_base >> 32), PCIE_ATU_UPPER_BASE);
-	dw_pcie_writel_rc(pp, pp->io_mod_base + pp->io_size - 1,
-			  PCIE_ATU_LIMIT);
-	dw_pcie_writel_rc(pp, pp->io_bus_addr, PCIE_ATU_LOWER_TARGET);
-	dw_pcie_writel_rc(pp, upper_32_bits(pp->io_bus_addr),
-			  PCIE_ATU_UPPER_TARGET);
-	dw_pcie_writel_rc(pp, PCIE_ATU_ENABLE, PCIE_ATU_CR2);
-}
-
 static int dw_pcie_rd_other_conf(struct pcie_port *pp, struct pci_bus *bus,
 		u32 devfn, int where, int size, u32 *val)
 {
@@ -361,15 +314,21 @@ static int dw_pcie_rd_other_conf(struct pcie_port *pp, struct pci_bus *bus,
 	address = where & ~0x3;
 
 	if (bus->primary == pp->root_bus_nr) {
-		dw_pcie_prog_viewport_cfg0(pp, busdev);
-		ret = dw_pcie_cfg_read(pp->va_cfg0_base + address, where, size,
-				val);
-		dw_pcie_prog_viewport_mem_outbound(pp);
+		dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX0,
+					  PCIE_ATU_TYPE_CFG0, pp->cfg0_mod_base,
+					  busdev, pp->cfg0_size);
+		ret = dw_pcie_cfg_read(pp->va_cfg0_base + address, where, size, val);
+		dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX0,
+					  PCIE_ATU_TYPE_MEM, pp->mem_mod_base,
+					  pp->mem_bus_addr, pp->mem_size);
 	} else {
-		dw_pcie_prog_viewport_cfg1(pp, busdev);
-		ret = dw_pcie_cfg_read(pp->va_cfg1_base + address, where, size,
-				val);
-		dw_pcie_prog_viewport_io_outbound(pp);
+		dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX1,
+					  PCIE_ATU_TYPE_CFG1, pp->cfg1_mod_base,
+					  busdev, pp->cfg1_size);
+		ret = dw_pcie_cfg_read(pp->va_cfg1_base + address, where, size, val);
+		dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX1,
+					  PCIE_ATU_TYPE_IO, pp->io_mod_base,
+					  pp->io_bus_addr, pp->io_size);
 	}
 
 	return ret;
@@ -386,15 +345,21 @@ static int dw_pcie_wr_other_conf(struct pcie_port *pp, struct pci_bus *bus,
 	address = where & ~0x3;
 
 	if (bus->primary == pp->root_bus_nr) {
-		dw_pcie_prog_viewport_cfg0(pp, busdev);
-		ret = dw_pcie_cfg_write(pp->va_cfg0_base + address, where, size,
-				val);
-		dw_pcie_prog_viewport_mem_outbound(pp);
+		dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX0,
+					  PCIE_ATU_TYPE_CFG0, pp->cfg0_mod_base,
+					  busdev, pp->cfg0_size);
+		ret = dw_pcie_cfg_write(pp->va_cfg0_base + address, where, size, val);
+		dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX0,
+					  PCIE_ATU_TYPE_MEM, pp->mem_mod_base,
+					  pp->mem_bus_addr, pp->mem_size);
 	} else {
-		dw_pcie_prog_viewport_cfg1(pp, busdev);
-		ret = dw_pcie_cfg_write(pp->va_cfg1_base + address, where, size,
-				val);
-		dw_pcie_prog_viewport_io_outbound(pp);
+		dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX1,
+					  PCIE_ATU_TYPE_CFG1, pp->cfg1_mod_base,
+					  busdev, pp->cfg1_size);
+		ret = dw_pcie_cfg_write(pp->va_cfg1_base + address, where, size, val);
+		dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX1,
+					  PCIE_ATU_TYPE_IO, pp->io_mod_base,
+					  pp->io_bus_addr, pp->io_size);
 	}
 
 	return ret;
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
