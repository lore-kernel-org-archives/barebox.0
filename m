Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYlKY-0003Yt-D0
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 05:20:40 +0000
Received: by mail-pf1-x444.google.com with SMTP id c123so5775895pfb.0
 for <barebox@lists.infradead.org>; Sun, 16 Dec 2018 21:20:26 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 16 Dec 2018 21:18:54 -0800
Message-Id: <20181217051925.17582-35-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 34/65] PCI: dwc: all: Rename cfg_read/cfg_write to
 read/write
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

  No functional change. dw_pcie_cfg_read()/dw_pcie_cfg_write() doesn't do
  anything specific to access configuration space. It can be just renamed to
  dw_pcie_read()/dw_pcie_write() and used to read/write data to dbi space.

  Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
  Reviewed-By: Joao Pinto <jpinto@synopsys.com>
  CC: Jingoo Han <jingoohan1@gmail.com>
  CC: Murali Karicheri <m-karicheri2@ti.com>
  CC: Stanimir Varbanov <svarbanov@mm-sol.com>
  CC: Pratyush Anand <pratyush.anand@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pcie-designware.c | 12 ++++++------
 drivers/pci/pcie-designware.h |  4 ++--
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index 2ddda3192..74769de7f 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -32,7 +32,7 @@
 
 static unsigned long global_io_offset;
 
-int dw_pcie_cfg_read(void __iomem *addr, int size, u32 *val)
+int dw_pcie_read(void __iomem *addr, int size, u32 *val)
 {
 	if ((uintptr_t)addr & (size - 1)) {
 		*val = 0;
@@ -53,7 +53,7 @@ int dw_pcie_cfg_read(void __iomem *addr, int size, u32 *val)
 	return PCIBIOS_SUCCESSFUL;
 }
 
-int dw_pcie_cfg_write(void __iomem *addr, int size, u32 val)
+int dw_pcie_write(void __iomem *addr, int size, u32 val)
 {
 	if ((uintptr_t)addr & (size - 1))
 		return PCIBIOS_BAD_REGISTER_NUMBER;
@@ -109,7 +109,7 @@ static int dw_pcie_rd_own_conf(struct pcie_port *pp, int where, int size,
 	if (pp->ops->rd_own_conf)
 		return pp->ops->rd_own_conf(pp, where, size, val);
 
-	return dw_pcie_cfg_read(pp->dbi_base + where, size, val);
+	return dw_pcie_read(pp->dbi_base + where, size, val);
 }
 
 static int dw_pcie_wr_own_conf(struct pcie_port *pp, int where, int size,
@@ -118,7 +118,7 @@ static int dw_pcie_wr_own_conf(struct pcie_port *pp, int where, int size,
 	if (pp->ops->wr_own_conf)
 		return pp->ops->wr_own_conf(pp, where, size, val);
 
-	return dw_pcie_cfg_write(pp->dbi_base + where, size, val);
+	return dw_pcie_write(pp->dbi_base + where, size, val);
 }
 
 static void dw_pcie_prog_outbound_atu(struct pcie_port *pp, int index,
@@ -376,7 +376,7 @@ static int dw_pcie_rd_other_conf(struct pcie_port *pp, struct pci_bus *bus,
 	dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX1,
 				  type, cpu_addr,
 				  busdev, cfg_size);
-	ret = dw_pcie_cfg_read(va_cfg_base + where, size, val);
+	ret = dw_pcie_read(va_cfg_base + where, size, val);
 	if (pp->num_viewport <= 2)
 		dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX1,
 					  PCIE_ATU_TYPE_IO, pp->io_mod_base,
@@ -415,7 +415,7 @@ static int dw_pcie_wr_other_conf(struct pcie_port *pp, struct pci_bus *bus,
 	dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX1,
 				  type, cpu_addr,
 				  busdev, cfg_size);
-	ret = dw_pcie_cfg_write(va_cfg_base + where, size, val);
+	ret = dw_pcie_write(va_cfg_base + where, size, val);
 	if (pp->num_viewport <= 2)
 		dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX1,
 					  PCIE_ATU_TYPE_IO, pp->io_mod_base,
diff --git a/drivers/pci/pcie-designware.h b/drivers/pci/pcie-designware.h
index 3171adfe7..fb9d2fdb6 100644
--- a/drivers/pci/pcie-designware.h
+++ b/drivers/pci/pcie-designware.h
@@ -140,8 +140,8 @@ struct pcie_host_ops {
 
 u32 dw_pcie_readl_rc(struct pcie_port *pp, u32 reg);
 void dw_pcie_writel_rc(struct pcie_port *pp, u32 reg, u32 val);
-int dw_pcie_cfg_read(void __iomem *addr, int size, u32 *val);
-int dw_pcie_cfg_write(void __iomem *addr, int size, u32 val);
+int dw_pcie_read(void __iomem *addr, int size, u32 *val);
+int dw_pcie_write(void __iomem *addr, int size, u32 val);
 int dw_pcie_link_up(struct pcie_port *pp);
 void dw_pcie_setup_rc(struct pcie_port *pp);
 int dw_pcie_host_init(struct pcie_port *pp);
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
