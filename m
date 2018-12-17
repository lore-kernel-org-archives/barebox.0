Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYlK0-0000p9-Cx
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 05:20:14 +0000
Received: by mail-pg1-x544.google.com with SMTP id m1so3893677pgq.8
 for <barebox@lists.infradead.org>; Sun, 16 Dec 2018 21:19:54 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 16 Dec 2018 21:18:31 -0800
Message-Id: <20181217051925.17582-12-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 11/65] PCI: designware: Make config accessor override
 checking symmetric
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit 67de2dc34cc30d334cb66ab4f466e80f04d5b618

  Drivers based on the DesignWare core can override the config read accessors
  by supplying rd_own_conf() and rd_other_conf() function pointers.
  dw_pcie_rd_conf() calls dw_pcie_rd_own_conf() (for accesses to the root
  bus) or dw_pcie_rd_other_conf():

    dw_pcie_rd_conf
      dw_pcie_rd_own_conf                # if on root bus
      dw_pcie_rd_other_conf              # if not on root bus

  Previously we checked for rd_other_conf() directly in dw_pcie_rd_conf(),
  but we checked for rd_own_conf() in dw_pcie_rd_own_conf().

  Check for rd_other_conf() in dw_pcie_rd_other_conf() to make this symmetric
  with the rd_own_conf() checking, and similarly for the write path.

  No functional change intended.

  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
  Acked-by: Pratyush Anand <pratyush.anand@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pcie-designware.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index 782da2626..28f57f9d2 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -323,6 +323,10 @@ static int dw_pcie_rd_other_conf(struct pcie_port *pp, struct pci_bus *bus,
 	u64 cpu_addr;
 	void __iomem *va_cfg_base;
 
+	if (pp->ops->rd_other_conf)
+		return pp->ops->rd_other_conf(pp, bus, devfn,
+					      where, size, val);
+
 	busdev = PCIE_ATU_BUS(bus->number) | PCIE_ATU_DEV(PCI_SLOT(devfn)) |
 		PCIE_ATU_FUNC(PCI_FUNC(devfn));
 	address = where & ~0x3;
@@ -358,6 +362,10 @@ static int dw_pcie_wr_other_conf(struct pcie_port *pp, struct pci_bus *bus,
 	u64 cpu_addr;
 	void __iomem *va_cfg_base;
 
+	if (pp->ops->wr_other_conf)
+		return pp->ops->wr_other_conf(pp, bus, devfn,
+					      where, size, val);
+
 	busdev = PCIE_ATU_BUS(bus->number) | PCIE_ATU_DEV(PCI_SLOT(devfn)) |
 		 PCIE_ATU_FUNC(PCI_FUNC(devfn));
 
@@ -422,10 +430,6 @@ static int dw_pcie_rd_conf(struct pci_bus *bus, u32 devfn, int where,
 
 	if (bus->number == pp->root_bus_nr)
 		ret = dw_pcie_rd_own_conf(pp, where, size, val);
-
-	else if (pp->ops->rd_other_conf)
-		ret = pp->ops->rd_other_conf(pp, bus, devfn,
-					     where, size, val);
 	else
 		ret = dw_pcie_rd_other_conf(pp, bus, devfn,
 					    where, size, val);
@@ -449,9 +453,6 @@ static int dw_pcie_wr_conf(struct pci_bus *bus, u32 devfn,
 
 	if (bus->number == pp->root_bus_nr)
 		ret = dw_pcie_wr_own_conf(pp, where, size, val);
-	else if (pp->ops->wr_other_conf)
-		ret = pp->ops->wr_other_conf(pp, bus, devfn,
-					     where, size, val);
 	else
 		ret = dw_pcie_wr_other_conf(pp, bus, devfn,
 					    where, size, val);
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
