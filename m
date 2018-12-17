Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYlK2-0000wc-70
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 05:20:19 +0000
Received: by mail-pg1-x541.google.com with SMTP id n2so5532992pgm.3
 for <barebox@lists.infradead.org>; Sun, 16 Dec 2018 21:20:02 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 16 Dec 2018 21:18:37 -0800
Message-Id: <20181217051925.17582-18-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 17/65] PCI: designware: Remove incorrect RC memory
 base/limit configuration
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit a5cb903aef8c642e6f0f6810d46dacedf666b54a

  Currently dw_pcie_setup_rc() configures memory base and memory limit in the
  type1 configuration header for the root complex.  In doing so it uses the
  CPU address (pp->mem_base) rather than the bus address (pp->mem_bus_addr).
  This is wrong and it is useless since the configuration is overwritten
  later on when pci_bus_assign_resources() is called.

  Remove this configuration from dw_pcie_setup_rc().

  Signed-off-by: Gabriele Paoloni <gabriele.paoloni@huawei.com>
  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
  Acked-by: Pratyush Anand <pratyush.anand@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pcie-designware.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index 5e824cedc..e9058768d 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -489,8 +489,6 @@ static struct pci_ops dw_pcie_ops = {
 void dw_pcie_setup_rc(struct pcie_port *pp)
 {
 	u32 val;
-	u32 membase;
-	u32 memlimit;
 
 	/* set the number of lanes */
 	dw_pcie_readl_rc(pp, PCIE_PORT_LINK_CONTROL, &val);
@@ -537,12 +535,6 @@ void dw_pcie_setup_rc(struct pcie_port *pp)
 	val |= 0x00010100;
 	dw_pcie_writel_rc(pp, val, PCI_PRIMARY_BUS);
 
-	/* setup memory base, memory limit */
-	membase = ((u32)pp->mem_base & 0xfff00000) >> 16;
-	memlimit = (pp->mem_size + (u32)pp->mem_base) & 0xfff00000;
-	val = memlimit | membase;
-	dw_pcie_writel_rc(pp, val, PCI_MEMORY_BASE);
-
 	/* setup command register */
 	dw_pcie_readl_rc(pp, PCI_COMMAND, &val);
 	val &= 0xffff0000;
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
