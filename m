Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XaTEH-0003ps-J4
 for barebox@lists.infradead.org; Sat, 04 Oct 2014 17:34:50 +0000
Received: from tellur.intern.lynxeye.de (p57B5E0B8.dip0.t-ipconnect.de
 [87.181.224.184]) by lynxeye.de (Postfix) with ESMTPA id 8E5DE26C2004
 for <barebox@lists.infradead.org>; Sat,  4 Oct 2014 19:33:56 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sat,  4 Oct 2014 19:40:09 +0200
Message-Id: <1412444425-2569-4-git-send-email-dev@lynxeye.de>
In-Reply-To: <1412444425-2569-1-git-send-email-dev@lynxeye.de>
References: <1412444425-2569-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 03/19] pci: add resource enum
To: barebox@lists.infradead.org

Makes things way clearer than juggling numbers.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/pci/pci.c   | 14 ++++++++------
 include/linux/pci.h |  6 ++++++
 2 files changed, 14 insertions(+), 6 deletions(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index ef998dc..e9f0cb5 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -41,15 +41,15 @@ void register_pci_controller(struct pci_controller *hose)
 	hose->bus = bus;
 	bus->host = hose;
 	bus->ops = hose->pci_ops;
-	bus->resource[0] = hose->mem_resource;
-	bus->resource[1] = hose->io_resource;
+	bus->resource[PCI_BUS_RESOURCE_MEM] = hose->mem_resource;
+	bus->resource[PCI_BUS_RESOURCE_IO] = hose->io_resource;
 	bus->number = bus_index++;
 
 	if (hose->set_busno)
 		hose->set_busno(hose, bus->number);
 
-	last_mem = bus->resource[0]->start;
-	last_io = bus->resource[1]->start;
+	last_mem = bus->resource[PCI_BUS_RESOURCE_MEM]->start;
+	last_io = bus->resource[PCI_BUS_RESOURCE_IO]->start;
 
 	pci_scan_bus(bus);
 
@@ -141,7 +141,8 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 		if (mask & 0x01) { /* IO */
 			size = -(mask & 0xfffffffe);
 			DBG("  PCI: pbar%d: mask=%08x io %d bytes\n", bar, mask, size);
-			if (last_mem + size > dev->bus->resource[0]->end) {
+			if (last_io + size >
+			    dev->bus->resource[PCI_BUS_RESOURCE_IO]->end) {
 				DBG("BAR does not fit within bus IO res\n");
 				return;
 			}
@@ -152,7 +153,8 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 		} else { /* MEM */
 			size = -(mask & 0xfffffff0);
 			DBG("  PCI: pbar%d: mask=%08x memory %d bytes\n", bar, mask, size);
-			if (last_mem + size > dev->bus->resource[0]->end) {
+			if (last_mem + size >
+			    dev->bus->resource[PCI_BUS_RESOURCE_MEM]->end) {
 				DBG("BAR does not fit within bus mem res\n");
 				return;
 			}
diff --git a/include/linux/pci.h b/include/linux/pci.h
index 0ec1320..f5ef588 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -114,6 +114,12 @@ struct pci_dev {
 };
 #define	to_pci_dev(dev) container_of(dev, struct pci_dev, dev)
 
+enum {
+	PCI_BUS_RESOURCE_IO = 0,
+	PCI_BUS_RESOURCE_MEM = 1,
+	PCI_BUS_RESOURCE_MEM_PREF = 2,
+	PCI_BUS_RESOURCE_BUSN = 3,
+};
 struct pci_bus {
 	struct pci_controller *host;	/* associated host controller */
 	struct list_head node;		/* node in list of buses */
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
