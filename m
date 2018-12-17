Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYlKT-0002N7-Cg
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 05:21:09 +0000
Received: by mail-pg1-x543.google.com with SMTP id s198so5537174pgs.2
 for <barebox@lists.infradead.org>; Sun, 16 Dec 2018 21:20:23 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 16 Dec 2018 21:18:52 -0800
Message-Id: <20181217051925.17582-33-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 32/65] PCI: designware: Check for iATU unroll only on
 platforms that use ATU
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit a782b5f986c3fa1cfa7f2b57941200c6a5809242

  Previously we checked for iATU unroll support by reading PCIE_ATU_VIEWPORT
  even on platforms, e.g., Keystone, that do not have ATU ports.  This can
  cause bad behavior such as asynchronous external aborts:

    OF: PCI:   MEM 0x60000000..0x6fffffff -> 0x60000000
    Unhandled fault: asynchronous external abort (0x1211) at 0x00000000
    pgd = c0003000
    [00000000] *pgd=80000800004003, *pmd=00000000
    Internal error: : 1211 [#1] PREEMPT SMP ARM
    Modules linked in:
    CPU: 0 PID: 1 Comm: swapper/0 Not tainted 4.9.0-00009-g6ff59d2-dirty #7
    Hardware name: Keystone
    task: eb878000 task.stack: eb866000
    PC is at dw_pcie_setup_rc+0x24/0x380
    LR is at ks_pcie_host_init+0x10/0x170

  Move the dw_pcie_iatu_unroll_enabled() check so we only call it on
  platforms that do not use the ATU.  These platforms supply their own
  ->rd_other_conf() and ->wr_other_conf() methods.

  [bhelgaas: changelog]
  Fixes: a0601a470537 ("PCI: designware: Add iATU Unroll feature")
  Fixes: 416379f9ebde ("PCI: designware: Check for iATU unroll support after initializing host")
  Tested-by: Kishon Vijay Abraham I <kishon@ti.com>
  Signed-off-by: Murali Karicheri <m-karicheri2@ti.com>
  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
  Acked-By: Joao Pinto <jpinto@synopsys.com>
  CC: stable@vger.kernel.org      # v4.9+

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pcie-designware.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index 2b39e39e0..d42045088 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -582,11 +582,6 @@ void dw_pcie_setup_rc(struct pcie_port *pp)
 {
 	u32 val;
 
-	/* get iATU unroll support */
-	pp->iatu_unroll_enabled = dw_pcie_iatu_unroll_enabled(pp);
-	dev_dbg(pp->dev, "iATU unroll: %s\n",
-		pp->iatu_unroll_enabled ? "enabled" : "disabled");
-
 	/* set the number of lanes */
 	val = dw_pcie_readl_rc(pp, PCIE_PORT_LINK_CONTROL);
 	val &= ~PORT_LINK_MODE_MASK;
@@ -645,6 +640,11 @@ void dw_pcie_setup_rc(struct pcie_port *pp)
         * we should not program the ATU here.
         */
 	if (!pp->ops->rd_other_conf) {
+		/* get iATU unroll support */
+		pp->iatu_unroll_enabled = dw_pcie_iatu_unroll_enabled(pp);
+		dev_dbg(pp->dev, "iATU unroll: %s\n",
+			pp->iatu_unroll_enabled ? "enabled" : "disabled");
+
 		dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX0,
 					  PCIE_ATU_TYPE_MEM, pp->mem_mod_base,
 					  pp->mem_bus_addr, pp->mem_size);
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
