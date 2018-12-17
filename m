Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYlKD-0001XH-VS
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 05:20:32 +0000
Received: by mail-pg1-x542.google.com with SMTP id j10so4321124pga.1
 for <barebox@lists.infradead.org>; Sun, 16 Dec 2018 21:20:11 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 16 Dec 2018 21:18:44 -0800
Message-Id: <20181217051925.17582-25-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 24/65] PCI: designware: Exchange viewport of `MEMORYs' and
 `CFGs/IOs'
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit 68a0bfec72cb4f117198ae31df114dad4c5e405d

  When we have only two view ports in a DesignWare PCIe platform, iatu0
  is used for both CFG and IO accesses.  When CFGs are sent to peripherals
  (e.g., lspci), iatu0 frequently switches between CFG and IO.

  For such scenarios, a MEMORY might be sent as an IOs by mistake.
  Considering the following configurations:

    MEMORY  ->   BASE_ADDR: 0xb4100000, LIMIT: 0xb4100FFF, TYPE=mem
    CFG     ->   BASE_ADDR: 0xb4000000, LIMIT: 0xb4000FFF, TYPE=cfg
    IO      ->   BASE_ADDR: 0xFFFFFFFF, LIMIT: 0xFFFFFFFE, TYPE=io

  Suppose PCIe has just completed a CFG access.  To switch back to IO, it
  sets the BASE_ADDR to 0xFFFFFFFF, LIMIT 0xFFFFFFFE and TYPE to IO.  When
  another CFG comes, the BASE_ADDR is set to 0xb4000000 to switch to CFG.  At
  this moment, a MEMORY access shows up, since it matches with iatu0 (due to
  0xb4000000 <= MEMORY BASE_ADDR <= MEMORY LIMIT <= 0xFFFFFFF), it is treated
  as an IO access by mistake, then sent to perpheral.

  This patch fixes the problem by exchanging the assignments of `MEMORYs' and
  `CFGs/IOs', which assigning MEMORYs to iatu0, CFGs and IOs to iatu1.

  We can still have issues with IO transfer, however memory transfer is used
  predominantly therefore we are just minimizing the risk of failure.
  Actually, we can not do much when we have only two viewports.  We can
  either not allow the less frequent IO transfers at all, or can live with a
  remote possibility of getting it corrupted.

  Signed-off-by: Dong Bo <dongbo4@huawei.com>
  [pratyush.anand@gmail.com: Modified commit log to capture remote risk]
  Signed-off-by: Pratyush Anand <pratyush.anand@gmail.com>
  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pcie-designware.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index a591ac7a9..2f868828b 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -451,12 +451,12 @@ static int dw_pcie_rd_other_conf(struct pcie_port *pp, struct pci_bus *bus,
 		va_cfg_base = pp->va_cfg1_base;
 	}
 
-	dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX0,
+	dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX1,
 				  type, cpu_addr,
 				  busdev, cfg_size);
 	ret = dw_pcie_cfg_read(va_cfg_base + where, size, val);
 	if (pp->num_viewport <= 2)
-		dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX0,
+		dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX1,
 					  PCIE_ATU_TYPE_IO, pp->io_mod_base,
 					  pp->io_bus_addr, pp->io_size);
 
@@ -490,12 +490,12 @@ static int dw_pcie_wr_other_conf(struct pcie_port *pp, struct pci_bus *bus,
 		va_cfg_base = pp->va_cfg1_base;
 	}
 
-	dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX0,
+	dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX1,
 				  type, cpu_addr,
 				  busdev, cfg_size);
 	ret = dw_pcie_cfg_write(va_cfg_base + where, size, val);
 	if (pp->num_viewport <= 2)
-		dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX0,
+		dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX1,
 					  PCIE_ATU_TYPE_IO, pp->io_mod_base,
 					  pp->io_bus_addr, pp->io_size);
 
@@ -651,7 +651,7 @@ void dw_pcie_setup_rc(struct pcie_port *pp)
         * we should not program the ATU here.
         */
 	if (!pp->ops->rd_other_conf) {
-		dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX1,
+		dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX0,
 					  PCIE_ATU_TYPE_MEM, pp->mem_mod_base,
 					  pp->mem_bus_addr, pp->mem_size);
 		if (pp->num_viewport > 2)
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
