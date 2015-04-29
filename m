Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YnYA7-0003sy-L8
 for barebox@lists.infradead.org; Wed, 29 Apr 2015 20:00:52 +0000
Received: from tellur.intern.lynxeye.de (p57B5F6E7.dip0.t-ipconnect.de
 [87.181.246.231]) by lynxeye.de (Postfix) with ESMTPA id 8E7DE26C2001
 for <barebox@lists.infradead.org>; Wed, 29 Apr 2015 21:59:54 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Wed, 29 Apr 2015 21:59:48 +0200
Message-Id: <1430337588-11998-3-git-send-email-dev@lynxeye.de>
In-Reply-To: <1430337588-11998-1-git-send-email-dev@lynxeye.de>
References: <1430337588-11998-1-git-send-email-dev@lynxeye.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/3] PCI: imx6: simplify config access code
To: barebox@lists.infradead.org

The PCI core fills in the primary bus number, so there is no
need to walk up the PCI hierarchy in the driver manually.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/pci/pcie-designware.c | 11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index 4edaede..4962a19 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -350,13 +350,6 @@ static void dw_pcie_prog_viewport_io_outbound(struct pcie_port *pp)
 	dw_pcie_writel_rc(pp, PCIE_ATU_ENABLE, PCIE_ATU_CR2);
 }
 
-struct pci_bus *get_parent_bus(struct pci_bus *bus)
-{
-	struct pci_dev *bridge = container_of(bus->parent, struct pci_dev, dev);
-
-	return bridge->bus;
-}
-
 static int dw_pcie_rd_other_conf(struct pcie_port *pp, struct pci_bus *bus,
 		u32 devfn, int where, int size, u32 *val)
 {
@@ -367,7 +360,7 @@ static int dw_pcie_rd_other_conf(struct pcie_port *pp, struct pci_bus *bus,
 		 PCIE_ATU_FUNC(PCI_FUNC(devfn));
 	address = where & ~0x3;
 
-	if (get_parent_bus(bus)->number == pp->root_bus_nr) {
+	if (bus->primary == pp->root_bus_nr) {
 		dw_pcie_prog_viewport_cfg0(pp, busdev);
 		ret = dw_pcie_cfg_read(pp->va_cfg0_base + address, where, size,
 				val);
@@ -392,7 +385,7 @@ static int dw_pcie_wr_other_conf(struct pcie_port *pp, struct pci_bus *bus,
 		 PCIE_ATU_FUNC(PCI_FUNC(devfn));
 	address = where & ~0x3;
 
-	if (get_parent_bus(bus)->number == pp->root_bus_nr) {
+	if (bus->primary == pp->root_bus_nr) {
 		dw_pcie_prog_viewport_cfg0(pp, busdev);
 		ret = dw_pcie_cfg_write(pp->va_cfg0_base + address, where, size,
 				val);
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
