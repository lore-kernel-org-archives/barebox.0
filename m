Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXLAc-0005ps-43
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 07:12:34 +0000
Received: by mail-pf1-x444.google.com with SMTP id 64so632931pfr.9
 for <barebox@lists.infradead.org>; Wed, 12 Dec 2018 23:12:20 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 12 Dec 2018 23:11:08 -0800
Message-Id: <20181213071144.31691-23-andrew.smirnov@gmail.com>
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
Subject: [PATCH 22/58] PCI: designware: Keep viewport fixed for IO transaction
 if num_viewport > 2
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit fe48cb8538421fbd16ecf8bf95829faf8d8c001e

  Most of the platforms have 3 or more viewports.  For such platforms, We do
  not need to share viewports between IO and CFG.  Assign viewport 2 to IO
  transactions in such cases.

  Tested-by: Dong Bo <dongbo4@huawei.com>
  Signed-off-by: Pratyush Anand <pratyush.anand@gmail.com>
  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
  Acked-by: Rob Herring <robh@kernel.org>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pcie-designware.c | 26 +++++++++++++++++++-------
 drivers/pci/pcie-designware.h |  1 +
 2 files changed, 20 insertions(+), 7 deletions(-)

diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index 6de9fa7e3..cf1b3032e 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -61,6 +61,7 @@
 #define PCIE_ATU_VIEWPORT		0x900
 #define PCIE_ATU_REGION_INBOUND		(0x1 << 31)
 #define PCIE_ATU_REGION_OUTBOUND	(0x0 << 31)
+#define PCIE_ATU_REGION_INDEX2		(0x2 << 0)
 #define PCIE_ATU_REGION_INDEX1		(0x1 << 0)
 #define PCIE_ATU_REGION_INDEX0		(0x0 << 0)
 #define PCIE_ATU_CR1			0x904
@@ -330,6 +331,10 @@ int __init dw_pcie_host_init(struct pcie_port *pp)
 	if (ret)
 		pp->lanes = 0;
 
+	ret = of_property_read_u32(np, "num-viewport", &pp->num_viewport);
+	if (ret)
+		pp->num_viewport = 2;
+
 	if (pp->ops->host_init)
 		pp->ops->host_init(pp);
 
@@ -376,9 +381,10 @@ static int dw_pcie_rd_other_conf(struct pcie_port *pp, struct pci_bus *bus,
 				  type, cpu_addr,
 				  busdev, cfg_size);
 	ret = dw_pcie_cfg_read(va_cfg_base + where, size, val);
-	dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX0,
-				  PCIE_ATU_TYPE_IO, pp->io_mod_base,
-				  pp->io_bus_addr, pp->io_size);
+	if (pp->num_viewport <= 2)
+		dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX0,
+					  PCIE_ATU_TYPE_IO, pp->io_mod_base,
+					  pp->io_bus_addr, pp->io_size);
 
 	return ret;
 }
@@ -414,9 +420,10 @@ static int dw_pcie_wr_other_conf(struct pcie_port *pp, struct pci_bus *bus,
 				  type, cpu_addr,
 				  busdev, cfg_size);
 	ret = dw_pcie_cfg_write(va_cfg_base + where, size, val);
-	dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX0,
-				  PCIE_ATU_TYPE_IO, pp->io_mod_base,
-				  pp->io_bus_addr, pp->io_size);
+	if (pp->num_viewport <= 2)
+		dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX0,
+					  PCIE_ATU_TYPE_IO, pp->io_mod_base,
+					  pp->io_bus_addr, pp->io_size);
 
 	return ret;
 }
@@ -564,10 +571,15 @@ void dw_pcie_setup_rc(struct pcie_port *pp)
         * uses its own address translation component rather than ATU, so
         * we should not program the ATU here.
         */
-	if (!pp->ops->rd_other_conf)
+	if (!pp->ops->rd_other_conf) {
 		dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX1,
 					  PCIE_ATU_TYPE_MEM, pp->mem_mod_base,
 					  pp->mem_bus_addr, pp->mem_size);
+		if (pp->num_viewport <= 2)
+			dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX2,
+						  PCIE_ATU_TYPE_IO, pp->io_base,
+						  pp->io_bus_addr, pp->io_size);
+	}
 
 	dw_pcie_wr_own_conf(pp, PCI_BASE_ADDRESS_0, 4, 0);
 
diff --git a/drivers/pci/pcie-designware.h b/drivers/pci/pcie-designware.h
index 0d777ce00..295c05f2b 100644
--- a/drivers/pci/pcie-designware.h
+++ b/drivers/pci/pcie-designware.h
@@ -40,6 +40,7 @@ struct pcie_port {
 	struct resource		busn;
 	int			irq;
 	u32			lanes;
+	u32			num_viewport;
 	struct pcie_host_ops	*ops;
 	struct pci_controller	pci;
 };
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
